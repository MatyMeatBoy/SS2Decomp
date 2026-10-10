	thumb_func_start sub_08052D0C
sub_08052D0C: @ 0x08052D0C
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
	ldr r0, _08052D44
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _08052D48
	movs r0, #0
	movs r1, #0xa0
	movs r2, #0xd8
	b _08052D78
_08052D44: .4byte gUnk_03003CE0
_08052D48:
	bl sub_080020F4
	cmp r0, #1
	beq _08052D6C
	cmp r0, #1
	bgt _08052D5A
	cmp r0, #0
	beq _08052D64
	b _08052D8C
_08052D5A:
	cmp r0, #2
	beq _08052D72
	cmp r0, #3
	beq _08052D80
	b _08052D8C
_08052D64:
	movs r0, #0
	movs r1, #0xa0
	movs r2, #0xd0
	b _08052D78
_08052D6C:
	movs r0, #0
	movs r1, #0xae
	b _08052D76
_08052D72:
	movs r0, #0
	movs r1, #0x94
_08052D76:
	movs r2, #0xd6
_08052D78:
	movs r3, #0
	bl sub_08028AAC
	b _08052D8C
_08052D80:
	movs r0, #0
	movs r1, #0xa0
	movs r2, #0xdc
	movs r3, #0
	bl sub_08028AAC
_08052D8C:
	movs r0, #0
	movs r1, #5
	bl sub_080290E4
	movs r4, #1
	add r7, sp, #0xc
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x18]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x1c]
	b _08052DB0
_08052DA6:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08052DBC
_08052DB0:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08052DA6
_08052DBC:
	bl sub_0800CC98
	cmp r0, #0
	bne _08052DFE
	bl sub_0801AB24
	cmp r0, #1
	beq _08052DE2
	cmp r0, #1
	bgt _08052DD6
	cmp r0, #0
	beq _08052DDC
	b _08052DF6
_08052DD6:
	cmp r0, #2
	beq _08052DEA
	b _08052DF6
_08052DDC:
	bl sub_080576A8
	b _08052DF6
_08052DE2:
	movs r0, #6
	bl sub_0801AB50
	b _08052DF6
_08052DEA:
	movs r0, #6
	bl sub_0801AB90
	b _08052DF6
_08052DF2:
	bl sub_080003F0
_08052DF6:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08052DF2
_08052DFE:
	movs r1, #0xd9
	ldr r0, _08052E1C
	str r1, [r0, #0]
	ldr r0, _08052E20
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08052E16
	movs r0, #0xd9
	bl sub_08006CB4
_08052E16:
	movs r4, #0x14
	b _08052E2E
	.2byte 0x0000
_08052E1C: .4byte gUnk_03005CF8
_08052E20: .4byte gUnk_030027D0
_08052E24:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08052E3A
_08052E2E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08052E24
_08052E3A:
	movs r2, #0x11
	mov sl, r2
	ldr r0, _08052EA4
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r6, [r1, r3]
	adds r0, #0x82
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r4, #0
	movs r2, #0xa0
	lsls r2, r2, #0x10
	mov r9, r2
	ldr r3, _08052EA8
	mov r8, r3
_08052E5A:
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
	ble _08052E5A
	ldr r0, _08052EAC
	ldr r0, [r0, #0]
	movs r1, #1
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _08052EDC
	b _08052EB4
_08052EA4: .4byte gUnk_03003170
_08052EA8: .4byte 0xFFB00000
_08052EAC: .4byte gUnk_03005CF4
_08052EB0:
	bl sub_080003F0
_08052EB4:
	bl sub_0805F184
	cmp r0, #0
	bne _08052EB0
	b _08052EC2
_08052EBE:
	bl sub_080003F0
_08052EC2:
	bl sub_0805EF90
	cmp r0, #0
	bne _08052EBE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08052ED4
	b _08052EF8
	.2byte 0x0000
_08052ED4: .4byte 0x00140091
_08052ED8:
	bl sub_080003F0
_08052EDC:
	bl sub_0805F184
	cmp r0, #0
	bne _08052ED8
	b _08052EEA
_08052EE6:
	bl sub_080003F0
_08052EEA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08052EE6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08052F18
_08052EF8:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r3, r0, #0
	ldr r0, _08052F1C
	ldr r2, [r0, #0]
	movs r1, #1
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	adds r4, r3, #0
	b _08052F24
_08052F18: .4byte 0x00140092
_08052F1C: .4byte gUnk_03005CF4
_08052F20:
	bl sub_080003F0
_08052F24:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08052F20
	movs r0, #0x22
	mov r9, r0
	ldr r0, _08052FD4
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
_08052F48:
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
	ble _08052F48
	movs r1, #0xb
	ldr r0, _08052FD8
	str r1, [r0, #0]
	ldr r0, _08052FDC
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08052F98
	movs r0, #0xb
	bl sub_08006CB4
_08052F98:
	ldr r0, _08052FE0
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
	ldr r0, _08052FE4
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
_08052FD4: .4byte gUnk_03003170
_08052FD8: .4byte gUnk_03005CF8
_08052FDC: .4byte gUnk_030027D0
_08052FE0: .4byte gUnk_03005CF4
_08052FE4: .4byte gUnk_03003CE0
	thumb_func_end sub_08052D0C
