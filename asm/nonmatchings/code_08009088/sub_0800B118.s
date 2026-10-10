	thumb_func_start sub_0800B118
sub_0800B118: @ 0x0800B118
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	asrs r1, r1, #0xb
	str r1, [sp, #0x24]
	asrs r2, r2, #0xb
	mov sl, r2
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	beq _0800B1CC
	ldr r1, _0800B190
	ldr r2, [r1, #0x6c]
	mov r9, r2
	movs r0, #1
	negs r0, r0
	adds r6, r1, #0
_0800B14A:
	ldr r3, [sp, #0x24]
	adds r5, r3, r0
	movs r1, #1
	negs r1, r1
	adds r0, #1
	mov r8, r0
	mov r4, r8
	lsls r4, r4, #2
	str r4, [sp, #0x30]
_0800B15C:
	mov r2, sl
	adds r0, r2, r1
	cmp r5, #0
	ble _0800B178
	cmp r0, #0
	ble _0800B178
	ldr r4, _0800B194
	ldrh r3, [r4, #0]
	cmp r5, r3
	bge _0800B178
	movs r2, #0x76
	ldrh r4, [r2, r6]
	cmp r0, r4
	blt _0800B198
_0800B178:
	adds r2, r1, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [sp, #0x30]
	adds r0, r1, r0
	mov r3, sp
	adds r1, r3, r0
	movs r0, #1
	str r0, [r1, #0]
	b _0800B1BE
	.2byte 0x0000
_0800B190: .4byte gUnk_03003170
_0800B194: .4byte gUnk_030031E4
_0800B198:
	muls r0, r3, r0
	adds r0, r5, r0
	lsls r0, r0, #1
	mov r4, r9
	adds r3, r4, r0
	adds r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, [sp, #0x30]
	adds r0, r2, r0
	add r0, sp
	mov ip, r0
	ldr r0, [r3, #0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	mov r3, ip
	str r0, [r3, #0]
	adds r2, r1, #0
_0800B1BE:
	adds r1, r2, #0
	cmp r1, #1
	ble _0800B15C
	mov r0, r8
	cmp r0, #1
	ble _0800B14A
	b _0800B2B6
_0800B1CC:
	ldr r1, _0800B1EC
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	adds r6, r1, #0
	cmp r0, #8
	bne _0800B1FC
	adds r0, r6, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x12
	bne _0800B1F0
	movs r4, #0x5a
	mov ip, r4
	b _0800B204
	.2byte 0x0000
_0800B1EC: .4byte gUnk_03003170
_0800B1F0:
	cmp r0, #2
	beq _0800B1F8
	cmp r0, #0xc
	bne _0800B1FC
_0800B1F8:
	movs r0, #0x3c
	b _0800B202
_0800B1FC:
	adds r0, r6, #0
	adds r0, #0x78
	ldrh r0, [r0, #0]
_0800B202:
	mov ip, r0
_0800B204:
	ldr r1, [r6, #0x68]
	mov r9, r1
	movs r0, #1
	negs r0, r0
	movs r2, #2
	ands r2, r3
	str r2, [sp, #0x28]
	movs r4, #4
	ands r4, r3
	str r4, [sp, #0x2c]
_0800B218:
	ldr r1, [sp, #0x24]
	adds r5, r1, r0
	movs r1, #1
	negs r1, r1
	adds r0, #1
	mov r8, r0
	lsls r6, r0, #2
_0800B226:
	mov r2, sl
	adds r0, r2, r1
	cmp r5, #0
	ble _0800B23E
	cmp r0, #0
	ble _0800B23E
	cmp r5, ip
	bge _0800B23E
	ldr r3, _0800B250
	ldrh r3, [r3, #0]
	cmp r0, r3
	blt _0800B254
_0800B23E:
	adds r2, r1, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r6, r0
	mov r4, sp
	adds r1, r4, r0
	movs r0, #1
	b _0800B2A8
_0800B250: .4byte gUnk_030031EA
_0800B254:
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r5, r0
	lsls r0, r0, #1
	mov r4, r9
	adds r3, r4, r0
	adds r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	mov r2, sp
	adds r4, r2, r0
	ldr r0, [r3, #0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	str r0, [r4, #0]
	adds r2, r1, #0
	ldr r1, [sp, #0x28]
	cmp r1, #0
	beq _0800B28A
	ldrb r1, [r3, #0]
	cmp r1, #1
	bne _0800B28A
	orrs r0, r1
	str r0, [r4, #0]
_0800B28A:
	ldr r4, [sp, #0x2c]
	cmp r4, #0
	beq _0800B2AA
	ldrb r1, [r3, #1]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800B2AA
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r6, r0
	mov r3, sp
	adds r1, r3, r0
	movs r0, #0
_0800B2A8:
	str r0, [r1, #0]
_0800B2AA:
	adds r1, r2, #0
	cmp r1, #1
	ble _0800B226
	mov r0, r8
	cmp r0, #1
	ble _0800B218
_0800B2B6:
	ldr r0, [sp, #0x10]
	cmp r0, #0xd
	bls _0800B2BE
	b _0800B63C
_0800B2BE:
	lsls r0, r0, #2
	ldr r1, _0800B2C8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800B2C8: .4byte _0800B2CC
_0800B2CC:
	.4byte _0800B63C
_0800B2D0: .4byte _0800B304
_0800B2D4: .4byte _0800B47C
_0800B2D8: .4byte _0800B47C
_0800B2DC: .4byte _0800B4B0
_0800B2E0: .4byte _0800B4B0
_0800B2E4: .4byte _0800B4E4
_0800B2E8: .4byte _0800B4E4
_0800B2EC: .4byte _0800B51C
_0800B2F0: .4byte _0800B51C
_0800B2F4: .4byte _0800B550
_0800B2F8: .4byte _0800B588
_0800B2FC: .4byte _0800B5C4
_0800B300: .4byte _0800B5FC
_0800B304:
	cmp r7, #7
	bls _0800B30A
	b _0800B63C
_0800B30A:
	lsls r0, r7, #2
	ldr r1, _0800B314
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800B314: .4byte _0800B318
_0800B318:
	.4byte _0800B338
_0800B31C: .4byte _0800B434
_0800B320: .4byte _0800B368
_0800B324: .4byte _0800B446
_0800B328: .4byte _0800B3AC
_0800B32C: .4byte _0800B458
_0800B330: .4byte _0800B3F4
_0800B334: .4byte _0800B468
_0800B338:
	ldr r0, [sp, #4]
	subs r0, #6
	cmp r0, #5
	bls _0800B342
	b _0800B638
_0800B342:
	lsls r0, r0, #2
	ldr r1, _0800B34C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800B34C: .4byte _0800B350
_0800B350:
	.4byte _0800B4E4
_0800B354: .4byte _0800B4E4
_0800B358: .4byte _0800B51C
_0800B35C: .4byte _0800B51C
_0800B360: .4byte _0800B550
_0800B364: .4byte _0800B588
_0800B368:
	ldr r0, [sp, #0x14]
	subs r0, #2
	cmp r0, #0xa
	bls _0800B372
	b _0800B638
_0800B372:
	lsls r0, r0, #2
	ldr r1, _0800B37C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800B37C: .4byte _0800B380
_0800B380:
	.4byte _0800B47C
_0800B384: .4byte _0800B47C
_0800B388: .4byte _0800B638
_0800B38C: .4byte _0800B638
_0800B390: .4byte _0800B638
_0800B394: .4byte _0800B638
_0800B398: .4byte _0800B51C
_0800B39C: .4byte _0800B51C
_0800B3A0: .4byte _0800B638
_0800B3A4: .4byte _0800B588
_0800B3A8: .4byte _0800B5C4
_0800B3AC:
	ldr r0, [sp, #0x1c]
	subs r0, #2
	cmp r0, #0xb
	bls _0800B3B6
	b _0800B638
_0800B3B6:
	lsls r0, r0, #2
	ldr r1, _0800B3C0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800B3C0: .4byte _0800B3C4
_0800B3C4:
	.4byte _0800B47C
_0800B3C8: .4byte _0800B47C
_0800B3CC: .4byte _0800B4B0
_0800B3D0: .4byte _0800B4B0
_0800B3D4: .4byte _0800B638
_0800B3D8: .4byte _0800B638
_0800B3DC: .4byte _0800B638
_0800B3E0: .4byte _0800B638
_0800B3E4: .4byte _0800B638
_0800B3E8: .4byte _0800B638
_0800B3EC: .4byte _0800B5C4
_0800B3F0: .4byte _0800B5FC
_0800B3F4:
	ldr r0, [sp, #0xc]
	subs r0, #4
	cmp r0, #9
	bls _0800B3FE
	b _0800B638
_0800B3FE:
	lsls r0, r0, #2
	ldr r1, _0800B408
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800B408: .4byte _0800B40C
_0800B40C:
	.4byte _0800B4B0
_0800B410: .4byte _0800B4B0
_0800B414: .4byte _0800B4E4
_0800B418: .4byte _0800B4E4
_0800B41C: .4byte _0800B638
_0800B420: .4byte _0800B638
_0800B424: .4byte _0800B550
_0800B428: .4byte _0800B638
_0800B42C: .4byte _0800B638
_0800B430: .4byte _0800B5FC
_0800B434:
	ldr r0, [sp, #0]
	cmp r0, #0
	bne _0800B43C
	b _0800B584
_0800B43C:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _0800B444
	b _0800B634
_0800B444:
	b _0800B638
_0800B446:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0800B44E
	b _0800B584
_0800B44E:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0800B456
	b _0800B5BC
_0800B456:
	b _0800B638
_0800B458:
	ldr r0, [sp, #0]
	cmp r0, #0
	bne _0800B460
	b _0800B5BC
_0800B460:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0800B478
	b _0800B638
_0800B468:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0800B470
	b _0800B634
_0800B470:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0800B478
	b _0800B638
_0800B478:
	movs r0, #7
	b _0800B63E
_0800B47C:
	cmp r7, #7
	bls _0800B482
	b _0800B63C
_0800B482:
	lsls r0, r7, #2
	ldr r1, _0800B48C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800B48C: .4byte _0800B490
_0800B490:
	.4byte _0800B63C
_0800B494: .4byte _0800B63C
_0800B498: .4byte _0800B518
_0800B49C: .4byte _0800B518
_0800B4A0: .4byte _0800B5F8
_0800B4A4: .4byte _0800B63C
_0800B4A8: .4byte _0800B63C
_0800B4AC: .4byte _0800B63C
_0800B4B0:
	cmp r7, #7
	bls _0800B4B6
	b _0800B63C
_0800B4B6:
	lsls r0, r7, #2
	ldr r1, _0800B4C0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800B4C0: .4byte _0800B4C4
_0800B4C4:
	.4byte _0800B63C
_0800B4C8: .4byte _0800B63C
_0800B4CC: .4byte _0800B63C
_0800B4D0: .4byte _0800B63C
_0800B4D4: .4byte _0800B630
_0800B4D8: .4byte _0800B5C0
_0800B4DC: .4byte _0800B5C0
_0800B4E0: .4byte _0800B63C
_0800B4E4:
	cmp r7, #7
	bls _0800B4EA
	b _0800B63C
_0800B4EA:
	lsls r0, r7, #2
	ldr r1, _0800B4F4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800B4F4: .4byte _0800B4F8
_0800B4F8:
	.4byte _0800B518
_0800B4FC: .4byte _0800B63C
_0800B500: .4byte _0800B63C
_0800B504: .4byte _0800B63C
_0800B508: .4byte _0800B63C
_0800B50C: .4byte _0800B63C
_0800B510: .4byte _0800B5F8
_0800B514: .4byte _0800B5F8
_0800B518:
	movs r0, #2
	b _0800B63E
_0800B51C:
	cmp r7, #7
	bls _0800B522
	b _0800B63C
_0800B522:
	lsls r0, r7, #2
	ldr r1, _0800B52C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800B52C: .4byte _0800B530
_0800B530:
	.4byte _0800B5C0
_0800B534: .4byte _0800B630
_0800B538: .4byte _0800B630
_0800B53C: .4byte _0800B63C
_0800B540: .4byte _0800B63C
_0800B544: .4byte _0800B63C
_0800B548: .4byte _0800B63C
_0800B54C: .4byte _0800B63C
_0800B550:
	cmp r7, #7
	bhi _0800B63C
	lsls r0, r7, #2
	ldr r1, _0800B560
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0800B560: .4byte _0800B564
_0800B564:
	.4byte _0800B584
_0800B568: .4byte _0800B63C
_0800B56C: .4byte _0800B63C
_0800B570: .4byte _0800B63C
_0800B574: .4byte _0800B63C
_0800B578: .4byte _0800B5BC
_0800B57C: .4byte _0800B5BC
_0800B580: .4byte _0800B638
_0800B584:
	movs r0, #3
	b _0800B63E
_0800B588:
	cmp r7, #7
	bhi _0800B63C
	lsls r0, r7, #2
	ldr r1, _0800B598
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0800B598: .4byte _0800B59C
_0800B59C:
	.4byte _0800B5C0
_0800B5A0: .4byte _0800B638
_0800B5A4: .4byte _0800B5BC
_0800B5A8: .4byte _0800B5BC
_0800B5AC: .4byte _0800B63C
_0800B5B0: .4byte _0800B63C
_0800B5B4: .4byte _0800B63C
_0800B5B8: .4byte _0800B63C
_0800B5BC:
	movs r0, #5
	b _0800B63E
_0800B5C0:
	movs r0, #8
	b _0800B63E
_0800B5C4:
	cmp r7, #7
	bhi _0800B63C
	lsls r0, r7, #2
	ldr r1, _0800B5D4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0800B5D4: .4byte _0800B5D8
_0800B5D8:
	.4byte _0800B63C
_0800B5DC: .4byte _0800B634
_0800B5E0: .4byte _0800B634
_0800B5E4: .4byte _0800B638
_0800B5E8: .4byte _0800B5F8
_0800B5EC: .4byte _0800B63C
_0800B5F0: .4byte _0800B63C
_0800B5F4: .4byte _0800B63C
_0800B5F8:
	movs r0, #6
	b _0800B63E
_0800B5FC:
	cmp r7, #7
	bhi _0800B63C
	lsls r0, r7, #2
	ldr r1, _0800B60C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0800B60C: .4byte _0800B610
_0800B610:
	.4byte _0800B63C
_0800B614: .4byte _0800B63C
_0800B618: .4byte _0800B63C
_0800B61C: .4byte _0800B63C
_0800B620: .4byte _0800B630
_0800B624: .4byte _0800B638
_0800B628: .4byte _0800B634
_0800B62C: .4byte _0800B634
_0800B630:
	movs r0, #4
	b _0800B63E
_0800B634:
	movs r0, #1
	b _0800B63E
_0800B638:
	movs r0, #0
	b _0800B63E
_0800B63C:
	adds r0, r7, #1
_0800B63E:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0800B118
