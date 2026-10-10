	thumb_func_start sub_08020680
sub_08020680: @ 0x08020680
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	bl sub_0800CDF8
	cmp r0, #0
	beq _08020698
	b _08020D30
_08020698:
	bl sub_0800D11C
	cmp r0, #0
	beq _080206A2
	b _08020D30
_080206A2:
	bl sub_0801AC78
	cmp r0, #0
	bne _080206AC
	b _08020D30
_080206AC:
	bl sub_08065AE8
	cmp r0, #0
	beq _080206B6
	b _08020D30
_080206B6:
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r1, [r0, #0]
	ldr r0, _08020988
	cmp r1, r0
	bne _080206CE
	bl sub_0800CCCC
	movs r4, #2
	cmp r0, #0
	beq _080206D0
_080206CE:
	ldrh r4, [r7, #0xc]
_080206D0:
	ldr r2, _0802098C
	adds r0, r7, r2
	ldrb r0, [r0, #0]
	cmp r0, #0x14
	bgt _080206E0
	cmp r0, #0x13
	blt _080206E0
	b _08020D30
_080206E0:
	cmp r4, #2
	beq _080206E6
	b _08020D30
_080206E6:
	movs r3, #0x8a
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrh r1, [r0, #0]
	ldr r0, _08020988
	cmp r1, r0
	beq _0802070C
	adds r0, r7, #0
	adds r0, #0x6a
	ldrh r0, [r0, #0]
	cmp r0, r1
	beq _08020700
	b _08020D30
_08020700:
	adds r0, r7, #0
	adds r0, #0x6c
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _0802070C
	b _08020D30
_0802070C:
	movs r0, #0x8b
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r8, r0
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	mov r9, r1
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x14]
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #7
	bne _0802072E
	b _08020D30
_0802072E:
	ldr r2, _08020990
	adds r0, r7, r2
	ldrb r1, [r0, #0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0802073E
	b _080209C8
_0802073E:
	bl sub_08002204
	cmp r0, #0
	bne _08020748
	b _08020D30
_08020748:
	movs r3, #0
	str r3, [sp, #0x10]
	movs r4, #0x86
	lsls r4, r4, #2
	adds r4, r7, r4
	str r4, [sp, #0x18]
_08020754:
	ldr r0, [sp, #0x10]
	ldrh r1, [r7, #0]
	cmp r0, r1
	bne _0802075E
	b _08020978
_0802075E:
	ldr r0, _08020994
	movs r1, #1
	ldr r2, [sp, #0x10]
	lsls r1, r2
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _08020770
	b _08020978
_08020770:
	ldr r1, _08020998
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r5, r1, r0
	ldrh r0, [r5, #0xc]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0802078E
	b _08020978
_0802078E:
	ldr r1, [r7, #0x50]
	ldr r0, [r5, #0x54]
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r2, r0, #0x1f
	adds r0, r5, #0
	adds r0, #0x5c
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r4, #0x4a
	adds r4, r4, r5
	mov sl, r4
	ldrh r0, [r4, #0]
	subs r1, r1, r0
	cmp r1, #0
	bgt _080207B2
	movs r2, #0
_080207B2:
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080207C0
	movs r2, #0
_080207C0:
	cmp r2, #0
	bne _080207C6
	b _08020978
_080207C6:
	ldrh r1, [r7, #8]
	adds r3, r5, #0
	adds r3, #0x14
	ldr r2, _0802099C
	adds r0, r5, r2
	ldrb r0, [r0, #0]
	str r0, [sp, #0]
	ldr r4, _080209A0
	adds r0, r5, r4
	ldrb r0, [r0, #0]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	adds r2, r7, #0
	adds r2, #0x14
	bl sub_0801F024
	cmp r0, #0
	bne _080207EC
	b _08020978
_080207EC:
	ldr r3, _080209A4
	adds r0, r7, r3
	adds r3, r5, r3
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r1, #0
	adds r2, #0xa
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r4, #0
	ldrsh r2, [r3, r4]
	adds r1, r1, r2
	adds r1, #0x14
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0
	cmp r4, r0
	blt _08020832
	movs r1, #1
_08020832:
	cmp r1, #0
	bne _08020838
	b _08020978
_08020838:
	movs r0, #0x1a
	bl sub_0805865C
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_0801EF14
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080209A8
	add r1, sp, #8
	mov r8, r1
	ldr r1, [sp, #0xc]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x14]
	adds r2, #0xbc
	mov r9, r2
	ldrb r0, [r2, #0]
	lsls r0, r0, #8
	ldr r2, _080209AC
	ldr r1, [sp, #8]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	ldr r0, [sp, #0x14]
	adds r0, #0xa9
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x10
	ldr r6, _080209B0
	adds r2, r6, #0
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #8]
	lsrs r0, r2, #0x10
	movs r3, #0x84
	lsls r3, r3, #2
	adds r4, r5, r3
	ldr r1, [r4, #0]
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #8
	adds r3, r6, #0
	ands r3, r2
	orrs r3, r0
	str r3, [sp, #8]
	lsrs r1, r3, #0x10
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080208A4
	ands r3, r6
	str r3, [sp, #8]
_080208A4:
	ldr r0, [r4, #0]
	cmp r0, #0xff
	bne _080208B0
	ldr r0, [sp, #8]
	ands r0, r6
	str r0, [sp, #8]
_080208B0:
	ldr r0, [r5, #0x14]
	ldr r1, [r7, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x18]
	ldr r2, [r7, #0x18]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	ldr r1, _080209B4
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	lsls r1, r1, #0x18
	ldr r2, _080209B8
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0xa
	strh r0, [r5, #0xc]
	ldr r0, [r7, #0x50]
	str r0, [r5, #0x54]
	ldrb r2, [r5, #2]
	ldr r1, _080209BC
	ldr r0, [sp, #8]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	mov r4, r8
	ldrh r0, [r4, #4]
	mov r1, sl
	ldrh r1, [r1, #0]
	adds r0, r0, r1
	mov r2, sl
	strh r0, [r2, #0]
	ldrh r0, [r4, #4]
	str r0, [r5, #0x4c]
	adds r1, r5, #0
	adds r1, #0x68
	ldr r0, _080209C0
	strh r0, [r1, #0]
	mov r4, r9
	ldrh r3, [r4, #0]
	ldrh r0, [r7, #0]
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0]
	add r0, sp, #8
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl sub_08069388
	mov r1, r8
	ldrb r0, [r1, #1]
	adds r1, r5, #0
	adds r1, #0x62
	strh r0, [r1, #0]
	adds r0, r5, #0
	add r1, sp, #8
	bl sub_0801F2CC
	ldrh r1, [r7, #0]
	adds r0, r5, #0
	adds r0, #0x58
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r3, r5, #0
	adds r3, #0x5a
	ldr r2, _080209C4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r1, r1, r2
	movs r0, #1
	ldrh r1, [r1, #0]
	lsls r0, r1
	ldrh r1, [r3, #0]
	orrs r0, r1
	strh r0, [r3, #0]
	add r0, sp, #8
	bl sub_080660EC
	mov r2, r8
	ldrh r1, [r2, #4]
	ldrh r3, [r7, #0]
	adds r3, #4
	str r3, [sp, #0]
	ldrh r0, [r4, #0]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	movs r2, #0
	bl sub_08069080
_08020978:
	ldr r3, [sp, #0x10]
	adds r3, #1
	str r3, [sp, #0x10]
	cmp r3, #4
	bhi _08020984
	b _08020754
_08020984:
	b _08020D30
	.2byte 0x0000
_08020988: .4byte 0x0000FFFF
_0802098C: .4byte 0x000001FD
_08020990: .4byte 0x00000201
_08020994: .4byte gUnk_030056FC
_08020998: .4byte gUnk_030056F4
_0802099C: .4byte 0x0000022E
_080209A0: .4byte 0x0000022F
_080209A4: .4byte 0x00000206
_080209A8: .4byte 0xFFFF0000
_080209AC: .4byte 0xFFFF00FF
_080209B0: .4byte 0xFF00FFFF
_080209B4: .4byte gUnk_084790B4
_080209B8: .4byte 0x00FFFFFF
_080209BC: .4byte 0xFFFFFF00
_080209C0: .4byte 0x0000FFFE
_080209C4: .4byte gUnk_03003CE0
_080209C8:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08020B34
	adds r6, r1, r0
	ldr r1, [r6, #0x30]
	ands r4, r1
	cmp r4, #0
	beq _080209E0
	b _08020D30
_080209E0:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _080209EC
	b _08020D30
_080209EC:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _080209F8
	b _08020D30
_080209F8:
	bl sub_08058DB0
	cmp r0, #0
	beq _08020A02
	b _08020D30
_08020A02:
	movs r4, #0x8a
	lsls r4, r4, #1
	adds r0, r6, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08020A12
	b _08020D30
_08020A12:
	adds r0, r6, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08020A1E
	b _08020D30
_08020A1E:
	ldrh r1, [r6, #0x20]
	adds r0, r1, #0
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08020A2E
	b _08020D30
_08020A2E:
	adds r0, r1, #0
	cmp r0, #0xd
	bne _08020A36
	b _08020D30
_08020A36:
	cmp r0, #0xc
	bne _08020A3C
	b _08020D30
_08020A3C:
	cmp r0, #0xe
	bne _08020A42
	b _08020D30
_08020A42:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08020A4C
	b _08020D30
_08020A4C:
	ldrh r0, [r7, #0]
	lsls r0, r0, #2
	adds r5, r6, #0
	adds r5, #0xe4
	adds r0, r5, r0
	ldr r1, [r0, #0]
	ldr r0, [r7, #0x50]
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	mov sl, r5
	cmp r0, #0
	blt _08020A68
	b _08020D30
_08020A68:
	mov r2, r8
	ldrh r0, [r2, #0]
	mov r3, r9
	orrs r0, r3
	bl sub_08007290
	str r0, [sp, #0x14]
	ldrh r1, [r7, #8]
	adds r2, r7, #0
	adds r2, #0x14
	movs r4, #0x8c
	adds r4, r4, r6
	mov r8, r4
	movs r0, #0x10
	str r0, [sp, #0]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	mov r3, r8
	bl sub_0801F024
	cmp r0, #0
	bne _08020A96
	b _08020D30
_08020A96:
	ldr r1, _08020B38
	adds r0, r7, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r1, #0
	adds r2, #0xa
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r3, #0x3a
	ldrsh r2, [r6, r3]
	adds r1, r1, r2
	adds r1, #0x14
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0
	cmp r4, r0
	blt _08020ADA
	movs r1, #1
_08020ADA:
	cmp r1, #0
	bne _08020AE0
	b _08020D20
_08020AE0:
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x6e
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _08020B00
	ldrb r1, [r1, #0]
	cmp r2, r1
	bhs _08020B00
	b _08020C1C
_08020B00:
	movs r0, #0xa
	strh r0, [r6, #0x20]
	adds r1, r6, #0
	adds r1, #0xb0
	ldr r0, _08020B3C
	strh r0, [r1, #0]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0801ED8C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r0, #0x80
	lsls r0, r0, #8
	mov r4, r9
	ands r0, r4
	cmp r0, #0
	beq _08020B44
	movs r0, #0x27
	bl sub_0805865C
	ldr r0, _08020B40
	ands r4, r0
	mov r9, r4
	b _08020B5E
_08020B34: .4byte gUnk_03003CE0
_08020B38: .4byte 0x00000206
_08020B3C: .4byte 0x0000FFFE
_08020B40: .4byte 0x00007FFF
_08020B44:
	movs r0, #0x1a
	bl sub_0805865C
	ldrh r0, [r6, #0xc]
	cmp r0, #8
	bne _08020B58
	movs r0, #0x4b
	bl sub_0805865C
	b _08020B5E
_08020B58:
	adds r0, #0x45
	bl sub_0805865C
_08020B5E:
	adds r1, r6, #0
	adds r1, #0x88
	ldrh r0, [r1, #0]
	add r0, r9
	strh r0, [r1, #0]
	ldrh r0, [r7, #0]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r7, #0x50]
	str r1, [r0, #0]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrh r0, [r7, #0]
	adds r0, #5
	str r0, [r1, #0]
	ldr r0, [sp, #0x14]
	adds r0, #0xa9
	ldrb r0, [r0, #0]
	add r1, sp, #8
	mov r8, r1
	strb r0, [r1, #2]
	adds r0, r6, #0
	add r1, sp, #8
	bl sub_0801F320
	ldrh r1, [r7, #8]
	adds r0, r6, #0
	adds r0, #0xd0
	strh r1, [r0, #0]
	adds r5, r6, #0
	adds r5, #0x4c
	ldr r4, [sp, #0x14]
	adds r4, #0xbc
	ldrh r3, [r4, #0]
	ldrh r0, [r6, #0]
	str r0, [sp, #0]
	add r0, sp, #8
	adds r1, r5, #0
	movs r2, #0
	bl sub_08069388
	adds r1, r6, #0
	adds r1, #0xe0
	mov r2, r8
	ldrb r0, [r2, #1]
	str r0, [r1, #0]
	ldrb r0, [r2, #1]
	ldr r1, _08020BE8
	ldr r2, [r1, #0]
	adds r2, #0x24
	mov r1, r9
	bl sub_08069224
	mov r3, r8
	ldrb r1, [r3, #1]
	adds r0, r6, #0
	bl sub_0801E1A4
	adds r1, r0, #0
	cmp r1, #0
	beq _08020BEC
	ldrh r0, [r6, #0]
	mov r3, r8
	ldrb r2, [r3, #1]
	bl sub_0801DB94
	b _08020C04
	.2byte 0x0000
_08020BE8: .4byte gUnk_030034E0
_08020BEC:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0801E164
	adds r1, r0, #0
	cmp r1, #0
	beq _08020C04
	ldrh r0, [r6, #0]
	mov r3, r8
	ldrb r2, [r3, #1]
	bl sub_0801DB94
_08020C04:
	ldrh r3, [r7, #0]
	adds r3, #4
	ldrh r0, [r6, #0]
	str r0, [sp, #0]
	ldrh r0, [r4, #0]
	str r0, [sp, #4]
	adds r0, r5, #0
	mov r1, r9
	movs r2, #0
	bl sub_08069080
	b _08020D30
_08020C1C:
	mov r4, r8
	ldr r0, [r4, #0]
	adds r1, r6, #0
	adds r1, #0x90
	ldr r1, [r1, #0]
	bl sub_08022504
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0801ED8C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r0, #0x80
	lsls r0, r0, #8
	mov r1, r9
	ands r0, r1
	cmp r0, #0
	beq _08020C4A
	ldr r0, _08020C60
	ands r1, r0
	mov r9, r1
_08020C4A:
	adds r0, r6, #0
	adds r0, #0x8a
	ldrh r2, [r0, #0]
	mov r3, r9
	lsrs r1, r3, #2
	adds r5, r1, #0
	cmp r1, #0
	beq _08020C64
	adds r1, r2, r1
	b _08020C66
	.2byte 0x0000
_08020C60: .4byte 0x00007FFF
_08020C64:
	adds r1, r2, #1
_08020C66:
	movs r4, #0
	strh r1, [r0, #0]
	ldrh r0, [r7, #0]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r7, #0x50]
	str r1, [r0, #0]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r6, r0
	ldrh r0, [r7, #0]
	adds r0, #5
	str r0, [r1, #0]
	movs r0, #0xb2
	lsls r0, r0, #1
	bl sub_0805865C
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r1, r6, #0
	adds r1, #0x6f
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _08020D30
	ldrb r1, [r1, #0]
	cmp r2, r1
	bhi _08020D30
	mov r1, r9
	subs r0, r1, r5
	add r1, sp, #8
	strh r0, [r1, #4]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	strb r4, [r1, #3]
	movs r0, #0xa
	strh r0, [r7, #0xc]
	adds r0, r6, #0
	adds r0, #0xdc
	ldr r0, [r0, #0]
	str r0, [r7, #0x54]
	ldrh r2, [r7, #2]
	adds r0, r1, #0
	strb r2, [r0, #0]
	adds r2, r7, #0
	adds r2, #0x4a
	ldrh r0, [r1, #4]
	ldrh r3, [r2, #0]
	adds r0, r0, r3
	strh r0, [r2, #0]
	ldrh r0, [r1, #4]
	str r0, [r7, #0x4c]
	ldrb r0, [r1, #1]
	adds r1, r7, #0
	adds r1, #0x62
	strh r0, [r1, #0]
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0801F2CC
	ldrh r1, [r6, #0]
	adds r0, r7, #0
	adds r0, #0x58
	strh r1, [r0, #0]
	adds r2, r7, #0
	adds r2, #0x5a
	movs r0, #1
	ldrh r6, [r6, #0]
	lsls r0, r6
	ldrh r1, [r2, #0]
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, _08020D18
	adds r0, r7, r1
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _08020D10
	adds r1, r7, #0
	adds r1, #0x68
	ldr r0, _08020D1C
	strh r0, [r1, #0]
_08020D10:
	add r0, sp, #8
	bl sub_080660EC
	b _08020D30
_08020D18: .4byte 0x00000226
_08020D1C: .4byte 0x0000FFFE
_08020D20:
	ldrh r0, [r7, #0]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, [r7, #0x50]
	str r1, [r0, #0]
	movs r0, #0x55
	bl sub_0805865C
_08020D30:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08020680
