typedef unsigned int u32;
register u32 *dest asm("r0");
register volatile u32 z1 asm("r1");
register volatile u32 z2 asm("r2");
register volatile u32 z3 asm("r3");
register volatile u32 z4 asm("r4");
volatile u32 effect_counter;
void stores_negative(void) __attribute__((naked));
void stores_negative(void){
asm volatile("push {r4-r7}" : : : "memory");
dest+=4;asm volatile("" : "+r"(dest));for(;;){}
}
asm("pop {r4-r7}\nbx lr");
void stores_cc0_compare(void) __attribute__((naked));
void stores_cc0_compare(void){
asm volatile("push {r4-r7}" : : : "memory");
dest[0]=z1;dest[1]=z2;dest[2]=z3;dest[3]=z4;dest+=4;if ((int)(u32)dest < 0) effect_counter++;
asm volatile("pop {r4-r7}\nbx lr" : : : "memory");
}
void stores_one(void) __attribute__((naked));
void stores_one(void){
asm volatile("push {r4-r7}" : : : "memory");
dest[0]=z1;dest[1]=z2;dest[2]=z3;dest[3]=z4;dest+=4;
}
asm("pop {r4-r7}\nbx lr");
void stores_four(void) __attribute__((naked));
void stores_four(void){
asm volatile("push {r4-r7}" : : : "memory");
dest[0]=z1;dest[1]=z2;dest[2]=z3;dest[3]=z4;dest+=4;dest[0]=z1;dest[1]=z2;dest[2]=z3;dest[3]=z4;dest+=4;dest[0]=z1;dest[1]=z2;dest[2]=z3;dest[3]=z4;dest+=4;dest[0]=z1;dest[1]=z2;dest[2]=z3;dest[3]=z4;dest+=4;
}
asm("pop {r4-r7}\nbx lr");
void stores_descending(void) __attribute__((naked));
void stores_descending(void){
asm volatile("push {r4-r7}" : : : "memory");
dest[0]=z4;dest[1]=z3;dest[2]=z2;dest[3]=z1;dest+=4;
}
asm("pop {r4-r7}\nbx lr");
void stores_duplicate(void) __attribute__((naked));
void stores_duplicate(void){
asm volatile("push {r4-r7}" : : : "memory");
dest[0]=z1;dest[1]=z1;dest[2]=z3;dest[3]=z4;dest+=4;
}
asm("pop {r4-r7}\nbx lr");
void stores_base_source(void) __attribute__((naked));
void stores_base_source(void){
asm volatile("push {r4-r7}" : : : "memory");
dest[0]=(u32)dest;dest[1]=z2;dest[2]=z3;dest[3]=z4;dest+=4;
}
asm("pop {r4-r7}\nbx lr");
void stores_gap(void) __attribute__((naked));
void stores_gap(void){
asm volatile("push {r4-r7}" : : : "memory");
dest[0]=z1;dest[1]=z2;dest[3]=z3;dest[4]=z4;dest+=4;
}
asm("pop {r4-r7}\nbx lr");
void stores_side_effect(void) __attribute__((naked));
void stores_side_effect(void){
asm volatile("push {r4-r7}" : : : "memory");
dest[0]=z1;dest[1]=z2;effect_counter++;dest[2]=z3;dest[3]=z4;dest+=4;
asm volatile("pop {r4-r7}\nbx lr" : : : "memory");
}
void stores_volatile(void) __attribute__((naked));
void stores_volatile(void){
asm volatile("push {r4-r7}" : : : "memory");
((volatile u32 *)dest)[0]=z1;((volatile u32 *)dest)[1]=z2;((volatile u32 *)dest)[2]=z3;((volatile u32 *)dest)[3]=z4;dest+=4;
}
asm("pop {r4-r7}\nbx lr");
void stores_opaque_flags(void) __attribute__((naked));
void stores_opaque_flags(void){
asm volatile("push {r4-r7}" : : : "memory");
dest[0]=z1;dest[1]=z2;dest[2]=z3;dest[3]=z4;dest+=4;asm volatile("bcs 1f\nnop\n1:" : : : "memory");
}
asm("pop {r4-r7}\nbx lr");
