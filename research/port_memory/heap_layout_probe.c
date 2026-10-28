/* Layout measurements only: this is not a native allocator or queue port. */
#include <stdio.h>
#include <stddef.h>
struct NativeBlock {
    unsigned int prev:31;
    unsigned int used:1;
    struct NativeBlock *next, *prevFree, *nextFree;
};
struct GbaBlock { unsigned int prev_used, next, prevFree, nextFree; };
struct NativeCopy { const void *src; void *dest; unsigned int control; };
struct GbaCopy { unsigned int src, dest, control; };
int main(void)
{
    printf("pointer=%u native_header=%u next=%u prevFree=%u nextFree=%u gba_header=%u\n",
        (unsigned)sizeof(void *), (unsigned)sizeof(struct NativeBlock),
        (unsigned)offsetof(struct NativeBlock, next),
        (unsigned)offsetof(struct NativeBlock, prevFree),
        (unsigned)offsetof(struct NativeBlock, nextFree), (unsigned)sizeof(struct GbaBlock));
    printf("native_queue=%u dest=%u control=%u gba_queue=%u\n",
        (unsigned)sizeof(struct NativeCopy), (unsigned)offsetof(struct NativeCopy, dest),
        (unsigned)offsetof(struct NativeCopy, control), (unsigned)sizeof(struct GbaCopy));
    return 0;
}
