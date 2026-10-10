	thumb_func_start sub_0802F208
sub_0802F208: @ 0x0802F208
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	bl sub_0800CE30
	cmp r0, #0
	beq _0802F228
	ldr r0, _0802F21C
	ldr r0, [r0, #0]
	ldr r1, _0802F220
	b _0802F22E
_0802F21C: .4byte gUnk_03005CF4
_0802F220: .4byte 0x000001C5
_0802F224:
	adds r2, r1, #0
	b _0802F282
_0802F228:
	ldr r0, _0802F2A0
	ldr r0, [r0, #0]
	ldr r1, _0802F2A4
_0802F22E:
	adds r2, r0, r1
	movs r0, #9
	negs r0, r0
	ldrb r1, [r2, #0]
	ands r0, r1
	strb r0, [r2, #0]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802F2A8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	movs r2, #0xc3
	lsls r2, r2, #1
	movs r0, #0x21
	movs r1, #0x78
	bl sub_080289C0
	adds r6, r0, #0
	ldr r0, _0802F2A0
	ldr r0, [r0, #0]
	ldr r2, _0802F2AC
	adds r1, r0, r2
	movs r2, #0
_0802F26E:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802F224
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802F26E
	bl sub_080003F0
	movs r2, #0
_0802F282:
	cmp r2, #0
	beq _0802F296
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802F296:
	movs r0, #0x1e
	bl sub_0801AA34
	b _0802F2B4
	.2byte 0x0000
_0802F2A0: .4byte gUnk_03005CF4
_0802F2A4: .4byte 0x000001B9
_0802F2A8: .4byte gUnk_03003CE0
_0802F2AC: .4byte 0x000007A4
_0802F2B0:
	bl sub_080003F0
_0802F2B4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802F2B0
	ldr r0, _0802F2C8
	bl sub_08000420
	movs r4, #0x64
	b _0802F2D6
	.2byte 0x0000
_0802F2C8: .4byte 0x09999000
_0802F2CC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802F2E2
_0802F2D6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802F2CC
_0802F2E2:
	adds r0, r6, #0
	movs r1, #3
	bl sub_0802939C
	b _0802F2F0
_0802F2EC:
	bl sub_080003F0
_0802F2F0:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F2EC
	b _0802F2FE
_0802F2FA:
	bl sub_080003F0
_0802F2FE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F2FA
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0802F320
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F328
	.2byte 0x0000
_0802F320: .4byte 0x001401F9
_0802F324:
	bl sub_080003F0
_0802F328:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802F324
	movs r4, #0x64
	b _0802F340
_0802F336:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802F34C
_0802F340:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802F336
_0802F34C:
	ldr r7, _0802F35C
	ldr r0, _0802F360
	ldr r0, [r0, #0]
	ldr r1, _0802F364
	adds r4, r0, r1
	movs r5, #0
	b _0802F36C
	.2byte 0x0000
_0802F35C: .4byte sub_0802F424
_0802F360: .4byte gUnk_03005CF4
_0802F364: .4byte 0x00000E34
_0802F368:
	adds r5, #1
	adds r4, #0x28
_0802F36C:
	cmp r5, #0x1d
	bhi _0802F3AA
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802F368
	b _0802F380
_0802F37C:
	bl sub_080003F0
_0802F380:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802F37C
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
_0802F3AA:
	ldr r0, _0802F414
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0802F3BC
	movs r0, #0x36
	bl sub_08006D08
_0802F3BC:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802F418
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	ldr r0, _0802F41C
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _0802F420
	movs r6, #1
	movs r4, #0
_0802F3E6:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0802F3FA
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0802F3FA
	strh r4, [r2, #0xc]
_0802F3FA:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _0802F3E6
	bl sub_08019F04
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0802F414: .4byte gUnk_030027D0
_0802F418: .4byte gUnk_03003CE0
_0802F41C: .4byte gUnk_030056F4
_0802F420: .4byte gUnk_030056FC
	thumb_func_end sub_0802F208
