#!/usr/bin/env python3
"""Lock-free work split for many agents (Claude, Codex, humans) on one repo.

A shard (tools/config/shards.txt) is claimed by pushing the branch `shard/NNN` with an empty
"claim shard NNN (AGENT)" commit: a push of a new ref is atomic on the server, so two agents can never
own the same shard. Work happens on that branch; `land` puts it on the main branch.

usage: claim.py status                   shards with work left, drafts (yellow) first, and who owns them
       claim.py take AGENT [SHARD]       claim SHARD (or the first free one) and switch to shard/NNN
       claim.py land                     rebase on main (dropping the claim commit), make compare, push to main
                                         (retries when main moved); the shard stays claimed
       claim.py pr                       same checks, but push shard/NNN and open a pull request (gh) instead
       claim.py who FUNC                 which shard owns FUNC and who claimed it (check before touching anything)
       claim.py release [SHARD]          free the shard (delete the remote branch) when done or abandoned
Run every agent in its own clone or worktree:  git worktree add ../ss2-AGENT origin/MAIN
"""
import glob
import os
import re
import subprocess
import sys

ROOT = os.path.abspath(os.path.join(os.path.dirname(__file__), "..", ".."))
CFG = os.path.join(ROOT, "tools/config/shards.txt")
SKIP = {"libagbsyscall", "m4a", "m4a_1", "sched"}


def git(*a, check=True, capture=True):
    r = subprocess.run(["git"] + list(a), cwd=ROOT, capture_output=capture, text=True)
    if check and r.returncode:
        sys.exit("git %s failed:\n%s%s" % (" ".join(a), r.stdout or "", r.stderr or ""))
    return (r.stdout or "").strip() if capture else ""


def main_branch():
    ref = git("symbolic-ref", "-q", "refs/remotes/origin/HEAD", check=False)
    return ref.rsplit("origin/", 1)[-1] if ref else "main"


def remaining():
    out = set()
    for p in glob.glob(os.path.join(ROOT, "asm/nonmatchings/*/*.s")):
        if os.path.basename(os.path.dirname(p)) not in SKIP:
            out.add(os.path.basename(p)[:-2])
    return out


def drafts():
    out = set()
    for p in glob.glob(os.path.join(ROOT, "src/*.c")):
        out |= set(re.findall(r'#ifdef NONMATCHING\n(?:(?!#ifdef|#endif).|\n)*?#else\nINCLUDE_ASM\("[^"]*", (\w+)\);',
                              open(p, encoding="utf-8", errors="replace").read()))
    return out


def shards():
    rem, nm, sh = remaining(), drafts(), {}
    for line in open(CFG):
        s, f, _ = line.split()
        if f in rem:
            d = sh.setdefault(int(s), [0, 0])
            d[0] += 1
            d[1] += f in nm
    return sh


def owners():
    git("fetch", "-q", "--prune", "origin", "+refs/heads/shard/*:refs/remotes/origin/shard/*", check=False)
    out = {}
    for line in git("for-each-ref", "--format=%(refname:short) %(contents:subject)", "refs/remotes/origin/shard/").splitlines():
        ref, _, subj = line.partition(" ")
        m = re.search(r"\((.+)\)", subj)
        out[int(ref.rsplit("/", 1)[1])] = m.group(1) if m else "?"
    return out


def shard_funcs(s):
    return {l.split()[1] for l in open(CFG) if l.split() and int(l.split()[0]) == int(s)}


def owner_of(func):
    for l in open(CFG):
        p = l.split()
        if len(p) >= 2 and p[1] == func:
            return int(p[0])
    return None


def guard(branch, mb):
    """Refuse to deliver functions that belong to another shard (the cause of overlapping work)."""
    mine = shard_funcs(int(branch.split("/")[1]))
    touched = set()
    for p in git("diff", "--name-only", "origin/%s...HEAD" % mb).splitlines():
        if p.startswith("asm/nonmatchings/") and p.endswith(".s"):
            touched.add(os.path.basename(p)[:-2])
    bad = sorted(f for f in touched if f not in mine and owner_of(f) is not None)
    if bad:
        sys.exit("functions outside your shard: %s\n(owned by shards %s). Revert them: `git checkout origin/%s -- <files>`"
                 % (" ".join(bad), sorted({owner_of(f) for f in bad}), mb))


def cmd_who(func):
    s = owner_of(func)
    own = owners()
    print("%s: shard %s, owner %s" % (func, s, own.get(s, "free") if s is not None else "-"))


def make_compare():
    r = subprocess.run(["make", "-j%d" % (os.cpu_count() or 4), "compare"], cwd=ROOT, capture_output=True, text=True)
    if "OK" not in r.stdout:
        sys.exit("make compare FAILED: fix it before landing\n" + (r.stdout + r.stderr)[-2000:])


def current_shard():
    b = git("rev-parse", "--abbrev-ref", "HEAD")
    if not b.startswith("shard/"):
        sys.exit("not on a shard/NNN branch (run: claim.py take AGENT)")
    return b


def rebase_on_main():
    mb = main_branch()
    git("fetch", "-q", "origin", mb)
    claim = git("log", "--format=%H", "--grep=^claim shard", "origin/%s..HEAD" % mb).splitlines()
    if claim:  # drop the empty claim commit so it never reaches main
        git("rebase", "-q", "--onto", "origin/" + mb, claim[-1])
    else:
        git("rebase", "-q", "origin/" + mb)
    return mb


def cmd_status():
    own, sh = owners(), shards()
    print("shard  left  drafts  owner")
    for s in sorted(sh, key=lambda s: (s in own, -sh[s][1], s)):
        print("%5d  %4d  %6d  %s" % (s, sh[s][0], sh[s][1], own.get(s, "-")))
    print("%d shards with work, %d claimed" % (len(sh), len(own)))


def cmd_take(agent, want=None):
    if git("status", "--porcelain", "-uno"):
        sys.exit("working tree not clean: commit or stash first")
    mb = main_branch()
    git("fetch", "-q", "origin", mb)
    own, sh = owners(), shards()
    cands = [int(want)] if want is not None else sorted((s for s in sh if s not in own), key=lambda s: (-sh[s][1], s))
    for s in cands:
        b = "shard/%03d" % s
        git("switch", "-q", "-C", b, "origin/" + mb)
        git("commit", "-q", "--allow-empty", "--no-verify", "-m", "claim shard %d (%s)" % (s, agent))
        r = subprocess.run(["git", "push", "-q", "origin", "%s:refs/heads/%s" % (b, b)], cwd=ROOT, capture_output=True, text=True)
        if r.returncode == 0:
            git("branch", "-q", "--set-upstream-to", "origin/" + b, check=False)
            print("claimed shard %d on branch %s. Functions:  python3 tools/scripts/shard.py show %d" % (s, b, s))
            return
        git("switch", "-q", "--detach", "origin/" + mb)
        git("branch", "-q", "-D", b)
        print("shard %d already taken, trying the next one" % s)
    sys.exit("no free shard")


def cmd_land():
    b = current_shard()
    for attempt in range(6):
        mb = rebase_on_main()
        guard(b, mb)
        make_compare()
        r = subprocess.run(["git", "push", "-q", "origin", "HEAD:refs/heads/" + mb], cwd=ROOT, capture_output=True, text=True)
        if r.returncode == 0:
            git("push", "-q", "--force-with-lease", "origin", "%s:refs/heads/%s" % (b, b), check=False)
            print("landed on %s" % mb)
            return
        print("main moved, retrying (%d)" % (attempt + 1))
    sys.exit("could not land after 6 attempts")


def cmd_pr():
    b = current_shard()
    mb = rebase_on_main()
    guard(b, mb)
    make_compare()
    git("push", "-q", "--force-with-lease", "origin", "%s:refs/heads/%s" % (b, b))
    r = subprocess.run(["gh", "pr", "create", "--fill", "--base", mb, "--head", b], cwd=ROOT)
    if r.returncode:
        print("push done; open the PR by hand: %s -> %s" % (b, mb))


def cmd_release(s=None):
    b = "shard/%03d" % int(s) if s is not None else current_shard()
    git("push", "-q", "origin", "--delete", b, check=False)
    print("released %s" % b)


if __name__ == "__main__":
    a = sys.argv[1:]
    if not a or a[0] not in ("status", "take", "land", "pr", "release", "who"):
        sys.exit(__doc__)
    {"status": cmd_status, "take": cmd_take, "land": cmd_land, "pr": cmd_pr, "release": cmd_release, "who": cmd_who}[a[0]](*a[1:])
