#include "config.h"
#include "system.h"
#include "rtl.h"
#include "tree.h"
#include "flags.h"

extern void init_reg_sets(void);
extern void init_rtl(void);
extern void init_emit_once(int);
extern void init_emit(void);
extern rtx fixture_copy_for_inline(rtx);
extern rtx fixture_eliminate_changed_address(rtx);
extern rtx change_address(rtx, enum machine_mode, rtx);
extern int reload_completed;

static int failures;
static int cases;

static void check(int condition, const char *name)
{
    cases++;
    printf("%s: %s\n", name, condition ? "PASS" : "FAIL");
    if (!condition) failures++;
}

int main(void)
{
    rtx base, other, mem, copied, changed, shifted;
    init_obstacks();
    init_rtl();
    init_reg_sets();
    init_emit_once(0);
    init_emit();
    base = gen_rtx_REG(SImode, 0);
    other = gen_rtx_REG(SImode, 1);
    mem = gen_rtx_MEM(SImode, base);
    check(!MEM_THUMB_WORD_ALIGNED_P(mem), "new MEM has no proof");
    MEM_THUMB_WORD_ALIGNED_P(mem) = 1;
    mem->used = 0;
    copied = copy_rtx_if_shared(mem);
    check(copied == mem && MEM_THUMB_WORD_ALIGNED_P(mem), "first unshare keeps original");
    copied = copy_rtx_if_shared(mem);
    check(copied != mem && !MEM_THUMB_WORD_ALIGNED_P(copied), "unshare clone loses proof");
    copied = copy_rtx(mem);
    check(copied != mem && !MEM_THUMB_WORD_ALIGNED_P(copied), "copy_rtx loses proof");
    copied = copy_most_rtx(mem, NULL_RTX);
    check(copied != mem && !MEM_THUMB_WORD_ALIGNED_P(copied), "copy_most_rtx loses proof");
    copied = fixture_copy_for_inline(mem);
    check(copied != mem && !MEM_THUMB_WORD_ALIGNED_P(copied), "inline clone loses proof");
    changed = fixture_eliminate_changed_address(mem);
    check(changed != mem && !MEM_THUMB_WORD_ALIGNED_P(changed), "reload changed address loses proof");
    reload_completed = 1;
    changed = change_address(mem, SImode, other);
    check(changed != mem && !MEM_THUMB_WORD_ALIGNED_P(changed), "different address loses proof");
    shifted = gen_rtx_PLUS(SImode, base, GEN_INT(1));
    changed = change_address(mem, QImode, shifted);
    check(changed != mem && !MEM_THUMB_WORD_ALIGNED_P(changed), "byte-offset address loses proof");
    changed = change_address(mem, VOIDmode, NULL_RTX);
    check(changed == mem && MEM_THUMB_WORD_ALIGNED_P(changed), "unchanged address returns original");
    check(MEM_THUMB_WORD_ALIGNED_P(mem), "clones did not corrupt source proof");
    printf("cases=%d failures=%d\n", cases, failures);
    return failures ? 1 : 0;
}
