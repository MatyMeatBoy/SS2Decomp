	thumb_func_start sub_0802E110
sub_0802E110: @ 0x0802E110
	push {r4, r5, lr}
	movs r0, #0x38
	movs r1, #0x6f
	movs r2, #0xdd
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E3B0
	ldr r0, [r0, #0]
	ldr r2, _0802E3B4
	adds r1, r0, r2
	movs r2, #0
_0802E128:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E130
	b _0802E410
_0802E130:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E128
	bl sub_080003F0
	movs r2, #0
_0802E13E:
	cmp r2, #0
	beq _0802E152
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x14
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E152:
	ldr r5, _0802E3B8
	ldr r0, _0802E3B0
	ldr r0, [r0, #0]
	ldr r2, _0802E3B4
	adds r1, r0, r2
	movs r2, #0
_0802E15E:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E166
	b _0802E40C
_0802E166:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E15E
	bl sub_080003F0
	movs r0, #0
_0802E174:
	cmp r0, #0
	beq _0802E17A
	str r5, [r0, #0x44]
_0802E17A:
	ldr r0, _0802E3BC
	ldr r2, _0802E3C0
	movs r1, #0xc6
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E3B0
	ldr r0, [r0, #0]
	ldr r2, _0802E3B4
	adds r1, r0, r2
	movs r2, #0
_0802E190:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E198
	b _0802E408
_0802E198:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E190
	bl sub_080003F0
	movs r2, #0
_0802E1A6:
	cmp r2, #0
	beq _0802E1BA
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E1BA:
	ldr r5, _0802E3C4
	ldr r0, _0802E3B0
	ldr r0, [r0, #0]
	ldr r2, _0802E3B4
	adds r1, r0, r2
	movs r2, #0
_0802E1C6:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E1CE
	b _0802E404
_0802E1CE:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E1C6
	bl sub_080003F0
	movs r0, #0
_0802E1DC:
	cmp r0, #0
	beq _0802E1E2
	str r5, [r0, #0x44]
_0802E1E2:
	movs r1, #0x88
	lsls r1, r1, #1
	movs r0, #0x31
	movs r2, #0xe0
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E3B0
	ldr r0, [r0, #0]
	ldr r2, _0802E3B4
	adds r1, r0, r2
	movs r2, #0
_0802E1FA:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E202
	b _0802E400
_0802E202:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E1FA
	bl sub_080003F0
	movs r2, #0
_0802E210:
	cmp r2, #0
	beq _0802E224
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E224:
	ldr r5, _0802E3C8
	ldr r0, _0802E3B0
	ldr r0, [r0, #0]
	ldr r2, _0802E3B4
	adds r1, r0, r2
	movs r2, #0
_0802E230:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E238
	b _0802E3FC
_0802E238:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E230
	bl sub_080003F0
	movs r0, #0
_0802E246:
	cmp r0, #0
	beq _0802E24C
	str r5, [r0, #0x44]
_0802E24C:
	adds r0, r4, #0
	movs r1, #9
	bl sub_0802939C
	ldr r0, _0802E3CC
	movs r1, #0xa6
	lsls r1, r1, #1
	movs r2, #0x8b
	lsls r2, r2, #1
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E3B0
	ldr r0, [r0, #0]
	ldr r2, _0802E3B4
	adds r1, r0, r2
	movs r2, #0
_0802E26E:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E276
	b _0802E3F8
_0802E276:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E26E
	bl sub_080003F0
	movs r2, #0
_0802E284:
	cmp r2, #0
	beq _0802E298
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E298:
	ldr r5, _0802E3D0
	ldr r0, _0802E3B0
	ldr r0, [r0, #0]
	ldr r2, _0802E3B4
	adds r1, r0, r2
	movs r2, #0
_0802E2A4:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E2AC
	b _0802E3F4
_0802E2AC:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E2A4
	bl sub_080003F0
	movs r0, #0
_0802E2BA:
	cmp r0, #0
	beq _0802E2C0
	str r5, [r0, #0x44]
_0802E2C0:
	ldr r1, _0802E3D4
	movs r0, #0x32
	movs r2, #0xfd
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E3B0
	ldr r0, [r0, #0]
	ldr r2, _0802E3B4
	adds r1, r0, r2
	movs r2, #0
_0802E2D6:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E2DE
	b _0802E3F0
_0802E2DE:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E2D6
	bl sub_080003F0
	movs r2, #0
_0802E2EC:
	cmp r2, #0
	beq _0802E300
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E300:
	ldr r5, _0802E3D8
	ldr r0, _0802E3B0
	ldr r0, [r0, #0]
	ldr r2, _0802E3B4
	adds r1, r0, r2
	movs r2, #0
_0802E30C:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802E3EC
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E30C
	bl sub_080003F0
	movs r0, #0
_0802E320:
	cmp r0, #0
	beq _0802E326
	str r5, [r0, #0x44]
_0802E326:
	ldr r0, _0802E3DC
	movs r1, #0xd0
	lsls r1, r1, #1
	movs r2, #0x58
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E3B0
	ldr r0, [r0, #0]
	ldr r2, _0802E3B4
	adds r1, r0, r2
	movs r2, #0
_0802E33E:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802E3E8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E33E
	bl sub_080003F0
	movs r2, #0
_0802E352:
	cmp r2, #0
	beq _0802E366
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E366:
	ldr r5, _0802E3E0
	ldr r0, _0802E3B0
	ldr r0, [r0, #0]
	ldr r2, _0802E3B4
	adds r1, r0, r2
	movs r2, #0
_0802E372:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802E3E4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E372
	bl sub_080003F0
	movs r0, #0
_0802E386:
	cmp r0, #0
	beq _0802E38C
	str r5, [r0, #0x44]
_0802E38C:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0802939C
	bl sub_0800CC98
	cmp r0, #0
	bne _0802E43C
	bl sub_0801AB24
	cmp r0, #1
	beq _0802E420
	cmp r0, #1
	bgt _0802E414
	cmp r0, #0
	beq _0802E41A
	b _0802E434
	.2byte 0x0000
_0802E3B0: .4byte gUnk_03005CF4
_0802E3B4: .4byte 0x000007A4
_0802E3B8: .4byte sub_08039F00
_0802E3BC: .4byte 0x00010022
_0802E3C0: .4byte 0x00000105
_0802E3C4: .4byte sub_08059418
_0802E3C8: .4byte sub_0803A8F0
_0802E3CC: .4byte 0x00060019
_0802E3D0: .4byte sub_0803AD74
_0802E3D4: .4byte 0x00000179
_0802E3D8: .4byte sub_08059374
_0802E3DC: .4byte 0x00060018
_0802E3E0: .4byte sub_0803AE6C
_0802E3E4:
	adds r0, r1, #0
	b _0802E386
_0802E3E8:
	adds r2, r1, #0
	b _0802E352
_0802E3EC:
	adds r0, r1, #0
	b _0802E320
_0802E3F0:
	adds r2, r1, #0
	b _0802E2EC
_0802E3F4:
	adds r0, r1, #0
	b _0802E2BA
_0802E3F8:
	adds r2, r1, #0
	b _0802E284
_0802E3FC:
	adds r0, r1, #0
	b _0802E246
_0802E400:
	adds r2, r1, #0
	b _0802E210
_0802E404:
	adds r0, r1, #0
	b _0802E1DC
_0802E408:
	adds r2, r1, #0
	b _0802E1A6
_0802E40C:
	adds r0, r1, #0
	b _0802E174
_0802E410:
	adds r2, r1, #0
	b _0802E13E
_0802E414:
	cmp r0, #2
	beq _0802E428
	b _0802E434
_0802E41A:
	bl sub_080576A8
	b _0802E434
_0802E420:
	movs r0, #6
	bl sub_0801AB50
	b _0802E434
_0802E428:
	movs r0, #6
	bl sub_0801AB90
	b _0802E434
_0802E430:
	bl sub_080003F0
_0802E434:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802E430
_0802E43C:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802E110
