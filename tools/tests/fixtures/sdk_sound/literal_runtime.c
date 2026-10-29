typedef unsigned int u32; typedef unsigned char u8;
typedef u32 (*Callback)(u32);
#define LITERAL __attribute__((section(".text"),aligned(4),thumb_literal))
extern const u32 common LITERAL;
extern const volatile u32 changing LITERAL;
extern u32 *const pointer_literal LITERAL;
extern Callback const callback_literal LITERAL;
extern u8 *const byte_pointer_literal LITERAL;
u32 prefix(u32 x){return x;}
u32 read_shared(u32 x){return common+x;}
u32 twice_shared(u32 x){return common+common+x;}
u32 read_pointer(u32 x){return pointer_literal[x&1]+x;}
u32 read_byte_pointer(u32 x){return byte_pointer_literal[x&1]+x;}
u32 call_callback(u32 x){return callback_literal(x);}
u32 volatile_sum(u32 x){return changing+changing+x;}
u32 callback_target(u32 x){return x*3+7;}
u32 negative_spin(u32 x){for(;;){}}
const u32 common LITERAL=0x12345678;
const volatile u32 changing LITERAL=11;
u32 data[3]={0xdeadbeef,0x13579bdf,0x2468ace0};
u8 byte_data[4]={5,11,23,99};
u32 *const pointer_literal LITERAL=data+1;
u8 *const byte_pointer_literal LITERAL=byte_data+1;
Callback const callback_literal LITERAL=callback_target;
