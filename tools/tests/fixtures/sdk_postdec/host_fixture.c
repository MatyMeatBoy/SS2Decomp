#include "config.h"
#include "system.h"
#include "rtl.h"
#include "tree.h"
#include "flags.h"
#include "insn-attr.h"
extern void init_reg_sets(void);
extern void init_rtl(void);
extern void init_emit_once(int);
extern void init_emit(void);
static int failures, cases;
static void check(int value,const char *name)
{
    cases++;
    printf("%s: %s\n",name,value?"PASS":"FAIL");
    if (!value) failures++;
}
static void run_case(const char *kind,int expected)
{
    rtx tmp,count,cp,sub,cmp,extra=NULL_RTX,scan,source,dest;
    int active=0,changed;
    init_emit();
    emit_note("fixture",NOTE_INSN_FUNCTION_BEG);
    tmp=gen_reg_rtx(SImode);count=gen_rtx_REG(SImode,1);
    if (!strcmp(kind,"user pseudo")) REG_USERVAR_P(tmp)=1;
    if (!strcmp(kind,"hard ABI r4")) tmp=gen_rtx_REG(SImode,4);
    if (!strcmp(kind,"high ABI r8")) tmp=gen_rtx_REG(SImode,8);
    if (!strcmp(kind,"virtual temp")) tmp=gen_rtx_REG(SImode,FIRST_VIRTUAL_REGISTER);
    if (!strcmp(kind,"virtual count")) count=gen_rtx_REG(SImode,FIRST_VIRTUAL_REGISTER);
    if (!strcmp(kind,"high count")) count=gen_rtx_REG(SImode,8);
    if (!strcmp(kind,"pseudo count")) count=gen_reg_rtx(SImode);
    if (!strcmp(kind,"temp count alias")) count=tmp;
    if (!strcmp(kind,"extra definition")) emit_insn(gen_rtx_SET(VOIDmode,tmp,GEN_INT(9)));
    cp=emit_insn(gen_rtx_SET(VOIDmode,tmp,count));
    if (!strcmp(kind,"note between")) emit_note("fixture",1);
    if (!strcmp(kind,"label between")) emit_label(gen_label_rtx());
    if (!strcmp(kind,"asm between")) emit_insn(gen_rtx_ASM_INPUT(VOIDmode,"nop"));
    if (!strcmp(kind,"use between")) emit_insn(gen_rtx_USE(VOIDmode,count));
    if (!strcmp(kind,"clobber between")) emit_insn(gen_rtx_CLOBBER(VOIDmode,count));
    if (!strcmp(kind,"call between"))
        emit_call_insn(gen_rtx_CALL(VOIDmode,gen_rtx_MEM(SImode,gen_rtx_SYMBOL_REF(SImode,"callback")),const0_rtx));
    source=count;dest=count;
    if (!strcmp(kind,"different source")) source=gen_rtx_REG(SImode,2);
    if (!strcmp(kind,"different destination")) dest=gen_rtx_REG(SImode,2);
    sub=emit_insn(gen_rtx_SET(VOIDmode,dest,
        gen_rtx_PLUS(SImode,source,GEN_INT(!strcmp(kind,"wrong decrement")?-2:-1))));
    cmp=emit_insn(gen_rtx_SET(VOIDmode,cc0_rtx,
        gen_rtx_COMPARE(VOIDmode,tmp,GEN_INT(!strcmp(kind,"wrong comparison")?2:1))));
    if (!strcmp(kind,"libcall note")) REG_NOTES(sub)=gen_rtx_INSN_LIST(REG_LIBCALL,cmp,NULL_RTX);
    if (!strcmp(kind,"retval note")) REG_NOTES(sub)=gen_rtx_INSN_LIST(REG_RETVAL,cp,NULL_RTX);
    if (!strcmp(kind,"benign equal note")) REG_NOTES(sub)=gen_rtx_EXPR_LIST(REG_EQUAL,GEN_INT(42),NULL_RTX);
    if (!strcmp(kind,"frame copy")) RTX_FRAME_RELATED_P(cp)=1;
    if (!strcmp(kind,"frame subtract")) RTX_FRAME_RELATED_P(sub)=1;
    if (!strcmp(kind,"frame compare")) RTX_FRAME_RELATED_P(cmp)=1;
    if (!strcmp(kind,"live returned") || !strcmp(kind,"live register"))
        emit_insn(gen_rtx_SET(VOIDmode,gen_rtx_REG(SImode,0),tmp));
    if (!strcmp(kind,"live global store"))
        emit_insn(gen_rtx_SET(VOIDmode,gen_rtx_MEM(SImode,gen_rtx_SYMBOL_REF(SImode,"observable")),tmp));
    if (!strcmp(kind,"live subreg"))
        emit_insn(gen_rtx_SET(VOIDmode,gen_rtx_REG(QImode,0),gen_rtx_SUBREG(QImode,tmp,0)));
    if (!strcmp(kind,"live notes"))
        REG_NOTES(sub)=gen_rtx_EXPR_LIST(REG_EQUAL,tmp,NULL_RTX);
    if (!strcmp(kind,"call usage"))
    {
        extra=emit_call_insn(gen_rtx_CALL(VOIDmode,gen_rtx_MEM(SImode,gen_rtx_SYMBOL_REF(SImode,"callback")),const0_rtx));
        CALL_INSN_FUNCTION_USAGE(extra)=gen_rtx_EXPR_LIST(VOIDmode,gen_rtx_USE(VOIDmode,tmp),NULL_RTX);
    }
    if (!strcmp(kind,"asm operand"))
        emit_insn(gen_rtx_ASM_OPERANDS(VOIDmode,"","",0,gen_rtvec(1,tmp),
            gen_rtvec(1,gen_rtx_ASM_INPUT(SImode,"r")),"fixture",1));
    if (!strcmp(kind,"new count comparison"))
        extra=emit_insn(gen_rtx_SET(VOIDmode,cc0_rtx,count));
    flag_thumb_postdec_flags=strcmp(kind,"off")!=0;
    changed=thumb_postdec_pre_flow(get_insns());
    check(changed==expected,kind);
    if (changed && expected)
    {
        rtx p=PATTERN(sub),cc;
        check(GET_CODE(p)==PARALLEL && XVECLEN(p,0)==2,"parallel has exactly two outputs");
        cc=XVECEXP(p,0,1);
        check(GET_CODE(cc)==SET && SET_DEST(cc)==cc0_rtx
            && rtx_equal_p(XEXP(SET_SRC(cc),0),count)
            && INTVAL(XEXP(SET_SRC(cc),1))==1,"condition uses old tied count");
        check(get_attr_conds(sub)==CONDS_CHANGED,"CC status is changed");
        for(scan=get_insns();scan;scan=NEXT_INSN(scan))
            if(GET_CODE(scan)==INSN || GET_CODE(scan)==CALL_INSN || GET_CODE(scan)==JUMP_INSN)
            {
                active++;
                check(!reg_mentioned_p(tmp,PATTERN(scan)),"dead pseudo never reaches allocation");
            }
        if (extra) check(PATTERN(extra) && SET_SRC(PATTERN(extra))==count,"later count comparison preserved");
        else check(active==1,"only parallel remains");
    }
}
int main(void)
{
    const char *bad[]={"off","user pseudo","hard ABI r4","high ABI r8","virtual temp","virtual count","high count","temp count alias","extra definition","label between","asm between","use between","clobber between","call between","different source","different destination","wrong decrement","wrong comparison","libcall note","retval note","frame copy","frame subtract","frame compare","live returned","live register","live global store","live subreg","live notes","call usage","asm operand"};
    int i;
    init_obstacks();init_rtl();init_reg_sets();init_emit_once(0);optimize=2;
    run_case("dead pseudo",1);run_case("pseudo count",1);
    run_case("note between",1);run_case("new count comparison",1);run_case("benign equal note",1);
    for(i=0;i<sizeof(bad)/sizeof(bad[0]);i++) run_case(bad[i],0);
    printf("checks=%d failures=%d\n",cases,failures);
    return failures!=0;
}
