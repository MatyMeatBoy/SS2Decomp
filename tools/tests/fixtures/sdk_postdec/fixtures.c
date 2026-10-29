typedef unsigned int u32;typedef int s32;
register u32 out asm("r0");register u32 count asm("r1");register u32 aux2 asm("r2");register u32 aux3 asm("r3");
volatile u32 observed;void callback(void);
void sgt(void) __attribute__((naked));
void sgt(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if ((s32)count-- > 1) aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void sle(void) __attribute__((naked));
void sle(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if ((s32)count-- <= 1) aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void seq(void) __attribute__((naked));
void seq(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if ((s32)count-- == 1) aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void sne(void) __attribute__((naked));
void sne(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if ((s32)count-- != 1) aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void sge(void) __attribute__((naked));
void sge(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if ((s32)count-- >= 1) aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void slt(void) __attribute__((naked));
void slt(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if ((s32)count-- < 1) aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void ugt(void) __attribute__((naked));
void ugt(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if (count-- > 1) aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void ule(void) __attribute__((naked));
void ule(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if (count-- <= 1) aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void ueq(void) __attribute__((naked));
void ueq(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if (count-- == 1) aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void une(void) __attribute__((naked));
void une(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if (count-- != 1) aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void uge(void) __attribute__((naked));
void uge(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if (count-- >= 1) aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void ult(void) __attribute__((naked));
void ult(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if (count-- < 1) aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void new_count(void) __attribute__((naked));
void new_count(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if((s32)count-- >1)out=7;else out=9;if((s32)count>0)aux2=11;else aux2=13;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void live_return(void) __attribute__((naked));
void live_return(void){u32 old;
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
old=count--;out=old;if((s32)old>1)aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void live_memory(void) __attribute__((naked));
void live_memory(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
observed=count--;if((s32)observed>1)out=7;else out=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void live_global(void) __attribute__((naked));
void live_global(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
aux2=count--;if((s32)aux2>1)out=7;else out=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void live_asm(void) __attribute__((naked));
void live_asm(void){u32 old;
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
old=count--;asm volatile("mov %0,%1" : "=r"(aux2) : "r"(old));if((s32)old>1)out=7;else out=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void new_only(void) __attribute__((naked));
void new_only(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
count--;if((s32)count>1)aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void different_dest(void) __attribute__((naked));
void different_dest(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
aux2=count-1;if((s32)count>1)out=7;else out=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void different_source(void) __attribute__((naked));
void different_source(void){u32 old;
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
old=count;count=aux3-1;if((s32)old>1)out=7;else out=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void wrong_const(void) __attribute__((naked));
void wrong_const(void){
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
if((s32)count-- >2)aux2=7;else aux2=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void call_gap(void) __attribute__((naked));
void call_gap(void){u32 old;
asm volatile("push {r4-r7}\nmov r4,lr\npush {r4}" :::"r4","memory");
old=count--;callback();if((s32)old>1)out=7;else out=9;}
asm("pop {r4}\nmov lr,r4\npop {r4-r7}\nbx lr");
void callback(void) __attribute__((naked));
void callback(void){}
asm("bx lr");
