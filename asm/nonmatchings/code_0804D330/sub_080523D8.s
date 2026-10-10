	thumb_func_start sub_080523D8
sub_080523D8: @ 0x080523D8
	push {r4, lr}
	cmp r0, #0
	beq _080523E4
	cmp r0, #1
	beq _080523F4
	b _08052468
_080523E4:
	ldr r0, _080523F0
	movs r1, #1
	movs r2, #2
	bl sub_08068820
	b _08052468
_080523F0: .4byte sub_080523D8
_080523F4:
	movs r0, #0xc8
	lsls r0, r0, #8
	movs r1, #0xd0
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #4
	b _08052412
_08052408:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0805241E
_08052412:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08052408
_0805241E:
	movs r0, #0xc0
	lsls r0, r0, #8
	movs r1, #0xd0
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r0, #0xd0
	lsls r0, r0, #8
	movs r1, #0xd0
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	ldr r0, _08052470
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08052450
	ldr r0, _08052474
	bl sub_08006D08
_08052450:
	movs r0, #7
	movs r1, #0xc8
	movs r2, #0x68
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _08052478
	ldr r2, [r0, #0]
	movs r1, #0x10
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
_08052468:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08052470: .4byte gUnk_030027D0
_08052474: .4byte 0x0000017B
_08052478: .4byte gUnk_03005CF4
	thumb_func_end sub_080523D8
