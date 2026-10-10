	thumb_func_start sub_080680B4
sub_080680B4: @ 0x080680B4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r3, _080680E8
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bhi _080680F0
	ldr r1, _080680EC
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0xa2
	strb r0, [r1, #0]
	str r4, [r1, #8]
	str r5, [r1, #0xc]
	strb r2, [r1, #1]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	movs r0, #1
	b _080680F2
	.2byte 0x0000
_080680E8: .4byte gUnk_03006338
_080680EC: .4byte gUnk_03006300
_080680F0:
	movs r0, #0
_080680F2:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_080680B4
