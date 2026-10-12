	thumb_func_start sub_080009F8
sub_080009F8: @ 0x080009F8
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	movs r3, #0xf8
	lsls r3, r3, #0x15
	ands r3, r0
	lsrs r3, r3, #0x10
	ldr r4, _08000A30
	ldrh r0, [r4, #0]
	adds r5, r0, #0
	bics r5, r3
	adds r3, r5, #0
	movs r0, #0xe0
	lsls r0, r0, #0x18
	ands r0, r1
	lsrs r0, r0, #0x10
	bics r3, r0
	strh r3, [r4, #0]
	cmp r2, #0
	beq _08000A28
	movs r0, #0x80
	lsls r0, r0, #0x13
	strh r3, [r0, #0]
_08000A28:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08000A30: .4byte gUnk_0300129C
	thumb_func_end sub_080009F8
