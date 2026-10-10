	thumb_func_start sub_0802D2C8
sub_0802D2C8: @ 0x0802D2C8
	push {r4, r5, r6, r7, lr}
	movs r2, #0xc3
	lsls r2, r2, #1
	movs r0, #0x2c
	movs r1, #0x79
	bl sub_080289C0
	adds r6, r0, #0
	ldr r7, _0802D2E8
	ldr r0, _0802D2EC
	ldr r0, [r0, #0]
	ldr r1, _0802D2F0
	adds r4, r0, r1
	movs r5, #0
	b _0802D2F8
	.2byte 0x0000
_0802D2E8: .4byte sub_080455F0
_0802D2EC: .4byte gUnk_03005CF4
_0802D2F0: .4byte 0x00000E34
_0802D2F4:
	adds r5, #1
	adds r4, #0x28
_0802D2F8:
	cmp r5, #0x1d
	bhi _0802D336
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802D2F4
	b _0802D30C
_0802D308:
	bl sub_080003F0
_0802D30C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802D308
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
_0802D336:
	movs r1, #0x9c
	lsls r1, r1, #1
	movs r2, #0xd3
	lsls r2, r2, #1
	movs r0, #0x15
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D4F0
	ldr r0, [r0, #0]
	ldr r2, _0802D4F4
	adds r1, r0, r2
	movs r2, #0
_0802D350:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802D358
	b _0802D534
_0802D358:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D350
	bl sub_080003F0
	movs r2, #0
_0802D366:
	cmp r2, #0
	beq _0802D37A
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D37A:
	ldr r5, _0802D4F8
	ldr r0, _0802D4F0
	ldr r0, [r0, #0]
	ldr r2, _0802D4F4
	adds r1, r0, r2
	movs r2, #0
_0802D386:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802D38E
	b _0802D530
_0802D38E:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D386
	bl sub_080003F0
	movs r0, #0
_0802D39C:
	cmp r0, #0
	beq _0802D3A2
	str r5, [r0, #0x44]
_0802D3A2:
	ldr r0, _0802D4FC
	ldr r2, _0802D500
	movs r1, #0xa3
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D4F0
	ldr r0, [r0, #0]
	ldr r2, _0802D4F4
	adds r1, r0, r2
	movs r2, #0
_0802D3B8:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802D3C0
	b _0802D52C
_0802D3C0:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D3B8
	bl sub_080003F0
	movs r2, #0
_0802D3CE:
	cmp r2, #0
	beq _0802D3E2
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D3E2:
	ldr r5, _0802D504
	ldr r0, _0802D4F0
	ldr r0, [r0, #0]
	ldr r2, _0802D4F4
	adds r1, r0, r2
	movs r2, #0
_0802D3EE:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802D3F6
	b _0802D528
_0802D3F6:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D3EE
	bl sub_080003F0
	movs r0, #0
_0802D404:
	cmp r0, #0
	beq _0802D40A
	str r5, [r0, #0x44]
_0802D40A:
	movs r2, #0xd3
	lsls r2, r2, #1
	movs r0, #0x47
	movs r1, #0x5a
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D4F0
	ldr r0, [r0, #0]
	ldr r2, _0802D4F4
	adds r1, r0, r2
	movs r2, #0
_0802D422:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D524
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D422
	bl sub_080003F0
	movs r2, #0
_0802D436:
	cmp r2, #0
	beq _0802D44A
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D44A:
	ldr r5, _0802D508
	ldr r0, _0802D4F0
	ldr r0, [r0, #0]
	ldr r2, _0802D4F4
	adds r1, r0, r2
	movs r2, #0
_0802D456:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D520
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D456
	bl sub_080003F0
	movs r0, #0
_0802D46A:
	cmp r0, #0
	beq _0802D470
	str r5, [r0, #0x44]
_0802D470:
	ldr r0, _0802D50C
	ldr r2, _0802D510
	movs r1, #0x39
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D4F0
	ldr r0, [r0, #0]
	ldr r2, _0802D4F4
	adds r1, r0, r2
	movs r2, #0
_0802D486:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D51C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D486
	bl sub_080003F0
	movs r2, #0
_0802D49A:
	cmp r2, #0
	beq _0802D4AE
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D4AE:
	ldr r5, _0802D514
	ldr r0, _0802D4F0
	ldr r0, [r0, #0]
	ldr r2, _0802D4F4
	adds r1, r0, r2
	movs r2, #0
_0802D4BA:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D518
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D4BA
	bl sub_080003F0
	movs r0, #0
_0802D4CE:
	cmp r0, #0
	beq _0802D4D4
	str r5, [r0, #0x44]
_0802D4D4:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802D560
	bl sub_0801AB24
	cmp r0, #1
	beq _0802D544
	cmp r0, #1
	bgt _0802D538
	cmp r0, #0
	beq _0802D53E
	b _0802D558
	.2byte 0x0000
_0802D4F0: .4byte gUnk_03005CF4
_0802D4F4: .4byte 0x000007A4
_0802D4F8: .4byte sub_0803A460
_0802D4FC: .4byte 0x00020016
_0802D500: .4byte 0x000001AF
_0802D504: .4byte sub_08059AD0
_0802D508: .4byte sub_08059CEC
_0802D50C: .4byte 0x00070010
_0802D510: .4byte 0x000001B7
_0802D514: .4byte sub_08059DA0
_0802D518:
	adds r0, r1, #0
	b _0802D4CE
_0802D51C:
	adds r2, r1, #0
	b _0802D49A
_0802D520:
	adds r0, r1, #0
	b _0802D46A
_0802D524:
	adds r2, r1, #0
	b _0802D436
_0802D528:
	adds r0, r1, #0
	b _0802D404
_0802D52C:
	adds r2, r1, #0
	b _0802D3CE
_0802D530:
	adds r0, r1, #0
	b _0802D39C
_0802D534:
	adds r2, r1, #0
	b _0802D366
_0802D538:
	cmp r0, #2
	beq _0802D54C
	b _0802D558
_0802D53E:
	bl sub_080576A8
	b _0802D558
_0802D544:
	movs r0, #6
	bl sub_0801AB50
	b _0802D558
_0802D54C:
	movs r0, #6
	bl sub_0801AB90
	b _0802D558
_0802D554:
	bl sub_080003F0
_0802D558:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802D554
_0802D560:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0802D2C8
