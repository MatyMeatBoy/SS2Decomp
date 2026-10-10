"""Format ARMv4T THUMB instructions as GNU as unified syntax.

format_insn() returns the instruction text with branch/literal targets passed
through the `label` callback so the caller can substitute symbol names.
Returns None for encodings that should be emitted as raw data.
"""

REG = ["r0", "r1", "r2", "r3", "r4", "r5", "r6", "r7",
       "r8", "r9", "sl", "fp", "ip", "sp", "lr", "pc"]
COND = ["eq", "ne", "hs", "lo", "mi", "pl", "vs", "vc",
        "hi", "ls", "ge", "lt", "gt", "le"]
ALU = ["ands", "eors", "lsls", "lsrs", "asrs", "adcs", "sbcs", "rors",
       "tst", "negs", "cmp", "cmn", "orrs", "muls", "bics", "mvns"]


def imm(v):
    return "#0x%x" % v if v >= 10 else "#%d" % v


def rlist(bits, extra=None):
    regs = [REG[i] for i in range(8) if bits & (1 << i)]
    if extra:
        regs.append(extra)
    return "{" + ", ".join(regs) + "}"


def format_insn(h, addr, label, h2=None):
    """h: halfword; h2: second halfword for bl. label(addr, kind) -> str."""
    top = h >> 13
    if top == 0:
        op = (h >> 11) & 3
        rd = h & 7
        rs = (h >> 3) & 7
        if op < 3:
            off = (h >> 6) & 31
            name = ["lsls", "lsrs", "asrs"][op]
            if op == 0 and off == 0:
                return "movs %s, %s" % (REG[rd], REG[rs])
            if op != 0 and off == 0:
                off = 32
            return "%s %s, %s, %s" % (name, REG[rd], REG[rs], imm(off))
        i = (h >> 10) & 1
        sub = (h >> 9) & 1
        rn = (h >> 6) & 7
        name = "subs" if sub else "adds"
        if i:
            if rd == rs:
                # gas would pick the 8-bit immediate encoding
                return ".inst.n 0x%04x @ %s %s, %s, %s" % (h, name, REG[rd], REG[rs], imm(rn))
            return "%s %s, %s, %s" % (name, REG[rd], REG[rs], imm(rn))
        return "%s %s, %s, %s" % (name, REG[rd], REG[rs], REG[rn])
    if top == 1:
        op = (h >> 11) & 3
        rd = (h >> 8) & 7
        v = h & 0xFF
        return "%s %s, %s" % (["movs", "cmp", "adds", "subs"][op], REG[rd], imm(v))
    if h >> 10 == 0x10:
        op = (h >> 6) & 15
        rs = (h >> 3) & 7
        rd = h & 7
        name = ALU[op]
        if name == "muls":
            return "muls %s, %s, %s" % (REG[rd], REG[rs], REG[rd])
        return "%s %s, %s" % (name, REG[rd], REG[rs])
    if h >> 10 == 0x11:
        op = (h >> 8) & 3
        h1 = (h >> 7) & 1
        h2_ = (h >> 6) & 1
        rs = ((h >> 3) & 7) | (h2_ << 3)
        rd = (h & 7) | (h1 << 3)
        if op == 3:
            if h1 or (h & 7):
                return None
            return "bx %s" % REG[rs]
        if h1 == 0 and h2_ == 0:
            return None
        if op == 1 and (rd == 15 or rs == 15):
            return None
        return "%s %s, %s" % (["add", "cmp", "mov"][op], REG[rd], REG[rs])
    if h >> 11 == 0x09:
        rd = (h >> 8) & 7
        lit = ((addr + 4) & ~3) + (h & 0xFF) * 4
        return "ldr %s, %s" % (REG[rd], label(lit, "lit"))
    if h >> 12 == 5:
        ro = (h >> 6) & 7
        rb = (h >> 3) & 7
        rd = h & 7
        if (h >> 9) & 1 == 0:
            name = ["str", "strb", "ldr", "ldrb"][(h >> 10) & 3]
        else:
            name = ["strh", "ldrsb", "ldrh", "ldrsh"][(h >> 10) & 3]
        return "%s %s, [%s, %s]" % (name, REG[rd], REG[rb], REG[ro])
    if top == 3:
        b = (h >> 12) & 1
        l = (h >> 11) & 1
        off = (h >> 6) & 31
        rb = (h >> 3) & 7
        rd = h & 7
        if not b:
            off *= 4
        name = ("ldr" if l else "str") + ("b" if b else "")
        return "%s %s, [%s, %s]" % (name, REG[rd], REG[rb], imm(off))
    if h >> 12 == 8:
        l = (h >> 11) & 1
        off = ((h >> 6) & 31) * 2
        rb = (h >> 3) & 7
        rd = h & 7
        return "%s %s, [%s, %s]" % ("ldrh" if l else "strh", REG[rd], REG[rb], imm(off))
    if h >> 12 == 9:
        l = (h >> 11) & 1
        rd = (h >> 8) & 7
        off = (h & 0xFF) * 4
        return "%s %s, [sp, %s]" % ("ldr" if l else "str", REG[rd], imm(off))
    if h >> 12 == 0xA:
        sp = (h >> 11) & 1
        rd = (h >> 8) & 7
        off = (h & 0xFF) * 4
        if sp:
            return "add %s, sp, %s" % (REG[rd], imm(off))
        return "adr %s, %s" % (REG[rd], label(((addr + 4) & ~3) + off, "adr"))
    if h >> 8 == 0xB0:
        off = (h & 0x7F) * 4
        return "%s sp, %s" % ("sub" if h & 0x80 else "add", imm(off))
    if (h >> 8) in (0xB4, 0xB5):
        if (h & 0x1FF) == 0:
            return None
        return "push %s" % rlist(h & 0xFF, "lr" if h & 0x100 else None)
    if (h >> 8) in (0xBC, 0xBD):
        if (h & 0x1FF) == 0:
            return None
        return "pop %s" % rlist(h & 0xFF, "pc" if h & 0x100 else None)
    if h >> 12 == 0xC:
        l = (h >> 11) & 1
        rb = (h >> 8) & 7
        bits = h & 0xFF
        if bits == 0:
            return None
        if l:
            if bits & (1 << rb):
                return "ldm %s, %s" % (REG[rb], rlist(bits))
            return "ldm %s!, %s" % (REG[rb], rlist(bits))
        return "stm %s!, %s" % (REG[rb], rlist(bits))
    if h >> 12 == 0xD:
        cond = (h >> 8) & 0xF
        if cond == 0xE:
            return None
        if cond == 0xF:
            return "svc %s" % imm(h & 0xFF)
        o = h & 0xFF
        if o & 0x80:
            o -= 0x100
        return "b%s %s" % (COND[cond], label(addr + 4 + o * 2, "branch"))
    if h >> 11 == 0x1C:
        o = h & 0x7FF
        if o & 0x400:
            o -= 0x800
        return "b %s" % label(addr + 4 + o * 2, "branch")
    if h >> 11 == 0x1E and h2 is not None and h2 >> 11 == 0x1F:
        hi = h & 0x7FF
        if hi & 0x400:
            hi -= 0x800
        t = addr + 4 + (hi << 12) + ((h2 & 0x7FF) << 1)
        return "bl %s" % label(t, "call")
    return None
