	thumb_func_start sub_08099838
sub_08099838: @ 0x08099838
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd8
	mov sl, r0
	ldr r0, _080998B8
	mov r1, sl
	str r1, [r0, #0]
	movs r2, #0x81
	lsls r2, r2, #2
	add r2, sl
	str r2, [sp, #0x80]
	ldr r1, _080998BC
	mov r0, sl
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0x80]
	bl sub_08019F60
	mov r0, sl
	bl sub_0801A0A4
	ldr r4, _080998C0
	movs r0, #0xb6
	lsls r0, r0, #2
	add r0, sl
	ldrh r0, [r0, #0]
	ldr r1, _080998C4
	add r1, sl
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080998C8
	cmp r1, r0
	bne _080998DC
	ldr r4, _080998CC
	adds r5, r1, #0
_0809988E:
	movs r0, #0xb
	mov r3, sl
	strh r0, [r3, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _080998A4
	bl sub_08056E90
	cmp r0, #0
	beq _080998D0
_080998A4:
	movs r1, #1
	mov r6, sl
	ldrh r6, [r6, #0]
	lsls r1, r6
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	bl _0809A5D0
	.2byte 0x0000
_080998B8: .4byte gUnk_030002DC
_080998BC: .4byte gUnk_084A06B0
_080998C0: .4byte gUnk_030002E0
_080998C4: .4byte 0x000002DA
_080998C8: .4byte 0x0000FFFF
_080998CC: .4byte gUnk_030056FC
_080998D0:
	bl sub_080003F0
	ldr r0, _080999DC
	ldrh r0, [r0, #0]
	cmp r0, r5
	beq _0809988E
_080998DC:
	ldr r1, _080999E0
	ldr r4, _080999DC
	ldrh r2, [r4, #0]
	movs r5, #1
	negs r5, r5
	movs r6, #1
	str r6, [sp, #0]
	add r0, sp, #0x10
	adds r3, r5, #0
	bl sub_08065158
	add r7, sp, #0x44
	mov r9, r7
	ldr r1, _080999E4
	ldrh r2, [r4, #0]
	str r6, [sp, #0]
	mov r0, r9
	adds r3, r5, #0
	bl sub_08065158
	movs r0, #0x6c
	add r0, sl
	mov r8, r0
	movs r2, #0
	strh r2, [r0, #0]
	mov r5, sl
	adds r5, #0x6a
	strh r2, [r5, #0]
	mov r4, sl
	adds r4, #0x68
	strh r2, [r4, #0]
	ldr r3, [sp, #0x80]
	movs r7, #6
	ldrsh r1, [r3, r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r1, #0xeb
	lsls r1, r1, #1
	add r1, sl
	strh r0, [r1, #0]
	mov r1, sl
	adds r1, #0x5c
	strh r0, [r1, #0]
	movs r1, #4
	ldrsh r0, [r3, r1]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xea
	lsls r1, r1, #1
	add r1, sl
	strh r0, [r1, #0]
	mov r1, sl
	adds r1, #0x5e
	strh r0, [r1, #0]
	mov r3, sl
	strh r2, [r3, #0xc]
	movs r7, #0
	str r7, [sp, #0x8c]
	ldr r0, _080999E8
	str r0, [sp, #0x90]
	str r0, [sp, #0x94]
	movs r1, #0
	str r1, [sp, #0x9c]
	str r2, [sp, #0xa0]
	movs r3, #0
	str r3, [sp, #0xb8]
	ldr r0, _080999EC
	add r0, sl
	movs r1, #2
	strb r1, [r0, #0]
	movs r0, #0xff
	lsls r0, r0, #1
	add r0, sl
	strb r1, [r0, #0]
	bl sub_0809AE24
	bl sub_08097C4C
	mov r7, sl
	str r6, [r7, #0x50]
	movs r1, #0
	mov r0, r8
	str r0, [sp, #0xcc]
	str r5, [sp, #0xc8]
	str r4, [sp, #0xc4]
	ldr r2, [sp, #0x80]
	adds r2, #0xd6
	str r2, [sp, #0xd0]
	movs r7, #0xa6
	lsls r7, r7, #1
	ldr r6, _080999F0
	movs r5, #0
_08099998:
	movs r2, #0
	lsls r4, r1, #0x10
	asrs r0, r4, #0x10
	adds r3, r0, #0
	muls r3, r7, r3
_080999A2:
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
	ble _080999A2
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08099998
	bl sub_0800CE30
	cmp r0, #1
	bne _080999F4
	movs r4, #0xb4
	str r4, [sp, #0xa4]
	movs r6, #0x80
	str r6, [sp, #0x84]
	b _080999FE
	.2byte 0x0000
_080999DC: .4byte gUnk_030002E0
_080999E0: .4byte 0x00050002
_080999E4: .4byte 0x00050003
_080999E8: .4byte 0x0000FFFF
_080999EC: .4byte 0x000001FD
_080999F0: .4byte gUnk_03003DC4
_080999F4:
	movs r7, #0xb4
	lsls r7, r7, #1
	str r7, [sp, #0xa4]
	movs r0, #0x40
	str r0, [sp, #0x84]
_080999FE:
	mov r1, sl
	ldrb r0, [r1, #0]
	movs r3, #0xfe
	lsls r3, r3, #1
	add r3, sl
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	mov r2, sl
	ldrh r1, [r2, #2]
	ldr r0, _08099A44
	add r0, sl
	strh r1, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	add r1, sl
	movs r0, #0xff
	strb r0, [r1, #0]
	bl sub_08097FE4
	bl sub_08097A4C
	movs r3, #0
	str r3, [sp, #0xbc]
	movs r4, #0
	str r4, [sp, #0xac]
	bl sub_08067C18
	b _08099A4C
	.2byte 0x0000
_08099A44: .4byte 0x00000202
_08099A48:
	bl sub_080003F0
_08099A4C:
	bl sub_08067C08
	cmp r0, #0
	beq _08099A48
	bl sub_08067BF8
	b _08099F74
_08099A5A:
	mov r6, sl
	ldrh r0, [r6, #0xc]
	cmp r0, #0xa
	bne _08099A6C
	ldr r7, [sp, #0x9c]
	cmp r7, #0
	bne _08099A6C
	movs r0, #8
	str r0, [sp, #0x9c]
_08099A6C:
	bl sub_08058DB0
	add r7, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	cmp r0, #0
	beq _08099A7C
	b _08099CDA
_08099A7C:
	mov r0, sl
	bl sub_0801C8F0
	ldr r0, _08099A9C
	add r0, sl
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #4
	bls _08099A90
	b _08099CDA
_08099A90:
	lsls r0, r0, #2
	ldr r1, _08099AA0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08099A9C: .4byte 0x000001FD
_08099AA0: .4byte _08099AA4
_08099AA4:
	.4byte _08099AB8
_08099AA8: .4byte _08099AE8
_08099AAC: .4byte _08099B1C
_08099AB0: .4byte _08099BDC
_08099AB4: .4byte _08099CA4
_08099AB8:
	movs r0, #0
	mov r1, sl
	strh r0, [r1, #0xc]
	bl sub_08067C08
	add r7, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	cmp r0, #0
	bne _08099ACE
	b _08099CDA
_08099ACE:
	movs r0, #0xff
	lsls r0, r0, #1
	add r0, sl
	ldrb r1, [r0, #0]
	ldr r0, _08099AE4
	add r0, sl
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _08099CDA
	.2byte 0x0000
_08099AE4: .4byte 0x000001FD
_08099AE8:
	movs r2, #0
	str r2, [sp, #0x8c]
	bl sub_08056F78
	add r7, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	cmp r0, #0
	bne _08099AFC
	b _08099CDA
_08099AFC:
	movs r1, #0xff
	lsls r1, r1, #1
	add r1, sl
	movs r0, #3
	strb r0, [r1, #0]
	ldr r1, _08099B18
	add r1, sl
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	movs r3, #0
	str r3, [sp, #0xa8]
	b _08099CDA
_08099B18: .4byte 0x000001FD
_08099B1C:
	movs r4, #1
	str r4, [sp, #0x8c]
	add r6, sp, #0x8c
	ldrh r7, [r6, #0]
	mov r6, sl
	strh r7, [r6, #0xc]
	movs r0, #0
	bl sub_08096594
	movs r3, #0xfe
	lsls r3, r3, #1
	add r3, sl
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _08099BA0
	adds r1, r1, r0
	mov r0, sl
	ldr r2, [sp, #0x84]
	movs r3, #0x30
	bl sub_08097A74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08099BA8
	ldr r1, [sp, #0xa8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa8]
	add r7, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	ldr r0, [sp, #0xa4]
	cmp r0, r1
	blo _08099B76
	b _08099CDA
_08099B76:
	movs r0, #0xff
	lsls r0, r0, #1
	add r0, sl
	movs r1, #4
	strb r1, [r0, #0]
	ldr r0, _08099BA4
	add r0, sl
	strb r4, [r0, #0]
	movs r1, #0
	str r1, [sp, #0xb8]
	movs r2, #0
	str r2, [sp, #0xa8]
	movs r3, #0
	str r3, [sp, #0xac]
	bl sub_08067C18
	movs r0, #0
	bl sub_08097A38
	b _08099CDA
	.2byte 0x0000
_08099BA0: .4byte gUnk_03003CE0
_08099BA4: .4byte 0x000001FD
_08099BA8:
	movs r0, #0xff
	lsls r0, r0, #1
	add r0, sl
	movs r1, #4
	strb r1, [r0, #0]
	ldr r0, _08099BD8
	add r0, sl
	strb r4, [r0, #0]
	movs r4, #0
	str r4, [sp, #0xb8]
	movs r6, #0
	str r6, [sp, #0xa8]
	movs r7, #0
	str r7, [sp, #0xac]
	bl sub_08067C18
	movs r0, #0
	bl sub_08097A38
	add r7, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	b _08099CDA
	.2byte 0x0000
_08099BD8: .4byte 0x000001FD
_08099BDC:
	movs r0, #2
	str r0, [sp, #0x8c]
	mov r1, sl
	strh r0, [r1, #0xc]
	ldr r2, [sp, #0xc8]
	ldrh r0, [r2, #0]
	cmp r0, #2
	bne _08099C10
	ldr r3, [sp, #0xcc]
	ldrh r0, [r3, #0]
	cmp r0, #0
	bne _08099C10
	movs r0, #0xac
	bl sub_0805865C
	ldr r4, [sp, #0xb8]
	cmp r4, #0
	bne _08099C0A
	bl sub_0809A5E0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xb8]
_08099C0A:
	movs r0, #0x3c
	bl sub_08097CA8
_08099C10:
	mov r0, sl
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08099C2E
	ldr r1, [sp, #0xac]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
	add r7, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	cmp r1, #0x3b
	bls _08099CDA
_08099C2E:
	movs r6, #0
	str r6, [sp, #0xac]
	bl sub_08002164
	adds r5, r0, #0
	cmp r5, #1
	bne _08099C62
	movs r0, #0
	bl sub_0809AE88
	movs r0, #1
	bl sub_0809AE88
	movs r0, #2
	bl sub_0809AE88
	movs r0, #3
	bl sub_0809AE88
	movs r0, #4
	bl sub_0809AE88
	add r7, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	b _08099C86
_08099C62:
	movs r1, #0
	add r7, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	ldr r0, [sp, #0xac]
	cmp r0, r5
	bhs _08099C86
_08099C70:
	lsls r4, r1, #0x10
	lsrs r0, r4, #0x10
	bl sub_0809AE88
	movs r1, #0x80
	lsls r1, r1, #9
	adds r4, r4, r1
	lsrs r1, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r5
	blo _08099C70
_08099C86:
	ldr r1, _08099CA0
	add r1, sl
	movs r0, #1
	strb r0, [r1, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	add r1, sl
	movs r0, #5
	strb r0, [r1, #0]
	bl sub_08067C18
	b _08099CDA
	.2byte 0x0000
_08099CA0: .4byte 0x000001FD
_08099CA4:
	movs r2, #0
	str r2, [sp, #0x8c]
	mov r3, sl
	strh r2, [r3, #0xc]
	ldr r1, [sp, #0xac]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
	add r7, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	cmp r1, #0xb4
	bls _08099CDA
	movs r4, #0
	str r4, [sp, #0xa8]
	ldr r1, _08099CEC
	add r1, sl
	movs r0, #1
	strb r0, [r1, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	add r1, sl
	movs r0, #3
	strb r0, [r1, #0]
	bl sub_08067C18
_08099CDA:
	ldr r0, [sp, #0x8c]
	cmp r0, #1
	beq _08099D04
	cmp r0, #1
	bgt _08099CF0
	cmp r0, #0
	beq _08099CF8
	b _08099D34
	.2byte 0x0000
_08099CEC: .4byte 0x000001FD
_08099CF0:
	ldr r1, [sp, #0x8c]
	cmp r1, #2
	beq _08099D1E
	b _08099D34
_08099CF8:
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x7c]
	mov r3, sl
	ldrh r0, [r3, #8]
	b _08099D10
_08099D04:
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x7c]
	mov r3, sl
	ldrh r0, [r3, #8]
	adds r0, #8
_08099D10:
	ldr r4, [sp, #0xc4]
	strh r0, [r4, #0]
	movs r0, #1
	str r0, [sp, #0x98]
	movs r1, #0x18
	str r1, [sp, #0xb0]
	b _08099D34
_08099D1E:
	mov r2, sp
	adds r2, #0x44
	str r2, [sp, #0x7c]
	mov r3, sl
	ldrh r0, [r3, #8]
	ldr r4, [sp, #0xc4]
	strh r0, [r4, #0]
	movs r0, #8
	str r0, [sp, #0xb0]
	movs r1, #0
	str r1, [sp, #0x98]
_08099D34:
	ldr r0, _08099D90
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r3, [sp, #0x90]
	ldrh r4, [r0, #0]
	cmp r3, r4
	bne _08099D4C
	ldr r1, [sp, #0x94]
	ldr r3, [sp, #0x8c]
	cmp r1, r3
	beq _08099D60
_08099D4C:
	ldr r4, [sp, #0x8c]
	str r4, [sp, #0x94]
	ldrh r0, [r0, #0]
	str r0, [sp, #0x90]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_08099D60:
	ldr r1, _08099D94
	ldrh r0, [r1, #0]
	ldr r2, [sp, #0x7c]
	strb r0, [r2, #0x1c]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r3, [sp, #0xd0]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r4, [sp, #0x7c]
	ldr r1, [r4, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08099D98
	bl sub_08097FF8
	b _08099DA8
_08099D90: .4byte gUnk_030002DC
_08099D94: .4byte gUnk_030002E0
_08099D98:
	mov r1, sl
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_08099DA8:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _08099DCE
	ldr r2, [sp, #0xc4]
	ldrh r1, [r2, #0]
	ldr r3, [sp, #0x98]
	str r3, [sp, #0]
	ldr r0, [sp, #0x7c]
	ldr r2, [sp, #0xc8]
	ldr r3, [sp, #0xcc]
	bl sub_08065370
	mov r1, sl
	adds r1, #0x6e
	strh r0, [r1, #0]
_08099DCE:
	mov r4, sl
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r9, r7
	str r6, [sp, #0xc0]
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	mov r2, r9
	adds r3, r6, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x9c]
	cmp r0, #0
	beq _08099E6E
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x9c]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08099EE2
	bl sub_0800CCCC
	cmp r0, #0
	bne _08099EE2
	bl sub_0800CC98
	cmp r0, #0
	bne _08099EE2
	bl sub_0800CD34
	cmp r0, #0
	bne _08099EE2
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0xc0]
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r6, [sp, #0xc4]
	ldrh r2, [r6, #0]
	ldr r7, [sp, #0xc8]
	ldrh r3, [r7, #0]
	mov r4, r8
	str r4, [sp, #0]
	ldr r5, [sp, #0x7c]
	adds r5, #0x1c
	str r5, [sp, #4]
	ldr r6, [sp, #0x7c]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	mov r7, r9
	movs r1, #0
	ldrsh r0, [r7, r1]
	ldr r2, [sp, #0xc0]
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r1, #1
	mov r4, r8
	str r4, [sp, #0]
	str r5, [sp, #4]
	ldr r2, [r6, #8]
	str r2, [sp, #8]
	ldr r2, [r6, #0]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xb0]
	movs r3, #0
	bl sub_08007870
	b _08099EE2
_08099E6E:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08099EE2
	bl sub_0800CC98
	cmp r0, #0
	bne _08099EE2
	bl sub_0800CD34
	cmp r0, #0
	bne _08099EE2
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0xc4]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0xc8]
	ldrh r4, [r4, #0]
	mov ip, r4
	mov r3, r8
	str r3, [sp, #0]
	ldr r5, [sp, #0x7c]
	adds r5, #0x1c
	str r5, [sp, #4]
	ldr r4, [sp, #0x7c]
	ldr r4, [r4, #8]
	str r4, [sp, #8]
	ldr r3, [sp, #0x7c]
	ldr r3, [r3, #0]
	str r3, [sp, #0xc]
	mov r3, ip
	bl sub_08007870
	ldr r0, _08099F48
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08099EE2
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r7, #0
	ldrsh r1, [r6, r7]
	subs r1, #1
	mov r2, r8
	str r2, [sp, #0]
	str r5, [sp, #4]
	ldr r3, [sp, #0x7c]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3, #0]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xb0]
	movs r3, #0
	bl sub_08007870
_08099EE2:
	mov r4, sl
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _08099EFA
	ldr r6, [sp, #0x88]
	cmp r6, r0
	beq _08099EFA
	str r0, [sp, #0x88]
	movs r7, #0xa
	str r7, [sp, #0xa0]
	movs r0, #0
	str r0, [sp, #0xb4]
_08099EFA:
	ldr r1, [sp, #0xa0]
	cmp r1, #0
	beq _08099F50
	bl sub_0800CC98
	cmp r0, #0
	bne _08099F26
	bl sub_0800CCCC
	cmp r0, #0
	bne _08099F26
	bl sub_0800CD34
	cmp r0, #0
	bne _08099F26
	ldr r3, [sp, #0xb4]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	ldr r1, [sp, #0x88]
	bl sub_0801A120
_08099F26:
	movs r0, #2
	ldr r4, [sp, #0xa0]
	ands r0, r4
	cmp r0, #0
	beq _08099F3C
	ldr r6, [sp, #0xb4]
	lsls r0, r6, #0x10
	ldr r7, _08099F4C
	adds r0, r0, r7
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb4]
_08099F3C:
	ldr r0, [sp, #0xa0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	b _08099F5A
_08099F48: .4byte gUnk_03002344
_08099F4C: .4byte 0xFFFF0000
_08099F50:
	movs r0, #0
	str r0, [sp, #0x88]
	ldr r1, [sp, #0xa0]
	mov r2, sl
	str r1, [r2, #0x4c]
_08099F5A:
	mov r0, sl
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08099F6A
	movs r3, #1
	str r3, [sp, #0xbc]
_08099F6A:
	bl sub_080003F0
	ldr r4, [sp, #0xbc]
	cmp r4, #0
	bne _08099F86
_08099F74:
	bl sub_0800CB78
	cmp r0, #0
	bne _08099F86
	bl sub_08056E90
	cmp r0, #0
	bne _08099F86
	b _08099A5A
_08099F86:
	ldr r0, _0809A120
	movs r4, #0
	str r4, [r0, #0]
	bl sub_080020F4
	ldr r1, _0809A124
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_08097C6C
	bl sub_0809AE50
	mov r6, sp
	adds r6, #0x10
	str r6, [sp, #0x7c]
	ldr r1, _0809A128
	ldr r2, [r1, #0]
	adds r0, r2, #0
	adds r0, #0x6c
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	ldr r0, _0809A12C
	ldrh r0, [r0, #0]
	strb r0, [r6, #0x1c]
	movs r7, #0
	str r7, [sp, #0xb4]
	movs r0, #0xa
	str r0, [sp, #0xa0]
	mov r9, r1
_08099FD4:
	bl sub_080020F4
	ldr r2, _0809A124
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809A0DA
	bl sub_0800CC98
	cmp r0, #0
	bne _0809A0DA
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _0809A0DA
	ldr r0, _0809A12C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0xd0]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r6, [sp, #0x7c]
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r7, r9
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r0, #1
	str r0, [sp, #0]
	ldr r0, [sp, #0x7c]
	movs r1, #0
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
	add r5, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	ldr r7, [sp, #0x7c]
	adds r7, #0x1c
	str r7, [sp, #0xd4]
	str r7, [sp, #4]
	ldr r7, [sp, #0x7c]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [r7, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, _0809A130
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809A0CC
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, #1
	mov r4, r8
	str r4, [sp, #0]
	ldr r6, [sp, #0xd4]
	str r6, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7, #0]
	str r2, [sp, #0xc]
	movs r2, #0x18
	movs r3, #0
	bl sub_08007870
_0809A0CC:
	ldr r7, [sp, #0xb4]
	lsls r2, r7, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	ldr r1, [sp, #0x88]
	bl sub_0801A120
_0809A0DA:
	movs r0, #2
	ldr r1, [sp, #0xa0]
	ands r0, r1
	cmp r0, #0
	beq _0809A0F0
	ldr r2, [sp, #0xb4]
	lsls r0, r2, #0x10
	ldr r3, _0809A134
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb4]
_0809A0F0:
	bl sub_080003F0
	ldr r0, [sp, #0xa0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	ldr r0, _0809A138
	ldr r4, [sp, #0xa0]
	cmp r4, r0
	beq _0809A108
	b _08099FD4
_0809A108:
	bl sub_080683CC
	mov r6, sl
	ldrh r0, [r6, #2]
	bl sub_08067CA8
	ldr r0, _0809A13C
	bl sub_08068330
	ldr r7, _0809A128
	mov sl, r7
	b _0809A23E
_0809A120: .4byte gUnk_030056FC
_0809A124: .4byte gUnk_03003CE0
_0809A128: .4byte gUnk_030002DC
_0809A12C: .4byte gUnk_030002E0
_0809A130: .4byte gUnk_03002344
_0809A134: .4byte 0xFFFF0000
_0809A138: .4byte 0x0000FFFF
_0809A13C: .4byte 0xDEADFACE
_0809A140:
	bl sub_080020F4
	ldr r2, _0809A258
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r2, #1
	mov r9, r2
	orrs r0, r2
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809A23A
	bl sub_0800CC98
	cmp r0, #0
	bne _0809A23A
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _0809A23A
	ldr r0, _0809A25C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0xd0]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r6, [sp, #0x7c]
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r7, sl
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	mov r0, r9
	str r0, [sp, #0]
	ldr r0, [sp, #0x7c]
	movs r1, #0
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
	add r5, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	ldr r7, [sp, #0x7c]
	adds r7, #0x1c
	str r7, [sp, #0xd4]
	str r7, [sp, #4]
	ldr r7, [sp, #0x7c]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [r7, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, _0809A260
	ldr r0, [r0, #0]
	mov r1, r9
	ands r0, r1
	cmp r0, #0
	beq _0809A23A
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, #1
	mov r4, r8
	str r4, [sp, #0]
	ldr r6, [sp, #0xd4]
	str r6, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7, #0]
	str r2, [sp, #0xc]
	movs r2, #0x18
	movs r3, #0
	bl sub_08007870
_0809A23A:
	bl sub_080003F0
_0809A23E:
	ldr r0, _0809A264
	bl sub_080682B8
	cmp r0, #0
	bne _0809A24A
	b _0809A140
_0809A24A:
	ldr r0, _0809A264
	bl sub_08065E38
	ldr r7, _0809A268
	mov sl, r7
	b _0809A36A
	.2byte 0x0000
_0809A258: .4byte gUnk_03003CE0
_0809A25C: .4byte gUnk_030002E0
_0809A260: .4byte gUnk_03002344
_0809A264: .4byte 0xDEADFACE
_0809A268: .4byte gUnk_030002DC
_0809A26C:
	bl sub_080020F4
	ldr r2, _0809A3B8
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r2, #1
	mov r9, r2
	orrs r0, r2
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809A366
	bl sub_0800CC98
	cmp r0, #0
	bne _0809A366
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _0809A366
	ldr r0, _0809A3BC
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0xd0]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r6, [sp, #0x7c]
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r7, sl
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	mov r0, r9
	str r0, [sp, #0]
	ldr r0, [sp, #0x7c]
	movs r1, #0
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
	add r5, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	ldr r7, [sp, #0x7c]
	adds r7, #0x1c
	str r7, [sp, #0xd4]
	str r7, [sp, #4]
	ldr r7, [sp, #0x7c]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [r7, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, _0809A3C0
	ldr r0, [r0, #0]
	mov r1, r9
	ands r0, r1
	cmp r0, #0
	beq _0809A366
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, #1
	mov r4, r8
	str r4, [sp, #0]
	ldr r6, [sp, #0xd4]
	str r6, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7, #0]
	str r2, [sp, #0xc]
	movs r2, #0x18
	movs r3, #0
	bl sub_08007870
_0809A366:
	bl sub_080003F0
_0809A36A:
	bl sub_08058DB0
	cmp r0, #0
	beq _0809A374
	b _0809A26C
_0809A374:
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _0809A3B8
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
	ldr r0, _0809A3C4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _0809A3C8
	ldr r1, [r1, #0]
	movs r7, #0xe4
	lsls r7, r7, #3
	adds r1, r1, r7
	str r0, [r1, #0]
	ldr r0, _0809A3CC
	mov sl, r0
	b _0809A4CE
_0809A3B8: .4byte gUnk_03003CE0
_0809A3BC: .4byte gUnk_030002E0
_0809A3C0: .4byte gUnk_03002344
_0809A3C4: .4byte 0x0014003C
_0809A3C8: .4byte gUnk_03005CF4
_0809A3CC: .4byte gUnk_030002DC
_0809A3D0:
	bl sub_080020F4
	ldr r2, _0809A5A0
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r2, #1
	mov r9, r2
	orrs r0, r2
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809A4CA
	bl sub_0800CC98
	cmp r0, #0
	bne _0809A4CA
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _0809A4CA
	ldr r0, _0809A5A4
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0xd0]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r6, [sp, #0x7c]
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r7, sl
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	mov r0, r9
	str r0, [sp, #0]
	ldr r0, [sp, #0x7c]
	movs r1, #0
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
	add r5, sp, #0x78
	mov r6, sp
	adds r6, #0x7a
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	ldr r7, [sp, #0x7c]
	adds r7, #0x1c
	str r7, [sp, #0xd4]
	str r7, [sp, #4]
	ldr r7, [sp, #0x7c]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [r7, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, _0809A5A8
	ldr r0, [r0, #0]
	mov r1, r9
	ands r0, r1
	cmp r0, #0
	beq _0809A4CA
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	subs r1, #1
	mov r4, r8
	str r4, [sp, #0]
	ldr r6, [sp, #0xd4]
	str r6, [sp, #4]
	ldr r2, [r7, #8]
	str r2, [sp, #8]
	ldr r2, [r7, #0]
	str r2, [sp, #0xc]
	movs r2, #0x18
	movs r3, #0
	bl sub_08007870
_0809A4CA:
	bl sub_080003F0
_0809A4CE:
	ldr r0, _0809A5AC
	ldr r0, [r0, #0]
	movs r7, #0xe4
	lsls r7, r7, #3
	adds r0, r0, r7
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	bne _0809A4E4
	b _0809A3D0
_0809A4E4:
	bl sub_080020F4
	ldr r4, _0809A5A0
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
	movs r0, #0xd
	bl sub_08058688
	ldr r6, _0809A5B0
	ldr r0, [r6, #0]
	ldr r1, [sp, #0xd0]
	ldrh r2, [r1, #0]
	ldr r1, _0809A5A4
	ldrh r3, [r1, #0]
	ldr r1, [sp, #0x7c]
	bl sub_080970CC
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0809A57A
	ldr r0, [r6, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0809A57A
	ldr r0, _0809A5B4
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x80]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r2, #0x1d
	str r2, [sp, #0xb4]
	movs r5, #1
	negs r5, r5
_0809A54A:
	ldr r0, _0809A5B0
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r3, [sp, #0xb4]
	lsls r0, r3, #0x10
	ldr r6, _0809A5B8
	adds r0, r0, r6
	lsrs r7, r0, #0x10
	str r7, [sp, #0xb4]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _0809A54A
	ldr r0, _0809A5B4
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_0809A57A:
	movs r0, #0x6f
	str r0, [sp, #0xb4]
	movs r4, #1
	negs r4, r4
_0809A582:
	bl sub_080003F0
	ldr r1, [sp, #0xb4]
	lsls r0, r1, #0x10
	ldr r2, _0809A5B8
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0xb4]
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _0809A582
	bl sub_08067C18
	b _0809A5C0
	.2byte 0x0000
_0809A5A0: .4byte gUnk_03003CE0
_0809A5A4: .4byte gUnk_030002E0
_0809A5A8: .4byte gUnk_03002344
_0809A5AC: .4byte gUnk_03005CF4
_0809A5B0: .4byte gUnk_030002DC
_0809A5B4: .4byte gUnk_030034E0
_0809A5B8: .4byte 0xFFFF0000
_0809A5BC:
	bl sub_080003F0
_0809A5C0:
	bl sub_08067C08
	cmp r0, #0
	beq _0809A5BC
	bl sub_08067BF8
	bl sub_08056E24
_0809A5D0:
	add sp, #0xd8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08099838
