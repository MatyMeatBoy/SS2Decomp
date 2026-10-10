	thumb_func_start sub_080425CC
sub_080425CC: @ 0x080425CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #0x18]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804260C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	adds r1, r0, #0
	cmp r0, #1
	beq _08042620
	cmp r0, #1
	bgt _08042610
	cmp r0, #0
	beq _0804261A
	b _08042640
	.2byte 0x0000
_0804260C: .4byte gUnk_03003CE0
_08042610:
	cmp r1, #2
	beq _08042626
	cmp r1, #3
	beq _08042634
	b _08042640
_0804261A:
	movs r0, #0
	movs r1, #0x6c
	b _0804262A
_08042620:
	movs r0, #0
	movs r1, #0x84
	b _0804262A
_08042626:
	movs r0, #0
	movs r1, #0x54
_0804262A:
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
	b _08042640
_08042634:
	movs r0, #0
	movs r1, #0x9c
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
_08042640:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08042678
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
	str r0, [sp, #0x1c]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x20]
	b _08042686
_08042678: .4byte gUnk_03003CE0
_0804267C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08042692
_08042686:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804267C
_08042692:
	bl sub_0800CC98
	cmp r0, #0
	bne _080426DC
	bl sub_0801AB24
	cmp r0, #1
	beq _080426B8
	cmp r0, #1
	bgt _080426AC
	cmp r0, #0
	beq _080426B2
	b _080426D4
_080426AC:
	cmp r0, #2
	beq _080426C8
	b _080426D4
_080426B2:
	bl sub_080576A8
	b _080426D4
_080426B8:
	movs r0, #6
	bl sub_0801AB50
	b _080426D4
_080426C0:
	adds r2, r1, #0
	b _080427E2
_080426C4:
	adds r0, r1, #0
	b _08042818
_080426C8:
	movs r0, #6
	bl sub_0801AB90
	b _080426D4
_080426D0:
	bl sub_080003F0
_080426D4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080426D0
_080426DC:
	movs r2, #0xa
	mov sl, r2
	ldr r0, _08042734
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r7, [r1, r3]
	adds r0, #0x82
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r4, #0
	mov r9, r4
	ldr r2, _08042738
	mov r8, r2
_080426F8:
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
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080426F8
	b _08042740
_08042734: .4byte gUnk_03003170
_08042738: .4byte 0xFFE80000
_0804273C:
	bl sub_080003F0
_08042740:
	bl sub_0805F184
	cmp r0, #0
	bne _0804273C
	b _0804274E
_0804274A:
	bl sub_080003F0
_0804274E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804274A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08042770
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08042778
_08042770: .4byte 0x00140104
_08042774:
	bl sub_080003F0
_08042778:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804278E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08042774
	bl sub_0805EFBC
_0804278E:
	ldr r0, _08042820
	ldr r0, [r0, #0]
	ldr r2, _08042824
	adds r1, r0, r2
	movs r2, #0
_08042798:
	ldr r0, [r1, #0]
	ldr r3, [sp, #0x18]
	cmp r0, r3
	beq _080427AE
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042798
	bl sub_080003F0
	movs r1, #0
_080427AE:
	cmp r1, #0
	beq _080427B6
	movs r0, #4
	strh r0, [r1, #0x36]
_080427B6:
	ldr r0, _08042828
	movs r1, #0x78
	movs r2, #0x52
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08042820
	ldr r0, [r0, #0]
	ldr r2, _08042824
	adds r1, r0, r2
	movs r2, #0
_080427CC:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _080427D4
	b _080426C0
_080427D4:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080427CC
	bl sub_080003F0
	movs r2, #0
_080427E2:
	cmp r2, #0
	beq _080427F6
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x10
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_080427F6:
	ldr r5, _0804282C
	ldr r0, _08042820
	ldr r0, [r0, #0]
	ldr r3, _08042824
	adds r1, r0, r3
	movs r2, #0
_08042802:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0804280A
	b _080426C4
_0804280A:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08042802
	bl sub_080003F0
	movs r0, #0
_08042818:
	cmp r0, #0
	beq _08042834
	str r5, [r0, #0x44]
	b _08042834
_08042820: .4byte gUnk_03005CF4
_08042824: .4byte 0x000007A4
_08042828: .4byte 0x0002003C
_0804282C: .4byte sub_080308B4
_08042830:
	bl sub_080003F0
_08042834:
	bl sub_0805F184
	cmp r0, #0
	bne _08042830
	b _08042842
_0804283E:
	bl sub_080003F0
_08042842:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804283E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08042864
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804286C
_08042864: .4byte 0x00140105
_08042868:
	bl sub_080003F0
_0804286C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08042882
	bl sub_0800CDF8
	cmp r0, #0
	beq _08042868
	bl sub_0805EFBC
_08042882:
	movs r0, #0x22
	mov r9, r0
	ldr r0, _080428EC
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
_0804289C:
	ldr r0, [sp, #0x1c]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x20]
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
	ble _0804289C
	movs r4, #2
	bl sub_0800CE30
	cmp r0, #0
	beq _080428F4
	ldr r0, _080428F0
	ldr r0, [r0, #0]
	movs r1, #0xdf
	lsls r1, r1, #1
	adds r0, r0, r1
	b _080428FE
	.2byte 0x0000
_080428EC: .4byte gUnk_03003170
_080428F0: .4byte gUnk_03005CF4
_080428F4:
	ldr r0, _08042930
	ldr r0, [r0, #0]
	movs r2, #0xd9
	lsls r2, r2, #1
	adds r0, r0, r2
_080428FE:
	strb r4, [r0, #0]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08042934
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08042930: .4byte gUnk_03005CF4
_08042934: .4byte gUnk_03003CE0
	thumb_func_end sub_080425CC
