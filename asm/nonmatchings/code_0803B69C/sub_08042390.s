	thumb_func_start sub_08042390
sub_08042390: @ 0x08042390
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
	ldr r0, _080423CC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	adds r1, r0, #0
	cmp r0, #1
	beq _080423E0
	cmp r0, #1
	bgt _080423D0
	cmp r0, #0
	beq _080423DA
	b _08042400
_080423CC: .4byte gUnk_03003CE0
_080423D0:
	cmp r1, #2
	beq _080423E6
	cmp r1, #3
	beq _080423F4
	b _08042400
_080423DA:
	movs r0, #0
	movs r1, #0x6c
	b _080423EA
_080423E0:
	movs r0, #0
	movs r1, #0x84
	b _080423EA
_080423E6:
	movs r0, #0
	movs r1, #0x54
_080423EA:
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
	b _08042400
_080423F4:
	movs r0, #0
	movs r1, #0x9c
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
_08042400:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08042438
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
	b _08042446
	.2byte 0x0000
_08042438: .4byte gUnk_03003CE0
_0804243C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08042452
_08042446:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804243C
_08042452:
	bl sub_0800CC98
	cmp r0, #0
	bne _08042494
	bl sub_0801AB24
	cmp r0, #1
	beq _08042478
	cmp r0, #1
	bgt _0804246C
	cmp r0, #0
	beq _08042472
	b _0804248C
_0804246C:
	cmp r0, #2
	beq _08042480
	b _0804248C
_08042472:
	bl sub_080576A8
	b _0804248C
_08042478:
	movs r0, #6
	bl sub_0801AB50
	b _0804248C
_08042480:
	movs r0, #6
	bl sub_0801AB90
	b _0804248C
_08042488:
	bl sub_080003F0
_0804248C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08042488
_08042494:
	ldr r0, _080424E8
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r9, r4
	ldr r0, _080424EC
	mov r8, r0
_080424AC:
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
	ble _080424AC
	b _080424F4
_080424E8: .4byte gUnk_03003170
_080424EC: .4byte 0xFFE80000
_080424F0:
	bl sub_080003F0
_080424F4:
	bl sub_0805F184
	cmp r0, #0
	bne _080424F0
	b _08042502
_080424FE:
	bl sub_080003F0
_08042502:
	bl sub_0805EF90
	cmp r0, #0
	bne _080424FE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08042524
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804252C
_08042524: .4byte 0x00140103
_08042528:
	bl sub_080003F0
_0804252C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08042542
	bl sub_0800CDF8
	cmp r0, #0
	beq _08042528
	bl sub_0805EFBC
_08042542:
	movs r0, #0x22
	mov r9, r0
	ldr r0, _080425C4
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
_0804255C:
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
	ble _0804255C
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080425C8
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
_080425C4: .4byte gUnk_03003170
_080425C8: .4byte gUnk_03003CE0
	thumb_func_end sub_08042390
