	thumb_func_start sub_08065654
sub_08065654: @ 0x08065654
	push {r4, lr}
	ldr r4, _0806565C
	b _08065664
	.2byte 0x0000
_0806565C: .4byte gUnk_03006000
_08065660:
	bl sub_080003F0
_08065664:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _08065660
	ldr r0, _08065694
	movs r1, #0x34
	str r1, [r0, #8]
	ldr r1, _08065698
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0x24]
	bl sub_08000274
	pop {r4}
	pop {r0}
	bx r0
_08065694: .4byte gUnk_03006000
_08065698: .4byte sub_080624D8
	thumb_func_end sub_08065654
