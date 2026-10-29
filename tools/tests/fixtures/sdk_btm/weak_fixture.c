typedef unsigned int u32;
register u32 *dest asm("r0");
register volatile u32 z1 asm("r1");
register volatile u32 z2 asm("r2");
register volatile u32 z3 asm("r3");
register volatile u32 z4 asm("r4");
typedef u32 weak_u32 __attribute__((aligned(1)));
void stores_weak(void) __attribute__((naked));
void stores_weak(void){
asm volatile("push {r4-r7}" : : : "memory");
((weak_u32 *)dest)[0]=z1;((weak_u32 *)dest)[1]=z2;((weak_u32 *)dest)[2]=z3;((weak_u32 *)dest)[3]=z4;dest+=4;
}
asm("pop {r4-r7}\nbx lr");
