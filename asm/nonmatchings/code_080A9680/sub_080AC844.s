	thumb_func_start sub_080AC844
sub_080AC844: @ 0x080AC844
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	adds r6, r0, #0
	ldr r0, _080AC8BC
	str r6, [r0, #0]
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [sp, #0x48]
	ldr r1, _080AC8C0
	adds r0, r6, #0
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0x48]
	bl sub_08019F60
	adds r0, r6, #0
	bl sub_0801A0A4
	ldr r4, _080AC8C4
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r0, [r0, #0]
	ldr r2, _080AC8C8
	adds r1, r6, r2
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080AC8CC
	cmp r1, r0
	bne _080AC8E0
	ldr r4, _080AC8D0
	adds r5, r1, #0
_080AC898:
	movs r0, #0xb
	strh r0, [r6, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _080AC8AC
	bl sub_08056E90
	cmp r0, #0
	beq _080AC8D4
_080AC8AC:
	movs r1, #1
	ldrh r6, [r6, #0]
	lsls r1, r6
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	bl _080AD504
_080AC8BC: .4byte gUnk_03000440
_080AC8C0: .4byte gUnk_084A4C40
_080AC8C4: .4byte gUnk_030004BE
_080AC8C8: .4byte 0x000002DA
_080AC8CC: .4byte 0x0000FFFF
_080AC8D0: .4byte gUnk_030056FC
_080AC8D4:
	bl sub_080003F0
	ldr r0, _080ACA58
	ldrh r0, [r0, #0]
	cmp r0, r5
	beq _080AC898
_080AC8E0:
	ldr r0, _080ACA5C
	ldr r1, _080ACA60
	ldr r2, _080ACA58
	ldrh r2, [r2, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #1
	str r4, [sp, #0]
	bl sub_08065158
	ldr r3, [sp, #0x48]
	movs r5, #6
	ldrsh r0, [r3, r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r2, #0xeb
	lsls r2, r2, #1
	adds r0, r6, r2
	movs r2, #0
	strh r1, [r0, #0]
	adds r0, r6, #0
	adds r0, #0x5c
	strh r1, [r0, #0]
	movs r5, #4
	ldrsh r0, [r3, r5]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0xea
	lsls r3, r3, #1
	adds r1, r6, r3
	strh r0, [r1, #0]
	adds r1, r6, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	adds r3, r6, #0
	adds r3, #0x6c
	strh r2, [r3, #0]
	adds r1, #0xc
	strh r2, [r1, #0]
	adds r0, r6, #0
	adds r0, #0x68
	strh r2, [r0, #0]
	strh r2, [r6, #0xc]
	movs r5, #0
	str r5, [sp, #0x50]
	str r2, [sp, #0x54]
	str r4, [r6, #0x50]
	movs r4, #0
	str r3, [sp, #0x70]
	str r1, [sp, #0x6c]
	str r0, [sp, #0x68]
	ldr r2, _080ACA64
	ldr r3, _080ACA68
	mov sl, r3
	movs r5, #0xa6
	lsls r5, r5, #1
	mov r9, r5
	ldr r0, _080ACA6C
	mov r8, r0
	movs r7, #0
_080AC95C:
	movs r3, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov r5, r9
	muls r5, r0, r5
_080AC966:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r5
	add r0, r8
	str r7, [r0, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _080AC966
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080AC95C
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	str r0, [r2, #0]
	ldr r0, [r6, #0x18]
	asrs r0, r0, #8
	adds r0, #0x10
	str r0, [r2, #4]
	movs r0, #0
	mov r3, sl
	strb r0, [r3, #0]
	movs r4, #1
	adds r5, r2, #0
	adds r7, r5, #4
	mov r8, sl
_080AC9AA:
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	lsls r3, r2, #3
	adds r4, r3, r5
	subs r1, r2, #1
	lsls r1, r1, #3
	adds r0, r1, r5
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	adds r3, r3, r7
	adds r1, r1, r7
	ldr r0, [r1, #0]
	subs r0, #0x10
	str r0, [r3, #0]
	mov r4, r8
	adds r1, r2, r4
	movs r0, #0
	strb r0, [r1, #0]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #4
	ble _080AC9AA
	bl sub_080AE0B8
	movs r0, #0
	bl sub_080AE11C
	movs r0, #1
	bl sub_080AE11C
	movs r0, #2
	bl sub_080AE11C
	movs r0, #3
	bl sub_080AE11C
	bl sub_08097FE4
	bl sub_08097A4C
	movs r2, #0
	movs r4, #1
	strh r4, [r6, #8]
	ldr r5, _080ACA70
	adds r0, r6, r5
	movs r1, #2
	strb r1, [r0, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r6, r3
	strb r1, [r0, #0]
	movs r5, #0
	str r5, [sp, #0x5c]
	ldr r0, _080ACA74
	strb r2, [r0, #0]
	ldr r0, _080ACA78
	strb r2, [r0, #0]
	movs r0, #0
	str r0, [sp, #0x60]
	ldrb r0, [r6, #0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r3, r6, r1
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldrh r1, [r6, #2]
	ldr r2, _080ACA7C
	adds r0, r6, r2
	strh r1, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r6, r3
	movs r0, #0xff
	strb r0, [r1, #0]
	str r5, [sp, #0x64]
	strh r4, [r6, #8]
	bl sub_08067C18
	b _080ACA84
_080ACA58: .4byte gUnk_030004BE
_080ACA5C: .4byte gUnk_03000458
_080ACA60: .4byte 0x0005001F
_080ACA64: .4byte gUnk_03000490
_080ACA68: .4byte gUnk_030004B8
_080ACA6C: .4byte gUnk_03003DC4
_080ACA70: .4byte 0x000001FD
_080ACA74: .4byte gUnk_030004C0
_080ACA78: .4byte gUnk_030004C1
_080ACA7C: .4byte 0x00000202
_080ACA80:
	bl sub_080003F0
_080ACA84:
	bl sub_08067C08
	cmp r0, #0
	beq _080ACA80
	bl sub_08067BF8
	b _080AD0AA
_080ACA92:
	ldr r0, _080ACAA4
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _080ACAA8
	adds r0, r6, #0
	bl sub_0801A0A4
	b _080ACAAE
	.2byte 0x0000
_080ACAA4: .4byte gUnk_030056FC
_080ACAA8:
	adds r0, r6, #0
	bl sub_0801A0B0
_080ACAAE:
	ldrh r0, [r6, #0xc]
	cmp r0, #0xa
	bne _080ACAC4
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _080ACAC4
	ldr r1, _080ACAF8
	movs r0, #1
	strb r0, [r1, #0]
	movs r1, #8
	str r1, [sp, #0x50]
_080ACAC4:
	bl sub_08058DB0
	ldr r2, [sp, #0x48]
	adds r2, #0xd6
	mov r9, r2
	add r7, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	cmp r0, #0
	beq _080ACADA
	b _080ACE16
_080ACADA:
	adds r0, r6, #0
	bl sub_0801C8F0
	ldr r3, _080ACAFC
	adds r0, r6, r3
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #9
	bls _080ACAEE
	b _080ACE16
_080ACAEE:
	lsls r0, r0, #2
	ldr r1, _080ACB00
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080ACAF8: .4byte gUnk_030004C0
_080ACAFC: .4byte 0x000001FD
_080ACB00: .4byte _080ACB04
_080ACB04:
	.4byte _080ACB2C
_080ACB08: .4byte _080ACB60
_080ACB0C: .4byte _080ACE16
_080ACB10: .4byte _080ACE16
_080ACB14: .4byte _080ACB8C
_080ACB18: .4byte _080ACE16
_080ACB1C: .4byte _080ACE16
_080ACB20: .4byte _080ACC90
_080ACB24: .4byte _080ACD08
_080ACB28: .4byte _080ACD9C
_080ACB2C:
	movs r0, #0
	strh r0, [r6, #0xc]
	bl sub_08067C08
	ldr r4, [sp, #0x48]
	adds r4, #0xd6
	mov r9, r4
	add r7, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	cmp r0, #0
	bne _080ACB46
	b _080ACE16
_080ACB46:
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r1, [r0, #0]
	ldr r2, _080ACB5C
	adds r0, r6, r2
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _080ACE16
	.2byte 0x0000
_080ACB5C: .4byte 0x000001FD
_080ACB60:
	bl sub_08056F78
	ldr r3, [sp, #0x48]
	adds r3, #0xd6
	mov r9, r3
	add r7, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	cmp r0, #0
	bne _080ACB76
	b _080ACE16
_080ACB76:
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r6, r4
	movs r0, #5
	strb r0, [r1, #0]
	ldr r0, _080ACB88
	adds r1, r6, r0
	b _080ACD8E
	.2byte 0x0000
_080ACB88: .4byte 0x000001FD
_080ACB8C:
	movs r0, #2
	movs r5, #0
	strh r0, [r6, #0xc]
	ldr r4, _080ACC20
	ldrb r0, [r4, #0]
	mov sl, r4
	cmp r0, #0
	beq _080ACC30
	subs r0, #1
	strb r0, [r4, #0]
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x48]
	adds r1, #0xd6
	mov r9, r1
	add r7, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	cmp r0, #0
	beq _080ACBB4
	b _080ACE16
_080ACBB4:
	movs r3, #0
	movs r4, #1
	ldr r0, _080ACC24
	mov r8, r4
	ldr r1, [r0, #0]
_080ACBBE:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	mov r0, r8
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	beq _080ACBD6
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r3, r0, #0x10
_080ACBD6:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080ACBBE
	cmp r3, #0
	beq _080ACC0A
	movs r4, #0
	ldr r0, _080ACC28
	mov r8, r0
	ldr r3, _080ACC2C
	movs r2, #8
_080ACBF0:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	add r1, r8
	ldr r1, [r1, #0]
	adds r1, r1, r3
	strb r2, [r1, #0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080ACBF0
_080ACC0A:
	movs r0, #0
	mov r1, sl
	strb r0, [r1, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r0, #8
	strb r0, [r1, #0]
	ldr r3, _080ACC2C
	adds r1, r6, r3
	b _080ACD8E
_080ACC20: .4byte gUnk_030004C1
_080ACC24: .4byte gUnk_030056FC
_080ACC28: .4byte gUnk_03000448
_080ACC2C: .4byte 0x000001FD
_080ACC30:
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r6, #0
	bl sub_08095B04
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080ACC62
	ldr r1, _080ACC50
	ldrb r0, [r1, #0]
	cmp r0, #5
	bhi _080ACC54
	adds r0, #1
	strb r0, [r1, #0]
	b _080ACC62
	.2byte 0x0000
_080ACC50: .4byte gUnk_030004C0
_080ACC54:
	strb r5, [r1, #0]
	ldr r0, _080ACC8C
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _080ACC60
	movs r0, #0x5a
_080ACC60:
	strb r0, [r4, #0]
_080ACC62:
	ldr r1, [sp, #0x5c]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x5c]
	ldr r4, [sp, #0x48]
	adds r4, #0xd6
	mov r9, r4
	add r7, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	cmp r1, #0x3c
	bhi _080ACC7E
	b _080ACE16
_080ACC7E:
	movs r0, #0
	str r0, [sp, #0x5c]
	movs r0, #0xe9
	bl sub_0805865C
	b _080ACE16
	.2byte 0x0000
_080ACC8C: .4byte gUnk_030056FC
_080ACC90:
	movs r3, #0
	movs r4, #1
	ldr r1, [sp, #0x48]
	adds r1, #0xd6
	mov r9, r1
	add r7, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	ldr r0, _080ACD00
	mov r8, r4
	ldr r1, [r0, #0]
_080ACCA6:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	mov r0, r8
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	beq _080ACCBE
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r3, r0, #0x10
_080ACCBE:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080ACCA6
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080ACD80
	movs r4, #0
	cmp r4, r0
	bge _080ACCF6
	ldr r3, _080ACD04
	adds r1, r0, #0
_080ACCDC:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, r3
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq _080ACCEA
	b _080ACE16
_080ACCEA:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	blt _080ACCDC
_080ACCF6:
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r6, r4
	movs r0, #9
	b _080ACD88
_080ACD00: .4byte gUnk_030056FC
_080ACD04: .4byte gUnk_030004C4
_080ACD08:
	movs r3, #0
	movs r4, #1
	ldr r5, [sp, #0x48]
	adds r5, #0xd6
	mov r9, r5
	add r7, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	ldr r0, _080ACD78
	mov r8, r4
	ldr r1, [r0, #0]
_080ACD1E:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	mov r0, r8
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	beq _080ACD36
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r3, r0, #0x10
_080ACD36:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080ACD1E
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080ACD80
	movs r4, #0
	cmp r4, r0
	bge _080ACD6C
	ldr r3, _080ACD7C
	adds r1, r0, #0
_080ACD54:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, r3
	ldrb r0, [r0, #0]
	cmp r0, #2
	bne _080ACE16
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	blt _080ACD54
_080ACD6C:
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r6, r4
	movs r0, #0xa
	b _080ACD88
	.2byte 0x0000
_080ACD78: .4byte gUnk_030056FC
_080ACD7C: .4byte gUnk_030004C4
_080ACD80:
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #5
_080ACD88:
	strb r0, [r1, #0]
	ldr r2, _080ACD98
	adds r1, r6, r2
_080ACD8E:
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080ACE16
_080ACD98: .4byte 0x000001FD
_080ACD9C:
	movs r3, #0
	movs r4, #1
	ldr r5, [sp, #0x48]
	adds r5, #0xd6
	mov r9, r5
	add r7, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	ldr r0, _080ACE44
	mov r8, r4
	ldr r1, [r0, #0]
_080ACDB2:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	mov r0, r8
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	beq _080ACDCA
	lsls r0, r3, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r3, r0, #0x10
_080ACDCA:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080ACDB2
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080ACE00
	movs r4, #0
	cmp r4, r0
	bge _080ACE00
	ldr r3, _080ACE48
	adds r1, r0, #0
_080ACDE8:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080ACE16
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	blt _080ACDE8
_080ACE00:
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r6, r4
	movs r0, #5
	strb r0, [r1, #0]
	ldr r0, _080ACE4C
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
_080ACE16:
	ldrh r0, [r6, #8]
	ldr r1, [sp, #0x68]
	strh r0, [r1, #0]
	ldr r2, _080ACE50
	ldr r0, [r6, #0x14]
	asrs r0, r0, #8
	str r0, [r2, #0]
	ldr r0, [r6, #0x18]
	asrs r0, r0, #8
	str r0, [r2, #4]
	ldr r1, _080ACE54
	ldrh r0, [r6, #8]
	strb r0, [r1, #0]
	movs r3, #8
	ldrsh r0, [r6, r3]
	cmp r0, #7
	bhi _080ACEC4
	lsls r0, r0, #2
	ldr r1, _080ACE58
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080ACE44: .4byte gUnk_030056FC
_080ACE48: .4byte gUnk_030004C4
_080ACE4C: .4byte 0x000001FD
_080ACE50: .4byte gUnk_03000490
_080ACE54: .4byte gUnk_030004B8
_080ACE58: .4byte _080ACE5C
_080ACE5C:
	.4byte _080ACEC4
_080ACE60: .4byte _080ACE7C
_080ACE64: .4byte _080ACE82
_080ACE68: .4byte _080ACE8E
_080ACE6C: .4byte _080ACE9A
_080ACE70: .4byte _080ACEA0
_080ACE74: .4byte _080ACEAC
_080ACE78: .4byte _080ACEB8
_080ACE7C:
	ldr r0, [r2, #0]
	adds r0, #4
	b _080ACEBC
_080ACE82:
	ldr r0, [r2, #0]
	adds r0, #0xe
	str r0, [r2, #0]
	ldr r0, [r2, #4]
	adds r0, #8
	b _080ACEC2
_080ACE8E:
	ldr r0, [r2, #0]
	adds r0, #0xe
	str r0, [r2, #0]
	ldr r0, [r2, #4]
	adds r0, #0x10
	b _080ACEC2
_080ACE9A:
	ldr r0, [r2, #4]
	adds r0, #0x10
	b _080ACEC2
_080ACEA0:
	ldr r0, [r2, #0]
	subs r0, #0xe
	str r0, [r2, #0]
	ldr r0, [r2, #4]
	adds r0, #0x10
	b _080ACEC2
_080ACEAC:
	ldr r0, [r2, #0]
	subs r0, #0xe
	str r0, [r2, #0]
	ldr r0, [r2, #4]
	adds r0, #8
	b _080ACEC2
_080ACEB8:
	ldr r0, [r2, #0]
	subs r0, #4
_080ACEBC:
	str r0, [r2, #0]
	ldr r0, [r2, #4]
	adds r0, #4
_080ACEC2:
	str r0, [r2, #4]
_080ACEC4:
	ldr r0, _080ACEF0
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, _080ACEF4
	mov r4, r9
	ldrh r2, [r4, #0]
	lsls r2, r2, #5
	ldr r1, [r1, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080ACEF8
	bl sub_08097FF8
	b _080ACF08
	.2byte 0x0000
_080ACEF0: .4byte gUnk_030004BE
_080ACEF4: .4byte gUnk_03000458
_080ACEF8:
	ldr r1, _080ACFB4
	ldr r0, [r1, #0]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080ACF08:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _080ACFB8
	mov r9, r0
	ldr r0, _080ACFBC
	ldrh r0, [r0, #0]
	mov r1, r9
	strb r0, [r1, #0x1c]
	bl sub_0800CD8C
	cmp r0, #0
	bne _080ACF3A
	ldr r2, [sp, #0x68]
	ldrh r1, [r2, #0]
	movs r0, #1
	str r0, [sp, #0]
	mov r0, r9
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_08065370
	adds r1, r6, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_080ACF3A:
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r4, r7, #0
	mov sl, r5
	movs r3, #0
	str r3, [sp, #0]
	str r3, [sp, #4]
	adds r2, r4, #0
	mov r3, sl
	bl sub_0800BC08
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _080ACFC0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x50]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080AD000
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AD000
	bl sub_0800CC98
	cmp r0, #0
	bne _080AD000
	bl sub_0800CD34
	cmp r0, #0
	bne _080AD000
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x68]
	ldrh r2, [r4, #0]
	ldr r5, [sp, #0x6c]
	ldrh r3, [r5, #0]
	mov r4, r8
	str r4, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080AD000
	.2byte 0x0000
_080ACFB4: .4byte gUnk_03000490
_080ACFB8: .4byte gUnk_03000458
_080ACFBC: .4byte gUnk_030004BE
_080ACFC0:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AD000
	bl sub_0800CC98
	cmp r0, #0
	bne _080AD000
	bl sub_0800CD34
	cmp r0, #0
	bne _080AD000
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x68]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x6c]
	ldrh r3, [r4, #0]
	mov r5, r8
	str r5, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AD000:
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _080AD010
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x60]
	b _080AD020
_080AD010:
	adds r0, r6, #0
	bl sub_080ADE30
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AD020
	movs r1, #0x1e
	str r1, [sp, #0x60]
_080AD020:
	ldr r0, [r6, #0x4c]
	cmp r0, #0
	beq _080AD036
	ldr r2, [sp, #0x4c]
	cmp r2, r0
	beq _080AD036
	str r0, [sp, #0x4c]
	movs r3, #0xa
	str r3, [sp, #0x54]
	movs r4, #0
	str r4, [sp, #0x58]
_080AD036:
	ldr r5, [sp, #0x54]
	cmp r5, #0
	beq _080AD088
	bl sub_0800CC98
	cmp r0, #0
	bne _080AD062
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AD062
	bl sub_0800CD34
	cmp r0, #0
	bne _080AD062
	ldr r0, [sp, #0x58]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	ldr r1, [sp, #0x4c]
	bl sub_0801A120
_080AD062:
	movs r0, #2
	ldr r1, [sp, #0x54]
	ands r0, r1
	cmp r0, #0
	beq _080AD078
	ldr r2, [sp, #0x58]
	lsls r0, r2, #0x10
	ldr r3, _080AD084
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_080AD078:
	ldr r0, [sp, #0x54]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x54]
	b _080AD090
_080AD084: .4byte 0xFFFF0000
_080AD088:
	movs r4, #0
	str r4, [sp, #0x4c]
	ldr r5, [sp, #0x54]
	str r5, [r6, #0x4c]
_080AD090:
	adds r0, r6, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080AD0A0
	movs r0, #1
	str r0, [sp, #0x64]
_080AD0A0:
	bl sub_080003F0
	ldr r1, [sp, #0x64]
	cmp r1, #0
	bne _080AD0BC
_080AD0AA:
	bl sub_0800CB78
	cmp r0, #0
	bne _080AD0BC
	bl sub_08056E90
	cmp r0, #0
	bne _080AD0BC
	b _080ACA92
_080AD0BC:
	ldr r1, _080AD1E4
	movs r0, #0
	str r0, [r1, #0]
	bl sub_080AE0E4
	movs r2, #0
	str r2, [sp, #0x58]
	movs r3, #0xa
	str r3, [sp, #0x54]
	movs r4, #1
	mov sl, r4
_080AD0D2:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AD198
	bl sub_0800CC98
	cmp r0, #0
	bne _080AD198
	bl sub_0800CD34
	adds r7, r0, #0
	cmp r7, #0
	bne _080AD198
	ldr r5, _080AD1E8
	mov r9, r5
	ldr r1, _080AD1EC
	ldrh r0, [r1, #0]
	strb r0, [r5, #0x1c]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x48]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [r5, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, _080AD1F0
	ldr r0, [r1, #0]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, [sp, #0x68]
	ldrh r1, [r0, #0]
	mov r2, sl
	str r2, [sp, #0]
	mov r0, r9
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_08065370
	adds r1, r6, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	str r7, [sp, #0]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x54]
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _080AD18A
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x68]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x6c]
	ldrh r3, [r4, #0]
	mov r5, r8
	str r5, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AD18A:
	ldr r0, [sp, #0x58]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	ldr r1, [sp, #0x4c]
	bl sub_0801A120
_080AD198:
	movs r0, #2
	ldr r1, [sp, #0x54]
	ands r0, r1
	cmp r0, #0
	beq _080AD1AE
	ldr r2, [sp, #0x58]
	lsls r0, r2, #0x10
	ldr r3, _080AD1F4
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
_080AD1AE:
	bl sub_080003F0
	ldr r0, [sp, #0x54]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x54]
	ldr r0, _080AD1F8
	ldr r4, [sp, #0x54]
	cmp r4, r0
	bne _080AD0D2
	bl sub_080683CC
	ldrh r0, [r6, #2]
	bl sub_08067CA8
	ldr r0, _080AD1FC
	bl sub_08068330
	ldr r5, [sp, #0x50]
	mov sl, r5
	mov r0, sl
	movs r1, #1
	ands r0, r1
	mov sl, r0
	b _080AD2C2
	.2byte 0x0000
_080AD1E4: .4byte gUnk_030056FC
_080AD1E8: .4byte gUnk_03000458
_080AD1EC: .4byte gUnk_030004BE
_080AD1F0: .4byte gUnk_03000490
_080AD1F4: .4byte 0xFFFF0000
_080AD1F8: .4byte 0x0000FFFF
_080AD1FC: .4byte 0xDEADFACE
_080AD200:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AD2BE
	bl sub_0800CC98
	cmp r0, #0
	bne _080AD2BE
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AD2BE
	bl sub_0800CD34
	adds r7, r0, #0
	cmp r7, #0
	bne _080AD2BE
	ldr r2, _080AD2DC
	mov r9, r2
	ldr r1, _080AD2E0
	ldrh r0, [r1, #0]
	strb r0, [r2, #0x1c]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x48]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, r9
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, _080AD2E4
	ldr r0, [r1, #0]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r4, [sp, #0x68]
	ldrh r1, [r4, #0]
	movs r5, #1
	str r5, [sp, #0]
	mov r0, r9
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_08065370
	adds r1, r6, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	str r7, [sp, #0]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	mov r0, sl
	cmp r0, #0
	beq _080AD2BE
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x68]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x6c]
	ldrh r3, [r4, #0]
	mov r5, r8
	str r5, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AD2BE:
	bl sub_080003F0
_080AD2C2:
	ldr r0, _080AD2E8
	bl sub_080682B8
	cmp r0, #0
	beq _080AD200
	ldr r0, _080AD2E8
	bl sub_08065E38
	movs r0, #1
	ldr r1, [sp, #0x50]
	ands r1, r0
	mov sl, r1
	b _080AD3AE
_080AD2DC: .4byte gUnk_03000458
_080AD2E0: .4byte gUnk_030004BE
_080AD2E4: .4byte gUnk_03000490
_080AD2E8: .4byte 0xDEADFACE
_080AD2EC:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AD3AA
	bl sub_0800CC98
	cmp r0, #0
	bne _080AD3AA
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AD3AA
	bl sub_0800CD34
	adds r7, r0, #0
	cmp r7, #0
	bne _080AD3AA
	ldr r2, _080AD514
	mov r9, r2
	ldr r1, _080AD518
	ldrh r0, [r1, #0]
	strb r0, [r2, #0x1c]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x48]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, r9
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, _080AD51C
	ldr r0, [r1, #0]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r4, [sp, #0x68]
	ldrh r1, [r4, #0]
	movs r5, #1
	str r5, [sp, #0]
	mov r0, r9
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_08065370
	adds r1, r6, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	str r7, [sp, #0]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	mov r0, sl
	cmp r0, #0
	beq _080AD3AA
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x68]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x6c]
	ldrh r3, [r4, #0]
	mov r5, r8
	str r5, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AD3AA:
	bl sub_080003F0
_080AD3AE:
	bl sub_08058DB0
	cmp r0, #0
	bne _080AD2EC
	movs r0, #0
	bl sub_080586B4
	movs r0, #0x14
	str r0, [sp, #0x50]
	movs r1, #1
	mov sl, r1
_080AD3C4:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AD47E
	bl sub_0800CC98
	cmp r0, #0
	bne _080AD47E
	bl sub_0800CD34
	adds r7, r0, #0
	cmp r7, #0
	bne _080AD47E
	ldr r2, _080AD514
	mov r9, r2
	ldr r1, _080AD518
	ldrh r0, [r1, #0]
	strb r0, [r2, #0x1c]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x48]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, r9
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, _080AD51C
	ldr r0, [r1, #0]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r4, [sp, #0x68]
	ldrh r1, [r4, #0]
	mov r5, sl
	str r5, [sp, #0]
	mov r0, r9
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl sub_08065370
	adds r1, r6, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x44
	mov r5, sp
	adds r5, #0x46
	str r7, [sp, #0]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x50]
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080AD47E
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	ldr r4, [sp, #0x68]
	ldrh r2, [r4, #0]
	ldr r5, [sp, #0x6c]
	ldrh r3, [r5, #0]
	mov r4, r8
	str r4, [sp, #0]
	mov r4, r9
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, r9
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AD47E:
	bl sub_080003F0
	ldr r0, [sp, #0x50]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
	ldr r0, _080AD520
	ldr r1, [sp, #0x50]
	cmp r1, r0
	bne _080AD3C4
	bl sub_080020F4
	ldr r1, _080AD524
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
	bne _080AD500
	ldr r0, _080AD528
	ldr r0, [r0, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080AD500
	ldr r0, _080AD52C
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x48]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r2, #0x1d
	str r2, [sp, #0x58]
	movs r5, #1
	negs r5, r5
_080AD4D0:
	ldr r0, _080AD528
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r3, [sp, #0x58]
	lsls r0, r3, #0x10
	ldr r1, _080AD530
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0x58]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080AD4D0
	ldr r0, _080AD52C
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080AD500:
	bl sub_08056E24
_080AD504:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AD514: .4byte gUnk_03000458
_080AD518: .4byte gUnk_030004BE
_080AD51C: .4byte gUnk_03000490
_080AD520: .4byte 0x0000FFFF
_080AD524: .4byte gUnk_03003CE0
_080AD528: .4byte gUnk_03000440
_080AD52C: .4byte gUnk_030034E0
_080AD530: .4byte 0xFFFF0000
	thumb_func_end sub_080AC844
