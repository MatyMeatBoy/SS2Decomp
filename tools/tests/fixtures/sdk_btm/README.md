# SDK store-four compiler and SoundMainBTM

The compiler source is the pinned Dream-Atelier/agbcc revision recorded in provenance.json, plus the existing TST and LSR/halfword patches and agbcc-sdk-store-four.patch (SHA256 3f9be49002533dae0238af8f9f2f5e51f92a715bcd6480fa676e80f4378aa639). GCC retains its GPL-2.0-or-later license; the installer preserves COPYING. No compiled tool is versioned.

The new option -fthumb-store-four defaults off. Only src/m4a_1_btm.c opts in. The pattern requires four adjacent nonvolatile, proven word-aligned stores at offsets 0/4/8/12 with ascending distinct low source registers, excludes the base register, and preserves the exact base+16 writeback. A C-derived RTL alignment bit defaults false; copied MEM nodes and changed addresses lose that proof. The actual GCC RTL allocator/copy/unshare/inline/reload paths are exercised by rtl_clone_fixture.c. The historical unsafe implementation failed two of eleven host cases; the fixed implementation passes all eleven.

Flags must be dead before any subsequent consumer, or killed by a fresh CC0 definition. Calls, opaque assembly and unproved control flow reject grouping. The target epilogue is a C ABI return whose NZCV are not return values. Naked C requires an ABI-only external tail; arbitrary global ASM that consumes physical flags is outside this contract.

SoundMainBTM at 080B6910 compares all 24 original bytes: genuine C body 20 bytes, explicit BX LR ABI return 2 bytes, natural zero alignment 2 bytes. The natural C function size is 20; no size override is used. The full clear algorithm and register transfers are C. The fixture checks active C, Thumb entry, symbols, zero relocations, all registers and NZCV, SP/LR/PC, memory guards and 32-bit pointer wrap. Two C negative controls retain the expected final r0 while corrupting data or failing to return.

Run after building the module (which installs its isolated compiler):

    make -j1 build/src/m4a_1_btm.o
    python3 tools/scripts/test_sdk_btm_match.py
    python3 tools/scripts/test_sdk_btm_flags.py
    python3 tools/scripts/test_sdk_btm_registers.py
    python3 tools/scripts/test_sdk_btm_rtl.py

All scripts accept --deps, --out and --compiler. Paths preserve the selected checkout through junctions; relative CLI paths are interpreted before changing to that checkout. Fixtures need no baserom. Target runtime: 6144 cases; generic accepted/off/on: 50688; register matrix accepted/off/on: 268800; host RTL: 11. Ordinary callee ABI is checked by the target fixture; the register matrix intentionally updates its designated global base even when it is r4-r7.

Normal ROM compare and NONMATCHING remain mandatory integration gates. This conversion credits only the configured 24-byte interval; it does not credit the remaining mixer or interpreter assembly.
