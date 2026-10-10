	thumb_func_start sub_080B280C
sub_080B280C: @ 0x080B280C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x118
	ldr r0, _080B2958
	mov r8, r0
	ldr r0, _080B295C
	ldr r0, [r0, #0]
	mov sl, r0
	mov r1, r8
	str r0, [r1, #0]
	movs r2, #0x81
	lsls r2, r2, #2
	add r2, sl
	str r2, [sp, #0xd8]
	ldr r1, _080B2960
	movs r2, #0
	bl sub_0801623C
	mov r3, r8
	ldr r0, [r3, #0]
	bl sub_0801A0A4
	mov r4, r8
	ldr r2, [r4, #0]
	ldr r5, [sp, #0xd8]
	movs r6, #6
	ldrsh r0, [r5, r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r3, #0xeb
	lsls r3, r3, #1
	adds r0, r2, r3
	movs r4, #0
	mov r9, r4
	strh r1, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x5c
	strh r1, [r0, #0]
	movs r6, #4
	ldrsh r0, [r5, r6]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r3, #2
	adds r1, r2, r3
	strh r0, [r1, #0]
	adds r1, r2, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	ldr r4, _080B2964
	adds r0, r2, r4
	movs r4, #1
	strb r4, [r0, #0]
	mov r5, r8
	ldr r0, [r5, #0]
	movs r6, #0xff
	lsls r6, r6, #1
	adds r0, r0, r6
	strb r4, [r0, #0]
	ldr r0, [r5, #0]
	mov r1, r9
	strh r1, [r0, #0xc]
	str r4, [r0, #0x50]
	ldr r1, _080B2968
	ldr r5, _080B296C
	ldrh r2, [r5, #0]
	movs r6, #1
	negs r6, r6
	str r4, [sp, #0]
	add r0, sp, #0x10
	adds r3, r6, #0
	bl sub_08065158
	add r0, sp, #0x44
	ldr r1, _080B2970
	ldrh r2, [r5, #0]
	str r4, [sp, #0]
	adds r3, r6, #0
	bl sub_08065158
	add r0, sp, #0x78
	ldr r1, _080B2974
	ldrh r2, [r5, #0]
	str r4, [sp, #0]
	adds r3, r6, #0
	bl sub_08065158
	add r0, sp, #0x10
	ldrh r1, [r5, #0]
	strb r1, [r0, #0x1c]
	add r0, sp, #0x60
	strb r1, [r0, #0]
	add r0, sp, #0x94
	strb r1, [r0, #0]
	mov r2, r8
	ldr r1, [r2, #0]
	adds r0, r1, #0
	adds r0, #0x6c
	mov r3, r9
	strh r3, [r0, #0]
	subs r0, #2
	strh r3, [r0, #0]
	subs r0, #2
	strh r3, [r0, #0]
	ldr r4, _080B2978
	str r4, [sp, #0xe8]
	ldrb r0, [r1, #0]
	movs r5, #0xfe
	lsls r5, r5, #1
	adds r3, r1, r5
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	mov r6, r8
	ldr r0, [r6, #0]
	ldrh r2, [r0, #2]
	ldr r3, _080B297C
	adds r1, r0, r3
	strh r2, [r1, #0]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #0]
	movs r5, #0
	str r5, [sp, #0xe4]
	movs r6, #0
	str r6, [sp, #0xe0]
	movs r0, #0
	str r0, [sp, #0x110]
	movs r1, #0
	str r1, [sp, #0x10c]
	movs r2, #0
	str r2, [sp, #0xfc]
	movs r3, #0
	str r3, [sp, #0x100]
	movs r4, #0
	str r4, [sp, #0xec]
	str r5, [sp, #0x108]
	movs r6, #1
	str r6, [sp, #0x104]
	movs r0, #1
	str r0, [sp, #0x114]
	add r4, sp, #0xac
	ldr r1, _080B2980
	add sl, r1
	mov r2, sl
	ldrh r0, [r2, #0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08097F70
	mov sl, r4
	bl _080B353A
_080B2958: .4byte gUnk_030007B8
_080B295C: .4byte gUnk_030056F4
_080B2960: .4byte gUnk_084AA7B0
_080B2964: .4byte 0x000001FD
_080B2968: .4byte 0x00050016
_080B296C: .4byte gUnk_030007C8
_080B2970: .4byte 0x00050017
_080B2974: .4byte 0x00050018
_080B2978: .4byte 0x0000FFFF
_080B297C: .4byte 0x00000202
_080B2980: .4byte 0x000002DA
_080B2984:
	ldr r0, _080B29CC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xa
	bne _080B2998
	ldr r3, [sp, #0xe4]
	cmp r3, #0
	bne _080B2998
	movs r4, #8
	str r4, [sp, #0xe4]
_080B2998:
	bl sub_08058DB0
	ldr r5, [sp, #0xd8]
	adds r5, #0xd6
	mov r8, r5
	cmp r0, #0
	beq _080B29A8
	b _080B308A
_080B29A8:
	ldr r4, _080B29CC
	ldr r0, [r4, #0]
	bl sub_0801C8F0
	ldr r0, [r4, #0]
	ldr r6, _080B29D0
	adds r0, r0, r6
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #0x13
	bls _080B29C0
	b _080B308A
_080B29C0:
	lsls r0, r0, #2
	ldr r1, _080B29D4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080B29CC: .4byte gUnk_030007B8
_080B29D0: .4byte 0x000001FD
_080B29D4: .4byte _080B29D8
_080B29D8:
	.4byte _080B2A64
_080B29DC: .4byte _080B2A28
_080B29E0: .4byte _080B308A
_080B29E4: .4byte _080B2A8C
_080B29E8: .4byte _080B2B70
_080B29EC: .4byte _080B2C30
_080B29F0: .4byte _080B308A
_080B29F4: .4byte _080B308A
_080B29F8: .4byte _080B2D08
_080B29FC: .4byte _080B2DBC
_080B2A00: .4byte _080B308A
_080B2A04: .4byte _080B308A
_080B2A08: .4byte _080B2F20
_080B2A0C: .4byte _080B2E10
_080B2A10: .4byte _080B308A
_080B2A14: .4byte _080B2BE0
_080B2A18: .4byte _080B308A
_080B2A1C: .4byte _080B308A
_080B2A20: .4byte _080B308A
_080B2A24: .4byte _080B3040
_080B2A28:
	ldr r4, _080B2A5C
	ldr r1, [r4, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0]
	bl sub_080682B8
	ldr r1, [sp, #0xd8]
	adds r1, #0xd6
	mov r8, r1
	cmp r0, #0
	bne _080B2A42
	b _080B308A
_080B2A42:
	ldr r1, [r4, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	ldr r3, _080B2A60
	adds r1, r1, r3
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0]
	bl sub_08065E38
	b _080B308A
_080B2A5C: .4byte gUnk_030007B8
_080B2A60: .4byte 0x000001FD
_080B2A64:
	movs r4, #0
	str r4, [sp, #0xf0]
	ldr r2, _080B2A84
	ldr r0, [r2, #0]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r0, r0, r5
	movs r1, #6
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldr r6, _080B2A88
	adds r0, r0, r6
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	b _080B2CCA
_080B2A84: .4byte gUnk_030007B8
_080B2A88: .4byte 0x000001FD
_080B2A8C:
	ldr r4, _080B2AC4
	ldr r1, [r4, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	movs r2, #0
	str r2, [sp, #0xf0]
	ldr r0, _080B2AC8
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _080B2ACC
	ldr r5, [sp, #0x114]
	cmp r5, #1
	bne _080B2ACC
	adds r0, r1, #0
	bl sub_0801A0A4
	movs r6, #0
	str r6, [sp, #0x114]
	ldr r0, [r4, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #5
	strb r1, [r0, #0]
	b _080B2B4C
_080B2AC4: .4byte gUnk_030007B8
_080B2AC8: .4byte gUnk_030007BC
_080B2ACC:
	ldr r2, [sp, #0x10c]
	cmp r2, #1
	beq _080B2AFC
	cmp r2, #1
	bgt _080B2ADC
	cmp r2, #0
	beq _080B2AE8
	b _080B2B32
_080B2ADC:
	ldr r3, [sp, #0x10c]
	cmp r3, #2
	beq _080B2B10
	cmp r3, #3
	beq _080B2B24
	b _080B2B32
_080B2AE8:
	ldr r0, _080B2AF8
	ldr r0, [r0, #0]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r0, r0, r4
	movs r1, #0xe
	b _080B2B30
	.2byte 0x0000
_080B2AF8: .4byte gUnk_030007B8
_080B2AFC:
	ldr r0, _080B2B0C
	ldr r0, [r0, #0]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r0, r0, r5
	movs r1, #9
	b _080B2B30
	.2byte 0x0000
_080B2B0C: .4byte gUnk_030007B8
_080B2B10:
	ldr r0, _080B2B20
	ldr r0, [r0, #0]
	movs r6, #0xff
	lsls r6, r6, #1
	adds r0, r0, r6
	movs r1, #6
	b _080B2B30
	.2byte 0x0000
_080B2B20: .4byte gUnk_030007B8
_080B2B24:
	ldr r0, _080B2B44
	ldr r0, [r0, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0xd
_080B2B30:
	strb r1, [r0, #0]
_080B2B32:
	ldr r2, [sp, #0x10c]
	cmp r2, #3
	beq _080B2B48
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080B2B4A
	.2byte 0x0000
_080B2B44: .4byte gUnk_030007B8
_080B2B48:
	movs r0, #0
_080B2B4A:
	str r0, [sp, #0x10c]
_080B2B4C:
	ldr r2, _080B2B68
	ldr r0, [r2, #0]
	ldr r3, _080B2B6C
	adds r0, r0, r3
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0]
	bl sub_08068330
	ldr r4, [sp, #0xd8]
	adds r4, #0xd6
	mov r8, r4
	b _080B308A
_080B2B68: .4byte gUnk_030007B8
_080B2B6C: .4byte 0x000001FD
_080B2B70:
	ldr r4, _080B2BD0
	ldr r0, [r4, #0]
	movs r2, #0
	movs r1, #0
	strh r1, [r0, #0xc]
	ldr r1, _080B2BD4
	strb r2, [r1, #0]
	ldr r1, _080B2BD8
	strb r2, [r1, #0]
	bl sub_0801A0B0
	ldr r0, [sp, #0xf0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf0]
	mov r0, sl
	movs r1, #4
	ldr r2, [sp, #0xf0]
	movs r3, #0x3c
	bl sub_08096E20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x104]
	ldr r5, [sp, #0xd8]
	adds r5, #0xd6
	mov r8, r5
	cmp r0, #0
	bne _080B2BAE
	b _080B308A
_080B2BAE:
	ldrh r0, [r5, #0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	mov r0, sl
	bl sub_08097F70
	ldr r0, [r4, #0]
	movs r6, #0xff
	lsls r6, r6, #1
	adds r0, r0, r6
	movs r1, #0x10
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r1, _080B2BDC
	adds r0, r0, r1
	b _080B302A
_080B2BD0: .4byte gUnk_030007B8
_080B2BD4: .4byte gUnk_030007CB
_080B2BD8: .4byte gUnk_030007CC
_080B2BDC: .4byte 0x000001FD
_080B2BE0:
	ldr r4, _080B2C20
	ldr r0, [r4, #0]
	bl sub_0801A0A4
	ldr r1, [r4, #0]
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #0xc]
	ldr r0, _080B2C24
	strb r2, [r0, #0]
	ldr r0, _080B2C28
	strb r2, [r0, #0]
	movs r2, #0
	str r2, [sp, #0xf0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #4
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r5, _080B2C2C
	adds r0, r0, r5
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0]
	bl sub_08068330
	ldr r6, [sp, #0xd8]
	adds r6, #0xd6
	mov r8, r6
	b _080B308A
_080B2C20: .4byte gUnk_030007B8
_080B2C24: .4byte gUnk_030007CB
_080B2C28: .4byte gUnk_030007CC
_080B2C2C: .4byte 0x000001FD
_080B2C30:
	ldr r4, _080B2C88
	ldr r1, [r4, #0]
	movs r5, #0
	movs r3, #1
	movs r0, #1
	strh r0, [r1, #0xc]
	ldr r0, [sp, #0x114]
	cmp r0, #0
	bne _080B2C98
	movs r0, #1
	bl sub_08096594
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080B2C8C
	adds r1, r1, r0
	ldr r0, _080B2C90
	strb r5, [r0, #0]
	ldr r0, [r4, #0]
	movs r2, #0x80
	movs r3, #0x28
	bl sub_08097A74
	lsls r0, r0, #0x18
	ldr r1, [sp, #0xd8]
	adds r1, #0xd6
	mov r8, r1
	cmp r0, #0
	beq _080B2C6E
	b _080B308A
_080B2C6E:
	movs r0, #1
	bl sub_08097A38
	ldr r0, [r4, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #4
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r3, _080B2C94
	adds r0, r0, r3
	b _080B302A
_080B2C88: .4byte gUnk_030007B8
_080B2C8C: .4byte gUnk_03003CE0
_080B2C90: .4byte gUnk_030007CC
_080B2C94: .4byte 0x000001FD
_080B2C98:
	ldr r2, _080B2CD8
	strb r3, [r2, #0]
	ldr r1, [sp, #0xf0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf0]
	cmp r1, #0xb4
	bls _080B2CE0
	strb r5, [r2, #0]
	movs r0, #0
	bl sub_08097A38
	ldr r0, [r4, #0]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r0, r0, r5
	movs r1, #4
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r6, _080B2CDC
	adds r0, r0, r6
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
_080B2CCA:
	ldrh r0, [r0, #0]
	bl sub_08068330
	ldr r0, [sp, #0xd8]
	adds r0, #0xd6
	mov r8, r0
	b _080B308A
_080B2CD8: .4byte gUnk_030007CC
_080B2CDC: .4byte 0x000001FD
_080B2CE0:
	movs r0, #0x10
	bl sub_08097CA8
	ldr r0, [sp, #0x110]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x110]
	ldr r1, [sp, #0xd8]
	adds r1, #0xd6
	mov r8, r1
	cmp r0, #0xff
	beq _080B2CFC
	b _080B308A
_080B2CFC:
	movs r2, #0x3c
	str r2, [sp, #0x110]
	movs r0, #0xe0
	bl sub_0805865C
	b _080B308A
_080B2D08:
	ldr r6, _080B2DAC
	ldr r1, [r6, #0]
	movs r7, #2
	movs r0, #2
	strh r0, [r1, #0xc]
	ldr r1, _080B2DB0
	movs r0, #1
	strb r0, [r1, #0]
	ldr r3, [sp, #0x114]
	cmp r3, #0
	bne _080B2D70
	movs r0, #1
	bl sub_08096594
	ldr r3, [r6, #0]
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r3, r3, r4
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	ldr r5, [r6, #0]
	adds r4, r5, r4
	ldrb r0, [r4, #0]
	lsrs r0, r0, #4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080B2DB4
	adds r1, r1, r0
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r1, r4
	ldr r0, [r0, #0]
	ldrh r2, [r0, #0]
	lsrs r2, r2, #4
	ldrh r3, [r0, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	ldr r1, [r5, #0x18]
	asrs r1, r1, #8
	bl sub_08095FC8
	ldr r1, [r6, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r1, #8]
_080B2D70:
	ldr r0, [sp, #0x114]
	movs r1, #0
	bl sub_080B4BB8
	ldr r0, [sp, #0x114]
	movs r1, #1
	bl sub_080B4BB8
	ldr r0, [sp, #0x114]
	movs r1, #2
	bl sub_080B4BB8
	ldr r0, [sp, #0x114]
	movs r1, #3
	bl sub_080B4BB8
	movs r5, #0
	str r5, [sp, #0xf0]
	ldr r0, [r6, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0xa
	strb r1, [r0, #0]
	ldr r0, [r6, #0]
	ldr r2, _080B2DB8
	adds r0, r0, r2
	strb r7, [r0, #0]
	ldr r0, [r6, #0]
	b _080B2F0E
_080B2DAC: .4byte gUnk_030007B8
_080B2DB0: .4byte gUnk_030007CB
_080B2DB4: .4byte gUnk_03003CE0
_080B2DB8: .4byte 0x000001FD
_080B2DBC:
	ldr r1, _080B2E04
	movs r0, #0
	strb r0, [r1, #0]
	ldr r1, [sp, #0xf0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf0]
	movs r0, #0x96
	lsls r0, r0, #1
	ldr r4, [sp, #0xd8]
	adds r4, #0xd6
	mov r8, r4
	cmp r1, r0
	bhi _080B2DDC
	b _080B308A
_080B2DDC:
	movs r0, #1
	bl sub_08097A38
	movs r5, #0
	str r5, [sp, #0xf0]
	ldr r2, _080B2E08
	ldr r0, [r2, #0]
	movs r6, #0xff
	lsls r6, r6, #1
	adds r0, r0, r6
	movs r1, #0x14
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldr r1, _080B2E0C
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	b _080B3030
	.2byte 0x0000
_080B2E04: .4byte gUnk_030007CB
_080B2E08: .4byte gUnk_030007B8
_080B2E0C: .4byte 0x000001FD
_080B2E10:
	ldr r4, _080B2E84
	ldr r0, [r4, #0]
	movs r6, #0
	movs r7, #2
	movs r1, #2
	strh r1, [r0, #0xc]
	movs r2, #2
	str r2, [sp, #0xfc]
	ldr r5, _080B2E88
	movs r0, #1
	strb r0, [r5, #0]
	ldr r3, [sp, #0x114]
	cmp r3, #0
	bne _080B2E64
	movs r0, #1
	bl sub_08096594
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080B2E8C
	adds r1, r1, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0, #0]
	ldrh r2, [r0, #0]
	lsrs r2, r2, #4
	ldrh r3, [r0, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	bl sub_08095FC8
	ldr r1, [r4, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r1, #8]
_080B2E64:
	ldr r1, [sp, #0xf0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf0]
	cmp r1, #0xb4
	bhi _080B2EEC
	ldr r3, [sp, #0x100]
	cmp r3, #1
	beq _080B2EAC
	cmp r3, #1
	bgt _080B2E90
	cmp r3, #0
	beq _080B2E9C
	b _080B2EDA
	.2byte 0x0000
_080B2E84: .4byte gUnk_030007B8
_080B2E88: .4byte gUnk_030007CB
_080B2E8C: .4byte gUnk_03003CE0
_080B2E90:
	ldr r5, [sp, #0x100]
	cmp r5, #2
	beq _080B2EBC
	cmp r5, #3
	beq _080B2ECA
	b _080B2EDA
_080B2E9C:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	ldr r6, _080B2EA8
	adds r6, r0, r6
	str r6, [sp, #0xd0]
	b _080B2ED6
_080B2EA8: .4byte 0xFFFFD000
_080B2EAC:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	ldr r2, _080B2EB8
	adds r2, r0, r2
	str r2, [sp, #0xd0]
	b _080B2ED6
_080B2EB8: .4byte 0xFFFFD000
_080B2EBC:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	movs r3, #0xc0
	lsls r3, r3, #6
	adds r3, r0, r3
	str r3, [sp, #0xd0]
	b _080B2ED6
_080B2ECA:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	movs r4, #0xc0
	lsls r4, r4, #6
	adds r4, r0, r4
	str r4, [sp, #0xd0]
_080B2ED6:
	ldr r1, [r1, #0x18]
	str r1, [sp, #0xd4]
_080B2EDA:
	ldr r0, [sp, #0xd0]
	ldr r1, [sp, #0xd4]
	movs r2, #0x50
	bl sub_080B4A7C
	ldr r5, [sp, #0xd8]
	adds r5, #0xd6
	mov r8, r5
	b _080B308A
_080B2EEC:
	strb r6, [r5, #0]
	movs r0, #1
	bl sub_08097A38
	movs r6, #0
	str r6, [sp, #0xf0]
	ldr r0, [r4, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x14
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r2, _080B2F1C
	adds r0, r0, r2
	strb r7, [r0, #0]
	ldr r0, [r4, #0]
_080B2F0E:
	ldrh r0, [r0, #0]
	bl sub_08068330
	ldr r3, [sp, #0xd8]
	adds r3, #0xd6
	mov r8, r3
	b _080B308A
_080B2F1C: .4byte 0x000001FD
_080B2F20:
	ldr r4, _080B2FA0
	ldr r1, [r4, #0]
	movs r5, #0
	movs r0, #2
	strh r0, [r1, #0xc]
	ldr r6, [sp, #0x114]
	cmp r6, #0
	bne _080B2F68
	movs r0, #1
	bl sub_08096594
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080B2FA4
	adds r1, r1, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0, #0]
	ldrh r2, [r0, #0]
	lsrs r2, r2, #4
	ldrh r3, [r0, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	bl sub_08095FC8
	ldr r1, [r4, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r1, #8]
_080B2F68:
	ldr r3, [sp, #0x110]
	cmp r3, #0
	bne _080B2F78
	movs r6, #1
	str r6, [sp, #0x110]
	movs r0, #0xe1
	bl sub_0805865C
_080B2F78:
	movs r0, #1
	str r0, [sp, #0xfc]
	ldr r0, _080B2FA8
	strb r5, [r0, #0]
	ldr r0, [r4, #0]
	adds r0, #0x6a
	ldrh r0, [r0, #0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _080B2FFC
	ldr r1, [sp, #0x100]
	cmp r1, #1
	beq _080B2FC4
	cmp r1, #1
	bgt _080B2FAC
	cmp r1, #0
	beq _080B2FB8
	b _080B2FDE
_080B2FA0: .4byte gUnk_030007B8
_080B2FA4: .4byte gUnk_03003CE0
_080B2FA8: .4byte gUnk_030007CB
_080B2FAC:
	ldr r2, [sp, #0x100]
	cmp r2, #2
	beq _080B2FD0
	cmp r2, #3
	beq _080B2FD8
	b _080B2FDE
_080B2FB8:
	ldr r3, _080B2FC0
	str r3, [sp, #0xd0]
	b _080B2FDE
	.2byte 0x0000
_080B2FC0: .4byte 0xFFFFD000
_080B2FC4:
	ldr r4, _080B2FCC
	str r4, [sp, #0xd0]
	b _080B2FDE
	.2byte 0x0000
_080B2FCC: .4byte 0xFFFFD000
_080B2FD0:
	movs r5, #0xc0
	lsls r5, r5, #6
	str r5, [sp, #0xd0]
	b _080B2FDE
_080B2FD8:
	movs r6, #0xc0
	lsls r6, r6, #6
	str r6, [sp, #0xd0]
_080B2FDE:
	movs r0, #0
	str r0, [sp, #0xd4]
	ldr r1, [sp, #0x108]
	cmp r1, #0
	bne _080B2FFC
	ldr r0, _080B3038
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xd0]
	ldr r2, [sp, #0xd4]
	movs r3, #0x20
	bl sub_080B44F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x108]
_080B2FFC:
	ldr r4, _080B3038
	ldr r0, [r4, #0]
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	ldr r2, [sp, #0xd8]
	adds r2, #0xd6
	mov r8, r2
	cmp r0, #0
	beq _080B308A
	movs r0, #1
	bl sub_08097A38
	movs r3, #0
	str r3, [sp, #0xf0]
	ldr r0, [r4, #0]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r0, r0, r5
	movs r1, #0x14
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r6, _080B303C
	adds r0, r0, r6
_080B302A:
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
_080B3030:
	ldrh r0, [r0, #0]
	bl sub_08068330
	b _080B308A
_080B3038: .4byte gUnk_030007B8
_080B303C: .4byte 0x000001FD
_080B3040:
	ldr r3, _080B30AC
	ldr r2, [r3, #0]
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #0xc]
	ldr r0, _080B30B0
	strb r1, [r0, #0]
	ldr r0, _080B30B4
	strb r1, [r0, #0]
	ldr r1, [sp, #0xf0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf0]
	ldr r0, [sp, #0xd8]
	adds r0, #0xd6
	mov r8, r0
	cmp r1, #0x78
	bls _080B308A
	movs r1, #0
	str r1, [sp, #0xf0]
	movs r4, #0x3c
	str r4, [sp, #0x110]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r1, r2, r5
	movs r0, #4
	strb r0, [r1, #0]
	ldr r0, [r3, #0]
	ldr r6, _080B30B8
	adds r0, r0, r6
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r3, #0]
	ldrh r0, [r0, #0]
	bl sub_08068330
_080B308A:
	ldr r0, [sp, #0x114]
	cmp r0, #0
	bne _080B30F8
	ldr r1, _080B30AC
	ldr r0, [r1, #0]
	movs r2, #8
	ldrsh r0, [r0, r2]
	adds r3, r1, #0
	cmp r0, #7
	bls _080B30A0
	b _080B31EE
_080B30A0:
	lsls r0, r0, #2
	ldr r1, _080B30BC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080B30AC: .4byte gUnk_030007B8
_080B30B0: .4byte gUnk_030007CB
_080B30B4: .4byte gUnk_030007CC
_080B30B8: .4byte 0x000001FD
_080B30BC: .4byte _080B30C0
_080B30C0:
	.4byte _080B30E0
_080B30C4: .4byte _080B30E0
_080B30C8: .4byte _080B30E0
_080B30CC: .4byte _080B30E6
_080B30D0: .4byte _080B30E6
_080B30D4: .4byte _080B30EC
_080B30D8: .4byte _080B30F2
_080B30DC: .4byte _080B30F2
_080B30E0:
	movs r4, #0
	str r4, [sp, #0x100]
	b _080B31EE
_080B30E6:
	movs r5, #1
	str r5, [sp, #0x100]
	b _080B31EE
_080B30EC:
	movs r6, #2
	str r6, [sp, #0x100]
	b _080B31EE
_080B30F2:
	movs r0, #3
	str r0, [sp, #0x100]
	b _080B31EE
_080B30F8:
	ldr r0, _080B310C
	ldrb r0, [r0, #0]
	cmp r0, #7
	bhi _080B314A
	lsls r0, r0, #2
	ldr r1, _080B3110
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080B310C: .4byte gUnk_030007CA
_080B3110: .4byte _080B3114
_080B3114:
	.4byte _080B3134
_080B3118: .4byte _080B3134
_080B311C: .4byte _080B3134
_080B3120: .4byte _080B313A
_080B3124: .4byte _080B313A
_080B3128: .4byte _080B3140
_080B312C: .4byte _080B3146
_080B3130: .4byte _080B3146
_080B3134:
	movs r1, #0
	str r1, [sp, #0x100]
	b _080B314A
_080B313A:
	movs r2, #1
	str r2, [sp, #0x100]
	b _080B314A
_080B3140:
	movs r3, #2
	str r3, [sp, #0x100]
	b _080B314A
_080B3146:
	movs r4, #3
	str r4, [sp, #0x100]
_080B314A:
	ldr r5, [sp, #0x100]
	cmp r5, #1
	beq _080B3198
	cmp r5, #1
	bgt _080B3160
	cmp r5, #0
	beq _080B3174
	ldr r3, _080B315C
	b _080B31EE
_080B315C: .4byte gUnk_030007B8
_080B3160:
	ldr r6, [sp, #0x100]
	cmp r6, #2
	beq _080B31B0
	cmp r6, #3
	beq _080B31D4
	ldr r3, _080B3170
	b _080B31EE
	.2byte 0x0000
_080B3170: .4byte gUnk_030007B8
_080B3174:
	ldr r3, _080B318C
	ldr r2, [r3, #0]
	ldr r1, _080B3190
	ldr r0, [r1, #0]
	ldr r4, _080B3194
	adds r0, r0, r4
	str r0, [r2, #0x14]
	ldr r0, [r1, #4]
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r0, r0, r5
	b _080B31EC
_080B318C: .4byte gUnk_030007B8
_080B3190: .4byte gUnk_030007C0
_080B3194: .4byte 0xFFFFFA80
_080B3198:
	ldr r3, _080B31A4
	ldr r2, [r3, #0]
	ldr r1, _080B31A8
	ldr r0, [r1, #0]
	ldr r6, _080B31AC
	b _080B31E0
_080B31A4: .4byte gUnk_030007B8
_080B31A8: .4byte gUnk_030007C0
_080B31AC: .4byte 0xFFFFFA80
_080B31B0:
	ldr r3, _080B31CC
	ldr r2, [r3, #0]
	ldr r1, _080B31D0
	ldr r0, [r1, #0]
	movs r4, #0xb0
	lsls r4, r4, #3
	adds r0, r0, r4
	str r0, [r2, #0x14]
	ldr r0, [r1, #4]
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r0, r0, r5
	b _080B31EC
	.2byte 0x0000
_080B31CC: .4byte gUnk_030007B8
_080B31D0: .4byte gUnk_030007C0
_080B31D4:
	ldr r3, _080B3200
	ldr r2, [r3, #0]
	ldr r1, _080B3204
	ldr r0, [r1, #0]
	movs r6, #0xb0
	lsls r6, r6, #3
_080B31E0:
	adds r0, r0, r6
	str r0, [r2, #0x14]
	ldr r0, [r1, #4]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
_080B31EC:
	str r0, [r2, #0x18]
_080B31EE:
	ldr r3, [r3, #0]
	ldrh r0, [r3, #0xc]
	cmp r0, #1
	beq _080B3218
	cmp r0, #1
	bgt _080B3208
	cmp r0, #0
	beq _080B320E
	b _080B324E
_080B3200: .4byte gUnk_030007B8
_080B3204: .4byte gUnk_030007C0
_080B3208:
	cmp r0, #2
	beq _080B322C
	b _080B324E
_080B320E:
	movs r2, #0
	str r2, [sp, #0xfc]
	movs r4, #1
	str r4, [sp, #0xec]
	b _080B3244
_080B3218:
	movs r6, #0
	str r6, [sp, #0xfc]
	movs r0, #1
	str r0, [sp, #0xec]
	ldr r1, [sp, #0x100]
	adds r1, #4
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0, #0]
	b _080B324E
_080B322C:
	movs r1, #0
	str r1, [sp, #0xec]
	ldr r2, [sp, #0xfc]
	cmp r2, #2
	bne _080B3244
	ldr r4, [sp, #0x100]
	lsls r0, r4, #1
	adds r0, #1
	adds r1, r3, #0
	adds r1, #0x68
	strh r0, [r1, #0]
	b _080B324E
_080B3244:
	adds r0, r3, #0
	adds r0, #0x68
	add r5, sp, #0x100
	ldrh r5, [r5, #0]
	strh r5, [r0, #0]
_080B324E:
	ldr r0, _080B3280
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r6, [sp, #0xe8]
	ldrh r1, [r0, #0]
	cmp r6, r1
	beq _080B326E
	ldrh r0, [r0, #0]
	str r0, [sp, #0xe8]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_080B326E:
	ldr r2, [sp, #0xfc]
	cmp r2, #1
	beq _080B3290
	cmp r2, #1
	bgt _080B3284
	cmp r2, #0
	beq _080B328A
	b _080B3296
	.2byte 0x0000
_080B3280: .4byte gUnk_030007B8
_080B3284:
	ldr r3, [sp, #0xfc]
	cmp r3, #2
	bne _080B3296
_080B328A:
	ldr r0, [sp, #0x100]
	adds r0, #8
	b _080B3294
_080B3290:
	ldr r0, [sp, #0x100]
	adds r0, #4
_080B3294:
	str r0, [sp, #0xf8]
_080B3296:
	ldr r4, [sp, #0x104]
	cmp r4, #0
	beq _080B32C4
	ldr r0, _080B32C0
	ldrh r0, [r0, #0]
	adds r0, #0x10
	movs r1, #0x34
	ldr r5, [sp, #0xfc]
	adds r2, r5, #0
	muls r2, r1, r2
	add r1, sp, #0x1c
	adds r1, r1, r2
	mov r6, r8
	ldrh r2, [r6, #0]
	lsls r2, r2, #5
	ldr r1, [r1, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	b _080B32D2
_080B32C0: .4byte gUnk_030007C8
_080B32C4:
	ldr r0, _080B32E4
	ldrh r0, [r0, #0]
	adds r0, #0x10
	mov r1, sl
	movs r2, #1
	bl sub_08000AF0
_080B32D2:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080B32E8
	bl sub_08097FF8
	b _080B32FA
_080B32E4: .4byte gUnk_030007C8
_080B32E8:
	ldr r0, _080B33C4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080B32FA:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B3330
	movs r0, #0x34
	ldr r1, [sp, #0xfc]
	muls r0, r1, r0
	add r0, sp
	adds r0, #0x10
	ldr r4, _080B33C4
	ldr r3, [r4, #0]
	adds r1, r3, #0
	adds r1, #0x68
	ldrh r1, [r1, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	ldr r5, [sp, #0xec]
	str r5, [sp, #0]
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080B3330:
	ldr r5, _080B33C4
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0xcc
	mov r3, sp
	adds r3, #0xce
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0800BC08
	adds r7, r4, #0
	ldr r6, [sp, #0xe4]
	cmp r6, #0
	beq _080B33C8
	adds r0, r6, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xe4]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080B341C
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B341C
	bl sub_0800CC98
	cmp r0, #0
	bne _080B341C
	bl sub_0800CD34
	cmp r0, #0
	bne _080B341C
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #2
	ldrsh r1, [r7, r2]
	ldr r3, [r5, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r9
	str r4, [sp, #0]
	movs r4, #0x34
	ldr r6, [sp, #0xfc]
	adds r5, r6, #0
	muls r5, r4, r5
	mov r6, sp
	adds r6, r6, r5
	adds r6, #0x10
	adds r4, r6, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	add r4, sp, #0x18
	adds r4, r4, r5
	ldr r4, [r4, #0]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080B341C
	.2byte 0x0000
_080B33C4: .4byte gUnk_030007B8
_080B33C8:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B341C
	bl sub_0800CC98
	cmp r0, #0
	bne _080B341C
	bl sub_0800CD34
	cmp r0, #0
	bne _080B341C
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #2
	ldrsh r1, [r7, r2]
	ldr r3, [r5, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r9
	str r4, [sp, #0]
	movs r4, #0x34
	ldr r6, [sp, #0xfc]
	adds r5, r6, #0
	muls r5, r4, r5
	mov r6, sp
	adds r6, r6, r5
	adds r6, #0x10
	adds r4, r6, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	add r4, sp, #0x18
	adds r4, r4, r5
	ldr r4, [r4, #0]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B341C:
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B34A6
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B34A6
	bl sub_0800CC98
	cmp r0, #0
	bne _080B34A6
	bl sub_0800CD34
	adds r2, r0, #0
	cmp r2, #0
	bne _080B34A6
	ldr r0, _080B3510
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B34A6
	ldr r0, _080B3514
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r3, r7, #2
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r7, #0
	bl sub_0800BC08
	add r0, sp, #0xcc
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, r9
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0]
	movs r1, #0x34
	ldr r3, [sp, #0xfc]
	adds r2, r3, #0
	muls r2, r1, r2
	mov r3, sp
	adds r3, r3, r2
	adds r3, #0x10
	adds r1, r3, #0
	adds r1, #0x1c
	str r1, [sp, #4]
	add r1, sp, #0x18
	adds r1, r1, r2
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	ldr r1, [r3, #0]
	str r1, [sp, #0xc]
	movs r1, #1
	ldr r2, [sp, #0xf8]
	movs r3, #0
	bl sub_08007870
	movs r4, #2
	ldrsh r1, [r7, r4]
	str r1, [r0, #0xc]
_080B34A6:
	ldr r0, _080B3514
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _080B34C0
	ldr r5, [sp, #0xdc]
	cmp r5, r0
	beq _080B34C0
	str r0, [sp, #0xdc]
	movs r6, #0xa
	str r6, [sp, #0xe0]
	movs r0, #0
	str r0, [sp, #0xf4]
_080B34C0:
	ldr r1, [sp, #0xe0]
	cmp r1, #0
	beq _080B351C
	bl sub_0800CC98
	cmp r0, #0
	bne _080B34EE
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B34EE
	bl sub_0800CD34
	cmp r0, #0
	bne _080B34EE
	ldr r0, _080B3514
	ldr r0, [r0, #0]
	ldr r3, [sp, #0xf4]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r1, [sp, #0xdc]
	bl sub_0801A120
_080B34EE:
	movs r0, #2
	ldr r4, [sp, #0xe0]
	ands r0, r4
	cmp r0, #0
	beq _080B3504
	ldr r5, [sp, #0xf4]
	lsls r0, r5, #0x10
	ldr r6, _080B3518
	adds r0, r0, r6
	lsrs r0, r0, #0x10
	str r0, [sp, #0xf4]
_080B3504:
	ldr r0, [sp, #0xe0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xe0]
	b _080B3528
_080B3510: .4byte gUnk_03002344
_080B3514: .4byte gUnk_030007B8
_080B3518: .4byte 0xFFFF0000
_080B351C:
	movs r0, #0
	str r0, [sp, #0xdc]
	ldr r0, _080B3628
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xdc]
	str r1, [r0, #0x4c]
_080B3528:
	bl sub_080003F0
	ldr r0, _080B3628
	ldr r0, [r0, #0]
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B3554
_080B353A:
	bl sub_0800CB78
	ldr r2, [sp, #0xd8]
	adds r2, #0xd6
	mov r8, r2
	cmp r0, #0
	bne _080B3554
	bl sub_08056E90
	cmp r0, #0
	bne _080B3554
	bl _080B2984
_080B3554:
	ldr r3, _080B362C
	ldr r4, _080B3628
	ldr r2, [r4, #0]
	movs r1, #1
	ldrh r5, [r2, #0]
	lsls r1, r5
	ldr r0, [r3, #0]
	bics r0, r1
	str r0, [r3, #0]
	ldr r6, _080B3630
	adds r2, r2, r6
	movs r1, #0
	strb r1, [r2, #0]
	ldr r0, [r4, #0]
	ldr r2, _080B3634
	adds r0, r0, r2
	strb r1, [r0, #0]
	movs r3, #0
	str r3, [sp, #0xfc]
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0x68
	add r5, sp, #0x100
	ldrh r5, [r5, #0]
	strh r5, [r0, #0]
	adds r0, #4
	strh r3, [r0, #0]
	subs r0, #2
	add r2, sp, #0xfc
	ldrh r2, [r2, #0]
	strh r2, [r0, #0]
	ldrh r0, [r1, #2]
	bl sub_08067CA8
	movs r0, #0xbd
	bl sub_0805865C
	ldr r0, [r4, #0]
	mov r3, r8
	ldrh r2, [r3, #0]
	ldr r1, _080B3638
	ldrh r3, [r1, #0]
	add r1, sp, #0x10
	bl sub_080970CC
	bl sub_080020F4
	ldr r1, _080B363C
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
	bne _080B3616
	ldr r0, [r4, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080B3616
	ldr r0, _080B3640
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xd8]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r5, #0x1d
	str r5, [sp, #0xf4]
	subs r5, #0x1e
_080B35E6:
	ldr r0, _080B3628
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r6, [sp, #0xf4]
	lsls r0, r6, #0x10
	ldr r1, _080B3644
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0xf4]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080B35E6
	ldr r0, _080B3640
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080B3616:
	add sp, #0x118
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B3628: .4byte gUnk_030007B8
_080B362C: .4byte gUnk_030056FC
_080B3630: .4byte 0x0000022E
_080B3634: .4byte 0x0000022F
_080B3638: .4byte gUnk_030007C8
_080B363C: .4byte gUnk_03003CE0
_080B3640: .4byte gUnk_030034E0
_080B3644: .4byte 0xFFFF0000
	thumb_func_end sub_080B280C
