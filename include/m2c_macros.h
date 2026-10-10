#ifndef GUARD_M2C_MACROS_H
#define GUARD_M2C_MACROS_H

// Macros emitted by m2c --valid-syntax for not yet understood types.
// M2C_FIELD(ptr, type *, offset) is an access to an unknown struct field;
// it should be replaced by a real struct member as types get documented.

typedef s32 M2C_UNK;
typedef s8  M2C_UNK8;
typedef s16 M2C_UNK16;
typedef s32 M2C_UNK32;
typedef s64 M2C_UNK64;

#define M2C_FIELD(expr, type_ptr, offset) (*(type_ptr)((s8 *)(expr) + (offset)))
#define M2C_BITWISE(type, expr) ((type)(expr))

#endif // GUARD_M2C_MACROS_H
