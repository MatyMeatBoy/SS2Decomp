	thumb_func_start sub_0801A388
sub_0801A388: @ 0x0801A388
	push {r4, r5, lr}
	ldr r5, _0801A3C4
	ldr r2, [r5, #0]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r1, r0
	lsls r1, r1, #5
	adds r2, r1, r2
	movs r0, #0x7a
	adds r0, r0, r2
	mov ip, r0
	ldrh r3, [r0, #0]
	movs r0, #4
	movs r4, #0
	orrs r0, r3
	mov r3, ip
	strh r0, [r3, #0]
	ldr r0, _0801A3C8
	adds r2, r2, r0
	strb r4, [r2, #0]
	ldr r0, [r5, #0]
	adds r1, r1, r0
	ldr r3, _0801A3CC
	adds r1, r1, r3
	movs r0, #0xff
	strb r0, [r1, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
_0801A3C4: .4byte gUnk_030056F4
_0801A3C8: .4byte 0x00000201
_0801A3CC: .4byte 0x000001FD
	thumb_func_end sub_0801A388
