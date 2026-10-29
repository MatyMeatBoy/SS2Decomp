typedef unsigned int u32; typedef int s32;
register u32 d asm("r0"); register u32 s asm("r1"); register u32 out asm("r2"); register u32 tmp asm("r3");
void subf_flags_0(void) __attribute__((naked));
void subf_flags_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d=s-0; if(s<=limit)goto lower; asm("pop {r4-r7}\nbx lr @ greater ABI return"); lower: asm("pop {r4-r7}\nbx lr @ lower ABI return");}
void subf_eq_0(void) __attribute__((naked));
void subf_eq_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d=s-0; out=(s == limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ne_0(void) __attribute__((naked));
void subf_ne_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d=s-0; out=(s != limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lt_0(void) __attribute__((naked));
void subf_lt_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d=s-0; out=((s32)s < (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_le_0(void) __attribute__((naked));
void subf_le_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d=s-0; out=((s32)s <= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_gt_0(void) __attribute__((naked));
void subf_gt_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d=s-0; out=((s32)s > (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ge_0(void) __attribute__((naked));
void subf_ge_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d=s-0; out=((s32)s >= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lo_0(void) __attribute__((naked));
void subf_lo_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d=s-0; out=(s < limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ls_0(void) __attribute__((naked));
void subf_ls_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d=s-0; out=(s <= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hi_0(void) __attribute__((naked));
void subf_hi_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d=s-0; out=(s > limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hs_0(void) __attribute__((naked));
void subf_hs_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d=s-0; out=(s >= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_multiple_0(void) __attribute__((naked));
void subf_multiple_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d=s-0; out=0; if(s>limit)out=1; if(s==limit)out+=2; if((s32)s<(s32)limit)out+=4;
asm("pop {r4-r7}\nbx lr");}
void subf_same_0(void) __attribute__((naked));
void subf_same_0(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=0;
d -= 0; out = d <= limit;
asm("pop {r4-r7}\nbx lr");}
void subf_flags_1(void) __attribute__((naked));
void subf_flags_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d=s-1; if(s<=limit)goto lower; asm("pop {r4-r7}\nbx lr @ greater ABI return"); lower: asm("pop {r4-r7}\nbx lr @ lower ABI return");}
void subf_eq_1(void) __attribute__((naked));
void subf_eq_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d=s-1; out=(s == limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ne_1(void) __attribute__((naked));
void subf_ne_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d=s-1; out=(s != limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lt_1(void) __attribute__((naked));
void subf_lt_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d=s-1; out=((s32)s < (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_le_1(void) __attribute__((naked));
void subf_le_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d=s-1; out=((s32)s <= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_gt_1(void) __attribute__((naked));
void subf_gt_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d=s-1; out=((s32)s > (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ge_1(void) __attribute__((naked));
void subf_ge_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d=s-1; out=((s32)s >= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lo_1(void) __attribute__((naked));
void subf_lo_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d=s-1; out=(s < limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ls_1(void) __attribute__((naked));
void subf_ls_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d=s-1; out=(s <= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hi_1(void) __attribute__((naked));
void subf_hi_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d=s-1; out=(s > limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hs_1(void) __attribute__((naked));
void subf_hs_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d=s-1; out=(s >= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_multiple_1(void) __attribute__((naked));
void subf_multiple_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d=s-1; out=0; if(s>limit)out=1; if(s==limit)out+=2; if((s32)s<(s32)limit)out+=4;
asm("pop {r4-r7}\nbx lr");}
void subf_same_1(void) __attribute__((naked));
void subf_same_1(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=1;
d -= 1; out = d <= limit;
asm("pop {r4-r7}\nbx lr");}
void subf_flags_2(void) __attribute__((naked));
void subf_flags_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d=s-2; if(s<=limit)goto lower; asm("pop {r4-r7}\nbx lr @ greater ABI return"); lower: asm("pop {r4-r7}\nbx lr @ lower ABI return");}
void subf_eq_2(void) __attribute__((naked));
void subf_eq_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d=s-2; out=(s == limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ne_2(void) __attribute__((naked));
void subf_ne_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d=s-2; out=(s != limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lt_2(void) __attribute__((naked));
void subf_lt_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d=s-2; out=((s32)s < (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_le_2(void) __attribute__((naked));
void subf_le_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d=s-2; out=((s32)s <= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_gt_2(void) __attribute__((naked));
void subf_gt_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d=s-2; out=((s32)s > (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ge_2(void) __attribute__((naked));
void subf_ge_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d=s-2; out=((s32)s >= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lo_2(void) __attribute__((naked));
void subf_lo_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d=s-2; out=(s < limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ls_2(void) __attribute__((naked));
void subf_ls_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d=s-2; out=(s <= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hi_2(void) __attribute__((naked));
void subf_hi_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d=s-2; out=(s > limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hs_2(void) __attribute__((naked));
void subf_hs_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d=s-2; out=(s >= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_multiple_2(void) __attribute__((naked));
void subf_multiple_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d=s-2; out=0; if(s>limit)out=1; if(s==limit)out+=2; if((s32)s<(s32)limit)out+=4;
asm("pop {r4-r7}\nbx lr");}
void subf_same_2(void) __attribute__((naked));
void subf_same_2(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=2;
d -= 2; out = d <= limit;
asm("pop {r4-r7}\nbx lr");}
void subf_flags_3(void) __attribute__((naked));
void subf_flags_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d=s-3; if(s<=limit)goto lower; asm("pop {r4-r7}\nbx lr @ greater ABI return"); lower: asm("pop {r4-r7}\nbx lr @ lower ABI return");}
void subf_eq_3(void) __attribute__((naked));
void subf_eq_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d=s-3; out=(s == limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ne_3(void) __attribute__((naked));
void subf_ne_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d=s-3; out=(s != limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lt_3(void) __attribute__((naked));
void subf_lt_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d=s-3; out=((s32)s < (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_le_3(void) __attribute__((naked));
void subf_le_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d=s-3; out=((s32)s <= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_gt_3(void) __attribute__((naked));
void subf_gt_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d=s-3; out=((s32)s > (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ge_3(void) __attribute__((naked));
void subf_ge_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d=s-3; out=((s32)s >= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lo_3(void) __attribute__((naked));
void subf_lo_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d=s-3; out=(s < limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ls_3(void) __attribute__((naked));
void subf_ls_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d=s-3; out=(s <= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hi_3(void) __attribute__((naked));
void subf_hi_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d=s-3; out=(s > limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hs_3(void) __attribute__((naked));
void subf_hs_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d=s-3; out=(s >= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_multiple_3(void) __attribute__((naked));
void subf_multiple_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d=s-3; out=0; if(s>limit)out=1; if(s==limit)out+=2; if((s32)s<(s32)limit)out+=4;
asm("pop {r4-r7}\nbx lr");}
void subf_same_3(void) __attribute__((naked));
void subf_same_3(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=3;
d -= 3; out = d <= limit;
asm("pop {r4-r7}\nbx lr");}
void subf_flags_4(void) __attribute__((naked));
void subf_flags_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d=s-4; if(s<=limit)goto lower; asm("pop {r4-r7}\nbx lr @ greater ABI return"); lower: asm("pop {r4-r7}\nbx lr @ lower ABI return");}
void subf_eq_4(void) __attribute__((naked));
void subf_eq_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d=s-4; out=(s == limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ne_4(void) __attribute__((naked));
void subf_ne_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d=s-4; out=(s != limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lt_4(void) __attribute__((naked));
void subf_lt_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d=s-4; out=((s32)s < (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_le_4(void) __attribute__((naked));
void subf_le_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d=s-4; out=((s32)s <= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_gt_4(void) __attribute__((naked));
void subf_gt_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d=s-4; out=((s32)s > (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ge_4(void) __attribute__((naked));
void subf_ge_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d=s-4; out=((s32)s >= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lo_4(void) __attribute__((naked));
void subf_lo_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d=s-4; out=(s < limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ls_4(void) __attribute__((naked));
void subf_ls_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d=s-4; out=(s <= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hi_4(void) __attribute__((naked));
void subf_hi_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d=s-4; out=(s > limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hs_4(void) __attribute__((naked));
void subf_hs_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d=s-4; out=(s >= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_multiple_4(void) __attribute__((naked));
void subf_multiple_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d=s-4; out=0; if(s>limit)out=1; if(s==limit)out+=2; if((s32)s<(s32)limit)out+=4;
asm("pop {r4-r7}\nbx lr");}
void subf_same_4(void) __attribute__((naked));
void subf_same_4(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=4;
d -= 4; out = d <= limit;
asm("pop {r4-r7}\nbx lr");}
void subf_flags_5(void) __attribute__((naked));
void subf_flags_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d=s-5; if(s<=limit)goto lower; asm("pop {r4-r7}\nbx lr @ greater ABI return"); lower: asm("pop {r4-r7}\nbx lr @ lower ABI return");}
void subf_eq_5(void) __attribute__((naked));
void subf_eq_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d=s-5; out=(s == limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ne_5(void) __attribute__((naked));
void subf_ne_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d=s-5; out=(s != limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lt_5(void) __attribute__((naked));
void subf_lt_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d=s-5; out=((s32)s < (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_le_5(void) __attribute__((naked));
void subf_le_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d=s-5; out=((s32)s <= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_gt_5(void) __attribute__((naked));
void subf_gt_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d=s-5; out=((s32)s > (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ge_5(void) __attribute__((naked));
void subf_ge_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d=s-5; out=((s32)s >= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lo_5(void) __attribute__((naked));
void subf_lo_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d=s-5; out=(s < limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ls_5(void) __attribute__((naked));
void subf_ls_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d=s-5; out=(s <= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hi_5(void) __attribute__((naked));
void subf_hi_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d=s-5; out=(s > limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hs_5(void) __attribute__((naked));
void subf_hs_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d=s-5; out=(s >= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_multiple_5(void) __attribute__((naked));
void subf_multiple_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d=s-5; out=0; if(s>limit)out=1; if(s==limit)out+=2; if((s32)s<(s32)limit)out+=4;
asm("pop {r4-r7}\nbx lr");}
void subf_same_5(void) __attribute__((naked));
void subf_same_5(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=5;
d -= 5; out = d <= limit;
asm("pop {r4-r7}\nbx lr");}
void subf_flags_6(void) __attribute__((naked));
void subf_flags_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d=s-6; if(s<=limit)goto lower; asm("pop {r4-r7}\nbx lr @ greater ABI return"); lower: asm("pop {r4-r7}\nbx lr @ lower ABI return");}
void subf_eq_6(void) __attribute__((naked));
void subf_eq_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d=s-6; out=(s == limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ne_6(void) __attribute__((naked));
void subf_ne_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d=s-6; out=(s != limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lt_6(void) __attribute__((naked));
void subf_lt_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d=s-6; out=((s32)s < (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_le_6(void) __attribute__((naked));
void subf_le_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d=s-6; out=((s32)s <= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_gt_6(void) __attribute__((naked));
void subf_gt_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d=s-6; out=((s32)s > (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ge_6(void) __attribute__((naked));
void subf_ge_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d=s-6; out=((s32)s >= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lo_6(void) __attribute__((naked));
void subf_lo_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d=s-6; out=(s < limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ls_6(void) __attribute__((naked));
void subf_ls_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d=s-6; out=(s <= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hi_6(void) __attribute__((naked));
void subf_hi_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d=s-6; out=(s > limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hs_6(void) __attribute__((naked));
void subf_hs_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d=s-6; out=(s >= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_multiple_6(void) __attribute__((naked));
void subf_multiple_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d=s-6; out=0; if(s>limit)out=1; if(s==limit)out+=2; if((s32)s<(s32)limit)out+=4;
asm("pop {r4-r7}\nbx lr");}
void subf_same_6(void) __attribute__((naked));
void subf_same_6(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=6;
d -= 6; out = d <= limit;
asm("pop {r4-r7}\nbx lr");}
void subf_flags_7(void) __attribute__((naked));
void subf_flags_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d=s-7; if(s<=limit)goto lower; asm("pop {r4-r7}\nbx lr @ greater ABI return"); lower: asm("pop {r4-r7}\nbx lr @ lower ABI return");}
void subf_eq_7(void) __attribute__((naked));
void subf_eq_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d=s-7; out=(s == limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ne_7(void) __attribute__((naked));
void subf_ne_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d=s-7; out=(s != limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lt_7(void) __attribute__((naked));
void subf_lt_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d=s-7; out=((s32)s < (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_le_7(void) __attribute__((naked));
void subf_le_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d=s-7; out=((s32)s <= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_gt_7(void) __attribute__((naked));
void subf_gt_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d=s-7; out=((s32)s > (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ge_7(void) __attribute__((naked));
void subf_ge_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d=s-7; out=((s32)s >= (s32)limit);
asm("pop {r4-r7}\nbx lr");}
void subf_lo_7(void) __attribute__((naked));
void subf_lo_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d=s-7; out=(s < limit);
asm("pop {r4-r7}\nbx lr");}
void subf_ls_7(void) __attribute__((naked));
void subf_ls_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d=s-7; out=(s <= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hi_7(void) __attribute__((naked));
void subf_hi_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d=s-7; out=(s > limit);
asm("pop {r4-r7}\nbx lr");}
void subf_hs_7(void) __attribute__((naked));
void subf_hs_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d=s-7; out=(s >= limit);
asm("pop {r4-r7}\nbx lr");}
void subf_multiple_7(void) __attribute__((naked));
void subf_multiple_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d=s-7; out=0; if(s>limit)out=1; if(s==limit)out+=2; if((s32)s<(s32)limit)out+=4;
asm("pop {r4-r7}\nbx lr");}
void subf_same_7(void) __attribute__((naked));
void subf_same_7(void){u32 limit; asm volatile("push {r4-r7}" : : : "r4", "r5", "r6", "r7", "memory"); limit=7;
d -= 7; out = d <= limit;
asm("pop {r4-r7}\nbx lr");}
void subf_negative(void) __attribute__((naked)); void subf_negative(void){for(;;){}}
