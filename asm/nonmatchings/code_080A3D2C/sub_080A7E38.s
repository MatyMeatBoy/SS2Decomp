	thumb_func_start sub_080A7E38
sub_080A7E38: @ 0x080A7E38
	push {lr}
	bl sub_080020F4
	ldr r1, _080A7E60
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	ldr r1, _080A7E64
	movs r0, #0
	str r0, [r1, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
_080A7E60: .4byte gUnk_03003CE0
_080A7E64: .4byte gUnk_030056FC
	thumb_func_end sub_080A7E38
