	thumb_func_start sub_080AF3C4
sub_080AF3C4: @ 0x080AF3C4
	push {lr}
	bl sub_0800048C
	ldr r1, [r0, #8]
	subs r1, #0x44
	str r1, [r0, #8]
	ldr r3, _080AF3EC
	ldr r2, _080AF3F0
	movs r0, #0xac
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r0, [r0, #0]
	movs r1, #1
	ldrh r0, [r0, #0]
	lsls r1, r0
	ldr r0, [r3, #0]
	bics r0, r1
	str r0, [r3, #0]
	pop {r0}
	bx r0
_080AF3EC: .4byte gUnk_030056FC
_080AF3F0: .4byte gUnk_030004D0
	thumb_func_end sub_080AF3C4
