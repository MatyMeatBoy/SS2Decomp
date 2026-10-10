	thumb_func_start sub_08043E70
sub_08043E70: @ 0x08043E70
	push {r4, lr}
	sub sp, #8
	bl sub_0800CE30
	cmp r0, #0
	beq _08043E8C
	ldr r0, _08043E88
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _08043E94
	.2byte 0x0000
_08043E88: .4byte gUnk_03005CF4
_08043E8C:
	ldr r0, _08043EC0
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_08043E94:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #4
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08043F38
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08043EC4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _08043ECC
_08043EC0: .4byte gUnk_03005CF4
_08043EC4: .4byte gUnk_03003CE0
_08043EC8:
	bl sub_080003F0
_08043ECC:
	bl sub_0805F184
	cmp r0, #0
	bne _08043EC8
	b _08043EDA
_08043ED6:
	bl sub_080003F0
_08043EDA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08043ED6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08043EFC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08043F04
_08043EFC: .4byte 0x00140210
_08043F00:
	bl sub_080003F0
_08043F04:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08043F1A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08043F00
	bl sub_0805EFBC
_08043F1A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08043F40
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_08043F38:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08043F40: .4byte gUnk_03003CE0
	thumb_func_end sub_08043E70
