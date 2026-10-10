	thumb_func_start sub_0809342C
sub_0809342C: @ 0x0809342C
	push {r4, lr}
	sub sp, #4
	mov r2, sp
	ldr r0, _08093470
	ldrh r1, [r0, #0]
	movs r4, #0xff
	adds r0, r4, #0
	ands r0, r1
	strh r0, [r2, #0]
	mov r0, sp
	ldrh r0, [r0, #0]
	cmp r0, #0x9f
	bhi _08093484
	ldr r3, _08093474
	ldr r2, _08093478
	ldr r0, _0809347C
	ldrb r1, [r0, #0]
	mov r0, sp
	ldrh r0, [r0, #0]
	adds r0, r0, r1
	ands r0, r4
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _08093480
	ldrb r0, [r0, #0]
	adds r2, r0, #0
	muls r2, r1, r2
	adds r0, r2, #0
	asrs r0, r0, #8
	strh r0, [r3, #0]
	b _0809348A
	.2byte 0x0000
_08093470: .4byte 0x04000006
_08093474: .4byte gUnk_03000264
_08093478: .4byte gUnk_080B9704
_0809347C: .4byte gUnk_03000267
_08093480: .4byte gUnk_03000266
_08093484:
	ldr r1, _08093494
	movs r0, #0
	strh r0, [r1, #0]
_0809348A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08093494: .4byte gUnk_03000264
	thumb_func_end sub_0809342C
