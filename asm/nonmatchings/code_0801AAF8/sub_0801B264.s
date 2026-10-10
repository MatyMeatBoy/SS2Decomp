	thumb_func_start sub_0801B264
sub_0801B264: @ 0x0801B264
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	mov ip, r2
	movs r6, #0
	movs r7, #0
_0801B270:
	lsls r1, r7, #2
	adds r0, r1, r4
	ldrh r2, [r0, #0]
	adds r3, r1, #0
	cmp r2, #0
	beq _0801B282
	movs r0, #1
	lsls r0, r2
	orrs r6, r0
_0801B282:
	subs r0, r2, #1
	cmp r0, #0x28
	bls _0801B28A
	b _0801B57A
_0801B28A:
	lsls r0, r0, #2
	ldr r1, _0801B294
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801B294: .4byte _0801B298
_0801B298:
	.4byte _0801B33C
_0801B29C: .4byte _0801B34C
_0801B2A0: .4byte _0801B358
_0801B2A4: .4byte _0801B368
_0801B2A8: .4byte _0801B378
_0801B2AC: .4byte _0801B388
_0801B2B0: .4byte _0801B39E
_0801B2B4: .4byte _0801B3AA
_0801B2B8: .4byte _0801B3B6
_0801B2BC: .4byte _0801B3C2
_0801B2C0: .4byte _0801B3CE
_0801B2C4: .4byte _0801B3DA
_0801B2C8: .4byte _0801B3E6
_0801B2CC: .4byte _0801B3F2
_0801B2D0: .4byte _0801B402
_0801B2D4: .4byte _0801B412
_0801B2D8: .4byte _0801B422
_0801B2DC: .4byte _0801B432
_0801B2E0: .4byte _0801B442
_0801B2E4: .4byte _0801B452
_0801B2E8: .4byte _0801B462
_0801B2EC: .4byte _0801B472
_0801B2F0: .4byte _0801B47E
_0801B2F4: .4byte _0801B48E
_0801B2F8: .4byte _0801B49E
_0801B2FC: .4byte _0801B4AE
_0801B300: .4byte _0801B4C2
_0801B304: .4byte _0801B4D6
_0801B308: .4byte _0801B4DE
_0801B30C: .4byte _0801B4EE
_0801B310: .4byte _0801B4FE
_0801B314: .4byte _0801B50E
_0801B318: .4byte _0801B51E
_0801B31C: .4byte _0801B52E
_0801B320: .4byte _0801B53E
_0801B324: .4byte _0801B54E
_0801B328: .4byte _0801B556
_0801B32C: .4byte _0801B55E
_0801B330: .4byte _0801B57A
_0801B334: .4byte _0801B566
_0801B338: .4byte _0801B572
_0801B33C:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	ldrh r1, [r5, #0]
	adds r0, r0, r1
	strh r0, [r5, #0]
	movs r0, #1
	orrs r6, r0
	b _0801B57A
_0801B34C:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	ldrh r2, [r5, #2]
	adds r0, r0, r2
	strh r0, [r5, #2]
	b _0801B57A
_0801B358:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	ldrh r1, [r5, #4]
	adds r0, r0, r1
	strh r0, [r5, #4]
	movs r0, #6
	orrs r6, r0
	b _0801B57A
_0801B368:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	ldrh r2, [r5, #6]
	adds r0, r0, r2
	strh r0, [r5, #6]
	movs r0, #5
	orrs r6, r0
	b _0801B57A
_0801B378:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	mov r1, ip
	ldrh r1, [r1, #0xa]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2, #0xa]
	b _0801B57A
_0801B388:
	adds r0, r3, r4
	ldrh r1, [r0, #2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, ip
	ldrh r1, [r1, #8]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2, #8]
	b _0801B57A
_0801B39E:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	ldrh r1, [r5, #8]
	adds r0, r0, r1
	strh r0, [r5, #8]
	b _0801B57A
_0801B3AA:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	ldrh r2, [r5, #0x14]
	adds r0, r0, r2
	strh r0, [r5, #0x14]
	b _0801B57A
_0801B3B6:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	ldrh r1, [r5, #0x16]
	adds r0, r0, r1
	strh r0, [r5, #0x16]
	b _0801B57A
_0801B3C2:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	ldrh r2, [r5, #0x18]
	adds r0, r0, r2
	strh r0, [r5, #0x18]
	b _0801B57A
_0801B3CE:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	ldrh r1, [r5, #0x1a]
	adds r0, r0, r1
	strh r0, [r5, #0x1a]
	b _0801B57A
_0801B3DA:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	ldrh r2, [r5, #0x1c]
	adds r0, r0, r2
	strh r0, [r5, #0x1c]
	b _0801B57A
_0801B3E6:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	ldrh r1, [r5, #0x1e]
	adds r0, r0, r1
	strh r0, [r5, #0x1e]
	b _0801B57A
_0801B3F2:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	mov r2, ip
	ldrh r2, [r2, #0]
	adds r0, r0, r2
	mov r1, ip
	strh r0, [r1, #0]
	b _0801B57A
_0801B402:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	mov r2, ip
	ldrh r2, [r2, #2]
	adds r0, r0, r2
	mov r1, ip
	strh r0, [r1, #2]
	b _0801B57A
_0801B412:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	mov r2, ip
	ldrh r2, [r2, #6]
	adds r0, r0, r2
	mov r1, ip
	strh r0, [r1, #6]
	b _0801B57A
_0801B422:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r2, ip
	ldrb r2, [r2, #0x1d]
	adds r0, r0, r2
	mov r1, ip
	strb r0, [r1, #0x1d]
	b _0801B57A
_0801B432:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r2, ip
	ldrb r2, [r2, #0x1e]
	adds r0, r0, r2
	mov r1, ip
	strb r0, [r1, #0x1e]
	b _0801B57A
_0801B442:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	mov r2, ip
	ldrh r2, [r2, #4]
	adds r0, r0, r2
	mov r1, ip
	strh r0, [r1, #4]
	b _0801B57A
_0801B452:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r2, ip
	ldrb r2, [r2, #0x15]
	adds r0, r0, r2
	mov r1, ip
	strb r0, [r1, #0x15]
	b _0801B57A
_0801B462:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r2, ip
	ldrb r2, [r2, #0x11]
	adds r0, r0, r2
	mov r1, ip
	strb r0, [r1, #0x11]
	b _0801B57A
_0801B472:
	mov r2, ip
	ldrb r1, [r2, #0x11]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2, #0x11]
	b _0801B57A
_0801B47E:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r1, ip
	ldrb r1, [r1, #0x14]
	adds r0, r0, r1
	mov r2, ip
	strb r0, [r2, #0x14]
	b _0801B57A
_0801B48E:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r1, ip
	ldrb r1, [r1, #0x12]
	adds r0, r0, r1
	mov r2, ip
	strb r0, [r2, #0x12]
	b _0801B57A
_0801B49E:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r1, ip
	ldrb r1, [r1, #0x13]
	adds r0, r0, r1
	mov r2, ip
	strb r0, [r2, #0x13]
	b _0801B57A
_0801B4AE:
	adds r0, r3, r4
	ldrh r1, [r0, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	mov r1, ip
	ldrb r1, [r1, #0x1f]
	adds r0, r0, r1
	mov r2, ip
	strb r0, [r2, #0x1f]
	b _0801B57A
_0801B4C2:
	mov r2, ip
	adds r2, #0x20
	adds r0, r3, r4
	ldrh r1, [r0, #2]
	lsls r0, r1, #1
	adds r0, r0, r1
	ldrb r1, [r2, #0]
	adds r0, r0, r1
	strb r0, [r2, #0]
	b _0801B57A
_0801B4D6:
	movs r0, #1
	mov r2, ip
	strb r0, [r2, #0xf]
	b _0801B57A
_0801B4DE:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r1, ip
	ldrb r1, [r1, #0x18]
	adds r0, r0, r1
	mov r2, ip
	strb r0, [r2, #0x18]
	b _0801B57A
_0801B4EE:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r1, ip
	ldrb r1, [r1, #0x19]
	adds r0, r0, r1
	mov r2, ip
	strb r0, [r2, #0x19]
	b _0801B57A
_0801B4FE:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r1, ip
	ldrb r1, [r1, #0x1a]
	adds r0, r0, r1
	mov r2, ip
	strb r0, [r2, #0x1a]
	b _0801B57A
_0801B50E:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r1, ip
	ldrb r1, [r1, #0x17]
	adds r0, r0, r1
	mov r2, ip
	strb r0, [r2, #0x17]
	b _0801B57A
_0801B51E:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r1, ip
	ldrb r1, [r1, #0x16]
	adds r0, r0, r1
	mov r2, ip
	strb r0, [r2, #0x16]
	b _0801B57A
_0801B52E:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r1, ip
	ldrb r1, [r1, #0x1b]
	adds r0, r0, r1
	mov r2, ip
	strb r0, [r2, #0x1b]
	b _0801B57A
_0801B53E:
	adds r0, r3, r4
	ldrb r0, [r0, #2]
	mov r1, ip
	ldrb r1, [r1, #0x1c]
	adds r0, r0, r1
	mov r2, ip
	strb r0, [r2, #0x1c]
	b _0801B57A
_0801B54E:
	movs r0, #9
	mov r1, ip
	strh r0, [r1, #0xc]
	b _0801B57A
_0801B556:
	movs r0, #0xa
	mov r2, ip
	strb r0, [r2, #0xe]
	b _0801B57A
_0801B55E:
	movs r0, #0xb
	mov r1, ip
	strb r0, [r1, #0xe]
	b _0801B57A
_0801B566:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	mov r2, ip
	adds r2, #0x21
	strb r0, [r2, #0]
	b _0801B57A
_0801B572:
	adds r0, r3, r4
	ldrh r0, [r0, #2]
	mov r2, ip
	strb r0, [r2, #0x10]
_0801B57A:
	adds r7, #1
	cmp r7, #2
	bhi _0801B582
	b _0801B270
_0801B582:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801B264
