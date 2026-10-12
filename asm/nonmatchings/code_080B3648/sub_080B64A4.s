	thumb_func_start sub_080B64A4
sub_080B64A4: @ 0x080B64A4
	push {r4, r5, lr}
	movs r2, #1
	ldr r4, _080B64D4
	movs r3, #1
_080B64AC:
	ldr r1, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x7a
	ldrh r1, [r0, #0]
	orrs r1, r3
	strh r1, [r0, #0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	bls _080B64AC
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B64D4: .4byte gUnk_030056F4
	thumb_func_end sub_080B64A4
