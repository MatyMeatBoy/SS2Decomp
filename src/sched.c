#include "global.h"

s32 sub_080003F0(void) { return 1; }

/* Scheduler state accessors.  These are kept as word accesses because the
 * state lives in the fixed-address scheduler workspace. */
u32 sub_08000464(void)
{
    return *(u32 *)0x03001244;
}

u32 sub_0800048C(void)
{
    return *(u32 *)0x0300123C;
}

u32 sub_08000470(u32 value)
{
    u32 *node = *(u32 **)0x03001240;
    while (node != 0) {
        if (value == *node)
            return 1;
        node = (u32 *)*node;
    }
    return 0;
}
