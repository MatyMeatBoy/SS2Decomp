	thumb_func_start sub_080402F4
sub_080402F4: @ 0x080402F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08040330
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	adds r1, r0, #0
	cmp r0, #1
	beq _08040344
	cmp r0, #1
	bgt _08040334
	cmp r0, #0
	beq _0804033E
	b _08040364
_08040330: .4byte gUnk_03003CE0
_08040334:
	cmp r1, #2
	beq _0804034A
	cmp r1, #3
	beq _08040358
	b _08040364
_0804033E:
	movs r0, #0
	movs r1, #0x6c
	b _0804034E
_08040344:
	movs r0, #0
	movs r1, #0x84
	b _0804034E
_0804034A:
	movs r0, #0
	movs r1, #0x54
_0804034E:
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
	b _08040364
_08040358:
	movs r0, #0
	movs r1, #0x9c
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
_08040364:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804039C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08067D74
	movs r4, #2
	add r6, sp, #0xc
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x18]
	add r1, sp, #0x14
	mov sl, r1
	b _080403AA
	.2byte 0x0000
_0804039C: .4byte gUnk_03003CE0
_080403A0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080403B6
_080403AA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080403A0
_080403B6:
	bl sub_0800CC98
	cmp r0, #0
	bne _080403F8
	bl sub_0801AB24
	cmp r0, #1
	beq _080403DC
	cmp r0, #1
	bgt _080403D0
	cmp r0, #0
	beq _080403D6
	b _080403F0
_080403D0:
	cmp r0, #2
	beq _080403E4
	b _080403F0
_080403D6:
	bl sub_080576A8
	b _080403F0
_080403DC:
	movs r0, #6
	bl sub_0801AB50
	b _080403F0
_080403E4:
	movs r0, #6
	bl sub_0801AB90
	b _080403F0
_080403EC:
	bl sub_080003F0
_080403F0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080403EC
_080403F8:
	ldr r0, _0804044C
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r9, r4
	ldr r0, _08040450
	mov r8, r0
_08040410:
	add r0, sp, #8
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r8
	asrs r2, r3, #0x10
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
	adds r4, #0xa
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08040410
	b _08040458
_0804044C: .4byte gUnk_03003170
_08040450: .4byte 0xFFE80000
_08040454:
	bl sub_080003F0
_08040458:
	bl sub_0805F184
	cmp r0, #0
	bne _08040454
	b _08040466
_08040462:
	bl sub_080003F0
_08040466:
	bl sub_0805EF90
	cmp r0, #0
	bne _08040462
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08040488
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08040490
_08040488: .4byte 0x001400EC
_0804048C:
	bl sub_080003F0
_08040490:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080404A6
	bl sub_0800CDF8
	cmp r0, #0
	beq _0804048C
	bl sub_0805EFBC
_080404A6:
	movs r0, #0x22
	mov r9, r0
	ldr r0, _08040528
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
_080404C0:
	ldr r0, [sp, #0x18]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, sl
	adds r1, r5, #0
	asrs r2, r7, #0x10
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
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080404C0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804052C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08040528: .4byte gUnk_03003170
_0804052C: .4byte gUnk_03003CE0
	thumb_func_end sub_080402F4
