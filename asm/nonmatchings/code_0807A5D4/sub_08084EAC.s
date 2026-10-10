	thumb_func_start sub_08084EAC
sub_08084EAC: @ 0x08084EAC
	push {r4, lr}
	ldr r4, _08084EB4
	b _08084EBC
	.2byte 0x0000
_08084EB4: .4byte gUnk_03006440
_08084EB8:
	bl sub_080003F0
_08084EBC:
	ldr r0, _08084ED4
	bl sub_08001494
	str r0, [r4, #0]
	cmp r0, #0
	beq _08084EB8
	ldr r0, _08084ED8
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0]
	ldr r4, _08084EDC
	b _08084EE4
_08084ED4: .4byte 0x00000624
_08084ED8: .4byte gUnk_03006440
_08084EDC: .4byte gUnk_03006450
_08084EE0:
	bl sub_080003F0
_08084EE4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _08084EE0
	ldr r0, _08084F18
	ldr r1, [r0, #0x20]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0x64
	str r1, [r0, #8]
	ldr r1, _08084F1C
	str r1, [r0, #0x24]
	ldr r1, _08084F20
	str r1, [r0, #0xc]
	movs r1, #0
	bl sub_08000274
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08084F18: .4byte gUnk_03006450
_08084F1C: .4byte sub_08085484
_08084F20: .4byte sub_0807A5D4
	thumb_func_end sub_08084EAC
