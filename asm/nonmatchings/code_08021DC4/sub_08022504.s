	thumb_func_start sub_08022504
sub_08022504: @ 0x08022504
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0
	ldr r2, _08022580
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _0802252C
	movs r3, #1
_0802251A:
	adds r5, #1
	cmp r5, #0x1f
	bhi _0802257A
	adds r1, r3, #0
	lsls r1, r5
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _0802251A
_0802252C:
	cmp r5, #0x1f
	bhi _0802257A
	ldr r1, _08022584
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r4, r1, r0
	ldr r0, _08022588
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0802257A
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	asrs r1, r6, #8
	asrs r0, r7, #8
	lsls r0, r0, #0x10
	orrs r1, r0
	adds r0, r4, #0
	adds r2, r5, #0
	bl sub_08000274
	ldr r2, _08022580
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_0802257A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08022580: .4byte gUnk_03005CE4
_08022584: .4byte gUnk_03005CE0
_08022588: .4byte sub_080216BC
	thumb_func_end sub_08022504
