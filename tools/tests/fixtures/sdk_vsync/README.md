# VSync signed-byte flags and shared SDK container

The installer builds an isolated GCC from the pinned Dream-Atelier revision, archive and four base patches in provenance.json. The new patch SHA256 is 71131d9045c982c4bc9047af933a647e9cd4fdb001fc90bf192f37d97fa5f55b. GCC remains GPL-2.0-or-later; COPYING is retained by the installer. Six canonical-LF compiler-source hashes are verified by the generic fixture.

-fthumb-byte-sub-flags defaults off. Only src/m4a_1_vsync.c enables it. Its local proof requires zero_extend(MEM:QI) immediately defining a low register, self SUB1, optionally one preserved nonvolatile STRB of that register, CMP result,0 and a unique GT/LE consumer. Calls, ASM, labels, register changes/copies and side-effecting stores reject the proof. The value range 0..255 makes the signed result -1..254 and V=0; N/Z/V agree with CMP(result,0), but carry is not claimed equal. Both forward paths must kill old flags with a full CMP or return through the C ABI. Shifts, logical TST/AND and their partial flag effects are not accepted as full kills. No loop induction or source-function/address exception is used.

Naked C requires an ABI-only external return. Arbitrary global ASM that reads physical flags after the C return boundary is outside this contract.

The configured block is 676 bytes: new VSync 56, unchanged MPlayMain 604 in original ASM, and the previously accepted shared helper/data 16. Only VSync 56 gains new C credit. Its natural C instruction body is 44, explicit BX LR ABI return 2, natural zero alignment 2 and two genuine pointer objects 8. The helper remains 2-byte BX r3 plus 2 alignment and 12 C data. No function size is overridden. The engine remainder starts at080B6DE0 and retains its original compiler.

The strict fixture compares all 676 bytes and resolved relocations against the intact original assembly in original.s, checks active C, eight canonical entry/data symbols, object sizes/modes and zero final relocations. Externals are regenerated from versioned function metadata and numeric RAM/data names, without a baserom or owner object. The test builds the actual production TU using its exact Makefile compiler/flags, then uses those same flags for negative C mutations.

    make -j1 build/src/m4a_1_vsync.o
    python3 tools/scripts/test_sdk_vsync_match.py
    python3 tools/scripts/test_sdk_vsync_flags.py
    python3 tools/scripts/test_sdk_shared_pool.py

The scripts accept --deps and --out; the generic fixture also permits a chosen --compiler. Paths preserve the selected checkout across junctions, and relative CLI arguments are fixed before changing to that checkout.

Target runtime compares 49,152 original and 49,152 candidate executions: every counter byte, three periods, four valid/invalid lock states and all 16 incoming NZCV. It checks all registers and physical flags, PC/SP/LR, callee saves, memory guards and exact DMA write ordering. Negative C sources change the DMA pointer or spin while retaining expected r0; both must fail in fresh emulator instances.

The generic suite has 18 exact named fixtures and 44,784 cases per accepted/off/on compiler (134,352 total), including actual BGT and BLE positives. Negatives cover unproved values, s8/u16, overflow0x80000000, copies/redefinitions, calls/control flow/ASM, carry/overflow/mixed consumers and volatile stores. Default-off complete objects must match the accepted compiler. Normal ROM and NONMATCHING builds remain mandatory integration gates; unchanged neighboring ASM is never counted as newly converted C.
