	thumb_func_start sub_0804C67C
sub_0804C67C: @ 0x0804C67C
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
	ldr r0, _0804C6B0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _0804C6B4
	movs r5, #0
	b _0804C6E2
_0804C6B0: .4byte gUnk_03003CE0
_0804C6B4:
	bl sub_080020F4
	cmp r0, #1
	beq _0804C6D6
	cmp r0, #1
	bgt _0804C6C6
	cmp r0, #0
	beq _0804C6D0
	b _0804C6E2
_0804C6C6:
	cmp r0, #2
	beq _0804C6DA
	cmp r0, #3
	beq _0804C6E0
	b _0804C6E2
_0804C6D0:
	movs r5, #0xc
	negs r5, r5
	b _0804C6E2
_0804C6D6:
	movs r5, #0xc
	b _0804C6E2
_0804C6DA:
	movs r5, #0x24
	negs r5, r5
	b _0804C6E2
_0804C6E0:
	movs r5, #0x24
_0804C6E2:
	adds r1, r5, #0
	adds r1, #0xf0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0xf0
	movs r3, #0
	bl sub_08028AAC
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
	b _0804C714
_0804C70A:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804C720
_0804C714:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804C70A
_0804C720:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804C762
	bl sub_0801AB24
	cmp r0, #1
	beq _0804C746
	cmp r0, #1
	bgt _0804C73A
	cmp r0, #0
	beq _0804C740
	b _0804C75A
_0804C73A:
	cmp r0, #2
	beq _0804C74E
	b _0804C75A
_0804C740:
	bl sub_080576A8
	b _0804C75A
_0804C746:
	movs r0, #6
	bl sub_0801AB50
	b _0804C75A
_0804C74E:
	movs r0, #6
	bl sub_0801AB90
	b _0804C75A
_0804C756:
	bl sub_080003F0
_0804C75A:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804C756
_0804C762:
	movs r1, #0xd9
	ldr r0, _0804C780
	str r1, [r0, #0]
	ldr r0, _0804C784
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804C77A
	movs r0, #0xd9
	bl sub_08006CB4
_0804C77A:
	movs r4, #0x14
	b _0804C792
	.2byte 0x0000
_0804C780: .4byte gUnk_03005CF8
_0804C784: .4byte gUnk_030027D0
_0804C788:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804C79E
_0804C792:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804C788
_0804C79E:
	movs r3, #0x11
	mov sl, r3
	ldr r0, _0804C804
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	lsls r5, r5, #0x10
	ldr r0, _0804C808
	mov r9, r0
_0804C7BA:
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
	ble _0804C7BA
	ldr r0, _0804C80C
	ldr r0, [r0, #0]
	movs r1, #0x10
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _0804C83C
	b _0804C814
	.2byte 0x0000
_0804C804: .4byte gUnk_03003170
_0804C808: .4byte 0xFF8C0000
_0804C80C: .4byte gUnk_03005CF4
_0804C810:
	bl sub_080003F0
_0804C814:
	bl sub_0805F184
	cmp r0, #0
	bne _0804C810
	b _0804C822
_0804C81E:
	bl sub_080003F0
_0804C822:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804C81E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804C834
	b _0804C858
	.2byte 0x0000
_0804C834: .4byte 0x00140040
_0804C838:
	bl sub_080003F0
_0804C83C:
	bl sub_0805F184
	cmp r0, #0
	bne _0804C838
	b _0804C84A
_0804C846:
	bl sub_080003F0
_0804C84A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804C846
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804C878
_0804C858:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r3, r0, #0
	ldr r0, _0804C87C
	ldr r2, [r0, #0]
	movs r1, #0x10
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	adds r4, r3, #0
	b _0804C884
_0804C878: .4byte 0x00140041
_0804C87C: .4byte gUnk_03005CF4
_0804C880:
	bl sub_080003F0
_0804C884:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804C880
	movs r0, #0x22
	mov r9, r0
	ldr r0, _0804C934
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
_0804C8A8:
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
	ble _0804C8A8
	movs r1, #0xb
	ldr r0, _0804C938
	str r1, [r0, #0]
	ldr r0, _0804C93C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804C8F8
	movs r0, #0xb
	bl sub_08006CB4
_0804C8F8:
	ldr r0, _0804C940
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
	ldr r0, _0804C944
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
_0804C934: .4byte gUnk_03003170
_0804C938: .4byte gUnk_03005CF8
_0804C93C: .4byte gUnk_030027D0
_0804C940: .4byte gUnk_03005CF4
_0804C944: .4byte gUnk_03003CE0
	thumb_func_end sub_0804C67C
