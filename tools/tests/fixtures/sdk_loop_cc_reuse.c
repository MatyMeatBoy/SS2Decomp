typedef unsigned int u32;
typedef int s32;
typedef unsigned char u8;
u32 loop_byte(u32 a,u32 b,u32*out){u32 n=*(u8*)out;u32 sum=0;again:sum+=a;if((s32)--n>0)goto again;out[1]=n;return sum;}
u32 loop_word(u32 a,u32 b,u32*out){u32 n=*out;u32 sum=0;again:sum+=a;if(sum==3*a)goto done;if((s32)--n>0)goto again;done:out[1]=n;return sum;}
u32 loop_changed(u32 a,u32 b,u32*out){u32 n=*(u8*)out;u32 sum=0;again:n+=b;sum++;if(sum==3)goto done;if((s32)--n>0)goto again;done:out[1]=n;return sum;}
u32 loop_inner_entry(u32 a,u32 b,u32*out){u32 n=b;u32 sum=0;if(a&1)goto middle;n=*(u8*)out;again:sum+=2;middle:if(sum>4)goto done;if((s32)--n>0)goto again;done:out[1]=n;return sum;}
u32 loop_opaque(u32 a,u32 b,u32*out){u32 n=*(u8*)out;u32 sum=0;again:sum+=a;__asm__ volatile("" ::: "cc");if((s32)--n>0)goto again;out[1]=n;return sum;}
u32 loop_volatile(u32 a,u32 b,u32*out){u32 n=*(volatile u8*)out;u32 sum=0;again:sum+=a;if((s32)--n>0)goto again;out[1]=n;return sum;}

u32 loop_identity(u32 value){return value;}
u32 loop_call(u32 a,u32 b,u32*out){u32 n=*(u8*)out;u32 sum=0;again:sum=loop_identity(sum+a);if((s32)--n>0)goto again;out[1]=n;return sum;}
u32 loop_opaque_exit(u32 a,u32 b,u32*out){u32 n=*(u8*)out;u32 sum=0;again:sum+=a;if((s32)--n>0)goto again;out[1]=n;__asm__ volatile("" ::: "cc");return sum;}
#define STORES10 *target=sum; *target=sum; *target=sum; *target=sum; *target=sum; *target=sum; *target=sum; *target=sum; *target=sum; *target=sum;
u32 loop_bound(u32 a,u32 b,u32*out){u32 n=*(u8*)out;u32 sum=0;volatile u32*target=out+1;again:sum+=a;
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
STORES10
if((s32)--n>0)goto again;out[1]=n;return sum;}
u32 loop_negative_spin(u32 a,u32 b,u32*out){for(;;){}}
