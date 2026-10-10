	thumb_func_start sub_08053510
sub_08053510: @ 0x08053510
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08053544
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _08053548
	movs r5, #0
	b _08053576
_08053544: .4byte gUnk_03003CE0
_08053548:
	bl sub_080020F4
	cmp r0, #1
	beq _0805356A
	cmp r0, #1
	bgt _0805355A
	cmp r0, #0
	beq _08053564
	b _08053576
_0805355A:
	cmp r0, #2
	beq _0805356E
	cmp r0, #3
	beq _08053574
	b _08053576
_08053564:
	movs r5, #0xc
	negs r5, r5
	b _08053576
_0805356A:
	movs r5, #0xc
	b _08053576
_0805356E:
	movs r5, #0x24
	negs r5, r5
	b _08053576
_08053574:
	movs r5, #0x24
_08053576:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_08028D98
	movs r4, #1
	negs r5, r5
	add r0, sp, #0xc
	mov r8, r0
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x18]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x1c]
	b _080535A4
_0805359A:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080535B0
_080535A4:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0805359A
_080535B0:
	bl sub_0800CC98
	cmp r0, #0
	bne _080535F2
	bl sub_0801AB24
	cmp r0, #1
	beq _080535D6
	cmp r0, #1
	bgt _080535CA
	cmp r0, #0
	beq _080535D0
	b _080535EA
_080535CA:
	cmp r0, #2
	beq _080535DE
	b _080535EA
_080535D0:
	bl sub_080576A8
	b _080535EA
_080535D6:
	movs r0, #6
	bl sub_0801AB50
	b _080535EA
_080535DE:
	movs r0, #6
	bl sub_0801AB90
	b _080535EA
_080535E6:
	bl sub_080003F0
_080535EA:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080535E6
_080535F2:
	ldr r2, _08053610
	ldr r0, _08053614
	str r2, [r0, #0]
	ldr r0, _08053618
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805360A
	adds r0, r2, #0
	bl sub_08006CB4
_0805360A:
	movs r4, #0x14
	b _08053626
	.2byte 0x0000
_08053610: .4byte 0x00000193
_08053614: .4byte gUnk_03005CF8
_08053618: .4byte gUnk_030027D0
_0805361C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08053632
_08053626:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0805361C
_08053632:
	movs r3, #0x11
	mov sl, r3
	ldr r0, _08053698
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	lsls r5, r5, #0x10
	ldr r0, _0805369C
	mov r9, r0
_0805364E:
	add r0, sp, #8
	adds r1, r7, #0
	asrs r2, r5, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, r8
	adds r1, r6, #0
	mov r3, r9
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
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0805364E
	ldr r0, _080536A0
	ldr r0, [r0, #0]
	movs r1, #2
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _080536D0
	b _080536A8
	.2byte 0x0000
_08053698: .4byte gUnk_03003170
_0805369C: .4byte 0xFFC00000
_080536A0: .4byte gUnk_03005CF4
_080536A4:
	bl sub_080003F0
_080536A8:
	bl sub_0805F184
	cmp r0, #0
	bne _080536A4
	b _080536B6
_080536B2:
	bl sub_080003F0
_080536B6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080536B2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080536C8
	b _080536EC
	.2byte 0x0000
_080536C8: .4byte 0x001400A0
_080536CC:
	bl sub_080003F0
_080536D0:
	bl sub_0805F184
	cmp r0, #0
	bne _080536CC
	b _080536DE
_080536DA:
	bl sub_080003F0
_080536DE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080536DA
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805370C
_080536EC:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r3, r0, #0
	ldr r0, _08053710
	ldr r2, [r0, #0]
	movs r1, #2
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	adds r4, r3, #0
	b _08053718
_0805370C: .4byte 0x001400A1
_08053710: .4byte gUnk_03005CF4
_08053714:
	bl sub_080003F0
_08053718:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08053714
	movs r0, #0x22
	mov r9, r0
	ldr r0, _080537C8
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
_0805373C:
	ldr r0, [sp, #0x18]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x1c]
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
	ble _0805373C
	movs r1, #0xc
	ldr r0, _080537CC
	str r1, [r0, #0]
	ldr r0, _080537D0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805378C
	movs r0, #0xc
	bl sub_08006CB4
_0805378C:
	ldr r0, _080537D4
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2, #4]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080537D8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080537C8: .4byte gUnk_03003170
_080537CC: .4byte gUnk_03005CF8
_080537D0: .4byte gUnk_030027D0
_080537D4: .4byte gUnk_03005CF4
_080537D8: .4byte gUnk_03003CE0
	thumb_func_end sub_08053510
