	thumb_func_start sub_0804EEA8
sub_0804EEA8: @ 0x0804EEA8
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
	ldr r0, _0804EEFC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	movs r1, #0xc4
	ldr r0, _0804EF00
	str r1, [r0, #0]
	ldr r0, _0804EF04
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804EEE8
	movs r0, #0xc4
	bl sub_08006CB4
_0804EEE8:
	movs r4, #1
	add r7, sp, #0xc
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x18]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x1c]
	b _0804EF12
	.2byte 0x0000
_0804EEFC: .4byte gUnk_03003CE0
_0804EF00: .4byte gUnk_03005CF8
_0804EF04: .4byte gUnk_030027D0
_0804EF08:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804EF1E
_0804EF12:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804EF08
_0804EF1E:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804EF60
	bl sub_0801AB24
	cmp r0, #1
	beq _0804EF44
	cmp r0, #1
	bgt _0804EF38
	cmp r0, #0
	beq _0804EF3E
	b _0804EF58
_0804EF38:
	cmp r0, #2
	beq _0804EF4C
	b _0804EF58
_0804EF3E:
	bl sub_080576A8
	b _0804EF58
_0804EF44:
	movs r0, #6
	bl sub_0801AB50
	b _0804EF58
_0804EF4C:
	movs r0, #6
	bl sub_0801AB90
	b _0804EF58
_0804EF54:
	bl sub_080003F0
_0804EF58:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804EF54
_0804EF60:
	movs r4, #0x14
	b _0804EF6E
_0804EF64:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804EF7A
_0804EF6E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804EF64
_0804EF7A:
	movs r2, #0x11
	mov sl, r2
	ldr r0, _0804EFE4
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r6, [r1, r3]
	adds r0, #0x82
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r4, #0
	movs r2, #0xd0
	lsls r2, r2, #0xf
	mov r9, r2
	ldr r3, _0804EFE8
	mov r8, r3
_0804EF9A:
	add r0, sp, #8
	adds r1, r6, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r7, #0
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
	ble _0804EF9A
	ldr r0, _0804EFEC
	ldr r0, [r0, #0]
	movs r1, #0x10
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _0804F01C
	b _0804EFF4
_0804EFE4: .4byte gUnk_03003170
_0804EFE8: .4byte 0xFF880000
_0804EFEC: .4byte gUnk_03005CF4
_0804EFF0:
	bl sub_080003F0
_0804EFF4:
	bl sub_0805F184
	cmp r0, #0
	bne _0804EFF0
	b _0804F002
_0804EFFE:
	bl sub_080003F0
_0804F002:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804EFFE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804F014
	b _0804F038
	.2byte 0x0000
_0804F014: .4byte 0x0014005E
_0804F018:
	bl sub_080003F0
_0804F01C:
	bl sub_0805F184
	cmp r0, #0
	bne _0804F018
	b _0804F02A
_0804F026:
	bl sub_080003F0
_0804F02A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804F026
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804F058
_0804F038:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r3, r0, #0
	ldr r0, _0804F05C
	ldr r2, [r0, #0]
	movs r1, #0x10
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	adds r4, r3, #0
	b _0804F064
_0804F058: .4byte 0x0014005F
_0804F05C: .4byte gUnk_03005CF4
_0804F060:
	bl sub_080003F0
_0804F064:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804F060
	movs r0, #0x22
	mov r9, r0
	ldr r0, _0804F114
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
_0804F088:
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
	ble _0804F088
	movs r1, #0xa5
	ldr r0, _0804F118
	str r1, [r0, #0]
	ldr r0, _0804F11C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804F0D8
	movs r0, #0xa5
	bl sub_08006CB4
_0804F0D8:
	ldr r0, _0804F120
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
	ldr r0, _0804F124
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
_0804F114: .4byte gUnk_03003170
_0804F118: .4byte gUnk_03005CF8
_0804F11C: .4byte gUnk_030027D0
_0804F120: .4byte gUnk_03005CF4
_0804F124: .4byte gUnk_03003CE0
	thumb_func_end sub_0804EEA8
