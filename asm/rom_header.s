	.include "asm/macros.inc"

	.syntax unified
	.text
	.arm

	.global RomHeader
RomHeader:
	b Start
	@ Nintendo logo, game title "SHINING SOUL", game code "AU2P", maker "8P"
	@ and the rest of the cartridge header are taken from the base ROM.
	.incbin "baserom.gba", 0x4, 0xBC
