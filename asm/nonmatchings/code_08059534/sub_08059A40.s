	thumb_func_start sub_08059A40
sub_08059A40: @ 0x08059A40
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #1
	cmp r5, r6
	bge _08059A8E
_08059A4A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08059A6C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	movs r4, #1
	adds r5, #1
	b _08059A7A
_08059A6C: .4byte gUnk_03003CE0
_08059A70:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08059A86
_08059A7A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08059A70
_08059A86:
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r6
	blt _08059A4A
_08059A8E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08059A40
