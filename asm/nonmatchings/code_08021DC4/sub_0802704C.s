	thumb_func_start sub_0802704C
sub_0802704C: @ 0x0802704C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	b _08027060
_0802705C:
	bl sub_080003F0
_08027060:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802705C
	ldr r4, _0802708C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x70]
	mov sl, r0
	bl sub_0800CF10
	cmp r0, #0
	bne _080270D0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x70]
	cmp r0, #4
	beq _080270D0
	bl sub_0800CB9C
	cmp r0, #0
	beq _080270B6
	b _08027094
	.2byte 0x0000
_0802708C: .4byte gUnk_03005CF4
_08027090:
	bl sub_080003F0
_08027094:
	bl sub_08067C18
	cmp r0, #0
	beq _08027090
	b _080270A2
_0802709E:
	bl sub_080003F0
_080270A2:
	bl sub_08067C08
	cmp r0, #0
	beq _0802709E
	bl sub_08067BF8
	movs r0, #0x96
	lsls r0, r0, #1
	bl sub_08002298
_080270B6:
	bl sub_08002204
	cmp r0, #0
	beq _080270C4
	movs r0, #5
	bl sub_08057624
_080270C4:
	ldr r0, _08027254
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	movs r1, #0
	bl sub_08022E60
_080270D0:
	ldr r7, _08027254
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x40]
	cmp r0, #0
	bne _080270DC
	str r0, [r1, #0x44]
_080270DC:
	ldr r0, [r7, #0]
	ldr r2, [r0, #0x44]
	cmp r2, #0
	beq _080270F0
	mov r3, r8
	ldrh r1, [r3, #0]
	lsls r1, r1, #1
	adds r0, #0x22
	adds r0, r0, r1
	strh r2, [r0, #0]
_080270F0:
	mov r5, r8
	ldrh r1, [r5, #0]
	ldr r0, [r7, #0]
	lsls r1, r1, #1
	adds r0, #0x22
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r5, r5, r0
	bl sub_08056F8C
	ldr r2, [r7, #0]
	ldrh r1, [r2, #4]
	ldr r0, _08027258
	ands r0, r1
	strh r0, [r2, #4]
	bl sub_0800CCEC
	bl sub_0800CF10
	mov r9, r0
	cmp r0, #0
	beq _0802712C
	b _08027364
_0802712C:
	ldr r2, [r7, #0]
	ldr r1, [r2, #0x70]
	cmp r1, #4
	beq _08027136
	b _08027268
_08027136:
	adds r1, r2, #0
	adds r1, #0x98
	ldr r0, [r1, #0]
	str r0, [r2, #0x38]
	ldr r0, [r1, #0]
	str r0, [r2, #0x3c]
	bl sub_080020F4
	ldr r5, _0802725C
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r5
	adds r2, #0xa4
	ldr r0, [r7, #0]
	adds r0, #0xa0
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r6, r2
	adds r2, r2, r5
	adds r2, #0x8c
	muls r0, r6, r0
	adds r0, r0, r5
	adds r0, #0xa4
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r6, r2
	adds r2, r2, r5
	adds r2, #0x94
	muls r0, r6, r0
	adds r0, r0, r5
	adds r0, #0xa4
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r5
	ldr r0, [r7, #0]
	adds r0, #0x90
	ldrh r0, [r0, #0]
	adds r1, #0xc4
	strh r0, [r1, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r5
	ldr r0, [r7, #0]
	adds r0, #0x92
	ldrh r0, [r0, #0]
	adds r1, #0xc2
	strh r0, [r1, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r5
	ldr r0, [r7, #0]
	adds r0, #0x94
	ldrh r0, [r0, #0]
	adds r1, #0xc6
	strh r0, [r1, #0]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r5
	mov r6, r9
	strh r6, [r0, #0x20]
	movs r4, #0
	adds r5, #0x34
	mov r9, r5
	movs r6, #0
_080271F0:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	add r0, r9
	ldr r1, [r0, #0]
	ldr r7, _08027254
	ldr r0, [r7, #0]
	adds r0, r0, r6
	adds r1, r6, r1
	ldr r2, _08027260
	adds r0, r0, r2
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	adds r6, #0x28
	adds r4, #1
	cmp r4, #7
	bls _080271F0
	bl sub_08057C0C
	ldr r2, [r7, #0]
	str r0, [r2, #0x50]
	movs r0, #0
	str r0, [r2, #0x70]
	ldr r1, _08027264
	adds r0, r2, #0
	adds r0, #0x9c
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0, #0]
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x98
	ldr r0, [r0, #0]
	str r0, [r2, #0x38]
	bl sub_0800CDE4
	bl sub_0800CE54
	b _08027332
_08027254: .4byte gUnk_03005CF4
_08027258: .4byte 0x0000FFEF
_0802725C: .4byte gUnk_03003CE0
_08027260: .4byte 0x0000044C
_08027264: .4byte gUnk_03003478
_08027268:
	ldrh r0, [r2, #0]
	cmp r0, #0xd
	beq _08027272
	cmp r1, #3
	beq _08027276
_08027272:
	bl sub_0805D518
_08027276:
	mov r6, r8
	ldrh r0, [r6, #0]
	cmp r0, #7
	bne _0802729E
	ldr r0, _0802728C
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r0, #8
	orrs r0, r1
	strh r0, [r2, #4]
	b _08027294
_0802728C: .4byte gUnk_03005CF4
_08027290:
	bl sub_080003F0
_08027294:
	bl sub_08068558
	cmp r0, #0
	beq _08027290
	b _080272AA
_0802729E:
	ldr r0, _080272C0
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	ldr r0, _080272C4
	ands r0, r1
	strh r0, [r2, #4]
_080272AA:
	bl sub_0800D154
	adds r1, r0, #0
	cmp r1, #0
	bne _080272C8
	ldr r0, _080272C0
	ldr r0, [r0, #0]
	str r1, [r0, #0x38]
	str r1, [r0, #0x3c]
	b _080272CC
	.2byte 0x0000
_080272C0: .4byte gUnk_03005CF4
_080272C4: .4byte 0x0000FFF7
_080272C8:
	bl sub_0800D140
_080272CC:
	bl sub_0800D140
	bl sub_080020F4
	ldr r6, _0802735C
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r6, #0
	adds r0, #0x8c
	adds r1, r1, r0
	ldrh r0, [r5, #0]
	lsls r0, r0, #0xb
	str r0, [r1, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r6, #0
	adds r0, #0x90
	adds r1, r1, r0
	ldrh r0, [r5, #2]
	lsls r0, r0, #0xb
	str r0, [r1, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r6, #0
	adds r0, #0x94
	adds r1, r1, r0
	ldrh r0, [r5, #0]
	lsls r0, r0, #0xb
	str r0, [r1, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r6, #0
	adds r0, #0x98
	adds r1, r1, r0
	ldrh r0, [r5, #2]
	lsls r0, r0, #0xb
	str r0, [r1, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r6
	ldrh r1, [r5, #4]
	strh r1, [r0, #0x1c]
_08027332:
	movs r0, #1
	bl sub_080570DC
	bl sub_080583EC
	ldr r0, _08027360
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x40]
	cmp r1, #0
	bne _08027348
	str r1, [r0, #0x6c]
_08027348:
	bl sub_080020F4
	ldr r2, _0802735C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0, #0x20]
	b _0802746A
_0802735C: .4byte gUnk_03003CE0
_08027360: .4byte gUnk_03005CF4
_08027364:
	ldr r4, _080273F0
	bl sub_080020F4
	movs r7, #0xa6
	lsls r7, r7, #1
	muls r0, r7, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r6, [r0, #0]
	movs r0, #1
	negs r0, r0
	cmp r6, r0
	bne _080273F4
	bl sub_080020F4
	muls r0, r7, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	cmp r0, r6
	bne _080273F4
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r7, r1
	adds r0, r4, #0
	adds r0, #0x8c
	adds r1, r1, r0
	ldrh r0, [r5, #0]
	lsls r0, r0, #0xb
	str r0, [r1, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r7, r1
	adds r0, r4, #0
	adds r0, #0x90
	adds r1, r1, r0
	ldrh r0, [r5, #2]
	lsls r0, r0, #0xb
	str r0, [r1, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r7, r1
	adds r0, r4, #0
	adds r0, #0x94
	adds r1, r1, r0
	ldrh r0, [r5, #0]
	lsls r0, r0, #0xb
	str r0, [r1, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r7, r1
	adds r0, r4, #0
	adds r0, #0x98
	adds r1, r1, r0
	ldrh r0, [r5, #2]
	lsls r0, r0, #0xb
	str r0, [r1, #0]
	bl sub_080020F4
	muls r0, r7, r0
	adds r0, r0, r4
	ldrh r1, [r5, #4]
	strh r1, [r0, #0x1c]
	b _0802743A
_080273F0: .4byte gUnk_03003CE0
_080273F4:
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	ldr r6, _080274E4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r4, #0
	muls r2, r5, r2
	adds r2, r2, r6
	adds r2, #0x8c
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xa4
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r5, r2
	adds r2, r2, r6
	adds r2, #0x94
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xa4
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	str r1, [r2, #4]
_0802743A:
	bl sub_080020F4
	ldr r5, _080274E4
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0, #0x1c]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #0xc
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #2
	strh r1, [r0, #0x22]
	movs r0, #0
	bl sub_080570DC
_0802746A:
	bl sub_080020F4
	ldr r1, _080274E4
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	ldr r1, _080274E8
	ands r0, r1
	str r0, [r2, #0]
	bl sub_0800BB40
	bl sub_0800CF10
	cmp r0, #0
	bne _0802749C
	ldr r0, _080274EC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	cmp r0, #0xb
	beq _0802749C
	cmp r0, #0xc
	bne _080274A6
_0802749C:
	ldr r0, _080274EC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x70]
	cmp r0, #3
	bne _0802750C
_080274A6:
	movs r4, #1
	ldr r5, _080274F0
_080274AA:
	mov r0, r8
	ldrh r1, [r0, #0]
	ldr r0, _080274EC
	ldr r0, [r0, #0]
	lsls r1, r1, #1
	adds r0, #0x22
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r4, #3
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r3, r1
	mov r6, r8
	adds r2, r6, r0
	ldrh r0, [r2, #8]
	cmp r0, r5
	bne _080274F4
	adds r0, r1, #4
	add r0, r8
	adds r0, r0, r3
	bl sub_08026338
	bl sub_0800CD9C
	b _08027506
_080274E4: .4byte gUnk_03003CE0
_080274E8: .4byte 0xFFFFFBFF
_080274EC: .4byte gUnk_03005CF4
_080274F0: .4byte 0x0000FFFF
_080274F4:
	ldrh r0, [r2, #4]
	cmp r0, #0
	beq _08027506
	adds r0, r1, #4
	add r0, r8
	adds r0, r0, r3
	subs r1, r4, #1
	bl sub_080257D4
_08027506:
	adds r4, #1
	cmp r4, #3
	bls _080274AA
_0802750C:
	ldr r4, _08027510
	b _08027518
_08027510: .4byte gUnk_03005CF4
_08027514:
	bl sub_080003F0
_08027518:
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0]
	ldr r1, [r1, #0x40]
	bl sub_08009930
	cmp r0, #0
	beq _08027514
	b _0802752C
_08027528:
	bl sub_080003F0
_0802752C:
	bl sub_0800BA6C
	cmp r0, #0
	beq _08027528
	bl sub_0800CF10
	cmp r0, #0
	beq _08027546
	ldr r0, _08027564
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x70]
	cmp r0, #3
	bne _08027574
_08027546:
	bl sub_0800CDC0
	cmp r0, #0
	bne _0802756C
	ldr r0, _08027564
	ldr r0, [r0, #0]
	ldr r1, [r0, #0]
	ldr r0, _08027568
	cmp r1, r0
	beq _0802756C
	mov r0, r8
	bl sub_0805A4BC
	b _08027574
	.2byte 0x0000
_08027564: .4byte gUnk_03005CF4
_08027568: .4byte 0x0001000B
_0802756C:
	ldr r0, _080275E0
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0x48]
_08027574:
	bl sub_0800CF10
	cmp r0, #0
	beq _08027586
	ldr r0, _080275E0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x70]
	cmp r0, #3
	bne _080275CC
_08027586:
	bl sub_0800CDC0
	cmp r0, #0
	bne _0802759A
	ldr r0, _080275E0
	ldr r1, [r0, #0]
	ldrh r1, [r1, #0]
	adds r7, r0, #0
	cmp r1, #0xb
	bne _080275A6
_0802759A:
	ldr r0, _080275E0
	ldr r1, [r0, #0]
	ldrh r1, [r1, #0]
	adds r7, r0, #0
	cmp r1, #0xe
	bls _080275C4
_080275A6:
	ldr r1, [r7, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0]
	ldr r1, [r1, #0x40]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08023F98
	movs r4, #0
_080275BA:
	bl sub_080003F0
	adds r4, #1
	cmp r4, #0x77
	bls _080275BA
_080275C4:
	ldr r0, _080275E0
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0x70]
_080275CC:
	bl sub_0800CF10
	cmp r0, #0
	bne _08027602
	bl sub_0800CB9C
	cmp r0, #0
	beq _08027602
	b _080275E8
	.2byte 0x0000
_080275E0: .4byte gUnk_03005CF4
_080275E4:
	bl sub_080003F0
_080275E8:
	bl sub_08067C18
	cmp r0, #0
	beq _080275E4
	b _080275F6
_080275F2:
	bl sub_080003F0
_080275F6:
	bl sub_08067C08
	cmp r0, #0
	beq _080275F2
	bl sub_08067BF8
_08027602:
	bl sub_08002204
	cmp r0, #0
	beq _080276E2
	mov r0, sl
	cmp r0, #3
	beq _080276E2
	cmp r0, #4
	beq _080276E2
	bl sub_0800CF10
	cmp r0, #0
	bne _080276E2
	str r0, [sp, #4]
	mov r1, sp
	movs r0, #1
	strh r0, [r1, #0]
	ldr r1, _08027644
	ldr r0, [r1, #0]
	ldr r2, _08027648
	adds r0, r0, r2
	ldr r6, [r0, #0]
	ldrh r0, [r6, #0]
	adds r7, r1, #0
	cmp r0, #0
	beq _080276E2
_08027636:
	ldrh r0, [r6, #0]
	cmp r0, #4
	beq _0802764C
	cmp r0, #5
	beq _08027694
	b _080276D6
	.2byte 0x0000
_08027644: .4byte gUnk_03005CF4
_08027648: .4byte 0x0000071C
_0802764C:
	movs r1, #0
_0802764E:
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r5, r6, r0
	movs r4, #0
	adds r7, r1, #1
_0802765C:
	ldrh r1, [r5, #4]
	cmp r1, #0
	beq _0802767E
	mov r0, sp
	strh r1, [r0, #2]
	ldrh r0, [r5, #0]
	lsls r0, r0, #0xb
	ldrh r1, [r5, #2]
	lsls r1, r1, #0xb
	ldr r2, _08027690
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x40]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r3, sp
	bl sub_08066520
_0802767E:
	adds r4, #1
	adds r5, #8
	cmp r4, #3
	bls _0802765C
	adds r1, r7, #0
	ldr r7, _08027690
	cmp r1, #7
	bls _0802764E
	b _080276D6
_08027690: .4byte gUnk_03005CF4
_08027694:
	ldr r0, [r7, #0]
	ldrh r1, [r0, #0x2c]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r5, r6, r0
	movs r4, #0
	ldr r7, _08027778
_080276AC:
	ldrh r1, [r5, #4]
	cmp r1, #0
	beq _080276CE
	mov r0, sp
	strh r1, [r0, #2]
	ldrh r0, [r5, #0]
	lsls r0, r0, #0xb
	ldrh r1, [r5, #2]
	lsls r1, r1, #0xb
	ldr r2, _08027778
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x40]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r3, sp
	bl sub_08066520
_080276CE:
	adds r4, #1
	adds r5, #8
	cmp r4, #3
	bls _080276AC
_080276D6:
	movs r3, #0x92
	lsls r3, r3, #1
	adds r6, r6, r3
	ldrh r0, [r6, #0]
	cmp r0, #0
	bne _08027636
_080276E2:
	ldr r3, _0802777C
	ldr r5, _08027778
	mov r8, r5
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	ldrh r1, [r1, #0]
	subs r1, #1
	movs r2, #0x64
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _08027706
	movs r0, #0
	bl sub_08057328
_08027706:
	bl sub_0800CEFC
	bl sub_0800D108
	mov r6, r8
	ldr r0, [r6, #0]
	movs r1, #1
	strh r1, [r0, #0x10]
	ldr r1, [r0, #0x40]
	strh r1, [r0, #2]
	bl sub_080020F4
	ldr r7, _08027780
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r1, r0, #0
	muls r1, r6, r1
	adds r5, r7, #0
	adds r5, #0x30
	adds r1, r1, r5
	ldr r0, [r1, #0]
	movs r4, #0x80
	lsls r4, r4, #6
	ands r0, r4
	str r0, [r1, #0]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	mov r2, r8
	ldr r1, [r2, #0]
	ldr r1, [r1, #0x40]
	strh r1, [r0, #0x2a]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r5
	ldr r0, [r0, #0]
	ands r0, r4
	cmp r0, #0
	bne _08027766
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	movs r1, #1
	strb r1, [r0, #0]
_08027766:
	bl sub_08015C38
	bl sub_0806617C
	bl sub_08067D74
	movs r4, #0
	b _080277B2
	.2byte 0x0000
_08027778: .4byte gUnk_03005CF4
_0802777C: .4byte gUnk_084B0AA0
_08027780: .4byte gUnk_03003CE0
_08027784:
	ldr r3, _080277DC
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r4, #0
	muls r2, r0, r2
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r3, r5
	adds r0, r2, r0
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080277B0
	adds r0, r2, r3
	ldrh r0, [r0, #0]
	movs r1, #0x78
	bl sub_08065838
_080277B0:
	adds r4, #1
_080277B2:
	bl sub_08002164
	cmp r4, r0
	blo _08027784
	bl sub_0800CB9C
	cmp r0, #0
	beq _080277C8
	movs r0, #0x50
	bl sub_08002298
_080277C8:
	bl sub_08068384
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080277DC: .4byte gUnk_03003CE0
	thumb_func_end sub_0802704C
