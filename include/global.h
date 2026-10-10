#ifndef GUARD_GLOBAL_H
#define GUARD_GLOBAL_H

#include "gba/gba.h"
#include "m2c_macros.h"
#include "m4a.h"
#include "structs.h"
#include "variables.h"
#include "functions.h"

// Include a not yet decompiled function from its assembly file.
// The .s file contains the complete function (label, alignment, literal pool).
#define INCLUDE_ASM(FOLDER, NAME) \
    asm(".syntax unified\n" \
        ".include \"" FOLDER "/" #NAME ".s\"\n" \
        ".syntax divided\n")

asm(".include \"asm/macros.inc\"");

#endif // GUARD_GLOBAL_H
