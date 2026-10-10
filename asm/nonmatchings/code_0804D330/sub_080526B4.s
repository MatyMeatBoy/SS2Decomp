	thumb_func_start sub_080526B4
sub_080526B4: @ 0x080526B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080526E8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _080526EC
	movs r5, #0
	b _0805271A
_080526E8: .4byte gUnk_03003CE0
_080526EC:
	bl sub_080020F4
	cmp r0, #1
	beq _0805270E
	cmp r0, #1
	bgt _080526FE
	cmp r0, #0
	beq _08052708
	b _0805271A
_080526FE:
	cmp r0, #2
	beq _08052712
	cmp r0, #3
	beq _08052718
	b _0805271A
_08052708:
	movs r5, #0xc
	negs r5, r5
	b _0805271A
_0805270E:
	movs r5, #0xc
	b _0805271A
_08052712:
	movs r5, #0x24
	negs r5, r5
	b _0805271A
_08052718:
	movs r5, #0x24
_0805271A:
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_08028D98
	bl sub_0805A318
	str r0, [sp, #0x18]
	movs r4, #1
	negs r5, r5
	add r0, sp, #0xc
	mov r8, r0
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x1c]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x20]
	b _0805274E
_08052744:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0805275A
_0805274E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08052744
_0805275A:
	bl sub_0800CC98
	cmp r0, #0
	bne _0805279C
	bl sub_0801AB24
	cmp r0, #1
	beq _08052780
	cmp r0, #1
	bgt _08052774
	cmp r0, #0
	beq _0805277A
	b _08052794
_08052774:
	cmp r0, #2
	beq _08052788
	b _08052794
_0805277A:
	bl sub_080576A8
	b _08052794
_08052780:
	movs r0, #6
	bl sub_0801AB50
	b _08052794
_08052788:
	movs r0, #6
	bl sub_0801AB90
	b _08052794
_08052790:
	bl sub_080003F0
_08052794:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08052790
_0805279C:
	movs r1, #0xd9
	ldr r0, _080527B8
	str r1, [r0, #0]
	ldr r0, _080527BC
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080527B4
	movs r0, #0xd9
	bl sub_08006CB4
_080527B4:
	movs r4, #0x14
	b _080527CA
_080527B8: .4byte gUnk_03005CF8
_080527BC: .4byte gUnk_030027D0
_080527C0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080527D6
_080527CA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080527C0
_080527D6:
	movs r3, #0x11
	mov sl, r3
	ldr r0, _08052848
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	lsls r5, r5, #0x10
	ldr r0, _0805284C
	mov r9, r0
_080527F2:
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
	ble _080527F2
	ldr r0, _08052850
	ldr r0, [r0, #0]
	movs r1, #2
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	beq _0805283A
	movs r0, #1
_0805283A:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _0805287C
	cmp r0, #0
	bne _080528AC
	b _08052858
	.2byte 0x0000
_08052848: .4byte gUnk_03003170
_0805284C: .4byte 0xFFC00000
_08052850: .4byte gUnk_03005CF4
_08052854:
	bl sub_080003F0
_08052858:
	bl sub_0805F184
	cmp r0, #0
	bne _08052854
	b _08052866
_08052862:
	bl sub_080003F0
_08052866:
	bl sub_0805EF90
	cmp r0, #0
	bne _08052862
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08052878
	b _080528F0
	.2byte 0x0000
_08052878: .4byte 0x00140099
_0805287C:
	cmp r0, #0
	bne _080528D4
	b _08052886
_08052882:
	bl sub_080003F0
_08052886:
	bl sub_0805F184
	cmp r0, #0
	bne _08052882
	b _08052894
_08052890:
	bl sub_080003F0
_08052894:
	bl sub_0805EF90
	cmp r0, #0
	bne _08052890
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080528A4
	b _080528F0
_080528A4: .4byte 0x00140093
_080528A8:
	bl sub_080003F0
_080528AC:
	bl sub_0805F184
	cmp r0, #0
	bne _080528A8
	b _080528BA
_080528B6:
	bl sub_080003F0
_080528BA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080528B6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080528CC
	b _080528F0
	.2byte 0x0000
_080528CC: .4byte 0x0014009A
_080528D0:
	bl sub_080003F0
_080528D4:
	bl sub_0805F184
	cmp r0, #0
	bne _080528D0
	b _080528E2
_080528DE:
	bl sub_080003F0
_080528E2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080528DE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08052910
_080528F0:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r3, r0, #0
	ldr r0, _08052914
	ldr r2, [r0, #0]
	movs r1, #2
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	adds r4, r3, #0
	b _0805291C
_08052910: .4byte 0x00140094
_08052914: .4byte gUnk_03005CF4
_08052918:
	bl sub_080003F0
_0805291C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08052918
	movs r2, #0x22
	mov r9, r2
	ldr r0, _080529CC
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r6, [r1, r3]
	adds r0, #0x82
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r4, #0
	mov r8, r4
	movs r7, #0
_08052940:
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
	ble _08052940
	movs r1, #0xa5
	ldr r0, _080529D0
	str r1, [r0, #0]
	ldr r0, _080529D4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08052990
	movs r0, #0xa5
	bl sub_08006CB4
_08052990:
	ldr r0, _080529D8
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
	ldr r0, _080529DC
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
_080529CC: .4byte gUnk_03003170
_080529D0: .4byte gUnk_03005CF8
_080529D4: .4byte gUnk_030027D0
_080529D8: .4byte gUnk_03005CF4
_080529DC: .4byte gUnk_03003CE0
	thumb_func_end sub_080526B4
