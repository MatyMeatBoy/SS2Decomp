	thumb_func_start sub_08058F4C
sub_08058F4C: @ 0x08058F4C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08058F78
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	b _08058F80
_08058F78: .4byte gUnk_03003CE0
_08058F7C:
	bl sub_080003F0
_08058F80:
	bl sub_0805F184
	cmp r0, #0
	bne _08058F7C
	b _08058F8E
_08058F8A:
	bl sub_080003F0
_08058F8E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08058F8A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08058FB0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08058FB8
_08058FB0: .4byte 0x00140107
_08058FB4:
	bl sub_080003F0
_08058FB8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08058FCE
	bl sub_0800CDF8
	cmp r0, #0
	beq _08058FB4
	bl sub_0805EFBC
_08058FCE:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08058FFC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08058FFC: .4byte gUnk_03003CE0
	thumb_func_end sub_08058F4C
