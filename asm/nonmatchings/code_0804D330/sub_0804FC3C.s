	thumb_func_start sub_0804FC3C
sub_0804FC3C: @ 0x0804FC3C
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
	ldr r0, _0804FC70
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _0804FC74
	movs r5, #0
	b _0804FCA2
_0804FC70: .4byte gUnk_03003CE0
_0804FC74:
	bl sub_080020F4
	cmp r0, #1
	beq _0804FC96
	cmp r0, #1
	bgt _0804FC86
	cmp r0, #0
	beq _0804FC90
	b _0804FCA2
_0804FC86:
	cmp r0, #2
	beq _0804FC9A
	cmp r0, #3
	beq _0804FCA0
	b _0804FCA2
_0804FC90:
	movs r5, #0xc
	negs r5, r5
	b _0804FCA2
_0804FC96:
	movs r5, #0xc
	b _0804FCA2
_0804FC9A:
	movs r5, #0x24
	negs r5, r5
	b _0804FCA2
_0804FCA0:
	movs r5, #0x24
_0804FCA2:
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
	b _0804FCD0
_0804FCC6:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804FCDC
_0804FCD0:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804FCC6
_0804FCDC:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804FD1E
	bl sub_0801AB24
	cmp r0, #1
	beq _0804FD02
	cmp r0, #1
	bgt _0804FCF6
	cmp r0, #0
	beq _0804FCFC
	b _0804FD16
_0804FCF6:
	cmp r0, #2
	beq _0804FD0A
	b _0804FD16
_0804FCFC:
	bl sub_080576A8
	b _0804FD16
_0804FD02:
	movs r0, #6
	bl sub_0801AB50
	b _0804FD16
_0804FD0A:
	movs r0, #6
	bl sub_0801AB90
	b _0804FD16
_0804FD12:
	bl sub_080003F0
_0804FD16:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804FD12
_0804FD1E:
	movs r1, #0xd9
	ldr r0, _0804FD3C
	str r1, [r0, #0]
	ldr r0, _0804FD40
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804FD36
	movs r0, #0xd9
	bl sub_08006CB4
_0804FD36:
	movs r4, #0x14
	b _0804FD4E
	.2byte 0x0000
_0804FD3C: .4byte gUnk_03005CF8
_0804FD40: .4byte gUnk_030027D0
_0804FD44:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804FD5A
_0804FD4E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804FD44
_0804FD5A:
	movs r3, #0x11
	mov sl, r3
	ldr r0, _0804FDC0
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	lsls r5, r5, #0x10
	ldr r0, _0804FDC4
	mov r9, r0
_0804FD76:
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
	ble _0804FD76
	ldr r0, _0804FDC8
	ldr r0, [r0, #0]
	movs r1, #2
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _0804FDF8
	b _0804FDD0
	.2byte 0x0000
_0804FDC0: .4byte gUnk_03003170
_0804FDC4: .4byte 0xFF900000
_0804FDC8: .4byte gUnk_03005CF4
_0804FDCC:
	bl sub_080003F0
_0804FDD0:
	bl sub_0805F184
	cmp r0, #0
	bne _0804FDCC
	b _0804FDDE
_0804FDDA:
	bl sub_080003F0
_0804FDDE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804FDDA
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804FDF0
	b _0804FE14
	.2byte 0x0000
_0804FDF0: .4byte 0x00140062
_0804FDF4:
	bl sub_080003F0
_0804FDF8:
	bl sub_0805F184
	cmp r0, #0
	bne _0804FDF4
	b _0804FE06
_0804FE02:
	bl sub_080003F0
_0804FE06:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804FE02
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804FE34
_0804FE14:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r3, r0, #0
	ldr r0, _0804FE38
	ldr r2, [r0, #0]
	movs r1, #2
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	adds r4, r3, #0
	b _0804FE40
_0804FE34: .4byte 0x00140063
_0804FE38: .4byte gUnk_03005CF4
_0804FE3C:
	bl sub_080003F0
_0804FE40:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804FE3C
	movs r0, #0x22
	mov r9, r0
	ldr r0, _0804FEF0
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
_0804FE64:
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
	ble _0804FE64
	movs r1, #0xb
	ldr r0, _0804FEF4
	str r1, [r0, #0]
	ldr r0, _0804FEF8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804FEB4
	movs r0, #0xb
	bl sub_08006CB4
_0804FEB4:
	ldr r0, _0804FEFC
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
	ldr r0, _0804FF00
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
_0804FEF0: .4byte gUnk_03003170
_0804FEF4: .4byte gUnk_03005CF8
_0804FEF8: .4byte gUnk_030027D0
_0804FEFC: .4byte gUnk_03005CF4
_0804FF00: .4byte gUnk_03003CE0
	thumb_func_end sub_0804FC3C
