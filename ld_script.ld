OUTPUT_ARCH(arm)
ENTRY(Start)

MEMORY
{
    EWRAM (rwx) : ORIGIN = 0x02000000, LENGTH = 256K
    IWRAM (rwx) : ORIGIN = 0x03000000, LENGTH = 32K
    ROM (rx)    : ORIGIN = 0x08000000, LENGTH = 32M
}

INCLUDE sym_ram.ld

SECTIONS
{
    . = 0x08000000;

    .text :
    ALIGN(4)
    {
        build/asm/rom_header.o(.text);
        build/asm/crt0.o(.text);
        build/asm/sched.o(.text);
        build/src/main.o(.text);
        build/src/video.o(.text);
        build/src/code_08000EC8.o(.text);
        build/src/code_080016C8.o(.text);
        build/src/code_08001A50.o(.text);
        build/src/code_08002118.o(.text);
        build/src/code_08006D24.o(.text);
        build/src/code_08009088.o(.text);
        build/src/code_0800CBBC.o(.text);
        build/src/code_0800CF58.o(.text);
        build/src/code_080153A4.o(.text);
        build/src/code_08017F7C.o(.text);
        build/src/code_0801AAF8.o(.text);
        build/src/code_0801E244.o(.text);
        build/src/code_08021DC4.o(.text);
        build/src/code_08028AAC.o(.text);
        build/src/code_0802FEA0.o(.text);
        build/src/code_0803B69C.o(.text);
        build/src/code_080443EC.o(.text);
        build/src/code_0804D330.o(.text);
        build/src/code_080542C4.o(.text);
        build/src/code_080571A4.o(.text);
        build/src/code_08057CAC.o(.text);
        build/src/code_08058790.o(.text);
        build/src/code_08059534.o(.text);
        build/src/code_0805A630.o(.text);
        build/src/code_0805D094.o(.text);
        build/src/code_0805FB7C.o(.text);
        build/src/code_080659B0.o(.text);
        build/src/code_08067B4C.o(.text);
        build/src/code_08068670.o(.text);
        build/src/code_08073E2C.o(.text);
        build/src/code_0807A5D4.o(.text);
        build/src/code_08087CC0.o(.text);
        build/src/code_0808D4A8.o(.text);
        build/src/code_0808FB5C.o(.text);
        build/src/code_08092D60.o(.text);
        build/src/code_08095B04.o(.text);
        build/src/code_08097E28.o(.text);
        build/src/code_0809D878.o(.text);
        build/src/code_080A3D2C.o(.text);
        build/src/code_080A9680.o(.text);
        build/src/code_080B3648.o(.text);
        build/src/m4a_1.o(.text);
        build/src/m4a_1_jump.o(.text);
        build/src/m4a_1_rest.o(.text);
        build/src/m4a_1_commands.o(.text);
        build/src/m4a_1_port.o(.text);
        build/src/m4a_1_engine.o(.text);
        build/src/m4a_1_mod.o(.text);
        build/src/m4a_1_abi.o(.text);
        build/src/m4a.o(.text);
        build/asm/libagbsyscall.o(.text);
        build/src/agb_flash.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        build/src/libgcc2.o(.text);
        *libgcc.a:_divsi3.o(.text);
        *libgcc.a:_dvmd_tls.o(.text);
        *libgcc.a:_modsi3.o(.text);
        *libgcc.a:_muldi3.o(.text);
        *libgcc.a:_udivsi3.o(.text);
        *libgcc.a:_umodsi3.o(.text);
        *libc.a:memcpy.o(.text);
    } > ROM =0

    .rodata :
    ALIGN(4)
    {
        build/data/rodata.o(.rodata);
        build/src/libgcc2.o(.rodata);
        build/data/rodata_libgcc_end.o(.rodata);
    } > ROM =0

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
