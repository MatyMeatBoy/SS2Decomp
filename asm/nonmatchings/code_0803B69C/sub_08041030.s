	thumb_func_start sub_08041030
sub_08041030: @ 0x08041030
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	mov r9, r0
	str r1, [sp, #0x38]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080410E0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	ldr r0, _080410E4
	movs r1, #0x78
	movs r2, #0x52
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _080410E8
	ldr r0, [r0, #0]
	ldr r2, _080410EC
	adds r1, r0, r2
	movs r2, #0
	mov r3, sp
	adds r3, #0xc
	str r3, [sp, #0x3c]
_08041078:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _080410F8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08041078
	bl sub_080003F0
	movs r2, #0
_0804108C:
	cmp r2, #0
	beq _080410A0
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x10
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_080410A0:
	ldr r5, _080410F0
	ldr r0, _080410E8
	ldr r0, [r0, #0]
	ldr r2, _080410EC
	adds r1, r0, r2
	movs r2, #0
_080410AC:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _080410F4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080410AC
	bl sub_080003F0
	movs r0, #0
_080410C0:
	cmp r0, #0
	beq _080410C6
	str r5, [r0, #0x44]
_080410C6:
	bl sub_0800CE30
	adds r1, r0, #0
	cmp r1, #0
	beq _080410FC
	ldr r0, _080410E8
	ldr r0, [r0, #0]
	movs r3, #0xdf
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r0, #0
	strb r0, [r1, #0]
	b _08041108
_080410E0: .4byte gUnk_03003CE0
_080410E4: .4byte 0x0001003B
_080410E8: .4byte gUnk_03005CF4
_080410EC: .4byte 0x000007A4
_080410F0: .4byte sub_080308B4
_080410F4:
	adds r0, r1, #0
	b _080410C0
_080410F8:
	adds r2, r1, #0
	b _0804108C
_080410FC:
	ldr r0, _0804111C
	ldr r0, [r0, #0]
	movs r2, #0xd9
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0, #0]
_08041108:
	bl sub_080020F4
	cmp r0, #1
	beq _08041130
	cmp r0, #1
	bgt _08041120
	cmp r0, #0
	beq _0804112A
	b _08041150
	.2byte 0x0000
_0804111C: .4byte gUnk_03005CF4
_08041120:
	cmp r0, #2
	beq _08041136
	cmp r0, #3
	beq _08041144
	b _08041150
_0804112A:
	movs r0, #0
	movs r1, #0x6c
	b _0804113A
_08041130:
	movs r0, #0
	movs r1, #0x84
	b _0804113A
_08041136:
	movs r0, #0
	movs r1, #0x54
_0804113A:
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
	b _08041150
_08041144:
	movs r0, #0
	movs r1, #0x9c
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
_08041150:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804117C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08067D74
	movs r4, #2
	b _0804118A
	.2byte 0x0000
_0804117C: .4byte gUnk_03003CE0
_08041180:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08041196
_0804118A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08041180
_08041196:
	bl sub_0800CC98
	cmp r0, #0
	bne _080411D8
	bl sub_0801AB24
	cmp r0, #1
	beq _080411BC
	cmp r0, #1
	bgt _080411B0
	cmp r0, #0
	beq _080411B6
	b _080411D0
_080411B0:
	cmp r0, #2
	beq _080411C4
	b _080411D0
_080411B6:
	bl sub_080576A8
	b _080411D0
_080411BC:
	movs r0, #6
	bl sub_0801AB50
	b _080411D0
_080411C4:
	movs r0, #6
	bl sub_0801AB90
	b _080411D0
_080411CC:
	bl sub_080003F0
_080411D0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080411CC
_080411D8:
	movs r3, #0xa
	mov sl, r3
	ldr r0, _08041240
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	ldr r7, _08041244
_080411F2:
	add r0, sp, #8
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x3c]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080411F2
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08041250
	ldr r0, _08041248
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0804125A
_08041240: .4byte gUnk_03003170
_08041244: .4byte 0xFFE80000
_08041248: .4byte gUnk_03005CF4
_0804124C:
	adds r0, r1, #0
	b _080414E0
_08041250:
	ldr r0, _08041278
	ldr r0, [r0, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r0, r0, r2
_0804125A:
	ldrb r0, [r0, #0]
	asrs r0, r0, #6
	ands r0, r4
	cmp r0, #0
	beq _08041266
	b _08041678
_08041266:
	add r7, sp, #0x10
	add r6, sp, #0x14
	mov r3, sp
	adds r3, #0x18
	str r3, [sp, #0x40]
	mov r0, sp
	adds r0, #0x1c
	str r0, [sp, #0x44]
	b _08041280
_08041278: .4byte gUnk_03005CF4
_0804127C:
	bl sub_080003F0
_08041280:
	bl sub_0805F184
	cmp r0, #0
	bne _0804127C
	b _0804128E
_0804128A:
	bl sub_080003F0
_0804128E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804128A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080412B0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080412B8
_080412B0: .4byte 0x001400FB
_080412B4:
	bl sub_080003F0
_080412B8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080412CE
	bl sub_0800CDF8
	cmp r0, #0
	beq _080412B4
	bl sub_0805EFBC
_080412CE:
	ldr r0, _08041328
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	mov r8, r2
	adds r0, #0x82
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r4, #0
	movs r2, #0xc0
	lsls r2, r2, #0xe
	mov sl, r2
_080412E8:
	adds r0, r7, #0
	mov r1, r8
	movs r3, #0
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	adds r4, #0x22
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080412E8
	movs r4, #0x28
	b _08041336
	.2byte 0x0000
_08041328: .4byte gUnk_03003170
_0804132C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08041342
_08041336:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804132C
_08041342:
	ldr r0, _080413BC
	movs r1, #0x78
	movs r2, #0xfa
	bl sub_080289C0
	adds r5, r0, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x95
	movs r3, #0x3c
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802939C
	ldr r0, _080413C0
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	mov sl, r4
	mov r8, r4
_0804137E:
	ldr r0, [sp, #0x40]
	adds r1, r7, #0
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x44]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	adds r4, #0x22
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804137E
	b _080413C8
	.2byte 0x0000
_080413BC: .4byte 0x0004002F
_080413C0: .4byte gUnk_03003170
_080413C4:
	bl sub_080003F0
_080413C8:
	bl sub_0805F184
	cmp r0, #0
	bne _080413C4
	b _080413D6
_080413D2:
	bl sub_080003F0
_080413D6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080413D2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080413F8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08041400
_080413F8: .4byte 0x001400FC
_080413FC:
	bl sub_080003F0
_08041400:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08041416
	bl sub_0800CDF8
	cmp r0, #0
	beq _080413FC
	bl sub_0805EFBC
_08041416:
	mov r0, r9
	movs r1, #1
	bl sub_0802939C
	mov r0, r9
	movs r1, #0x5d
	movs r2, #0x5e
	movs r3, #4
	bl sub_08028AAC
	mov r0, r9
	movs r1, #6
	bl sub_0802939C
	mov r0, r9
	movs r1, #0x32
	movs r2, #0x5e
	movs r3, #0x64
	bl sub_08028AAC
	mov r0, r9
	movs r1, #3
	bl sub_0802939C
	b _0804144C
_08041448:
	bl sub_080003F0
_0804144C:
	bl sub_0805F184
	cmp r0, #0
	bne _08041448
	b _0804145A
_08041456:
	bl sub_080003F0
_0804145A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08041456
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0804147C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08041484
_0804147C: .4byte 0x001400FD
_08041480:
	bl sub_080003F0
_08041484:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804149A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08041480
	bl sub_0805EFBC
_0804149A:
	movs r4, #0x3c
	b _080414A8
_0804149E:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080414B4
_080414A8:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804149E
_080414B4:
	mov r2, r9
	movs r4, #4
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r9, r0
	bls _080414F0
	ldr r0, _080414E8
	ldr r0, [r0, #0]
	ldr r3, _080414EC
	adds r1, r0, r3
	movs r3, #0
_080414CA:
	ldr r0, [r1, #0]
	cmp r0, r2
	bne _080414D2
	b _0804124C
_080414D2:
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _080414CA
	bl sub_080003F0
	movs r0, #0
_080414E0:
	cmp r0, #0
	beq _0804153A
	adds r0, #0x42
	b _08041538
_080414E8: .4byte gUnk_03005CF4
_080414EC: .4byte 0x000007A4
_080414F0:
	mov r0, r9
	cmp r0, #0
	beq _08041524
	mov r2, r9
	subs r2, #1
	cmp r2, #4
	bhi _0804153A
	ldr r1, _08041518
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	movs r1, #4
	bl sub_08019EB8
	b _0804153A
_08041518: .4byte gUnk_030056F4
_0804151C:
	adds r2, r1, #0
	b _080415F8
_08041520:
	adds r0, r1, #0
	b _0804162E
_08041524:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08041540
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
_08041538:
	strh r4, [r0, #0]
_0804153A:
	movs r4, #0x3c
	b _0804154E
	.2byte 0x0000
_08041540: .4byte gUnk_03003CE0
_08041544:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08041560
_0804154E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08041544
	b _08041560
_0804155C:
	bl sub_080003F0
_08041560:
	bl sub_0805F184
	cmp r0, #0
	bne _0804155C
	b _0804156E
_0804156A:
	bl sub_080003F0
_0804156E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804156A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08041590
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08041598
_08041590: .4byte 0x001400FE
_08041594:
	bl sub_080003F0
_08041598:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080415AE
	bl sub_0800CDF8
	cmp r0, #0
	beq _08041594
	bl sub_0805EFBC
_080415AE:
	adds r0, r5, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xbe
	movs r2, #0x95
	movs r3, #0x3c
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E4
	ldr r0, _08041648
	ldr r0, [r0, #0]
	ldr r2, _0804164C
	adds r1, r0, r2
	movs r2, #0
_080415E4:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _0804151C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080415E4
	bl sub_080003F0
	movs r2, #0
_080415F8:
	cmp r2, #0
	beq _0804160C
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0804160C:
	ldr r4, _08041650
	ldr r0, _08041648
	ldr r0, [r0, #0]
	ldr r3, _0804164C
	adds r1, r0, r3
	movs r2, #0
_08041618:
	ldr r0, [r1, #0]
	cmp r0, r5
	bne _08041620
	b _08041520
_08041620:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08041618
	bl sub_080003F0
	movs r0, #0
_0804162E:
	cmp r0, #0
	beq _08041634
	str r4, [r0, #0x44]
_08041634:
	bl sub_0800CE30
	cmp r0, #0
	beq _08041658
	ldr r0, _08041648
	ldr r0, [r0, #0]
	ldr r1, _08041654
	adds r2, r0, r1
	b _08041660
	.2byte 0x0000
_08041648: .4byte gUnk_03005CF4
_0804164C: .4byte 0x000007A4
_08041650: .4byte sub_08058F4C
_08041654: .4byte 0x000001C5
_08041658:
	ldr r0, _0804166C
	ldr r0, [r0, #0]
	ldr r3, _08041670
	adds r2, r0, r3
_08041660:
	ldrb r1, [r2, #0]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #0]
	b _08041B14
	.2byte 0x0000
_0804166C: .4byte gUnk_03005CF4
_08041670: .4byte 0x000001B9
_08041674:
	adds r0, r1, #0
	b _080418FC
_08041678:
	add r7, sp, #0x20
	add r6, sp, #0x24
	mov r0, sp
	adds r0, #0x28
	str r0, [sp, #0x48]
	mov r1, sp
	adds r1, #0x2c
	str r1, [sp, #0x4c]
	mov r2, sp
	adds r2, #0x30
	str r2, [sp, #0x50]
	mov r3, sp
	adds r3, #0x34
	str r3, [sp, #0x54]
	b _0804169A
_08041696:
	bl sub_080003F0
_0804169A:
	bl sub_0805F184
	cmp r0, #0
	bne _08041696
	b _080416A8
_080416A4:
	bl sub_080003F0
_080416A8:
	bl sub_0805EF90
	cmp r0, #0
	bne _080416A4
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080416CC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080416D4
	.2byte 0x0000
_080416CC: .4byte 0x001400F6
_080416D0:
	bl sub_080003F0
_080416D4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080416EA
	bl sub_0800CDF8
	cmp r0, #0
	beq _080416D0
	bl sub_0805EFBC
_080416EA:
	ldr r0, _08041744
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	mov r8, r2
	adds r0, #0x82
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r4, #0
	movs r2, #0xc0
	lsls r2, r2, #0xe
	mov sl, r2
_08041704:
	adds r0, r7, #0
	mov r1, r8
	movs r3, #0
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x24]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	adds r4, #0x22
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08041704
	movs r4, #0x28
	b _08041752
	.2byte 0x0000
_08041744: .4byte gUnk_03003170
_08041748:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804175E
_08041752:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08041748
_0804175E:
	ldr r0, _080417D8
	movs r1, #0x78
	movs r2, #0xfa
	bl sub_080289C0
	adds r5, r0, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x95
	movs r3, #0x3c
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802939C
	ldr r0, _080417DC
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	mov sl, r4
	mov r8, r4
_0804179A:
	ldr r0, [sp, #0x48]
	adds r1, r7, #0
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x4c]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x2c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	adds r4, #0x22
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804179A
	b _080417E4
	.2byte 0x0000
_080417D8: .4byte 0x0004002F
_080417DC: .4byte gUnk_03003170
_080417E0:
	bl sub_080003F0
_080417E4:
	bl sub_0805F184
	cmp r0, #0
	bne _080417E0
	b _080417F2
_080417EE:
	bl sub_080003F0
_080417F2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080417EE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08041814
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804181C
_08041814: .4byte 0x001400F7
_08041818:
	bl sub_080003F0
_0804181C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08041832
	bl sub_0800CDF8
	cmp r0, #0
	beq _08041818
	bl sub_0805EFBC
_08041832:
	mov r0, r9
	movs r1, #1
	bl sub_0802939C
	mov r0, r9
	movs r1, #0x5d
	movs r2, #0x5e
	movs r3, #4
	bl sub_08028AAC
	mov r0, r9
	movs r1, #6
	bl sub_0802939C
	mov r0, r9
	movs r1, #0x32
	movs r2, #0x5e
	movs r3, #0x64
	bl sub_08028AAC
	mov r0, r9
	movs r1, #3
	bl sub_0802939C
	b _08041868
_08041864:
	bl sub_080003F0
_08041868:
	bl sub_0805F184
	cmp r0, #0
	bne _08041864
	b _08041876
_08041872:
	bl sub_080003F0
_08041876:
	bl sub_0805EF90
	cmp r0, #0
	bne _08041872
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08041898
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080418A0
_08041898: .4byte 0x001400F8
_0804189C:
	bl sub_080003F0
_080418A0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080418B6
	bl sub_0800CDF8
	cmp r0, #0
	beq _0804189C
	bl sub_0805EFBC
_080418B6:
	movs r4, #0x3c
	b _080418C4
_080418BA:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080418D0
_080418C4:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080418BA
_080418D0:
	mov r2, r9
	movs r4, #4
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _0804190C
	ldr r0, _08041904
	ldr r0, [r0, #0]
	ldr r3, _08041908
	adds r1, r0, r3
	movs r3, #0
_080418E6:
	ldr r0, [r1, #0]
	cmp r0, r2
	bne _080418EE
	b _08041674
_080418EE:
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _080418E6
	bl sub_080003F0
	movs r0, #0
_080418FC:
	cmp r0, #0
	beq _0804194E
	adds r0, #0x42
	b _0804194C
_08041904: .4byte gUnk_03005CF4
_08041908: .4byte 0x000007A4
_0804190C:
	mov r0, r9
	cmp r0, #0
	beq _08041938
	mov r2, r9
	subs r2, #1
	cmp r2, #4
	bhi _0804194E
	ldr r1, _08041934
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	movs r1, #4
	bl sub_08019EB8
	b _0804194E
_08041934: .4byte gUnk_030056F4
_08041938:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08041954
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
_0804194C:
	strh r4, [r0, #0]
_0804194E:
	movs r4, #0x3c
	b _08041962
	.2byte 0x0000
_08041954: .4byte gUnk_03003CE0
_08041958:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08041974
_08041962:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08041958
	b _08041974
_08041970:
	bl sub_080003F0
_08041974:
	bl sub_0805F184
	cmp r0, #0
	bne _08041970
	b _08041982
_0804197E:
	bl sub_080003F0
_08041982:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804197E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080419A4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080419AC
_080419A4: .4byte 0x001400F9
_080419A8:
	bl sub_080003F0
_080419AC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080419C2
	bl sub_0800CDF8
	cmp r0, #0
	beq _080419A8
	bl sub_0805EFBC
_080419C2:
	ldr r0, [sp, #0x38]
	movs r1, #8
	bl sub_0802939C
	ldr r0, [sp, #0x38]
	movs r1, #0xb0
	movs r2, #0x95
	movs r3, #0x28
	bl sub_08028AAC
	ldr r0, [sp, #0x38]
	movs r1, #2
	bl sub_080290E4
	ldr r0, [sp, #0x38]
	movs r1, #0x8c
	movs r2, #0x95
	movs r3, #0x1e
	bl sub_08028AAC
	ldr r0, [sp, #0x38]
	movs r1, #0
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #6
	bl sub_080290E4
	b _08041A00
_080419FC:
	bl sub_080003F0
_08041A00:
	bl sub_0805F184
	cmp r0, #0
	bne _080419FC
	b _08041A0E
_08041A0A:
	bl sub_080003F0
_08041A0E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08041A0A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08041A30
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08041A38
_08041A30: .4byte 0x001400FA
_08041A34:
	bl sub_080003F0
_08041A38:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08041A4E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08041A34
	bl sub_0805EFBC
_08041A4E:
	adds r0, r5, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0xea
	movs r3, #0x3c
	bl sub_08028AAC
	ldr r0, _08041AFC
	ldr r0, [r0, #0]
	ldr r2, _08041B00
	adds r1, r0, r2
	movs r2, #0
_08041A74:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _08041A88
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08041A74
	bl sub_080003F0
	movs r1, #0
_08041A88:
	cmp r1, #0
	beq _08041A90
	movs r0, #4
	strh r0, [r1, #0x36]
_08041A90:
	movs r3, #0x22
	mov r9, r3
	ldr r0, _08041B04
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	movs r7, #0
_08041AAA:
	ldr r0, [sp, #0x50]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x54]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08041AAA
	bl sub_0800CE30
	cmp r0, #0
	beq _08041B08
	ldr r0, _08041AFC
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x10
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _08041B14
	.2byte 0x0000
_08041AFC: .4byte gUnk_03005CF4
_08041B00: .4byte 0x000007A4
_08041B04: .4byte gUnk_03003170
_08041B08:
	ldr r0, _08041B28
	ldr r2, [r0, #0]
	movs r1, #0x10
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_08041B14:
	bl sub_0800CE30
	cmp r0, #0
	beq _08041B30
	ldr r0, _08041B28
	ldr r0, [r0, #0]
	ldr r1, _08041B2C
	adds r2, r0, r1
	b _08041B38
	.2byte 0x0000
_08041B28: .4byte gUnk_03005CF4
_08041B2C: .4byte 0x000001C5
_08041B30:
	ldr r0, _08041B70
	ldr r0, [r0, #0]
	ldr r3, _08041B74
	adds r2, r0, r3
_08041B38:
	ldrb r1, [r2, #0]
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r2, #0]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08041B78
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08041B70: .4byte gUnk_03005CF4
_08041B74: .4byte 0x000001B9
_08041B78: .4byte gUnk_03003CE0
	thumb_func_end sub_08041030
