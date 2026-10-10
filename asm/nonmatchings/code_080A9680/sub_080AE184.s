	thumb_func_start sub_080AE184
sub_080AE184: @ 0x080AE184
	push {lr}
	bl sub_0800048C
	ldr r1, [r0, #8]
	subs r1, #0x40
	str r1, [r0, #8]
	ldr r2, _080AE1AC
	ldr r0, _080AE1B0
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	movs r1, #1
	ldrh r0, [r0, #0]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
_080AE1AC: .4byte gUnk_030056FC
_080AE1B0: .4byte gUnk_03000448
	thumb_func_end sub_080AE184
