	thumb_func_start sub_08022100
sub_08022100: @ 0x08022100
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	ldr r2, _08022174
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _08022126
	movs r3, #1
_08022114:
	adds r5, #1
	cmp r5, #0x1f
	bhi _0802216E
	adds r1, r3, #0
	lsls r1, r5
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _08022114
_08022126:
	cmp r5, #0x1f
	bhi _0802216E
	ldr r1, _08022178
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r4, r1, r0
	ldr r0, _0802217C
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0802216E
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x46
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08000274
	ldr r2, _08022174
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_0802216E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08022174: .4byte gUnk_03005CE4
_08022178: .4byte gUnk_03005CE0
_0802217C: .4byte sub_0802133C
	thumb_func_end sub_08022100
