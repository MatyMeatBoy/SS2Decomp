	thumb_func_start sub_08001348
sub_08001348: @ 0x08001348
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r4, _08001388
	ldr r3, [r4, #0]
	ldr r0, _0800138C
	cmp r3, r0
	bhi _08001380
	ldr r1, _08001390
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, [r1, #0]
	adds r1, r1, r0
	str r5, [r1, #0]
	str r6, [r1, #4]
	str r2, [r1, #8]
	movs r0, #0x1f
	ands r0, r2
	cmp r0, #0
	bne _0800137A
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r0, r2
	str r0, [r1, #8]
_0800137A:
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
_08001380:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08001388: .4byte gUnk_03002358
_0800138C: .4byte 0x0000018F
_08001390: .4byte gUnk_0300235C
	thumb_func_end sub_08001348
