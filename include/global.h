#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/types.h"

// Include a not yet decompiled function from its assembly file.
// The .s file contains the complete function (label, alignment, literal pool).
#define INCLUDE_ASM(FOLDER, NAME) \
    asm(".syntax unified\n" \
        ".include \"" FOLDER "/" #NAME ".s\"\n" \
        ".syntax divided\n")

// Same as INCLUDE_ASM but for a function whose C is written but not matching yet.
#ifdef NONMATCHING
#define NONMATCH(FOLDER, DECL) DECL
#else
#define NONMATCH(FOLDER, DECL) __attribute__((unused)) static DECL##_nonmatch
#endif

asm(".include \"asm/macros.inc\"");

#endif // GUARD_GLOBAL_H
