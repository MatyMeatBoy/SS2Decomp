	thumb_func_start sub_0809FB6C
sub_0809FB6C: @ 0x0809FB6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	adds r7, r0, #0
	ldr r0, _0809FBE4
	str r7, [r0, #0]
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x4c]
	ldr r1, _0809FBE8
	adds r0, r7, #0
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0x4c]
	bl sub_08019F60
	adds r0, r7, #0
	bl sub_0801A0A4
	ldr r4, _0809FBEC
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0, #0]
	ldr r2, _0809FBF0
	adds r1, r7, r2
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0809FBF4
	cmp r1, r0
	bne _0809FC08
	ldr r4, _0809FBF8
	adds r5, r1, #0
_0809FBC0:
	movs r0, #0xb
	strh r0, [r7, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _0809FBD4
	bl sub_08056E90
	cmp r0, #0
	beq _0809FBFC
_0809FBD4:
	movs r1, #1
	ldrh r7, [r7, #0]
	lsls r1, r7
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	bl _080A05A2
_0809FBE4: .4byte gUnk_0300032C
_0809FBE8: .4byte gUnk_084A3EB0
_0809FBEC: .4byte gUnk_03000330
_0809FBF0: .4byte 0x000002DA
_0809FBF4: .4byte 0x0000FFFF
_0809FBF8: .4byte gUnk_030056FC
_0809FBFC:
	bl sub_080003F0
	ldr r0, _0809FD38
	ldrh r0, [r0, #0]
	cmp r0, r5
	beq _0809FBC0
_0809FC08:
	ldr r1, _0809FD3C
	ldr r4, _0809FD38
	ldrh r2, [r4, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #1
	mov r8, r0
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r4, #0]
	movs r2, #0
	strb r0, [r1, #0x1c]
	ldr r3, [sp, #0x4c]
	movs r4, #6
	ldrsh r1, [r3, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r3, #0xeb
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5c
	strh r0, [r1, #0]
	ldr r4, [sp, #0x4c]
	movs r1, #4
	ldrsh r0, [r4, r1]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r3, #2
	adds r1, r7, r3
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	strh r2, [r7, #0xc]
	mov r9, r2
	movs r4, #0
	str r4, [sp, #0x54]
	adds r6, r7, #0
	adds r6, #0x6c
	mov r0, r9
	strh r0, [r6, #0]
	adds r5, r7, #0
	adds r5, #0x6a
	strh r0, [r5, #0]
	adds r4, r7, #0
	adds r4, #0x68
	strh r0, [r4, #0]
	ldr r1, _0809FD40
	adds r0, r7, r1
	movs r1, #3
	strb r1, [r0, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0, #0]
	bl sub_08097FE4
	bl sub_08097A4C
	bl sub_08097C4C
	bl sub_080A0FA8
	bl sub_080A1170
	bl sub_080A10B8
	bl sub_080A10FC
	bl sub_08097D70
	mov r3, r8
	str r3, [r7, #0x50]
	movs r1, #0
	str r6, [sp, #0x74]
	str r5, [sp, #0x70]
	str r4, [sp, #0x6c]
	movs r4, #0xa6
	lsls r4, r4, #1
	mov r8, r4
	ldr r6, _0809FD44
	movs r5, #0
_0809FCBA:
	movs r2, #0
	lsls r4, r1, #0x10
	asrs r0, r4, #0x10
	mov r3, r8
	muls r3, r0, r3
_0809FCC4:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r3
	adds r0, r0, r6
	str r5, [r0, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _0809FCC4
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0809FCBA
	movs r2, #0
	str r2, [sp, #0x60]
	movs r3, #0
	str r3, [sp, #0x58]
	movs r4, #0
	str r4, [sp, #0x5c]
	mov r8, r4
	movs r0, #0
	str r0, [sp, #0x64]
	ldrb r0, [r7, #0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r3, r7, r1
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldrh r1, [r7, #2]
	ldr r2, _0809FD48
	adds r0, r7, r2
	strh r1, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1, #0]
	add r4, sp, #0x58
	ldrh r4, [r4, #0]
	strh r4, [r7, #8]
	movs r0, #0
	str r0, [sp, #0x68]
	bl sub_08067C18
	b _0809FD50
	.2byte 0x0000
_0809FD38: .4byte gUnk_03000330
_0809FD3C: .4byte 0x00050009
_0809FD40: .4byte 0x000001FD
_0809FD44: .4byte gUnk_03003DC4
_0809FD48: .4byte 0x00000202
_0809FD4C:
	bl sub_080003F0
_0809FD50:
	bl sub_08067C08
	cmp r0, #0
	beq _0809FD4C
	bl sub_08067BF8
	bl sub_0806849C
	b _080A01CA
_0809FD62:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _0809FD72
	ldr r1, [sp, #0x54]
	cmp r1, #0
	bne _0809FD72
	movs r2, #8
	str r2, [sp, #0x54]
_0809FD72:
	bl sub_08058DB0
	cmp r0, #0
	beq _0809FD7C
	b _080A001C
_0809FD7C:
	adds r0, r7, #0
	bl sub_0801C8F0
	bl sub_08056F78
	cmp r0, #0
	beq _0809FDEE
	mov r3, r8
	cmp r3, #0x2f
	bhi _0809FD9A
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0809FD9C
_0809FD9A:
	movs r0, #0x30
_0809FD9C:
	mov r8, r0
	ldr r4, [sp, #0x64]
	cmp r4, #5
	bhi _0809FDAE
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0809FDB0
_0809FDAE:
	movs r0, #6
_0809FDB0:
	str r0, [sp, #0x64]
	ldr r1, _0809FE08
	ldr r0, [sp, #0x60]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r0, r4
	str r0, [r7, #0x14]
	ldr r2, [sp, #0x60]
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r4, [sp, #0x64]
	muls r0, r4, r0
	movs r1, #0xb0
	lsls r1, r1, #7
	adds r0, r0, r1
	str r0, [r7, #0x18]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x60]
_0809FDEE:
	ldr r2, _0809FE0C
	adds r0, r7, r2
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #9
	bls _0809FDFC
	b _080A001C
_0809FDFC:
	lsls r0, r0, #2
	ldr r1, _0809FE10
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0809FE08: .4byte gUnk_080B9704
_0809FE0C: .4byte 0x000001FD
_0809FE10: .4byte _0809FE14
_0809FE14:
	.4byte _0809FE3C
_0809FE18: .4byte _0809FE64
_0809FE1C: .4byte _0809FE94
_0809FE20: .4byte _0809FEBC
_0809FE24: .4byte _0809FF6C
_0809FE28: .4byte _0809FFA0
_0809FE2C: .4byte _0809FFD0
_0809FE30: .4byte _080A001C
_0809FE34: .4byte _080A001C
_0809FE38: .4byte _0809FFF4
_0809FE3C:
	movs r0, #0
	strh r0, [r7, #0xc]
	bl sub_08067C08
	cmp r0, #0
	bne _0809FE4A
	b _080A001C
_0809FE4A:
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r1, [r0, #0]
	ldr r4, _0809FE60
	adds r0, r7, r4
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _080A001C
	.2byte 0x0000
_0809FE60: .4byte 0x000001FD
_0809FE64:
	movs r0, #0
	strh r0, [r7, #0xc]
	bl sub_08068490
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r7, r2
	strb r0, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0809FE7E
	b _080A001C
_0809FE7E:
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #5
	strb r0, [r1, #0]
	ldr r4, _0809FE90
	adds r1, r7, r4
	movs r0, #1
	b _0809FFE8
_0809FE90: .4byte 0x000001FD
_0809FE94:
	bl sub_08056F78
	cmp r0, #0
	bne _0809FE9E
	b _080A001C
_0809FE9E:
	bl sub_080A1094
	bl sub_08097D64
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #0xa
	strb r0, [r1, #0]
	ldr r2, _0809FEB8
	adds r1, r7, r2
	movs r0, #1
	b _0809FFE8
_0809FEB8: .4byte 0x000001FD
_0809FEBC:
	movs r0, #1
	movs r1, #0
	movs r4, #1
	strh r0, [r7, #0xc]
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	ldr r3, [sp, #0x5c]
	cmp r3, #1
	bls _0809FEF4
	movs r0, #0
	str r0, [sp, #0x5c]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #7
	strb r1, [r0, #0]
	ldr r2, _0809FEF0
	adds r0, r7, r2
	strb r4, [r0, #0]
	bl sub_08067C18
	bl sub_080A11B4
	b _080A001C
	.2byte 0x0000
_0809FEF0: .4byte 0x000001FD
_0809FEF4:
	add r0, sp, #0x44
	strb r1, [r0, #0]
	bl sub_08002204
	cmp r0, #1
	bne _0809FF48
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _0809FF10
	adds r0, r1, #3
_0809FF10:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0809FF20
	negs r1, r1
_0809FF20:
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r1, [r0, #0]
	ldrb r0, [r0, #0]
	bl sub_08068450
	cmp r0, #1
	bne _080A001C
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #2
	strb r1, [r0, #0]
	ldr r2, _0809FF44
	adds r0, r7, r2
	b _0809FF5E
	.2byte 0x0000
_0809FF44: .4byte 0x000001FD
_0809FF48:
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1, #0]
	adds r0, #0xff
	adds r1, r7, r0
	movs r0, #2
	strb r0, [r1, #0]
	ldr r1, _0809FF68
	adds r0, r7, r1
_0809FF5E:
	strb r4, [r0, #0]
	bl sub_08067C18
	b _080A001C
	.2byte 0x0000
_0809FF68: .4byte 0x000001FD
_0809FF6C:
	movs r0, #2
	strh r0, [r7, #0xc]
	movs r0, #0xbd
	bl sub_0805865C
	movs r2, #0x80
	lsls r2, r2, #2
	adds r4, r7, r2
	ldrb r0, [r4, #0]
	add r1, sp, #0x44
	bl sub_080A0FEC
	movs r0, #0xff
	strb r0, [r4, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #6
	strb r0, [r1, #0]
	ldr r4, _0809FF9C
	adds r1, r7, r4
	movs r0, #1
	b _0809FFE8
	.2byte 0x0000
_0809FF9C: .4byte 0x000001FD
_0809FFA0:
	movs r0, #2
	strh r0, [r7, #0xc]
	add r0, sp, #0x44
	ldrb r4, [r0, #0]
	cmp r4, #1
	bne _080A001C
	bl sub_080A1058
	ldr r0, [sp, #0x5c]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x5c]
	movs r0, #0
	str r0, [sp, #0x58]
	ldr r1, _0809FFCC
	adds r0, r7, r1
	strb r4, [r0, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	b _0809FFE6
_0809FFCC: .4byte 0x000001FD
_0809FFD0:
	movs r0, #2
	strh r0, [r7, #0xc]
	movs r3, #0
	str r3, [sp, #0x58]
	ldr r4, _0809FFF0
	adds r1, r7, r4
	movs r0, #1
	strb r0, [r1, #0]
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
_0809FFE6:
	movs r0, #0xa
_0809FFE8:
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080A001C
_0809FFF0: .4byte 0x000001FD
_0809FFF4:
	movs r0, #0
	strh r0, [r7, #0xc]
	ldr r1, [sp, #0x58]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
	cmp r1, #0xb4
	bls _080A001C
	ldr r2, _080A0054
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #4
	strb r0, [r1, #0]
	bl sub_08067C18
_080A001C:
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A003C
	ldr r4, [sp, #0x6c]
	ldrh r1, [r4, #0]
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_080A003C:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A0058
	bl sub_08097FF8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	b _080A005A
	.2byte 0x0000
_080A0054: .4byte 0x000001FD
_080A0058:
	movs r6, #2
_080A005A:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x46
	add r5, sp, #0x48
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq _080A00E8
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x54]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A013A
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A013A
	bl sub_0800CC98
	cmp r0, #0
	bne _080A013A
	bl sub_0800CD34
	cmp r0, #0
	bne _080A013A
	ldr r0, _080A00E4
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x4c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x6c]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x70]
	ldrh r3, [r4, #0]
	str r6, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080A013A
_080A00E4: .4byte gUnk_03000330
_080A00E8:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A013A
	bl sub_0800CC98
	cmp r0, #0
	bne _080A013A
	bl sub_0800CD34
	cmp r0, #0
	bne _080A013A
	ldr r0, _080A01A0
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x4c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x6c]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x70]
	ldrh r3, [r4, #0]
	str r6, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A013A:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _080A0150
	ldr r1, [sp, #0x50]
	cmp r1, r0
	beq _080A0150
	str r0, [sp, #0x50]
	movs r2, #0xa
	mov r9, r2
	movs r3, #0
	mov sl, r3
_080A0150:
	mov r4, r9
	cmp r4, #0
	beq _080A01A8
	bl sub_0800CC98
	cmp r0, #0
	bne _080A017C
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A017C
	bl sub_0800CD34
	cmp r0, #0
	bne _080A017C
	mov r0, sl
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x50]
	bl sub_0801A120
_080A017C:
	movs r0, #2
	mov r1, r9
	ands r0, r1
	cmp r0, #0
	beq _080A0192
	mov r2, sl
	lsls r0, r2, #0x10
	ldr r3, _080A01A4
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	mov sl, r0
_080A0192:
	mov r0, r9
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	b _080A01B0
	.2byte 0x0000
_080A01A0: .4byte gUnk_03000330
_080A01A4: .4byte 0xFFFF0000
_080A01A8:
	movs r4, #0
	str r4, [sp, #0x50]
	mov r0, r9
	str r0, [r7, #0x4c]
_080A01B0:
	adds r0, r7, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080A01C0
	movs r1, #1
	str r1, [sp, #0x68]
_080A01C0:
	bl sub_080003F0
	ldr r2, [sp, #0x68]
	cmp r2, #0
	bne _080A01DC
_080A01CA:
	bl sub_0800CB78
	cmp r0, #0
	bne _080A01DC
	bl sub_08056E90
	cmp r0, #0
	bne _080A01DC
	b _0809FD62
_080A01DC:
	ldr r0, _080A0300
	movs r4, #0
	str r4, [r0, #0]
	bl sub_080A1058
	bl sub_080A0FC4
	bl sub_080A118C
	bl sub_08097C6C
	ldr r1, _080A0304
	ldr r2, [r1, #0]
	adds r0, r2, #0
	adds r0, #0x6c
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	mov sl, r4
	movs r3, #0xa
	mov r9, r3
	mov r8, r1
	mov r6, sp
	adds r6, #0x46
	add r5, sp, #0x48
_080A0212:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A02B8
	bl sub_0800CC98
	cmp r0, #0
	bne _080A02B8
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _080A02B8
	mov r0, r8
	ldr r3, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	mov r2, r8
	ldr r1, [r2, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, _080A0308
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x4c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r2, r8
	ldr r3, [r2, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	movs r4, #2
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	mov r3, sl
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x50]
	bl sub_0801A120
_080A02B8:
	movs r0, #2
	mov r4, r9
	ands r0, r4
	cmp r0, #0
	beq _080A02CE
	mov r1, sl
	lsls r0, r1, #0x10
	ldr r2, _080A030C
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov sl, r0
_080A02CE:
	bl sub_080003F0
	mov r0, r9
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r0, _080A0310
	cmp r9, r0
	bne _080A0212
	bl sub_080683CC
	ldr r4, _080A0304
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r0, _080A0314
	bl sub_08068330
	adds r7, r4, #0
	mov r6, sp
	adds r6, #0x46
	add r5, sp, #0x48
	b _080A03B6
_080A0300: .4byte gUnk_030056FC
_080A0304: .4byte gUnk_0300032C
_080A0308: .4byte gUnk_03000330
_080A030C: .4byte 0xFFFF0000
_080A0310: .4byte 0x0000FFFF
_080A0314: .4byte 0xDEADFACE
_080A0318:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A03B2
	bl sub_0800CC98
	cmp r0, #0
	bne _080A03B2
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A03B2
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _080A03B2
	ldr r3, [r7, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r1, [r7, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, _080A03D0
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x4c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r4, #0
	ldrsh r1, [r5, r4]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	movs r4, #2
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A03B2:
	bl sub_080003F0
_080A03B6:
	ldr r0, _080A03D4
	bl sub_080682B8
	cmp r0, #0
	beq _080A0318
	ldr r0, _080A03D4
	bl sub_08065E38
	ldr r7, _080A03D8
	mov r6, sp
	adds r6, #0x46
	add r5, sp, #0x48
	b _080A047A
_080A03D0: .4byte gUnk_03000330
_080A03D4: .4byte 0xDEADFACE
_080A03D8: .4byte gUnk_0300032C
_080A03DC:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A0476
	bl sub_0800CC98
	cmp r0, #0
	bne _080A0476
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A0476
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _080A0476
	ldr r3, [r7, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r1, [r7, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, _080A0558
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x4c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	movs r4, #2
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A0476:
	bl sub_080003F0
_080A047A:
	bl sub_08058DB0
	cmp r0, #0
	bne _080A03DC
	movs r0, #0
	bl sub_080586B4
	bl sub_080A10AC
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A04CA
	bl sub_0800CC98
	cmp r0, #0
	bne _080A04CA
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A04CA
	bl sub_0800CD34
	cmp r0, #0
	bne _080A04CA
	movs r0, #0xd
	bl sub_08058688
	ldr r0, _080A055C
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x4c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	ldr r1, _080A0558
	ldrh r3, [r1, #0]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #0x10
	bl sub_080972B8
_080A04CA:
	bl sub_080020F4
	ldr r1, _080A0560
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080A0536
	ldr r0, _080A055C
	ldr r0, [r0, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080A0536
	ldr r0, _080A0564
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x4c]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r3, #0x1d
	mov sl, r3
	movs r5, #1
	negs r5, r5
_080A0506:
	ldr r0, _080A055C
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	mov r1, sl
	lsls r0, r1, #0x10
	ldr r2, _080A0568
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov sl, r3
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080A0506
	ldr r0, _080A0564
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080A0536:
	movs r4, #0x6f
	mov sl, r4
	subs r4, #0x70
_080A053C:
	bl sub_080003F0
	mov r1, sl
	lsls r0, r1, #0x10
	ldr r2, _080A0568
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov sl, r3
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _080A053C
	bl sub_08067C18
	b _080A0570
_080A0558: .4byte gUnk_03000330
_080A055C: .4byte gUnk_0300032C
_080A0560: .4byte gUnk_03003CE0
_080A0564: .4byte gUnk_030034E0
_080A0568: .4byte 0xFFFF0000
_080A056C:
	bl sub_080003F0
_080A0570:
	bl sub_08067C08
	cmp r0, #0
	beq _080A056C
	bl sub_08067BF8
	b _080A0582
_080A057E:
	bl sub_080003F0
_080A0582:
	bl sub_080A1088
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A057E
	bl sub_08056E24
	b _080A0596
_080A0592:
	bl sub_080003F0
_080A0596:
	bl sub_08056E90
	cmp r0, #0
	beq _080A0592
	bl sub_080A10D4
_080A05A2:
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0809FB6C
