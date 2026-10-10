	thumb_func_start sub_08022028
sub_08022028: @ 0x08022028
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	lsls r4, r2, #0x10
	lsrs r4, r4, #0x10
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [r3, #0]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x90
	ldr r1, [r1, #0]
	ldr r2, [r3, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl ArcTan2
	adds r0, r5, #0
	adds r0, #0xcc
	movs r1, #0
	strh r1, [r0, #0]
	adds r0, #4
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	adds r1, r5, #0
	adds r1, #0x88
	ldrh r0, [r1, #0]
	adds r4, r4, r0
	strh r4, [r1, #0]
	movs r0, #0xa
	strh r0, [r5, #0x20]
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_08022028
