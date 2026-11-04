/* Generic C fixtures: no ROM, SDK symbols, or program-specific instructions. */
typedef unsigned int u32;
typedef signed int s32;
u32 cc_and_eq(u32 a,u32 b,u32 *out){u32 r=a&b;*out=r;if(r==0)return 11;return 17;}
u32 cc_and_ne(u32 a,u32 b,u32 *out){u32 r=a&b;*out=r;if(r!=0)return 11;return 17;}
u32 cc_and_signed(u32 a,u32 b,u32 *out){s32 r=a&b;*out=r;if(r>0)return 23;return 29;}
u32 cc_and_mixed(u32 a,u32 b,u32 *out){s32 r=a&b;*out=r;if(r==0)return 3;if(r<0)return 5;return 7;}
u32 cc_and_two_stores(u32 a,u32 b,u32 *out){u32 r=a&b;out[0]=r;out[1]=r;if(r==0)return 11;return 17;}
u32 cc_cmp_chain(u32 a,u32 b,u32 *out){*out=a;if(a<b)return 11;if(a==b)return 13;return 17;}
u32 cc_cmp_store_chain(u32 a,u32 b,u32 *out){if(a<b){*out=a;return 11;}*out=a;if(a==b)return 13;return 17;}
u32 cc_and_clobber(u32 a,u32 b,u32 *out){u32 r=a&b;*out=r;out[1]=r+1;if((s32)r<0)return 23;return 29;}
u32 cc_and_volatile(u32 a,u32 b,volatile u32 *out){u32 r=a&b;*out=r;if(r==0)return 11;return 17;}
u32 cc_negative_spin(u32 a,u32 b,u32 *out){__asm__("mov r0, #11");for(;;){} }
u32 cc_cmp_shared(u32 a,u32 b,u32 *out){if(a<b)goto chosen;if(a!=b)goto high;if(*out&1)goto chosen;*out=13;return 13;chosen:*out=11;return 11;high:*out=17;return 17;}
u32 cc_and_opaque(u32 a,u32 b,u32 *out){u32 r=a&b;*out=r;__asm__ volatile("" ::: "cc");if(r==0)return 11;return 17;}
u32 cc_cmp_changed(u32 a,u32 b,u32 *out){*out=a;if(a<b)return 11;a++;if(a==b)return 13;return 17;}
u32 cc_and_opaque_taken(u32 a,u32 b,u32 *out){u32 r=a&b;*out=r;if(r)goto chosen;return 17;chosen:__asm__ volatile("" ::: "cc");return 11;}
u32 cc_and_postinc(u32 a,u32 b,u32 *out){u32 r=a&b;*out++=r;if(r==0)*out=11;else*out=17;return *out;}
/* Kept out of line at -O2; the harness requires the actual BL and BX LR. */
u32 sdk_cc_identity(u32 value){return value;}
u32 cc_and_call_taken(u32 a,u32 b,u32 *out){u32 r=a&b;*out=r;if(r){r=sdk_cc_identity(r);if((s32)r<0)return 23;return 29;}return 17;}
