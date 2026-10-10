	thumb_func_start sub_080A4D08
sub_080A4D08: @ 0x080A4D08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	adds r7, r0, #0
	ldr r0, _080A4D80
	str r7, [r0, #0]
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x4c]
	ldr r1, _080A4D84
	adds r0, r7, #0
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0x4c]
	bl sub_08019F60
	adds r0, r7, #0
	bl sub_0801A0A4
	ldr r4, _080A4D88
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0, #0]
	ldr r2, _080A4D8C
	adds r1, r7, r2
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080A4D90
	cmp r1, r0
	bne _080A4DA4
	ldr r4, _080A4D94
	adds r5, r1, #0
_080A4D5C:
	movs r0, #0xb
	strh r0, [r7, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _080A4D70
	bl sub_08056E90
	cmp r0, #0
	beq _080A4D98
_080A4D70:
	movs r1, #1
	ldrh r7, [r7, #0]
	lsls r1, r7
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	bl _080A6246
_080A4D80: .4byte gUnk_03000400
_080A4D84: .4byte gUnk_084A8088
_080A4D88: .4byte gUnk_03000404
_080A4D8C: .4byte 0x000002DA
_080A4D90: .4byte 0x0000FFFF
_080A4D94: .4byte gUnk_030056FC
_080A4D98:
	bl sub_080003F0
	ldr r0, _080A4F04
	ldrh r0, [r0, #0]
	cmp r0, r5
	beq _080A4D5C
_080A4DA4:
	ldr r1, _080A4F08
	ldr r4, _080A4F04
	ldrh r2, [r4, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r4, #0]
	movs r2, #0
	strb r0, [r1, #0x1c]
	ldr r0, _080A4F0C
	ldr r4, [r0, #0]
	adds r1, r4, #0
	adds r1, #0x68
	movs r3, #0
	movs r0, #0x10
	strh r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #0x6a
	strh r2, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
	movs r4, #1
	str r4, [sp, #0x70]
	ldr r0, [sp, #0x4c]
	movs r4, #6
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r4, #0xeb
	lsls r4, r4, #1
	adds r1, r7, r4
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5c
	strh r0, [r1, #0]
	ldr r1, [sp, #0x4c]
	movs r4, #4
	ldrsh r0, [r1, r4]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r4, #0xea
	lsls r4, r4, #1
	adds r1, r7, r4
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	strh r2, [r7, #0xc]
	ldr r0, _080A4F10
	str r0, [sp, #0x5c]
	movs r1, #0
	str r1, [sp, #0x60]
	str r2, [sp, #0x64]
	adds r4, #0x29
	adds r0, r7, r4
	movs r1, #2
	strb r1, [r0, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0, #0]
	movs r4, #0
	str r4, [sp, #0x7c]
	movs r0, #0
	str r0, [sp, #0x68]
	mov sl, r0
	movs r1, #0
	str r1, [sp, #0x74]
	movs r2, #0
	str r2, [sp, #0x78]
	str r4, [sp, #0x80]
	add r0, sp, #0x44
	strb r3, [r0, #0]
	str r1, [sp, #0x88]
	movs r2, #1
	str r2, [sp, #0x84]
	ldr r3, [sp, #0x70]
	str r3, [r7, #0x50]
	ldr r4, [sp, #0x4c]
	adds r4, #0xd6
	str r4, [sp, #0x90]
	ldr r0, _080A4F14
	mov r9, r0
	ldr r2, _080A4F18
	mov ip, r2
	movs r3, #0xa6
	lsls r3, r3, #1
	mov r8, r3
	ldr r6, _080A4F1C
	movs r5, #0
_080A4E66:
	movs r2, #0
	lsls r4, r1, #0x10
	asrs r0, r4, #0x10
	mov r3, r8
	muls r3, r0, r3
_080A4E70:
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
	ble _080A4E70
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080A4E66
	movs r4, #0xff
	mov r2, r9
	strb r4, [r2, #0]
	mov r3, ip
	strb r4, [r3, #0]
	bl sub_08097FE4
	bl sub_08097A4C
	bl sub_080A7E68
	bl sub_080A7FF8
	bl sub_080A7F30
	bl sub_080A80BC
	bl sub_080A8114
	movs r0, #0xe0
	lsls r0, r0, #4
	str r0, [r7, #0x18]
	ldr r0, [r7, #0x14]
	str r0, [sp, #0x50]
	movs r1, #0xd0
	lsls r1, r1, #7
	str r1, [sp, #0x54]
	ldrb r0, [r7, #0]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r7, r2
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldrh r1, [r7, #2]
	ldr r3, _080A4F20
	adds r0, r7, r3
	strh r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r7, r0
	ldrb r0, [r1, #0]
	orrs r0, r4
	strb r0, [r1, #0]
	movs r1, #0
	str r1, [sp, #0x8c]
	bl sub_08067C18
	b _080A4F28
	.2byte 0x0000
_080A4F04: .4byte gUnk_03000404
_080A4F08: .4byte 0x0005000F
_080A4F0C: .4byte gUnk_03000400
_080A4F10: .4byte 0x0000FFFF
_080A4F14: .4byte gUnk_03000406
_080A4F18: .4byte gUnk_03000407
_080A4F1C: .4byte gUnk_03003DC4
_080A4F20: .4byte 0x00000202
_080A4F24:
	bl sub_080003F0
_080A4F28:
	bl sub_08067C08
	cmp r0, #0
	beq _080A4F24
	bl sub_08067BF8
	ldr r0, _080A4F40
	bl sub_0805865C
	bl _080A5C7A
	.2byte 0x0000
_080A4F40: .4byte 0x000001A1
_080A4F44:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _080A4F54
	ldr r2, [sp, #0x60]
	cmp r2, #0
	bne _080A4F54
	movs r3, #8
	str r3, [sp, #0x60]
_080A4F54:
	bl sub_08058DB0
	cmp r0, #0
	beq _080A4F60
	bl _080A59CC
_080A4F60:
	adds r0, r7, #0
	bl sub_0801C8F0
	ldr r4, _080A4F80
	adds r0, r7, r4
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #0xd
	bls _080A4F76
	bl _080A59B6
_080A4F76:
	lsls r0, r0, #2
	ldr r1, _080A4F84
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080A4F80: .4byte 0x000001FD
_080A4F84: .4byte _080A4F88
_080A4F88:
	.4byte _080A4FC0
_080A4F8C: .4byte _080A4FEC
_080A4F90: .4byte _080A5074
_080A4F94: .4byte _080A50B0
_080A4F98: .4byte _080A5714
_080A4F9C: .4byte _080A5224
_080A4FA0: .4byte _080A5310
_080A4FA4: .4byte _080A53C4
_080A4FA8: .4byte _080A54E4
_080A4FAC: .4byte _080A5766
_080A4FB0: .4byte _080A55B4
_080A4FB4: .4byte _080A5604
_080A4FB8: .4byte _080A5872
_080A4FBC: .4byte _080A58B4
_080A4FC0:
	movs r0, #0
	strh r0, [r7, #0xc]
	bl sub_08067C08
	cmp r0, #0
	bne _080A4FD0
	bl _080A59B6
_080A4FD0:
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r1, [r0, #0]
	ldr r2, _080A4FE8
	adds r0, r7, r2
	strb r1, [r0, #0]
	bl sub_08067BF8
	bl _080A59B6
	.2byte 0x0000
_080A4FE8: .4byte 0x000001FD
_080A4FEC:
	adds r0, r7, #0
	bl sub_0801A0B0
	ldr r3, [sp, #0x74]
	cmp r3, #0
	beq _080A5000
	cmp r3, #1
	beq _080A5030
	bl _080A59B6
_080A5000:
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r1, #0x78
	bhi _080A5010
	b _080A52C8
_080A5010:
	movs r4, #1
	str r4, [sp, #0x74]
	movs r0, #0
	mov sl, r0
	ldr r0, _080A502C
	ldr r0, [r0, #0]
	adds r0, #0x68
	movs r1, #0xe
	strh r1, [r0, #0]
	movs r1, #0
	str r1, [sp, #0x70]
	bl _080A59B6
	.2byte 0x0000
_080A502C: .4byte gUnk_03000400
_080A5030:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080A503E
	bl _080A59B6
_080A503E:
	ldr r0, _080A506C
	ldr r0, [r0, #0]
	adds r0, #0x68
	movs r1, #0x11
	strh r1, [r0, #0]
	movs r2, #0
	str r2, [sp, #0x70]
	ldr r0, _080A5070
	bl sub_0805867C
	adds r0, r7, #0
	bl sub_0801A0A4
	movs r3, #0
	str r3, [sp, #0x74]
	mov sl, r3
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #3
	bl _080A597C
	.2byte 0x0000
_080A506C: .4byte gUnk_03000400
_080A5070: .4byte 0x000001A1
_080A5074:
	movs r4, #0
	strh r4, [r7, #0xc]
	adds r0, r7, #0
	bl sub_0801A0A4
	adds r1, r7, #0
	adds r1, #0x68
	movs r0, #0x11
	strh r0, [r1, #0]
	strh r4, [r7, #8]
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r1, #0xb4
	bhi _080A509A
	bl _080A59B6
_080A509A:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #9
	strb r0, [r1, #0]
	ldr r3, _080A50AC
	adds r1, r7, r3
	bl _080A5982
_080A50AC: .4byte 0x000001FD
_080A50B0:
	adds r0, r7, #0
	bl sub_0801A0B0
	ldr r4, [sp, #0x74]
	cmp r4, #0
	beq _080A50C4
	cmp r4, #1
	beq _080A5128
	bl _080A59B6
_080A50C4:
	movs r4, #1
	strh r4, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x68
	movs r0, #0x10
	strh r0, [r1, #0]
	movs r0, #1
	str r0, [sp, #0x70]
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r1, #0x50
	bls _080A50E8
	movs r1, #1
	str r1, [sp, #0x74]
	b _080A50EE
_080A50E8:
	ldr r0, [r7, #0x18]
	subs r0, #0xc0
	str r0, [r7, #0x18]
_080A50EE:
	ldr r0, _080A5120
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	bne _080A50FA
	bl _080A59B6
_080A50FA:
	bl sub_08015CE0
	bl sub_080020F4
	ldr r6, _080A5124
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xb0
	movs r1, #0x21
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	b _080A56C0
	.2byte 0x0000
_080A5120: .4byte gUnk_03000406
_080A5124: .4byte gUnk_03003CE0
_080A5128:
	movs r0, #0
	movs r4, #1
	add r1, sp, #0x74
	ldrh r1, [r1, #0]
	strh r1, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x68
	strh r0, [r1, #0]
	movs r2, #1
	str r2, [sp, #0x70]
	ldr r1, [r7, #0x14]
	ldr r0, _080A5184
	cmp r1, r0
	bge _080A519C
	ldr r0, _080A5188
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	beq _080A5150
	bl sub_08015C8C
_080A5150:
	ldr r0, _080A518C
	bl sub_0805865C
	movs r3, #0
	mov sl, r3
	movs r0, #0
	str r0, [sp, #0x68]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0xd
	strb r0, [r1, #0]
	ldr r3, _080A5190
	adds r1, r7, r3
	movs r0, #0xa
	strb r0, [r1, #0]
	ldr r1, _080A5194
	adds r0, r7, r1
	strb r4, [r0, #0]
	bl sub_08067C18
	ldr r0, _080A5198
	bl sub_0805867C
	b _080A51A2
	.2byte 0x0000
_080A5184: .4byte 0xFFFFE000
_080A5188: .4byte gUnk_03000406
_080A518C: .4byte 0x000001AB
_080A5190: .4byte 0x000001FF
_080A5194: .4byte 0x000001FD
_080A5198: .4byte 0x000001A1
_080A519C:
	ldr r2, _080A5214
	adds r0, r1, r2
	str r0, [r7, #0x14]
_080A51A2:
	ldr r0, _080A5218
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	bne _080A51AE
	bl _080A59B6
_080A51AE:
	bl sub_080020F4
	ldr r6, _080A521C
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xb0
	movs r1, #0x21
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x8c
	adds r2, r2, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	adds r0, #0x94
	adds r1, r1, r0
	ldr r0, [r7, #0x14]
	ldr r3, _080A5220
	adds r0, r0, r3
	str r0, [r1, #0]
	str r0, [r2, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x90
	adds r2, r2, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	adds r0, #0x98
	adds r1, r1, r0
	ldr r0, [r7, #0x18]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r0, r4
	b _080A5700
	.2byte 0x0000
_080A5214: .4byte 0xFFFFFD80
_080A5218: .4byte gUnk_03000406
_080A521C: .4byte gUnk_03003CE0
_080A5220: .4byte 0xFFFFF000
_080A5224:
	adds r0, r7, #0
	bl sub_0801A0B0
	ldr r0, [sp, #0x74]
	cmp r0, #1
	beq _080A5290
	cmp r0, #1
	bgt _080A523A
	cmp r0, #0
	beq _080A5242
	b _080A59B6
_080A523A:
	ldr r1, [sp, #0x74]
	cmp r1, #2
	beq _080A52D0
	b _080A59B6
_080A5242:
	movs r4, #1
	strh r4, [r7, #0xc]
	adds r4, r7, #0
	adds r4, #0x68
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _080A5256
	ldr r0, _080A527C
	bl sub_0805865C
_080A5256:
	add r2, sp, #0x74
	ldrh r2, [r2, #0]
	strh r2, [r4, #0]
	movs r3, #1
	str r3, [sp, #0x70]
	ldr r0, _080A5280
	adds r0, #0x70
	ldrh r1, [r0, #0]
	lsls r1, r1, #2
	ldr r2, [r7, #0x14]
	asrs r0, r2, #8
	cmp r1, r0
	blt _080A5284
	movs r4, #1
	str r4, [sp, #0x74]
	movs r0, #0
	mov sl, r0
	b _080A59B6
	.2byte 0x0000
_080A527C: .4byte 0x000001A1
_080A5280: .4byte gUnk_03003170
_080A5284:
	ldr r1, _080A528C
	adds r0, r2, r1
	str r0, [r7, #0x14]
	b _080A59B6
_080A528C: .4byte 0xFFFFFD80
_080A5290:
	add r2, sp, #0x74
	ldrh r2, [r2, #0]
	strh r2, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x68
	movs r0, #0x10
	strh r0, [r1, #0]
	movs r3, #1
	str r3, [sp, #0x70]
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r1, #0x50
	bls _080A52C8
	movs r4, #2
	str r4, [sp, #0x74]
	movs r0, #0
	mov sl, r0
	ldr r0, _080A52C4
	ldr r0, [r0, #0]
	adds r0, #0x68
	movs r1, #0xe
	strh r1, [r0, #0]
	b _080A59B6
_080A52C4: .4byte gUnk_03000400
_080A52C8:
	ldr r0, [r7, #0x18]
	adds r0, #0xc0
	str r0, [r7, #0x18]
	b _080A59B6
_080A52D0:
	movs r4, #1
	movs r5, #1
	strh r4, [r7, #0xc]
	movs r1, #0
	str r1, [sp, #0x70]
	ldr r0, _080A5304
	ldr r0, [r0, #0]
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080A52E8
	b _080A59B6
_080A52E8:
	ldr r0, _080A5308
	bl sub_0805867C
	movs r2, #0
	mov sl, r2
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #3
	strb r0, [r1, #0]
	ldr r4, _080A530C
	adds r0, r7, r4
	b _080A574C
	.2byte 0x0000
_080A5304: .4byte gUnk_03000400
_080A5308: .4byte 0x000001A1
_080A530C: .4byte 0x000001FD
_080A5310:
	movs r4, #2
	movs r6, #0
	strh r4, [r7, #0xc]
	adds r0, r7, #0
	bl sub_0801A0A4
	adds r5, r7, #0
	adds r5, #0x68
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq _080A5356
	movs r0, #0
	bl sub_080A7ECC
	movs r0, #1
	bl sub_080A7ECC
	movs r0, #2
	bl sub_080A7ECC
	movs r0, #3
	bl sub_080A7ECC
	movs r0, #4
	bl sub_080A7ECC
	movs r0, #5
	bl sub_080A7ECC
	movs r0, #6
	bl sub_080A7ECC
	movs r0, #7
	bl sub_080A7ECC
_080A5356:
	strh r6, [r5, #0]
	movs r0, #1
	str r0, [sp, #0x70]
	strh r4, [r7, #8]
	ldr r1, [r7, #0x14]
	ldr r0, _080A53A0
	cmp r1, r0
	bge _080A53B0
	adds r0, r7, #0
	bl sub_0801A0B0
	movs r1, #0
	mov sl, r1
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0xd
	strb r0, [r1, #0]
	ldr r3, _080A53A4
	adds r1, r7, r3
	movs r0, #5
	strb r0, [r1, #0]
	ldr r4, _080A53A8
	adds r0, r7, r4
	add r1, sp, #0x70
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	bl sub_08067C18
	ldr r0, _080A53AC
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	beq _080A53B6
	bl sub_08015C8C
	b _080A53B6
	.2byte 0x0000
_080A53A0: .4byte 0xFFFFE000
_080A53A4: .4byte 0x000001FF
_080A53A8: .4byte 0x000001FD
_080A53AC: .4byte gUnk_03000406
_080A53B0:
	ldr r2, _080A53C0
	adds r0, r1, r2
	str r0, [r7, #0x14]
_080A53B6:
	movs r0, #0
	bl sub_080A6258
	b _080A59B6
	.2byte 0x0000
_080A53C0: .4byte 0xFFFFFD00
_080A53C4:
	movs r4, #2
	movs r1, #0
	strh r4, [r7, #0xc]
	strh r1, [r7, #8]
	ldr r3, [sp, #0x74]
	cmp r3, #1
	beq _080A5438
	cmp r3, #1
	bgt _080A53DC
	cmp r3, #0
	beq _080A53E4
	b _080A59B6
_080A53DC:
	ldr r4, [sp, #0x74]
	cmp r4, #2
	beq _080A5484
	b _080A59B6
_080A53E4:
	adds r0, r7, #0
	bl sub_0801A0B0
	adds r4, r7, #0
	adds r4, #0x68
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _080A53FA
	ldr r0, _080A5428
	bl sub_0805865C
_080A53FA:
	add r0, sp, #0x74
	ldrh r0, [r0, #0]
	strh r0, [r4, #0]
	ldr r0, _080A542C
	adds r0, #0x70
	ldrh r1, [r0, #0]
	lsls r1, r1, #2
	ldr r2, [r7, #0x14]
	asrs r0, r2, #8
	cmp r1, r0
	blt _080A5430
	movs r1, #1
	str r1, [sp, #0x74]
	movs r2, #0
	mov sl, r2
	movs r0, #0
	bl sub_080A7F94
	movs r0, #1
	bl sub_080A7F94
	b _080A59B6
	.2byte 0x0000
_080A5428: .4byte 0x000001A1
_080A542C: .4byte gUnk_03003170
_080A5430:
	ldr r3, _080A5434
	b _080A5760
_080A5434: .4byte 0xFFFFFD80
_080A5438:
	adds r1, r7, #0
	adds r1, #0x68
	movs r0, #0x10
	strh r0, [r1, #0]
	movs r4, #1
	str r4, [sp, #0x70]
	adds r0, r7, #0
	bl sub_0801A0A4
	ldr r1, _080A5480
	ldr r0, [sp, #0x7c]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x7c]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	asrs r1, r1, #1
	ldr r0, [r7, #0x18]
	adds r0, r0, r1
	str r0, [r7, #0x18]
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0x96
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080A547A
	b _080A59B6
_080A547A:
	movs r3, #2
	str r3, [sp, #0x74]
	b _080A59B6
_080A5480: .4byte gUnk_080B9704
_080A5484:
	adds r0, r7, #0
	adds r0, #0x68
	strh r1, [r0, #0]
	movs r4, #1
	str r4, [sp, #0x70]
	adds r0, r7, #0
	bl sub_0801A0B0
	ldr r1, [r7, #0x14]
	ldr r0, _080A54C8
	cmp r1, r0
	bge _080A54D8
	movs r0, #0
	mov sl, r0
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0xd
	strb r0, [r1, #0]
	ldr r3, _080A54CC
	adds r1, r7, r3
	movs r0, #5
	strb r0, [r1, #0]
	ldr r4, _080A54D0
	adds r0, r7, r4
	add r1, sp, #0x70
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	bl sub_08067C18
	ldr r0, _080A54D4
	bl sub_0805867C
	b _080A59B6
_080A54C8: .4byte 0xFFFFE000
_080A54CC: .4byte 0x000001FF
_080A54D0: .4byte 0x000001FD
_080A54D4: .4byte 0x000001A1
_080A54D8:
	ldr r2, _080A54E0
	adds r0, r1, r2
	str r0, [r7, #0x14]
	b _080A59B6
_080A54E0: .4byte 0xFFFFFD80
_080A54E4:
	movs r4, #2
	movs r6, #0
	strh r4, [r7, #0xc]
	adds r0, r7, #0
	bl sub_0801A0A4
	adds r5, r7, #0
	adds r5, #0x68
	ldrh r0, [r5, #0]
	adds r4, r7, #0
	adds r4, #0x6e
	cmp r0, #0xf
	beq _080A5506
	ldr r0, _080A5540
	bl sub_0805865C
	strh r6, [r4, #0]
_080A5506:
	movs r0, #0xf
	strh r0, [r5, #0]
	movs r3, #0
	str r3, [sp, #0x70]
	strh r3, [r7, #8]
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _080A554C
	adds r0, r7, #0
	bl sub_0801A0B0
	movs r1, #0
	str r1, [sp, #0x74]
	mov sl, r1
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #4
	strb r0, [r1, #0]
	ldr r3, _080A5544
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	ldr r0, _080A5548
	bl sub_0805865C
	b _080A5550
_080A5540: .4byte 0x000001A3
_080A5544: .4byte 0x000001FD
_080A5548: .4byte 0x000001A1
_080A554C:
	bl sub_080A6510
_080A5550:
	ldr r0, _080A55AC
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	bne _080A555A
	b _080A59B6
_080A555A:
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	ldr r6, _080A55B0
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x8c
	adds r2, r2, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	adds r0, #0x94
	adds r1, r1, r0
	ldr r0, [r7, #0x14]
	str r0, [r1, #0]
	str r0, [r2, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x90
	adds r2, r2, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	adds r0, #0x98
	adds r1, r1, r0
	ldr r0, [r7, #0x18]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r0, r4
	b _080A5700
_080A55AC: .4byte gUnk_03000406
_080A55B0: .4byte gUnk_03003CE0
_080A55B4:
	movs r4, #2
	strh r4, [r7, #0xc]
	adds r0, r7, #0
	bl sub_0801A0B0
	adds r0, r7, #0
	adds r0, #0x14
	bl sub_080A8090
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A55CE
	b _080A59B6
_080A55CE:
	movs r0, #0
	str r0, [sp, #0x88]
	ldr r0, _080A55FC
	movs r1, #0xff
	strb r1, [r0, #0]
	bl sub_0800CE68
	cmp r0, #0
	bne _080A55EC
	bl sub_0800CC98
	cmp r0, #0
	bne _080A55EC
	bl sub_08015C38
_080A55EC:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0xc
	strb r0, [r1, #0]
	ldr r3, _080A5600
	adds r1, r7, r3
	b _080A5982
_080A55FC: .4byte gUnk_03000407
_080A5600: .4byte 0x000001FD
_080A5604:
	movs r4, #2
	movs r5, #0
	strh r4, [r7, #0xc]
	adds r0, r7, #0
	bl sub_0801A0B0
	adds r4, r7, #0
	adds r4, #0x68
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _080A5620
	ldr r0, _080A5688
	bl sub_0805865C
_080A5620:
	strh r5, [r4, #0]
	movs r4, #1
	str r4, [sp, #0x70]
	ldr r0, [sp, #0x88]
	cmp r0, #0
	bne _080A5642
	movs r0, #1
	bl sub_080A6258
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x88]
	cmp r0, #0
	beq _080A5642
	ldr r0, _080A568C
	bl sub_0805865C
_080A5642:
	ldr r1, [r7, #0x14]
	ldr r0, _080A5690
	cmp r1, r0
	bge _080A56A0
	movs r1, #0
	mov sl, r1
	movs r2, #0
	str r2, [sp, #0x68]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #0xd
	strb r0, [r1, #0]
	ldr r4, _080A5694
	adds r1, r7, r4
	movs r0, #0xa
	strb r0, [r1, #0]
	ldr r0, _080A5698
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	ldr r0, _080A5688
	bl sub_0805867C
	ldr r0, _080A569C
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	bne _080A5680
	b _080A59B6
_080A5680:
	bl sub_08015C8C
	b _080A56A6
	.2byte 0x0000
_080A5688: .4byte 0x000001A1
_080A568C: .4byte 0x000001AB
_080A5690: .4byte 0xFFFFE000
_080A5694: .4byte 0x000001FF
_080A5698: .4byte 0x000001FD
_080A569C: .4byte gUnk_03000406
_080A56A0:
	ldr r2, _080A5708
	adds r0, r1, r2
	str r0, [r7, #0x14]
_080A56A6:
	ldr r0, _080A570C
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	bne _080A56B0
	b _080A59B6
_080A56B0:
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	ldr r6, _080A5710
	movs r5, #0xa6
	lsls r5, r5, #1
_080A56C0:
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x8c
	adds r2, r2, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	adds r0, #0x94
	adds r1, r1, r0
	ldr r0, [r7, #0x14]
	str r0, [r1, #0]
	str r0, [r2, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x90
	adds r2, r2, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	adds r0, #0x98
	adds r1, r1, r0
	ldr r0, [r7, #0x18]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r0, r3
_080A5700:
	str r0, [r1, #0]
	str r0, [r2, #0]
	b _080A59B6
	.2byte 0x0000
_080A5708: .4byte 0xFFFFFD00
_080A570C: .4byte gUnk_03000406
_080A5710: .4byte gUnk_03003CE0
_080A5714:
	movs r4, #1
	movs r5, #1
	strh r4, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x68
	strh r4, [r0, #0]
	str r4, [sp, #0x70]
	adds r0, r7, #0
	bl sub_0801A0B0
	ldr r0, _080A5754
	adds r0, #0x70
	ldrh r1, [r0, #0]
	lsls r1, r1, #3
	adds r1, #0x32
	ldr r2, [r7, #0x14]
	asrs r0, r2, #8
	cmp r1, r0
	bgt _080A575C
	movs r0, #0
	mov sl, r0
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #0xe
	strb r1, [r0, #0]
	ldr r2, _080A5758
	adds r0, r7, r2
_080A574C:
	strb r5, [r0, #0]
	bl sub_08067C18
	b _080A59B6
_080A5754: .4byte gUnk_03003170
_080A5758: .4byte 0x000001FD
_080A575C:
	movs r3, #0x90
	lsls r3, r3, #1
_080A5760:
	adds r0, r2, r3
	str r0, [r7, #0x14]
	b _080A59B6
_080A5766:
	movs r4, #2
	movs r0, #0
	mov r9, r0
	strh r4, [r7, #0xc]
	adds r0, r7, #0
	bl sub_0801A0B0
	ldr r1, _080A5810
	mov r8, r1
	ldrb r0, [r1, #0]
	cmp r0, #0xff
	beq _080A57CC
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	ldr r6, _080A5814
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x8c
	adds r2, r2, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	adds r0, #0x94
	adds r1, r1, r0
	ldr r0, [r7, #0x14]
	str r0, [r1, #0]
	str r0, [r2, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r5, r2
	adds r1, r6, #0
	adds r1, #0x90
	adds r2, r2, r1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r6, #0
	adds r0, #0x98
	adds r1, r1, r0
	ldr r0, [r7, #0x18]
	str r0, [r1, #0]
	str r0, [r2, #0]
_080A57CC:
	ldr r1, [sp, #0x68]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	cmp r1, #0x1e
	bls _080A5826
	movs r2, #0
	str r2, [sp, #0x68]
	mov r3, r8
	ldrb r0, [r3, #0]
	cmp r0, #0xff
	beq _080A5826
	bl sub_080020F4
	ldr r2, _080A5814
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xb0
	ldr r1, _080A5818
	strh r1, [r0, #0]
	bl sub_0800CE30
	cmp r0, #1
	bne _080A581C
	movs r0, #5
	movs r1, #0x32
	movs r2, #3
	bl sub_08029A7C
	b _080A5826
	.2byte 0x0000
_080A5810: .4byte gUnk_03000406
_080A5814: .4byte gUnk_03003CE0
_080A5818: .4byte 0x0000FFFE
_080A581C:
	movs r0, #5
	movs r1, #0x1e
	movs r2, #3
	bl sub_08029A7C
_080A5826:
	adds r1, r7, #0
	adds r1, #0x68
	movs r0, #4
	strh r0, [r1, #0]
	movs r4, #1
	str r4, [sp, #0x70]
	ldr r0, _080A5860
	adds r0, #0x70
	ldrh r1, [r0, #0]
	lsls r1, r1, #3
	adds r1, #0x32
	ldr r2, [r7, #0x14]
	asrs r0, r2, #8
	cmp r1, r0
	bgt _080A5868
	movs r0, #0
	mov sl, r0
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #0xe
	strb r1, [r0, #0]
	ldr r2, _080A5864
	adds r0, r7, r2
	strb r4, [r0, #0]
	bl sub_08067C18
	b _080A59B6
	.2byte 0x0000
_080A5860: .4byte gUnk_03003170
_080A5864: .4byte 0x000001FD
_080A5868:
	movs r4, #0x90
	lsls r4, r4, #1
	adds r0, r2, r4
	str r0, [r7, #0x14]
	b _080A59B6
_080A5872:
	movs r4, #0
	strh r4, [r7, #0xc]
	movs r0, #0
	str r0, [sp, #0x84]
	adds r0, r7, #0
	bl sub_0801A0B0
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r1, #0x5a
	bhi _080A5890
	b _080A59B6
_080A5890:
	movs r0, #0xac
	lsls r0, r0, #6
	str r0, [r7, #0x18]
	ldr r1, _080A58AC
	adds r0, r7, r1
	ldrb r1, [r0, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0, #0]
	ldr r3, _080A58B0
	adds r1, r7, r3
	b _080A5982
	.2byte 0x0000
_080A58AC: .4byte 0x000001FF
_080A58B0: .4byte 0x000001FD
_080A58B4:
	movs r4, #0
	strh r4, [r7, #0xc]
	movs r4, #1
	str r4, [sp, #0x84]
	adds r0, r7, #0
	bl sub_0801A0B0
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	cmp r1, #0x5a
	bls _080A59B6
	ldr r0, _080A58F0
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	beq _080A58DC
	movs r0, #1
	str r0, [sp, #0x80]
_080A58DC:
	bl sub_0800CE30
	cmp r0, #1
	bne _080A58F4
	ldr r1, [sp, #0x78]
	cmp r1, #3
	beq _080A5904
	adds r0, r1, #0
	b _080A58FC
	.2byte 0x0000
_080A58F0: .4byte gUnk_03000406
_080A58F4:
	ldr r2, [sp, #0x78]
	cmp r2, #2
	beq _080A5904
	adds r0, r2, #0
_080A58FC:
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080A5906
_080A5904:
	movs r0, #0
_080A5906:
	str r0, [sp, #0x78]
	ldr r3, [sp, #0x78]
	cmp r3, #1
	beq _080A5944
	cmp r3, #1
	bgt _080A5918
	cmp r3, #0
	beq _080A5924
	b _080A59B6
_080A5918:
	ldr r4, [sp, #0x78]
	cmp r4, #2
	beq _080A5968
	cmp r4, #3
	beq _080A5990
	b _080A59B6
_080A5924:
	movs r0, #0
	str r0, [sp, #0x74]
	mov sl, r0
	movs r0, #0xac
	lsls r0, r0, #6
	str r0, [r7, #0x18]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #8
	strb r0, [r1, #0]
	ldr r3, _080A5940
	adds r1, r7, r3
	b _080A5982
_080A5940: .4byte 0x000001FD
_080A5944:
	movs r0, #0x90
	lsls r0, r0, #7
	str r0, [r7, #0x18]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #7
	strb r0, [r1, #0]
	ldr r1, _080A5964
	adds r0, r7, r1
	add r2, sp, #0x78
	ldrb r2, [r2, #0]
	strb r2, [r0, #0]
	bl sub_08067C18
	b _080A59B6
_080A5964: .4byte 0x000001FD
_080A5968:
	movs r3, #0
	str r3, [sp, #0x74]
	mov sl, r3
	movs r0, #0xac
	lsls r0, r0, #6
	str r0, [r7, #0x18]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #6
_080A597C:
	strb r0, [r1, #0]
	ldr r0, _080A598C
	adds r1, r7, r0
_080A5982:
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080A59B6
_080A598C: .4byte 0x000001FD
_080A5990:
	movs r1, #0
	str r1, [sp, #0x74]
	mov sl, r1
	movs r0, #0xa0
	lsls r0, r0, #6
	str r0, [r7, #0x18]
	bl sub_080A803C
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0xb
	strb r0, [r1, #0]
	ldr r3, _080A5A50
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
_080A59B6:
	ldr r4, [sp, #0x80]
	cmp r4, #0
	beq _080A59CC
	add r0, sp, #0x44
	bl sub_080A66E0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080A59CC
	movs r0, #0
	str r0, [sp, #0x80]
_080A59CC:
	ldr r0, _080A5A54
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	bne _080A59DC
	ldr r0, _080A5A58
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	beq _080A59E0
_080A59DC:
	bl sub_08015C14
_080A59E0:
	ldr r3, _080A5A5C
	ldr r2, [r3, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r1, [sp, #0x5c]
	ldrh r4, [r0, #0]
	cmp r1, r4
	beq _080A5A00
	ldrh r0, [r0, #0]
	str r0, [sp, #0x5c]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_080A5A00:
	ldr r0, [r3, #0]
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x50]
	ldr r1, _080A5A50
	adds r0, r7, r1
	ldrb r0, [r0, #0]
	subs r0, #0xd
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080A5A18
	b _080A5BE8
_080A5A18:
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A5A3E
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r7, #0
	adds r2, #0x6a
	adds r3, r7, #0
	adds r3, #0x6c
	ldr r4, [sp, #0x70]
	str r4, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_080A5A3E:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A5A60
	bl sub_08097FF8
	b _080A5A6E
_080A5A50: .4byte 0x000001FD
_080A5A54: .4byte gUnk_03000406
_080A5A58: .4byte gUnk_03000407
_080A5A5C: .4byte gUnk_03000400
_080A5A60:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080A5A6E:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080A5B08
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x90]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
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
	mov r9, r4
	ldr r2, [sp, #0x60]
	cmp r2, #0
	beq _080A5B0C
	adds r0, r2, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x60]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A5B50
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A5B50
	bl sub_0800CC98
	cmp r0, #0
	bne _080A5B50
	bl sub_0800CD34
	cmp r0, #0
	bne _080A5B50
	movs r3, #0
	ldrsh r0, [r4, r3]
	add r2, sp, #0x48
	movs r4, #0
	ldrsh r1, [r2, r4]
	adds r2, r7, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, r7, #0
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080A5B50
_080A5B08: .4byte gUnk_03000404
_080A5B0C:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A5B50
	bl sub_0800CC98
	cmp r0, #0
	bne _080A5B50
	bl sub_0800CD34
	cmp r0, #0
	bne _080A5B50
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r4, sp, #0x48
	movs r3, #0
	ldrsh r1, [r4, r3]
	adds r2, r7, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, r7, #0
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A5B50:
	ldr r0, [r7, #0x14]
	ldr r1, _080A5C4C
	adds r0, r0, r1
	movs r1, #0x92
	lsls r1, r1, #8
	cmp r0, r1
	bhi _080A5BE8
	ldr r2, [sp, #0x84]
	cmp r2, #1
	bne _080A5BE8
	ldr r0, _080A5C50
	ldr r0, [r0, #0]
	ands r0, r2
	cmp r0, #0
	beq _080A5BE8
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A5BE8
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A5BE8
	bl sub_0800CC98
	cmp r0, #0
	bne _080A5BE8
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	bne _080A5BE8
	ldr r3, [sp, #0x50]
	asrs r4, r3, #8
	ldr r0, [sp, #0x54]
	asrs r5, r0, #8
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	str r6, [sp, #0]
	str r6, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r9
	add r3, sp, #0x48
	bl sub_0800BC08
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r8
	str r3, [sp, #0]
	add r1, sp, #0x2c
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #1
	movs r2, #0x12
	movs r3, #0
	bl sub_08007870
	add r2, sp, #0x48
	movs r4, #0
	ldrsh r1, [r2, r4]
	str r1, [r0, #0xc]
_080A5BE8:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _080A5BFE
	ldr r3, [sp, #0x58]
	cmp r3, r0
	beq _080A5BFE
	str r0, [sp, #0x58]
	movs r4, #0xa
	str r4, [sp, #0x64]
	movs r0, #0
	str r0, [sp, #0x6c]
_080A5BFE:
	ldr r1, [sp, #0x64]
	cmp r1, #0
	beq _080A5C58
	bl sub_0800CC98
	cmp r0, #0
	bne _080A5C2A
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A5C2A
	bl sub_0800CD34
	cmp r0, #0
	bne _080A5C2A
	ldr r3, [sp, #0x6c]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x58]
	bl sub_0801A120
_080A5C2A:
	movs r0, #2
	ldr r4, [sp, #0x64]
	ands r0, r4
	cmp r0, #0
	beq _080A5C40
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	ldr r2, _080A5C54
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
_080A5C40:
	ldr r0, [sp, #0x64]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	b _080A5C60
_080A5C4C: .4byte 0xFFFFD600
_080A5C50: .4byte gUnk_03002344
_080A5C54: .4byte 0xFFFF0000
_080A5C58:
	movs r3, #0
	str r3, [sp, #0x58]
	ldr r4, [sp, #0x64]
	str r4, [r7, #0x4c]
_080A5C60:
	adds r0, r7, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080A5C70
	movs r0, #1
	str r0, [sp, #0x8c]
_080A5C70:
	bl sub_080003F0
	ldr r1, [sp, #0x8c]
	cmp r1, #0
	bne _080A5C8E
_080A5C7A:
	bl sub_0800CB78
	cmp r0, #0
	bne _080A5C8E
	bl sub_08056E90
	cmp r0, #0
	bne _080A5C8E
	bl _080A4F44
_080A5C8E:
	ldr r0, _080A5E08
	movs r4, #0
	str r4, [r0, #0]
	bl sub_080020F4
	ldr r1, _080A5E0C
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_080A7E94
	bl sub_080A7F5C
	bl sub_080A8014
	ldr r1, _080A5E10
	ldr r0, [r1, #0]
	adds r2, r0, #0
	adds r2, #0x68
	ldrh r0, [r2, #0]
	cmp r0, #0x10
	beq _080A5CCA
	movs r0, #0x11
	strh r0, [r2, #0]
_080A5CCA:
	ldr r0, [r1, #0]
	adds r2, r0, #0
	adds r2, #0x6a
	strh r4, [r2, #0]
	adds r0, #0x6c
	strh r4, [r0, #0]
	movs r2, #1
	str r2, [sp, #0x70]
	movs r3, #0
	str r3, [sp, #0x6c]
	movs r4, #0xa
	str r4, [sp, #0x64]
	mov r9, r1
_080A5CE4:
	bl sub_080020F4
	ldr r2, _080A5E0C
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A5DBE
	bl sub_0800CC98
	cmp r0, #0
	bne _080A5DBE
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	bne _080A5DBE
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	ldr r0, [sp, #0x70]
	str r0, [sp, #0]
	add r0, sp, #0x10
	adds r2, r7, #0
	adds r2, #0x6a
	adds r3, r7, #0
	adds r3, #0x6c
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r0, _080A5E14
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x90]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r2, r9
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r3, r9
	ldr r1, [r3, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x46
	add r5, sp, #0x48
	str r6, [sp, #0]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r4, r9
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, [sp, #0x6c]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x58]
	bl sub_0801A120
_080A5DBE:
	movs r0, #2
	ldr r1, [sp, #0x64]
	ands r0, r1
	cmp r0, #0
	beq _080A5DD4
	ldr r2, [sp, #0x6c]
	lsls r0, r2, #0x10
	ldr r3, _080A5E18
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
_080A5DD4:
	bl sub_080003F0
	ldr r0, [sp, #0x64]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	ldr r0, _080A5E1C
	ldr r4, [sp, #0x64]
	cmp r4, r0
	beq _080A5DEC
	b _080A5CE4
_080A5DEC:
	bl sub_080683CC
	ldr r4, _080A5E10
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r0, _080A5E20
	bl sub_08068330
	mov r9, r4
	mov r6, sp
	adds r6, #0x46
	b _080A5EF8
_080A5E08: .4byte gUnk_030056FC
_080A5E0C: .4byte gUnk_03003CE0
_080A5E10: .4byte gUnk_03000400
_080A5E14: .4byte gUnk_03000404
_080A5E18: .4byte 0xFFFF0000
_080A5E1C: .4byte 0x0000FFFF
_080A5E20: .4byte 0xDEADFACE
_080A5E24:
	bl sub_080020F4
	ldr r2, _080A5F14
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A5EF4
	bl sub_0800CC98
	cmp r0, #0
	bne _080A5EF4
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A5EF4
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080A5EF4
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	ldr r0, [sp, #0x70]
	str r0, [sp, #0]
	add r0, sp, #0x10
	adds r2, r7, #0
	adds r2, #0x6a
	adds r3, r7, #0
	adds r3, #0x6c
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r0, _080A5F18
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x90]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r2, r9
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r3, r9
	ldr r1, [r3, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x48
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	mov r4, r9
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A5EF4:
	bl sub_080003F0
_080A5EF8:
	ldr r0, _080A5F1C
	bl sub_080682B8
	cmp r0, #0
	beq _080A5E24
	ldr r0, _080A5F1C
	bl sub_08065E38
	ldr r0, _080A5F20
	mov r9, r0
	mov r6, sp
	adds r6, #0x46
	b _080A5FF6
	.2byte 0x0000
_080A5F14: .4byte gUnk_03003CE0
_080A5F18: .4byte gUnk_03000404
_080A5F1C: .4byte 0xDEADFACE
_080A5F20: .4byte gUnk_03000400
_080A5F24:
	bl sub_080020F4
	ldr r2, _080A6048
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A5FF2
	bl sub_0800CC98
	cmp r0, #0
	bne _080A5FF2
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A5FF2
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080A5FF2
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	ldr r2, [sp, #0x70]
	str r2, [sp, #0]
	add r0, sp, #0x10
	adds r2, r7, #0
	adds r2, #0x6a
	adds r3, r7, #0
	adds r3, #0x6c
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r0, _080A604C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0x90]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r4, r9
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x48
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	mov r4, r9
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A5FF2:
	bl sub_080003F0
_080A5FF6:
	bl sub_08058DB0
	cmp r0, #0
	bne _080A5F24
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _080A6048
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080A6050
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080A6054
	ldr r1, [r1, #0]
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r1, r1, r2
	str r0, [r1, #0]
	ldr r3, _080A6058
	mov r9, r3
	mov r6, sp
	adds r6, #0x46
	b _080A6130
	.2byte 0x0000
_080A6048: .4byte gUnk_03003CE0
_080A604C: .4byte gUnk_03000404
_080A6050: .4byte 0x0014006A
_080A6054: .4byte gUnk_03005CF4
_080A6058: .4byte gUnk_03000400
_080A605C:
	bl sub_080020F4
	ldr r2, _080A6204
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A612C
	bl sub_0800CC98
	cmp r0, #0
	bne _080A612C
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A612C
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080A612C
	adds r0, r7, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	ldr r4, [sp, #0x70]
	str r4, [sp, #0]
	add r0, sp, #0x10
	adds r2, r7, #0
	adds r2, #0x6a
	adds r3, r7, #0
	adds r3, #0x6c
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r0, _080A6208
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x90]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r2, r9
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r3, r9
	ldr r1, [r3, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x48
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	mov r4, r9
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A612C:
	bl sub_080003F0
_080A6130:
	ldr r0, _080A620C
	ldr r0, [r0, #0]
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	beq _080A605C
	bl sub_080020F4
	ldr r4, _080A6204
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	ldr r0, _080A6210
	bl sub_0805867C
	movs r0, #0xd
	bl sub_08058688
	ldr r6, _080A6214
	ldr r0, [r6, #0]
	ldr r3, [sp, #0x90]
	ldrh r2, [r3, #0]
	ldr r1, _080A6208
	ldrh r3, [r1, #0]
	add r1, sp, #0x10
	bl sub_080970CC
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080A61E0
	ldr r0, [r6, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080A61E0
	ldr r0, _080A6218
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x4c]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r0, #0x1d
	str r0, [sp, #0x6c]
	movs r5, #1
	negs r5, r5
_080A61B0:
	ldr r0, _080A6214
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	ldr r2, _080A621C
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x6c]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080A61B0
	ldr r0, _080A6218
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080A61E0:
	movs r4, #0x6f
	str r4, [sp, #0x6c]
	subs r4, #0x70
_080A61E6:
	bl sub_080003F0
	ldr r1, [sp, #0x6c]
	lsls r0, r1, #0x10
	ldr r2, _080A621C
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x6c]
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _080A61E6
	bl sub_08067C18
	b _080A6224
	.2byte 0x0000
_080A6204: .4byte gUnk_03003CE0
_080A6208: .4byte gUnk_03000404
_080A620C: .4byte gUnk_03005CF4
_080A6210: .4byte 0x000001A1
_080A6214: .4byte gUnk_03000400
_080A6218: .4byte gUnk_030034E0
_080A621C: .4byte 0xFFFF0000
_080A6220:
	bl sub_080003F0
_080A6224:
	bl sub_08067C08
	cmp r0, #0
	beq _080A6220
	bl sub_08067BF8
	bl sub_08056E24
	b _080A623A
_080A6236:
	bl sub_080003F0
_080A623A:
	bl sub_08056E90
	cmp r0, #0
	beq _080A6236
	bl sub_080A80D8
_080A6246:
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080A4D08
