	thumb_func_start sub_080B4C34
sub_080B4C34: @ 0x080B4C34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x94
	mov sl, r0
	ldr r5, _080B4CB4
	str r0, [r5, #0]
	movs r0, #0x81
	lsls r0, r0, #2
	add r0, sl
	str r0, [sp, #0x58]
	ldr r1, _080B4CB8
	mov r0, sl
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0x58]
	bl sub_08019F60
	ldr r0, [r5, #0]
	bl sub_0801A0A4
	ldr r4, _080B4CBC
	movs r0, #0xb6
	lsls r0, r0, #2
	add r0, sl
	ldrh r0, [r0, #0]
	adds r0, #0x64
	ldr r1, _080B4CC0
	add r1, sl
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080B4CC4
	cmp r1, r0
	bne _080B4CD8
	adds r4, r5, #0
	ldr r5, _080B4CC8
	adds r6, r1, #0
_080B4C8C:
	ldr r0, [r4, #0]
	movs r1, #0xb
	strh r1, [r0, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _080B4CA2
	bl sub_08056E90
	cmp r0, #0
	beq _080B4CCC
_080B4CA2:
	ldr r0, [r4, #0]
	movs r1, #1
	ldrh r0, [r0, #0]
	lsls r1, r0
	ldr r0, [r5, #0]
	bics r0, r1
	str r0, [r5, #0]
	bl _080B5B80
_080B4CB4: .4byte gUnk_030007DC
_080B4CB8: .4byte gUnk_084ABA10
_080B4CBC: .4byte gUnk_030007E0
_080B4CC0: .4byte 0x000002DA
_080B4CC4: .4byte 0x0000FFFF
_080B4CC8: .4byte gUnk_030056FC
_080B4CCC:
	bl sub_080003F0
	ldr r0, _080B4E18
	ldrh r0, [r0, #0]
	cmp r0, r6
	beq _080B4C8C
_080B4CD8:
	ldr r1, _080B4E1C
	ldr r4, _080B4E18
	ldrh r2, [r4, #0]
	movs r3, #1
	negs r3, r3
	movs r5, #1
	str r5, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r4, #0]
	strb r0, [r1, #0x1c]
	movs r1, #0
	str r1, [sp, #0x74]
	movs r2, #0
	str r2, [sp, #0x8c]
	movs r3, #0
	str r3, [sp, #0x88]
	movs r6, #0
	str r6, [sp, #0x84]
	ldr r3, _080B4E20
	ldr r4, [r3, #0]
	adds r1, r4, #0
	adds r1, #0x68
	movs r0, #0xc
	strh r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r6, [r0, #0]
	subs r0, #2
	add r6, sp, #0x84
	ldrh r6, [r6, #0]
	strh r6, [r0, #0]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x50]
	ldr r1, [r4, #0x18]
	str r1, [sp, #0x54]
	ldr r0, [sp, #0x58]
	adds r0, #0x27
	strb r2, [r0, #0]
	ldr r2, [sp, #0x58]
	movs r6, #6
	ldrsh r1, [r2, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r2, #0xeb
	lsls r2, r2, #1
	adds r1, r4, r2
	strh r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #0x5c
	strh r0, [r1, #0]
	ldr r6, [sp, #0x58]
	movs r1, #4
	ldrsh r0, [r6, r1]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r2, #2
	adds r1, r4, r2
	strh r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	add r6, sp, #0x84
	ldrh r6, [r6, #0]
	strh r6, [r4, #0xc]
	movs r0, #0
	str r0, [sp, #0x6c]
	movs r1, #0
	str r1, [sp, #0x70]
	adds r2, #0x5a
	adds r0, r4, r2
	ldrb r0, [r0, #0]
	str r0, [sp, #0x7c]
	ldr r6, _080B4E24
	adds r0, r4, r6
	ldrb r0, [r0, #0]
	str r0, [sp, #0x80]
	str r5, [r4, #0x50]
	ldr r0, [sp, #0x58]
	adds r0, #0xd6
	str r0, [sp, #0x90]
	adds r7, r3, #0
	subs r2, #0xe2
	mov r8, r2
	ldr r6, _080B4E28
	movs r5, #0
_080B4D8C:
	movs r2, #0
	lsls r4, r1, #0x10
	asrs r0, r4, #0x10
	mov r3, r8
	muls r3, r0, r3
_080B4D96:
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
	ble _080B4D96
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080B4D8C
	ldr r0, [r7, #0]
	ldr r6, _080B4E2C
	adds r0, r0, r6
	movs r1, #3
	strb r1, [r0, #0]
	ldr r0, [r7, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0, #0]
	ldr r2, [r7, #0]
	ldrb r0, [r2, #0]
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r2, r2, r3
	movs r1, #0xf
	ands r1, r0
	ldrb r3, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r0, [r7, #0]
	ldrh r2, [r0, #2]
	adds r6, #5
	adds r1, r0, r6
	strh r2, [r1, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #0]
	bl sub_08097FE4
	bl sub_08097A4C
	bl sub_080B640C
	bl sub_080B63A0
	bl sub_080B63BC
	bl sub_08067C18
	b _080B4E34
_080B4E18: .4byte gUnk_030007E0
_080B4E1C: .4byte 0x00050015
_080B4E20: .4byte gUnk_030007DC
_080B4E24: .4byte 0x0000022F
_080B4E28: .4byte gUnk_03003DC4
_080B4E2C: .4byte 0x000001FD
_080B4E30:
	bl sub_080003F0
_080B4E34:
	bl sub_08067C08
	cmp r0, #0
	beq _080B4E30
	bl sub_08067BF8
	bl sub_0806849C
	bl _080B5726
_080B4E48:
	mov r2, sl
	ldrh r0, [r2, #0xc]
	cmp r0, #0xa
	bne _080B4E5A
	ldr r3, [sp, #0x6c]
	cmp r3, #0
	bne _080B4E5A
	movs r6, #8
	str r6, [sp, #0x6c]
_080B4E5A:
	bl sub_08058DB0
	add r6, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	cmp r0, #0
	beq _080B4E6A
	b _080B5564
_080B4E6A:
	ldr r4, _080B4E8C
	ldr r0, [r4, #0]
	bl sub_0801C8F0
	ldr r0, [r4, #0]
	ldr r1, _080B4E90
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #0xf
	bls _080B4E82
	b _080B5518
_080B4E82:
	lsls r0, r0, #2
	ldr r1, _080B4E94
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080B4E8C: .4byte gUnk_030007DC
_080B4E90: .4byte 0x000001FD
_080B4E94: .4byte _080B4E98
_080B4E98:
	.4byte _080B4ED8
_080B4E9C: .4byte _080B4F10
_080B4EA0: .4byte _080B4F54
_080B4EA4: .4byte _080B4F90
_080B4EA8: .4byte _080B5020
_080B4EAC: .4byte _080B51A0
_080B4EB0: .4byte _080B5518
_080B4EB4: .4byte _080B5518
_080B4EB8: .4byte _080B5440
_080B4EBC: .4byte _080B524C
_080B4EC0: .4byte _080B5350
_080B4EC4: .4byte _080B5518
_080B4EC8: .4byte _080B5398
_080B4ECC: .4byte _080B540C
_080B4ED0: .4byte _080B5518
_080B4ED4: .4byte _080B5490
_080B4ED8:
	ldr r4, _080B4F08
	ldr r0, [r4, #0]
	movs r1, #0
	strh r1, [r0, #0xc]
	bl sub_08067C08
	add r6, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	cmp r0, #0
	bne _080B4EF0
	b _080B5518
_080B4EF0:
	ldr r0, [r4, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r1, [r1, #0]
	ldr r3, _080B4F0C
	adds r0, r0, r3
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _080B5518
	.2byte 0x0000
_080B4F08: .4byte gUnk_030007DC
_080B4F0C: .4byte 0x000001FD
_080B4F10:
	ldr r4, _080B4F4C
	ldr r1, [r4, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	bl sub_08068490
	ldr r1, [r4, #0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	strb r0, [r1, #0]
	ldr r1, [r4, #0]
	adds r2, r1, r2
	ldrb r0, [r2, #0]
	add r6, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	cmp r0, #0xff
	bne _080B4F38
	b _080B5518
_080B4F38:
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xb
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r1, _080B4F50
	adds r0, r0, r1
	b _080B4F7E
	.2byte 0x0000
_080B4F4C: .4byte gUnk_030007DC
_080B4F50: .4byte 0x000001FD
_080B4F54:
	ldr r4, _080B4F88
	ldr r0, [r4, #0]
	movs r1, #0
	strh r1, [r0, #0xc]
	bl sub_08056F78
	add r6, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	cmp r0, #0
	bne _080B4F6C
	b _080B5518
_080B4F6C:
	ldr r0, [r4, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #0xa
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r3, _080B4F8C
	adds r0, r0, r3
_080B4F7E:
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	b _080B5518
_080B4F88: .4byte gUnk_030007DC
_080B4F8C: .4byte 0x000001FD
_080B4F90:
	ldr r4, _080B500C
	ldr r1, [r4, #0]
	movs r5, #0
	movs r3, #0
	movs r7, #1
	movs r0, #1
	strh r0, [r1, #0xc]
	adds r2, r1, #0
	adds r2, #0x68
	ldrh r0, [r2, #0]
	cmp r0, #0
	beq _080B4FBE
	strh r3, [r2, #0]
	adds r0, r1, #0
	adds r0, #0x6c
	strh r3, [r0, #0]
	subs r0, #2
	strh r3, [r0, #0]
	adds r0, #4
	strh r3, [r0, #0]
	ldr r0, _080B5010
	bl sub_0805865C
_080B4FBE:
	movs r6, #0
	str r6, [sp, #0x68]
	ldr r0, [r4, #0]
	bl sub_0801A0B0
	ldr r0, [r4, #0]
	ldr r1, _080B5014
	adds r0, r0, r1
	strb r5, [r0, #0]
	ldr r0, [r4, #0]
	ldr r2, _080B5018
	adds r0, r0, r2
	strb r5, [r0, #0]
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	add r6, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	cmp r0, #0
	bne _080B4FEC
	b _080B5518
_080B4FEC:
	movs r3, #0
	str r3, [sp, #0x74]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x60]
	subs r2, #0x31
	adds r1, r1, r2
	movs r0, #5
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r3, _080B501C
	adds r0, r0, r3
	strb r7, [r0, #0]
	bl sub_08067C18
	b _080B5518
_080B500C: .4byte gUnk_030007DC
_080B5010: .4byte 0x000001A9
_080B5014: .4byte 0x0000022E
_080B5018: .4byte 0x0000022F
_080B501C: .4byte 0x000001FD
_080B5020:
	ldr r4, _080B5080
	ldr r1, [r4, #0]
	movs r0, #1
	strh r0, [r1, #0xc]
	movs r6, #1
	str r6, [sp, #0x68]
	movs r0, #0
	bl sub_08096594
	ldr r3, [r4, #0]
	movs r5, #0xfe
	lsls r5, r5, #1
	adds r3, r3, r5
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	ldr r0, [r4, #0]
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	lsrs r0, r0, #4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080B5084
	adds r2, r2, r0
	subs r1, #4
	adds r0, r2, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #0x48]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x4c]
	ldrh r0, [r2, #0xc]
	cmp r0, #8
	bhi _080B50F4
	lsls r0, r0, #2
	ldr r1, _080B5088
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080B5080: .4byte gUnk_030007DC
_080B5084: .4byte gUnk_03003CE0
_080B5088: .4byte _080B508C
_080B508C:
	.4byte _080B50CE
_080B5090: .4byte _080B50E6
_080B5094: .4byte _080B50C0
_080B5098: .4byte _080B50EE
_080B509C: .4byte _080B50D6
_080B50A0: .4byte _080B50B8
_080B50A4: .4byte _080B50DE
_080B50A8: .4byte _080B50B0
_080B50AC: .4byte _080B50C8
_080B50B0:
	movs r2, #0xb8
	lsls r2, r2, #1
	str r2, [sp, #0x64]
	b _080B50F4
_080B50B8:
	movs r3, #0xb0
	lsls r3, r3, #1
	str r3, [sp, #0x64]
	b _080B50F4
_080B50C0:
	movs r6, #0xb0
	lsls r6, r6, #1
	str r6, [sp, #0x64]
	b _080B50F4
_080B50C8:
	movs r0, #0xb0
	lsls r0, r0, #1
	b _080B50F2
_080B50CE:
	movs r1, #0xb0
	lsls r1, r1, #1
	str r1, [sp, #0x64]
	b _080B50F4
_080B50D6:
	movs r2, #0xa8
	lsls r2, r2, #1
	str r2, [sp, #0x64]
	b _080B50F4
_080B50DE:
	movs r3, #0xa0
	lsls r3, r3, #1
	str r3, [sp, #0x64]
	b _080B50F4
_080B50E6:
	movs r6, #0xa0
	lsls r6, r6, #1
	str r6, [sp, #0x64]
	b _080B50F4
_080B50EE:
	movs r0, #0x98
	lsls r0, r0, #1
_080B50F2:
	str r0, [sp, #0x64]
_080B50F4:
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x60]
	cmp r1, r2
	bge _080B5100
	subs r2, #1
	str r2, [sp, #0x60]
_080B5100:
	ldr r1, [sp, #0x74]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
	cmp r1, #0x95
	bhi _080B5170
	ldr r4, _080B5138
	ldr r0, [r4, #0]
	movs r1, #4
	str r1, [sp, #0]
	movs r1, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x48]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x60]
	bl sub_08097AC0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B513C
	ldr r1, [r4, #0]
	ldrh r0, [r1, #8]
	adds r0, #1
	adds r1, #0x68
	strh r0, [r1, #0]
	b _080B5512
	.2byte 0x0000
_080B5138: .4byte gUnk_030007DC
_080B513C:
	movs r3, #0
	str r3, [sp, #0x74]
	movs r0, #0
	bl sub_08097A38
	ldr r2, [r4, #0]
	ldrh r0, [r2, #8]
	adds r0, #1
	adds r1, r2, #0
	adds r1, #0x68
	strh r0, [r1, #0]
	movs r6, #0xff
	lsls r6, r6, #1
	adds r2, r2, r6
	movs r0, #6
	strb r0, [r2, #0]
	ldr r0, [r4, #0]
	ldr r1, _080B516C
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	b _080B5512
_080B516C: .4byte 0x000001FD
_080B5170:
	movs r2, #0
	str r2, [sp, #0x74]
	movs r0, #0
	bl sub_08097A38
	ldr r2, _080B5198
	ldr r0, [r2, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #6
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldr r6, _080B519C
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	b _080B5512
_080B5198: .4byte gUnk_030007DC
_080B519C: .4byte 0x000001FD
_080B51A0:
	ldr r4, _080B51F4
	ldr r1, [r4, #0]
	movs r3, #0
	strh r3, [r1, #0xc]
	adds r2, r1, #0
	adds r2, #0x68
	ldrh r0, [r2, #0]
	cmp r0, #9
	beq _080B51CC
	movs r0, #9
	strh r0, [r2, #0]
	adds r0, r1, #0
	adds r0, #0x6c
	strh r3, [r0, #0]
	subs r0, #2
	strh r3, [r0, #0]
	adds r0, #4
	strh r3, [r0, #0]
	movs r0, #0xd5
	lsls r0, r0, #1
	bl sub_0805865C
_080B51CC:
	movs r0, #0
	str r0, [sp, #0x68]
	ldr r0, [r4, #0]
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	add r6, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	cmp r0, #0
	bne _080B51E2
	b _080B5518
_080B51E2:
	ldr r1, [sp, #0x8c]
	cmp r1, #7
	beq _080B51F8
	adds r0, r1, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080B51FA
	.2byte 0x0000
_080B51F4: .4byte gUnk_030007DC
_080B51F8:
	movs r0, #0
_080B51FA:
	str r0, [sp, #0x8c]
	movs r2, #0
	str r2, [sp, #0x74]
	ldr r4, _080B523C
	ldr r0, [r4, #0]
	bl sub_0801A0A4
	ldr r0, [r4, #0]
	ldr r3, _080B5240
	adds r0, r0, r3
	add r6, sp, #0x7c
	ldrb r6, [r6, #0]
	strb r6, [r0, #0]
	ldr r0, [r4, #0]
	ldr r1, _080B5244
	adds r0, r0, r1
	add r2, sp, #0x80
	ldrb r2, [r2, #0]
	strb r2, [r0, #0]
	ldr r0, [r4, #0]
	subs r3, #0x30
	adds r0, r0, r3
	movs r1, #9
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r6, _080B5248
	adds r0, r0, r6
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	b _080B5512
	.2byte 0x0000
_080B523C: .4byte gUnk_030007DC
_080B5240: .4byte 0x0000022E
_080B5244: .4byte 0x0000022F
_080B5248: .4byte 0x000001FD
_080B524C:
	ldr r0, _080B5308
	ldr r1, [r0, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	movs r2, #0
	movs r1, #1
	add r6, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	ldr r0, _080B530C
	movs r4, #1
	ldr r3, [r0, #0]
_080B5264:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _080B527C
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r2, r0, #0x10
_080B527C:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080B5264
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _080B532C
	bl sub_08002204
	cmp r0, #1
	bne _080B5310
	bl sub_0800086C
	ldr r3, _080B5308
	mov r8, r3
	ldr r4, [r3, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080B52B6
	negs r0, r0
_080B52B6:
	adds r1, r0, #1
	lsls r1, r1, #4
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r4, r7
	strb r1, [r0, #0]
	bl sub_0800086C
	mov r2, r8
	ldr r1, [r2, #0]
	adds r4, r1, r7
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _080B52E0
	negs r1, r1
_080B52E0:
	movs r0, #0xf
	ands r1, r0
	ldrb r0, [r4, #0]
	orrs r1, r0
	strb r1, [r4, #0]
	mov r3, r8
	ldr r0, [r3, #0]
	adds r0, r0, r7
	ldrb r0, [r0, #0]
	bl sub_08068450
	cmp r0, #1
	bne _080B533A
	mov r1, r8
	ldr r0, [r1, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #2
	b _080B5338
_080B5308: .4byte gUnk_030007DC
_080B530C: .4byte gUnk_030056FC
_080B5310:
	ldr r2, _080B5328
	ldr r0, [r2, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	movs r1, #0xff
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	adds r1, #0xff
	adds r0, r0, r1
	movs r1, #2
	b _080B5338
_080B5328: .4byte gUnk_030007DC
_080B532C:
	ldr r0, _080B5348
	ldr r0, [r0, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #9
_080B5338:
	strb r1, [r0, #0]
_080B533A:
	ldr r1, _080B534C
	add r1, sl
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080B5518
_080B5348: .4byte gUnk_030007DC
_080B534C: .4byte 0x000001FD
_080B5350:
	ldr r4, _080B538C
	ldr r1, [r4, #0]
	movs r5, #9
	movs r0, #9
	strh r0, [r1, #0xc]
	ldr r2, _080B5390
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	ldrb r0, [r1, #0]
	strb r0, [r2, #0]
	movs r0, #0xff
	strb r0, [r1, #0]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl sub_080B6448
	ldr r0, [r4, #0]
	movs r6, #0xff
	lsls r6, r6, #1
	adds r0, r0, r6
	strb r5, [r0, #0]
	ldr r0, [r4, #0]
	ldr r1, _080B5394
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	b _080B5512
_080B538C: .4byte gUnk_030007DC
_080B5390: .4byte gUnk_030007D8
_080B5394: .4byte 0x000001FD
_080B5398:
	ldr r5, _080B5404
	ldr r1, [r5, #0]
	movs r0, #9
	strh r0, [r1, #0xc]
	movs r0, #0
	bl sub_08096594
	ldr r3, [r5, #0]
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r3, r3, r4
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	movs r0, #0
	bl sub_08097A38
	ldr r0, [r5, #0]
	adds r1, r0, r4
	ldrb r1, [r1, #0]
	lsrs r1, r1, #4
	bl sub_08095F10
	ldr r1, [r5, #0]
	adds r2, r1, #0
	adds r2, #0x68
	movs r0, #0xc
	strh r0, [r2, #0]
	movs r2, #1
	str r2, [sp, #0x68]
	ldrh r0, [r1, #0]
	adds r0, #4
	adds r1, r1, r4
	ldrb r2, [r1, #0]
	lsrs r2, r2, #4
	movs r1, #5
	str r1, [sp, #0]
	movs r1, #0xd
	movs r3, #5
	bl sub_0807386C
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x50]
	adds r0, #1
	str r0, [r1, #0x50]
	ldr r3, _080B5408
	adds r1, r1, r3
	movs r0, #0xe
	strb r0, [r1, #0]
	b _080B5512
	.2byte 0x0000
_080B5404: .4byte gUnk_030007DC
_080B5408: .4byte 0x000001FD
_080B540C:
	ldr r3, _080B5438
	ldr r1, [r3, #0]
	movs r4, #9
	movs r0, #9
	strh r0, [r1, #0xc]
	adds r2, r1, #0
	adds r2, #0x68
	movs r0, #0xc
	strh r0, [r2, #0]
	movs r6, #1
	str r6, [sp, #0x68]
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r1, r0
	strb r4, [r1, #0]
	ldr r0, [r3, #0]
	ldr r1, _080B543C
	adds r0, r0, r1
	strb r6, [r0, #0]
	bl sub_08067C18
	b _080B5512
_080B5438: .4byte gUnk_030007DC
_080B543C: .4byte 0x000001FD
_080B5440:
	ldr r3, _080B5488
	ldr r2, [r3, #0]
	movs r0, #0
	strh r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x68
	movs r0, #0xc
	strh r0, [r1, #0]
	movs r6, #1
	str r6, [sp, #0x68]
	ldr r1, [sp, #0x74]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
	add r6, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	cmp r1, #0x5a
	bls _080B5518
	movs r0, #0
	str r0, [sp, #0x74]
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r2, r0
	movs r0, #0x10
	strb r0, [r1, #0]
	ldr r0, [r3, #0]
	ldr r1, _080B548C
	adds r0, r0, r1
	add r2, sp, #0x68
	ldrb r2, [r2, #0]
	strb r2, [r0, #0]
	bl sub_08067C18
	b _080B5518
_080B5488: .4byte gUnk_030007DC
_080B548C: .4byte 0x000001FD
_080B5490:
	ldr r0, _080B54A8
	ldr r1, [r0, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	ldr r3, [sp, #0x88]
	cmp r3, #1
	beq _080B54C2
	cmp r3, #1
	bgt _080B54AC
	cmp r3, #0
	beq _080B54B8
	b _080B54E0
_080B54A8: .4byte gUnk_030007DC
_080B54AC:
	ldr r6, [sp, #0x88]
	cmp r6, #2
	beq _080B54CC
	cmp r6, #3
	beq _080B54D6
	b _080B54E0
_080B54B8:
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #4
	b _080B54DE
_080B54C2:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0xd
	b _080B54DE
_080B54CC:
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #4
	b _080B54DE
_080B54D6:
	movs r6, #0xff
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r0, #0xa
_080B54DE:
	strb r0, [r1, #0]
_080B54E0:
	ldr r0, _080B5500
	ldr r0, [r0, #0]
	ldr r1, _080B5504
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	ldr r2, [sp, #0x88]
	cmp r2, #3
	beq _080B5508
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080B550A
_080B5500: .4byte gUnk_030007DC
_080B5504: .4byte 0x000001FD
_080B5508:
	movs r0, #0
_080B550A:
	str r0, [sp, #0x88]
	movs r3, #0x80
	lsls r3, r3, #2
	str r3, [sp, #0x60]
_080B5512:
	add r6, sp, #0x44
	mov r5, sp
	adds r5, #0x46
_080B5518:
	ldr r0, _080B5548
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080B5560
	ldr r3, _080B554C
	adds r0, r1, r3
	ldrb r0, [r0, #0]
	cmp r0, #4
	beq _080B553A
	cmp r0, #6
	beq _080B553A
	cmp r0, #5
	bne _080B5560
_080B553A:
	ldr r0, [sp, #0x84]
	cmp r0, #0
	bne _080B5550
	ldr r0, [sp, #0x8c]
	bl sub_080B5B90
	b _080B5554
_080B5548: .4byte gUnk_030007DC
_080B554C: .4byte 0x000001FD
_080B5550:
	ldr r0, [sp, #0x84]
	subs r0, #1
_080B5554:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x84]
	bl sub_080B5E64
	b _080B5564
_080B5560:
	movs r1, #0
	str r1, [sp, #0x84]
_080B5564:
	ldr r0, _080B558C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0x90]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080B5590
	bl sub_08097FF8
	b _080B55A2
_080B558C: .4byte gUnk_030007E0
_080B5590:
	ldr r0, _080B5650
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080B55A2:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B55CE
	ldr r4, _080B5650
	ldr r3, [r4, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	ldr r0, [sp, #0x68]
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080B55CE:
	ldr r1, _080B5650
	mov r9, r1
	ldr r1, [r1, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r4, r6, #0
	mov r8, r5
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	mov r3, r8
	bl sub_0800BC08
	ldr r2, [sp, #0x6c]
	cmp r2, #0
	beq _080B5654
	adds r0, r2, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x6c]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080B5694
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B5694
	bl sub_0800CC98
	cmp r0, #0
	bne _080B5694
	bl sub_0800CD34
	cmp r0, #0
	bne _080B5694
	movs r3, #0
	ldrsh r0, [r4, r3]
	mov r6, r8
	movs r2, #0
	ldrsh r1, [r6, r2]
	mov r6, r9
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080B5694
	.2byte 0x0000
_080B5650: .4byte gUnk_030007DC
_080B5654:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B5694
	bl sub_0800CC98
	cmp r0, #0
	bne _080B5694
	bl sub_0800CD34
	cmp r0, #0
	bne _080B5694
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r6, r9
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B5694:
	ldr r0, _080B5700
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _080B56B2
	ldr r1, [sp, #0x5c]
	cmp r1, r0
	beq _080B56B2
	mov r2, sl
	ldr r2, [r2, #0x4c]
	str r2, [sp, #0x5c]
	movs r3, #0xa
	str r3, [sp, #0x70]
	movs r6, #0
	str r6, [sp, #0x78]
_080B56B2:
	ldr r0, [sp, #0x70]
	cmp r0, #0
	beq _080B5708
	bl sub_0800CC98
	cmp r0, #0
	bne _080B56DE
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B56DE
	bl sub_0800CD34
	cmp r0, #0
	bne _080B56DE
	ldr r1, [sp, #0x78]
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl sub_0801A120
_080B56DE:
	movs r0, #2
	ldr r2, [sp, #0x70]
	ands r0, r2
	cmp r0, #0
	beq _080B56F4
	ldr r3, [sp, #0x78]
	lsls r0, r3, #0x10
	ldr r6, _080B5704
	adds r0, r0, r6
	lsrs r0, r0, #0x10
	str r0, [sp, #0x78]
_080B56F4:
	ldr r0, [sp, #0x70]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	b _080B5710
_080B5700: .4byte gUnk_030007DC
_080B5704: .4byte 0xFFFF0000
_080B5708:
	movs r0, #0
	str r0, [sp, #0x5c]
	mov r1, sl
	str r0, [r1, #0x4c]
_080B5710:
	mov r0, sl
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B5722
	bl sub_080003F0
	b _080B573A
_080B5722:
	bl sub_080003F0
_080B5726:
	bl sub_0800CB78
	cmp r0, #0
	bne _080B573A
	bl sub_08056E90
	cmp r0, #0
	bne _080B573A
	bl _080B4E48
_080B573A:
	ldr r2, _080B57B0
	ldr r6, _080B57B4
	ldr r0, [r6, #0]
	movs r4, #1
	adds r1, r4, #0
	ldrh r0, [r0, #0]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	ldr r1, _080B57B8
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	orrs r0, r4
	str r0, [r2, #0]
	bl sub_080B60F4
	ldr r1, _080B57BC
	ldr r5, _080B57C0
	ldrh r2, [r5, #0]
	movs r3, #1
	negs r3, r3
	str r4, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r5, #0]
	movs r2, #0
	strb r0, [r1, #0x1c]
	ldr r3, [r6, #0]
	adds r1, r3, #0
	adds r1, #0x68
	movs r0, #0xc
	strh r0, [r1, #0]
	adds r0, r3, #0
	adds r0, #0x6c
	strh r2, [r0, #0]
	subs r0, #2
	strh r2, [r0, #0]
	bl sub_080683CC
	ldr r0, [r6, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r0, _080B57C4
	bl sub_08068330
	add r2, sp, #0x44
	mov r8, r2
	b _080B5896
	.2byte 0x0000
_080B57B0: .4byte gUnk_030056FC
_080B57B4: .4byte gUnk_030007DC
_080B57B8: .4byte gUnk_03003CE0
_080B57BC: .4byte 0x00050015
_080B57C0: .4byte gUnk_030007E0
_080B57C4: .4byte 0xDEADFACE
_080B57C8:
	bl sub_080020F4
	ldr r2, _080B58B0
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B588E
	bl sub_0800CC98
	cmp r0, #0
	bne _080B588E
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B588E
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B588E
	ldr r0, _080B58B4
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0x90]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x46
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B588E:
	bl sub_080B64A4
	bl sub_080003F0
_080B5896:
	ldr r0, _080B58B8
	bl sub_080682B8
	cmp r0, #0
	beq _080B57C8
	ldr r0, _080B58B8
	bl sub_08065E38
	ldr r6, _080B58BC
	add r0, sp, #0x44
	mov r8, r0
	b _080B598E
	.2byte 0x0000
_080B58B0: .4byte gUnk_03003CE0
_080B58B4: .4byte gUnk_030007E0
_080B58B8: .4byte 0xDEADFACE
_080B58BC: .4byte gUnk_030007DC
_080B58C0:
	bl sub_080020F4
	ldr r2, _080B59DC
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B5986
	bl sub_0800CC98
	cmp r0, #0
	bne _080B5986
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B5986
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B5986
	ldr r0, _080B59E0
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x90]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x46
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B5986:
	bl sub_080B64A4
	bl sub_080003F0
_080B598E:
	bl sub_08058DB0
	cmp r0, #0
	bne _080B58C0
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _080B59DC
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
	ldr r0, _080B59E4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080B59E8
	ldr r1, [r1, #0]
	movs r3, #0xe4
	lsls r3, r3, #3
	adds r1, r1, r3
	str r0, [r1, #0]
	ldr r6, _080B59EC
	add r0, sp, #0x44
	mov r8, r0
	b _080B5ABE
_080B59DC: .4byte gUnk_03003CE0
_080B59E0: .4byte gUnk_030007E0
_080B59E4: .4byte 0x001400A7
_080B59E8: .4byte gUnk_03005CF4
_080B59EC: .4byte gUnk_030007DC
_080B59F0:
	bl sub_080020F4
	ldr r2, _080B5B54
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B5AB6
	bl sub_0800CC98
	cmp r0, #0
	bne _080B5AB6
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B5AB6
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B5AB6
	ldr r0, _080B5B58
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x90]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x46
	str r5, [sp, #0]
	str r5, [sp, #4]
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B5AB6:
	bl sub_080B64A4
	bl sub_080003F0
_080B5ABE:
	ldr r0, _080B5B5C
	ldr r0, [r0, #0]
	movs r3, #0xe4
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	beq _080B59F0
	ldr r4, _080B5B60
	ldr r0, [r4, #0]
	ldr r6, [sp, #0x90]
	ldrh r2, [r6, #0]
	ldr r1, _080B5B58
	ldrh r3, [r1, #0]
	add r1, sp, #0x10
	bl sub_080970CC
	bl sub_080020F4
	ldr r1, _080B5B54
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
	bne _080B5B4E
	ldr r0, [r4, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080B5B4E
	ldr r0, _080B5B64
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x58]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r0, #0x1d
	str r0, [sp, #0x78]
	movs r5, #1
	negs r5, r5
_080B5B1E:
	ldr r0, _080B5B60
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r1, [sp, #0x78]
	lsls r0, r1, #0x10
	ldr r2, _080B5B68
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x78]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080B5B1E
	ldr r0, _080B5B64
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080B5B4E:
	bl sub_08067C18
	b _080B5B70
_080B5B54: .4byte gUnk_03003CE0
_080B5B58: .4byte gUnk_030007E0
_080B5B5C: .4byte gUnk_03005CF4
_080B5B60: .4byte gUnk_030007DC
_080B5B64: .4byte gUnk_030034E0
_080B5B68: .4byte 0xFFFF0000
_080B5B6C:
	bl sub_080003F0
_080B5B70:
	bl sub_08067C08
	cmp r0, #0
	beq _080B5B6C
	bl sub_08067BF8
	bl sub_08056E24
_080B5B80:
	add sp, #0x94
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080B4C34
