	thumb_func_start sub_080663A4
sub_080663A4: @ 0x080663A4
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, _080663F0
	ldr r2, [r4, #0]
	cmp r2, #0x31
	bhi _080663FC
	ldr r1, _080663F4
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r2, [r1, #0]
	adds r2, r2, r0
	movs r0, #1
	str r0, [r2, #4]
	movs r0, #0x92
	strb r0, [r2, #0]
	ldr r0, _080663F8
	ldr r1, [r0, #0]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	subs r0, r0, r3
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	str r1, [r2, #8]
	ldr r1, [r0, #0x14]
	str r1, [r2, #0xc]
	ldr r0, [r0, #0x18]
	str r0, [r2, #0x10]
	movs r0, #2
	strb r0, [r2, #1]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	movs r0, #1
	b _080663FE
	.2byte 0x0000
_080663F0: .4byte gUnk_03006338
_080663F4: .4byte gUnk_03006300
_080663F8: .4byte gUnk_030056F4
_080663FC:
	movs r0, #0
_080663FE:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_080663A4
