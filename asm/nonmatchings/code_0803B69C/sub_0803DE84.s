	thumb_func_start sub_0803DE84
sub_0803DE84: @ 0x0803DE84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803DF20
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	movs r0, #0xf
	movs r1, #0x42
	movs r2, #0xc0
	bl sub_080289C0
	adds r7, r0, #0
	ldr r0, _0803DF24
	ldr r0, [r0, #0]
	ldr r2, _0803DF28
	adds r1, r0, r2
	movs r2, #0
	add r3, sp, #0x10
	mov r9, r3
	add r0, sp, #0x14
	mov sl, r0
_0803DECA:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _0803DF30
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803DECA
	bl sub_080003F0
	movs r2, #0
_0803DEDE:
	cmp r2, #0
	beq _0803DEF2
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0803DEF2:
	adds r0, r7, #0
	movs r1, #0x14
	bl sub_0802939C
	adds r0, r7, #0
	movs r1, #7
	bl sub_080290E4
	ldr r2, _0803DF2C
	movs r0, #1
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	bl sub_080020F4
	cmp r0, #1
	beq _0803DF48
	cmp r0, #1
	bgt _0803DF34
	cmp r0, #0
	beq _0803DF3E
	b _0803DF70
_0803DF20: .4byte gUnk_03003CE0
_0803DF24: .4byte gUnk_03005CF4
_0803DF28: .4byte 0x000007A4
_0803DF2C: .4byte 0x0000270F
_0803DF30:
	adds r2, r1, #0
	b _0803DEDE
_0803DF34:
	cmp r0, #2
	beq _0803DF52
	cmp r0, #3
	beq _0803DF62
	b _0803DF70
_0803DF3E:
	movs r1, #0x85
	lsls r1, r1, #1
	movs r0, #0
	movs r2, #0xc0
	b _0803DF5A
_0803DF48:
	movs r1, #0x8d
	lsls r1, r1, #1
	movs r0, #0
	movs r2, #0xb0
	b _0803DF5A
_0803DF52:
	movs r1, #0x8d
	lsls r1, r1, #1
	movs r0, #0
	movs r2, #0xd0
_0803DF5A:
	movs r3, #0
	bl sub_08028AAC
	b _0803DF70
_0803DF62:
	movs r1, #0x95
	lsls r1, r1, #1
	movs r0, #0
	movs r2, #0xc0
	movs r3, #0
	bl sub_08028AAC
_0803DF70:
	movs r0, #0x1e
	bl sub_0801AA34
	b _0803DF7C
_0803DF78:
	bl sub_080003F0
_0803DF7C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0803DF78
	bl sub_08002164
	mov r8, r0
	cmp r0, #1
	bne _0803DFCC
	b _0803DF94
_0803DF90:
	bl sub_080003F0
_0803DF94:
	bl sub_0805F184
	cmp r0, #0
	bne _0803DF90
	b _0803DFA2
_0803DF9E:
	bl sub_080003F0
_0803DFA2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803DF9E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803DFC0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	b _0803DFF6
_0803DFC0: .4byte 0x001404E4
_0803DFC4:
	adds r0, r1, #0
	b _0803E0C8
_0803DFC8:
	bl sub_080003F0
_0803DFCC:
	bl sub_0805F184
	cmp r0, #0
	bne _0803DFC8
	b _0803DFDA
_0803DFD6:
	bl sub_080003F0
_0803DFDA:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803DFD6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803DFFC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
_0803DFF6:
	adds r4, r0, #0
	b _0803E004
	.2byte 0x0000
_0803DFFC: .4byte 0x001404E5
_0803E000:
	bl sub_080003F0
_0803E004:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803E000
	movs r0, #0
	movs r1, #8
	bl sub_0802939C
	movs r0, #0
	movs r1, #2
	bl sub_080290E4
	movs r1, #0xa6
	negs r1, r1
	movs r0, #0
	movs r2, #0
	movs r3, #0x96
	bl sub_08028D98
	movs r0, #0
	movs r1, #0
	bl sub_0802939C
	b _0803E03A
_0803E036:
	bl sub_080003F0
_0803E03A:
	bl sub_0805F184
	cmp r0, #0
	bne _0803E036
	b _0803E048
_0803E044:
	bl sub_080003F0
_0803E048:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803E044
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803E068
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803E070
_0803E068: .4byte 0x001404E6
_0803E06C:
	bl sub_080003F0
_0803E070:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803E06C
	movs r0, #1
	movs r1, #0xb5
	movs r2, #0xa8
	movs r3, #0
	bl sub_08028AAC
	movs r0, #1
	movs r1, #0x18
	bl sub_0802926C
	movs r0, #1
	movs r1, #0
	bl sub_0802939C
	adds r0, r7, #0
	movs r1, #5
	bl sub_080290E4
	adds r2, r7, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r7, r0
	bls _0803E0DC
	ldr r0, _0803E0D4
	ldr r0, [r0, #0]
	ldr r3, _0803E0D8
	adds r1, r0, r3
	movs r3, #0
_0803E0B4:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _0803DFC4
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _0803E0B4
	bl sub_080003F0
	movs r0, #0
_0803E0C8:
	cmp r0, #0
	beq _0803E128
	adds r0, #0x42
	strh r4, [r0, #0]
	b _0803E128
	.2byte 0x0000
_0803E0D4: .4byte gUnk_03005CF4
_0803E0D8: .4byte 0x000007A4
_0803E0DC:
	cmp r7, #0
	beq _0803E108
	subs r2, r7, #1
	cmp r2, #4
	bhi _0803E128
	ldr r1, _0803E100
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	movs r1, #3
	bl sub_08019EB8
	b _0803E128
_0803E100: .4byte gUnk_030056F4
_0803E104:
	adds r0, r1, #0
	b _0803E2D8
_0803E108:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0803E120
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0, #0]
	b _0803E128
_0803E120: .4byte gUnk_03003CE0
_0803E124:
	bl sub_080003F0
_0803E128:
	bl sub_0805F184
	cmp r0, #0
	bne _0803E124
	b _0803E136
_0803E132:
	bl sub_080003F0
_0803E136:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803E132
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803E158
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803E160
	.2byte 0x0000
_0803E158: .4byte 0x001404E7
_0803E15C:
	bl sub_080003F0
_0803E160:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803E15C
	movs r1, #0xa5
	ldr r0, _0803E1E0
	str r1, [r0, #0]
	ldr r0, _0803E1E4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803E182
	movs r0, #0xa5
	bl sub_08006CB4
_0803E182:
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _0803E1E8
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0, #0x20]
	ldr r0, _0803E1EC
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _0803E1F0
	movs r6, #1
	movs r4, #0
_0803E1B8:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0803E1CC
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0803E1CC
	strh r4, [r2, #0xc]
_0803E1CC:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _0803E1B8
	bl sub_08019F04
_0803E1DC:
	movs r4, #1
	b _0803E1FE
_0803E1E0: .4byte gUnk_03005CF8
_0803E1E4: .4byte gUnk_030027D0
_0803E1E8: .4byte gUnk_03003CE0
_0803E1EC: .4byte gUnk_030056F4
_0803E1F0: .4byte gUnk_030056FC
_0803E1F4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803E20A
_0803E1FE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803E1F4
_0803E20A:
	ldr r0, _0803E224
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803E228
	bl sub_08019C3C
	adds r5, r0, #0
	b _0803E22A
	.2byte 0x0000
_0803E224: .4byte gUnk_03005CF4
_0803E228:
	movs r5, #1
_0803E22A:
	cmp r5, #0
	bne _0803E1DC
	ldr r4, _0803E25C
	ldr r0, [r4, #0]
	bl sub_08006CD0
	str r5, [r4, #0]
	bl sub_08015D74
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803E260
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _0803E268
	.2byte 0x0000
_0803E25C: .4byte gUnk_03005CF8
_0803E260: .4byte gUnk_03003CE0
_0803E264:
	bl sub_080003F0
_0803E268:
	bl sub_0805F184
	cmp r0, #0
	bne _0803E264
	b _0803E276
_0803E272:
	bl sub_080003F0
_0803E276:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803E272
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803E298
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803E2A0
_0803E298: .4byte 0x001404E8
_0803E29C:
	bl sub_080003F0
_0803E2A0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803E2B6
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803E29C
	bl sub_0805EFBC
_0803E2B6:
	ldr r4, _0803E31C
	ldr r0, _0803E320
	ldr r0, [r0, #0]
	ldr r2, _0803E324
	adds r1, r0, r2
	movs r2, #0
_0803E2C2:
	ldr r0, [r1, #0]
	cmp r0, r7
	bne _0803E2CA
	b _0803E104
_0803E2CA:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803E2C2
	bl sub_080003F0
	movs r0, #0
_0803E2D8:
	cmp r0, #0
	beq _0803E2DE
	str r4, [r0, #0x44]
_0803E2DE:
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _0803E328
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0xfc
	lsls r0, r0, #7
	str r0, [sp, #8]
	movs r0, #0x86
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	ldr r0, _0803E32C
	str r0, [sp, #0x14]
	bl sub_080020F4
	muls r0, r5, r0
	adds r4, r0, r4
	b _0803E334
	.2byte 0x0000
_0803E31C: .4byte sub_0803E510
_0803E320: .4byte gUnk_03005CF4
_0803E324: .4byte 0x000007A4
_0803E328: .4byte gUnk_03003CE0
_0803E32C: .4byte 0x00100040
_0803E330:
	bl sub_080003F0
_0803E334:
	adds r0, r4, #0
	adds r0, #0x8c
	add r1, sp, #8
	mov r2, r9
	mov r3, sl
	bl sub_08021FE0
	cmp r0, #0
	beq _0803E330
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803E370
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	ldr r6, _0803E374
	ldr r0, _0803E378
	ldr r0, [r0, #0]
	ldr r3, _0803E37C
	adds r4, r0, r3
	movs r5, #0
	b _0803E384
_0803E370: .4byte gUnk_03003CE0
_0803E374: .4byte sub_08059890
_0803E378: .4byte gUnk_03005CF4
_0803E37C: .4byte 0x00000E34
_0803E380:
	adds r5, #1
	adds r4, #0x28
_0803E384:
	cmp r5, #0x1d
	bhi _0803E3C8
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0803E380
	b _0803E398
_0803E394:
	bl sub_080003F0
_0803E398:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0803E394
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
	b _0803E3C8
_0803E3C4:
	bl sub_080003F0
_0803E3C8:
	bl sub_0805F184
	cmp r0, #0
	bne _0803E3C4
	b _0803E3D6
_0803E3D2:
	bl sub_080003F0
_0803E3D6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803E3D2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803E44C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	movs r0, #0
	movs r1, #8
	bl sub_0802939C
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	movs r0, #0
	movs r1, #0x79
	movs r2, #0x6d
	movs r3, #0xfa
	bl sub_08028AAC
	ldr r0, _0803E450
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803E420
	movs r0, #0x65
	bl sub_08006D08
_0803E420:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803E454
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_08067D74
	ldr r0, _0803E458
	movs r1, #0
	bl sub_08068070
	ldr r5, _0803E45C
_0803E446:
	movs r4, #1
	b _0803E46A
	.2byte 0x0000
_0803E44C: .4byte 0x001404EA
_0803E450: .4byte gUnk_030027D0
_0803E454: .4byte gUnk_03003CE0
_0803E458: .4byte sub_0803E5D8
_0803E45C: .4byte gUnk_03005CF4
_0803E460:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803E476
_0803E46A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803E460
_0803E476:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803E48C
	ldr r0, [r5, #0]
	ldr r3, _0803E488
	adds r0, r0, r3
	b _0803E492
	.2byte 0x0000
_0803E488: .4byte 0x000001C1
_0803E48C:
	ldr r0, [r5, #0]
	ldr r1, _0803E4A0
	adds r0, r0, r1
_0803E492:
	ldrb r0, [r0, #0]
	cmp r0, r8
	bne _0803E446
	movs r0, #0x1e
	bl sub_0801AA8C
	b _0803E4A8
_0803E4A0: .4byte 0x000001B5
_0803E4A4:
	bl sub_080003F0
_0803E4A8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0803E4A4
	bl sub_08015D98
	ldr r0, _0803E504
	ldr r0, [r0, #0]
	ldr r2, _0803E508
	adds r1, r0, r2
	movs r2, #0
_0803E4BE:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _0803E4D2
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803E4BE
	bl sub_080003F0
	movs r1, #0
_0803E4D2:
	cmp r1, #0
	beq _0803E4DA
	movs r0, #4
	strh r0, [r1, #0x36]
_0803E4DA:
	movs r0, #0xc
	movs r1, #1
	bl sub_0802A228
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0803E50C
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0x20]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0803E504: .4byte gUnk_03005CF4
_0803E508: .4byte 0x000007A4
_0803E50C: .4byte gUnk_03003CE0
	thumb_func_end sub_0803DE84
