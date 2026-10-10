	thumb_func_start sub_08059F08
sub_08059F08: @ 0x08059F08
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08059F34
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	b _08059F3C
_08059F34: .4byte gUnk_03003CE0
_08059F38:
	bl sub_080003F0
_08059F3C:
	bl sub_0805F184
	cmp r0, #0
	bne _08059F38
	b _08059F4A
_08059F46:
	bl sub_080003F0
_08059F4A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08059F46
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08059F6C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08059F74
_08059F6C: .4byte 0x00140180
_08059F70:
	bl sub_080003F0
_08059F74:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08059F8A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08059F70
	bl sub_0805EFBC
_08059F8A:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08059FB8
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
_08059FB8: .4byte gUnk_03003CE0
	thumb_func_end sub_08059F08
