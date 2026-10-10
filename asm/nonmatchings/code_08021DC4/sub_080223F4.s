	thumb_func_start sub_080223F4
sub_080223F4: @ 0x080223F4
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0
	ldr r2, _08022470
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _0802241C
	movs r3, #1
_0802240A:
	adds r5, #1
	cmp r5, #0x1f
	bhi _0802246A
	adds r1, r3, #0
	lsls r1, r5
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _0802240A
_0802241C:
	cmp r5, #0x1f
	bhi _0802246A
	ldr r1, _08022474
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r4, r1, r0
	ldr r0, _08022478
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0802246A
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
	ldr r2, _08022470
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_0802246A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08022470: .4byte gUnk_03005CE4
_08022474: .4byte gUnk_03005CE0
_08022478: .4byte sub_0802258C
	thumb_func_end sub_080223F4
