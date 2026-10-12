	thumb_func_start sub_080684A8
sub_080684A8: @ 0x080684A8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, _080684D8
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bhi _080684E0
	ldr r1, _080684DC
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0xad
	strb r0, [r1, #0]
	str r4, [r1, #8]
	strb r2, [r1, #1]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	movs r0, #1
	b _080684E2
_080684D8: .4byte gUnk_03006338
_080684DC: .4byte gUnk_03006300
_080684E0:
	movs r0, #0
_080684E2:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_080684A8
