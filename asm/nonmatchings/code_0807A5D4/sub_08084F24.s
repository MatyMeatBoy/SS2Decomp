	thumb_func_start sub_08084F24
sub_08084F24: @ 0x08084F24
	push {r4, lr}
	ldr r4, _08084F2C
	b _08084F34
	.2byte 0x0000
_08084F2C: .4byte gUnk_03006440
_08084F30:
	bl sub_080003F0
_08084F34:
	ldr r0, _08084F4C
	bl sub_08001494
	str r0, [r4, #0]
	cmp r0, #0
	beq _08084F30
	ldr r0, _08084F50
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0]
	ldr r4, _08084F54
	b _08084F5C
_08084F4C: .4byte 0x00000624
_08084F50: .4byte gUnk_03006440
_08084F54: .4byte gUnk_03006450
_08084F58:
	bl sub_080003F0
_08084F5C:
	movs r0, #0x90
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _08084F58
	ldr r0, _08084F8C
	ldr r1, [r0, #0x20]
	ldr r2, _08084F90
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0x64
	str r1, [r0, #8]
	ldr r1, _08084F94
	str r1, [r0, #0x24]
	ldr r1, _08084F98
	str r1, [r0, #0xc]
	movs r1, #0
	bl sub_08000274
	pop {r4}
	pop {r0}
	bx r0
_08084F8C: .4byte gUnk_03006450
_08084F90: .4byte 0x000008FC
_08084F94: .4byte sub_080854A0
_08084F98: .4byte sub_0807B7B4
	thumb_func_end sub_08084F24
