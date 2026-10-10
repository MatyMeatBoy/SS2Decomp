	thumb_func_start sub_0805CFF8
sub_0805CFF8: @ 0x0805CFF8
	push {r4, lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x18
	bls _0805D006
	movs r1, #0
_0805D006:
	ldr r0, _0805D024
	ldr r0, [r0, #0]
	lsls r1, r1, #4
	adds r1, r1, r0
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r2, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
_0805D024: .4byte gUnk_030034E0
	thumb_func_end sub_0805CFF8
