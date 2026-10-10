	thumb_func_start sub_080537DC
sub_080537DC: @ 0x080537DC
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
	ldr r0, _08053810
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _08053814
	movs r5, #0
	b _08053842
_08053810: .4byte gUnk_03003CE0
_08053814:
	bl sub_080020F4
	cmp r0, #1
	beq _08053836
	cmp r0, #1
	bgt _08053826
	cmp r0, #0
	beq _08053830
	b _08053842
_08053826:
	cmp r0, #2
	beq _0805383A
	cmp r0, #3
	beq _08053840
	b _08053842
_08053830:
	movs r5, #0xc
	negs r5, r5
	b _08053842
_08053836:
	movs r5, #0xc
	b _08053842
_0805383A:
	movs r5, #0x24
	negs r5, r5
	b _08053842
_08053840:
	movs r5, #0x24
_08053842:
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
	b _08053870
_08053866:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0805387C
_08053870:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08053866
_0805387C:
	bl sub_0800CC98
	cmp r0, #0
	bne _080538BE
	bl sub_0801AB24
	cmp r0, #1
	beq _080538A2
	cmp r0, #1
	bgt _08053896
	cmp r0, #0
	beq _0805389C
	b _080538B6
_08053896:
	cmp r0, #2
	beq _080538AA
	b _080538B6
_0805389C:
	bl sub_080576A8
	b _080538B6
_080538A2:
	movs r0, #6
	bl sub_0801AB50
	b _080538B6
_080538AA:
	movs r0, #6
	bl sub_0801AB90
	b _080538B6
_080538B2:
	bl sub_080003F0
_080538B6:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080538B2
_080538BE:
	movs r4, #0x14
	b _080538CC
_080538C2:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080538D8
_080538CC:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080538C2
_080538D8:
	movs r3, #0x11
	mov sl, r3
	ldr r0, _0805393C
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	lsls r5, r5, #0x10
	ldr r0, _08053940
	mov r9, r0
_080538F4:
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
	ble _080538F4
	ldr r0, _08053944
	ldr r0, [r0, #0]
	movs r1, #1
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _08053974
	b _0805394C
_0805393C: .4byte gUnk_03003170
_08053940: .4byte 0xFFC00000
_08053944: .4byte gUnk_03005CF4
_08053948:
	bl sub_080003F0
_0805394C:
	bl sub_0805F184
	cmp r0, #0
	bne _08053948
	b _0805395A
_08053956:
	bl sub_080003F0
_0805395A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08053956
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0805396C
	b _08053990
	.2byte 0x0000
_0805396C: .4byte 0x001400A8
_08053970:
	bl sub_080003F0
_08053974:
	bl sub_0805F184
	cmp r0, #0
	bne _08053970
	b _08053982
_0805397E:
	bl sub_080003F0
_08053982:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805397E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080539B0
_08053990:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r3, r0, #0
	ldr r0, _080539B4
	ldr r2, [r0, #0]
	movs r1, #1
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	adds r4, r3, #0
	b _080539BC
_080539B0: .4byte 0x001400A9
_080539B4: .4byte gUnk_03005CF4
_080539B8:
	bl sub_080003F0
_080539BC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080539B8
	movs r0, #0x22
	mov r9, r0
	ldr r0, _08053A6C
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
_080539E0:
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
	ble _080539E0
	movs r2, #0xca
	lsls r2, r2, #1
	ldr r0, _08053A70
	str r2, [r0, #0]
	ldr r0, _08053A74
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08053A32
	adds r0, r2, #0
	bl sub_08006CB4
_08053A32:
	ldr r0, _08053A78
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
	ldr r0, _08053A7C
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
_08053A6C: .4byte gUnk_03003170
_08053A70: .4byte gUnk_03005CF8
_08053A74: .4byte gUnk_030027D0
_08053A78: .4byte gUnk_03005CF4
_08053A7C: .4byte gUnk_03003CE0
	thumb_func_end sub_080537DC
