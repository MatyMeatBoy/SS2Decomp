	thumb_func_start sub_080529E0
sub_080529E0: @ 0x080529E0
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
	ldr r0, _08052A14
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _08052A18
	movs r5, #0
	b _08052A46
_08052A14: .4byte gUnk_03003CE0
_08052A18:
	bl sub_080020F4
	cmp r0, #1
	beq _08052A3A
	cmp r0, #1
	bgt _08052A2A
	cmp r0, #0
	beq _08052A34
	b _08052A46
_08052A2A:
	cmp r0, #2
	beq _08052A3E
	cmp r0, #3
	beq _08052A44
	b _08052A46
_08052A34:
	movs r5, #0xc
	negs r5, r5
	b _08052A46
_08052A3A:
	movs r5, #0xc
	b _08052A46
_08052A3E:
	movs r5, #0x24
	negs r5, r5
	b _08052A46
_08052A44:
	movs r5, #0x24
_08052A46:
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
	b _08052A7A
_08052A70:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08052A86
_08052A7A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08052A70
_08052A86:
	bl sub_0800CC98
	cmp r0, #0
	bne _08052AC8
	bl sub_0801AB24
	cmp r0, #1
	beq _08052AAC
	cmp r0, #1
	bgt _08052AA0
	cmp r0, #0
	beq _08052AA6
	b _08052AC0
_08052AA0:
	cmp r0, #2
	beq _08052AB4
	b _08052AC0
_08052AA6:
	bl sub_080576A8
	b _08052AC0
_08052AAC:
	movs r0, #6
	bl sub_0801AB50
	b _08052AC0
_08052AB4:
	movs r0, #6
	bl sub_0801AB90
	b _08052AC0
_08052ABC:
	bl sub_080003F0
_08052AC0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08052ABC
_08052AC8:
	movs r1, #0xd9
	ldr r0, _08052AE4
	str r1, [r0, #0]
	ldr r0, _08052AE8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08052AE0
	movs r0, #0xd9
	bl sub_08006CB4
_08052AE0:
	movs r4, #0x14
	b _08052AF6
_08052AE4: .4byte gUnk_03005CF8
_08052AE8: .4byte gUnk_030027D0
_08052AEC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08052B02
_08052AF6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08052AEC
_08052B02:
	movs r3, #0x11
	mov sl, r3
	ldr r0, _08052B74
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	lsls r5, r5, #0x10
	ldr r0, _08052B78
	mov r9, r0
_08052B1E:
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
	ble _08052B1E
	ldr r0, _08052B7C
	ldr r0, [r0, #0]
	movs r1, #4
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	beq _08052B66
	movs r0, #1
_08052B66:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _08052BA8
	cmp r0, #0
	bne _08052BD8
	b _08052B84
	.2byte 0x0000
_08052B74: .4byte gUnk_03003170
_08052B78: .4byte 0xFFC00000
_08052B7C: .4byte gUnk_03005CF4
_08052B80:
	bl sub_080003F0
_08052B84:
	bl sub_0805F184
	cmp r0, #0
	bne _08052B80
	b _08052B92
_08052B8E:
	bl sub_080003F0
_08052B92:
	bl sub_0805EF90
	cmp r0, #0
	bne _08052B8E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08052BA4
	b _08052C1C
	.2byte 0x0000
_08052BA4: .4byte 0x0014009C
_08052BA8:
	cmp r0, #0
	bne _08052C00
	b _08052BB2
_08052BAE:
	bl sub_080003F0
_08052BB2:
	bl sub_0805F184
	cmp r0, #0
	bne _08052BAE
	b _08052BC0
_08052BBC:
	bl sub_080003F0
_08052BC0:
	bl sub_0805EF90
	cmp r0, #0
	bne _08052BBC
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08052BD0
	b _08052C1C
_08052BD0: .4byte 0x00140096
_08052BD4:
	bl sub_080003F0
_08052BD8:
	bl sub_0805F184
	cmp r0, #0
	bne _08052BD4
	b _08052BE6
_08052BE2:
	bl sub_080003F0
_08052BE6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08052BE2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08052BF8
	b _08052C1C
	.2byte 0x0000
_08052BF8: .4byte 0x0014009D
_08052BFC:
	bl sub_080003F0
_08052C00:
	bl sub_0805F184
	cmp r0, #0
	bne _08052BFC
	b _08052C0E
_08052C0A:
	bl sub_080003F0
_08052C0E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08052C0A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08052C3C
_08052C1C:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r3, r0, #0
	ldr r0, _08052C40
	ldr r2, [r0, #0]
	movs r1, #4
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	adds r4, r3, #0
	b _08052C48
_08052C3C: .4byte 0x00140097
_08052C40: .4byte gUnk_03005CF4
_08052C44:
	bl sub_080003F0
_08052C48:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08052C44
	movs r2, #0x22
	mov r9, r2
	ldr r0, _08052CF8
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
_08052C6C:
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
	ble _08052C6C
	movs r1, #0xa5
	ldr r0, _08052CFC
	str r1, [r0, #0]
	ldr r0, _08052D00
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08052CBC
	movs r0, #0xa5
	bl sub_08006CB4
_08052CBC:
	ldr r0, _08052D04
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
	ldr r0, _08052D08
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
_08052CF8: .4byte gUnk_03003170
_08052CFC: .4byte gUnk_03005CF8
_08052D00: .4byte gUnk_030027D0
_08052D04: .4byte gUnk_03005CF4
_08052D08: .4byte gUnk_03003CE0
	thumb_func_end sub_080529E0
