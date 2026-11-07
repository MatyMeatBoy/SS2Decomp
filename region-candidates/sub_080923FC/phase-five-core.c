/* EU sub_080923FC, phase-five-core, frozen checkpoint
 * 27fb21f1df1986ea7447eb331223b54fa974481b.
 * Replace only accum += 4 through the cache[3] store inside the nonbusy
 * post-draw body. Original machine interval [0x0809295A,0x080929AE).
 * Uses existing accum, d, lower, lowerLimit, offsetLo, offsetHi, shake.
 * The nested upper/clamp declarations are inside this replacement block;
 * existing lower/d declaration sites and pointer initializers stay frozen.
 * OWNER-MANAGED COUPLING REQUEST: review the emitted preheader Hi/cache
 * recolor at function offsets +0x502/+0x508 (R4/R5 become R5/R4).
 * No source changes outside this block are requested. The rest of the
 * whole-function bytes, all relocations and pool words stay unchanged.
 * This is a NONMATCHING candidate, not a complete equivalence proof.
 */
{
    s32 upper;
    s16 clamp;
    accum += 4;
    d = (s16)accum >> 8;
    lower = (u16)(*offsetLo) - d;
    (*offsetLo) = lower;
    upper = (u16)(*offsetHi) + d;
    (*offsetHi) = upper;
    clamp = lowerLimit >> 16;
    if ((s32)((u32)lower << 16) <= lowerLimit)
        (*offsetLo) = clamp;
    if ((s16)upper > 49)
        (*offsetHi) = 50;
    cache923FC[0] = v923FC_250;
    cache923FC[1] = plus923FC(shake, (*offsetLo));
    cache923FC[2] = v923FC_254;
    cache923FC[3] = minus923FC((*offsetHi), shake);
}
