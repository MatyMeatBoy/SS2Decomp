	thumb_func_start sub_0804B61C
sub_0804B61C: @ 0x0804B61C
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
	ldr r0, _0804B650
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _0804B654
	movs r4, #0
	b _0804B682
_0804B650: .4byte gUnk_03003CE0
_0804B654:
	bl sub_080020F4
	cmp r0, #1
	beq _0804B676
	cmp r0, #1
	bgt _0804B666
	cmp r0, #0
	beq _0804B670
	b _0804B682
_0804B666:
	cmp r0, #2
	beq _0804B67A
	cmp r0, #3
	beq _0804B680
	b _0804B682
_0804B670:
	movs r4, #0xc
	negs r4, r4
	b _0804B682
_0804B676:
	movs r4, #0xc
	b _0804B682
_0804B67A:
	movs r4, #0x24
	negs r4, r4
	b _0804B682
_0804B680:
	movs r4, #0x24
_0804B682:
	adds r1, r4, #0
	adds r1, #0x78
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xc8
	lsls r2, r2, #1
	movs r0, #0
	movs r3, #0
	bl sub_08028AAC
	negs r2, r4
	movs r0, #0x80
	lsls r0, r0, #2
	mov sl, r0
	ldr r0, _0804B704
	adds r1, r0, #0
	adds r1, #0x80
	movs r4, #0
	ldrsh r3, [r1, r4]
	mov r8, r3
	adds r0, #0x82
	movs r1, #0
	ldrsh r7, [r0, r1]
	movs r4, #0
	add r6, sp, #0xc
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x18]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x1c]
	lsls r5, r2, #0x10
	ldr r1, _0804B708
	mov r9, r1
_0804B6C6:
	add r0, sp, #8
	mov r1, r8
	asrs r2, r5, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r6, #0
	adds r1, r7, #0
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
	ble _0804B6C6
	movs r4, #0x1e
	b _0804B716
	.2byte 0x0000
_0804B704: .4byte gUnk_03003170
_0804B708: .4byte 0xFED40000
_0804B70C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804B722
_0804B716:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804B70C
_0804B722:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804B764
	bl sub_0801AB24
	cmp r0, #1
	beq _0804B748
	cmp r0, #1
	bgt _0804B73C
	cmp r0, #0
	beq _0804B742
	b _0804B75C
_0804B73C:
	cmp r0, #2
	beq _0804B750
	b _0804B75C
_0804B742:
	bl sub_080576A8
	b _0804B75C
_0804B748:
	movs r0, #6
	bl sub_0801AB50
	b _0804B75C
_0804B750:
	movs r0, #6
	bl sub_0801AB90
	b _0804B75C
_0804B758:
	bl sub_080003F0
_0804B75C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804B758
_0804B764:
	movs r1, #0xd9
	ldr r0, _0804B780
	str r1, [r0, #0]
	ldr r0, _0804B784
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804B77C
	movs r0, #0xd9
	bl sub_08006CB4
_0804B77C:
	movs r4, #0x14
	b _0804B792
_0804B780: .4byte gUnk_03005CF8
_0804B784: .4byte gUnk_030027D0
_0804B788:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804B79E
_0804B792:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804B788
_0804B79E:
	ldr r0, _0804B7B0
	ldr r0, [r0, #0]
	movs r1, #0x40
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _0804B7E0
	b _0804B7B8
	.2byte 0x0000
_0804B7B0: .4byte gUnk_03005CF4
_0804B7B4:
	bl sub_080003F0
_0804B7B8:
	bl sub_0805F184
	cmp r0, #0
	bne _0804B7B4
	b _0804B7C6
_0804B7C2:
	bl sub_080003F0
_0804B7C6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804B7C2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804B7D8
	b _0804B7FC
	.2byte 0x0000
_0804B7D8: .4byte 0x0014003B
_0804B7DC:
	bl sub_080003F0
_0804B7E0:
	bl sub_0805F184
	cmp r0, #0
	bne _0804B7DC
	b _0804B7EE
_0804B7EA:
	bl sub_080003F0
_0804B7EE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804B7EA
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804B81C
_0804B7FC:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r3, r0, #0
	ldr r0, _0804B820
	ldr r2, [r0, #0]
	movs r1, #0x40
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	adds r4, r3, #0
	b _0804B828
_0804B81C: .4byte 0x0014003D
_0804B820: .4byte gUnk_03005CF4
_0804B824:
	bl sub_080003F0
_0804B828:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804B824
	movs r4, #0x11
	mov r9, r4
	ldr r0, _0804B8D8
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
_0804B84C:
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
	ble _0804B84C
	movs r1, #0xb
	ldr r0, _0804B8DC
	str r1, [r0, #0]
	ldr r0, _0804B8E0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804B89C
	movs r0, #0xb
	bl sub_08006CB4
_0804B89C:
	ldr r0, _0804B8E4
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
	ldr r0, _0804B8E8
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
_0804B8D8: .4byte gUnk_03003170
_0804B8DC: .4byte gUnk_03005CF8
_0804B8E0: .4byte gUnk_030027D0
_0804B8E4: .4byte gUnk_03005CF4
_0804B8E8: .4byte gUnk_03003CE0
	thumb_func_end sub_0804B61C
