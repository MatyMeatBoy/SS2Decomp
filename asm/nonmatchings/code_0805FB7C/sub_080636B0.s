	thumb_func_start sub_080636B0
sub_080636B0: @ 0x080636B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	str r0, [sp, #0x88]
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0x88]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0806398C
	adds r7, r1, r0
	ldr r0, _08063990
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x9c]
	movs r1, #5
	movs r2, #1
	negs r2, r2
	ldr r3, _08063994
	mov sl, r3
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	mov r1, sl
	bl sub_08006EE0
	str r0, [sp, #0x18]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0xa0]
	mov r5, sp
	adds r5, #0x82
	mov r2, sp
	adds r2, #0x84
	str r2, [sp, #0xa4]
	mov r6, sp
	adds r6, #0x86
	movs r3, #0x7e
	add r3, sp
	mov r8, r3
	add r1, sp, #0x44
	mov r9, r1
	cmp r0, #0
	beq _0806374E
	movs r4, #0x5e
	ldr r0, _08063998
	mov r1, sl
	bl sub_08006EE0
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _0806374E
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	mov r1, sl
	bl sub_08006EE0
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _0806374E
	movs r1, #0
	add r2, sp, #0x2c
_08063736:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _08063736
	ldr r0, [sp, #0x9c]
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0806374E:
	add r1, sp, #0x10
	movs r4, #0
	movs r0, #0xf
	strb r0, [r1, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x90]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #0x8c]
	bl sub_080020F4
	ldr r3, [sp, #0x88]
	cmp r3, r0
	bne _0806377A
	bl sub_0800CEE8
_0806377A:
	ldr r0, [sp, #0xa0]
	strh r4, [r0, #0]
	strh r4, [r5, #0]
	movs r1, #0
	movs r0, #2
	ldr r2, [sp, #0xa4]
	strh r0, [r2, #0]
	strh r1, [r6, #0]
	movs r3, #0
	mov r0, r8
	strh r3, [r0, #0]
	str r1, [sp, #0x94]
	ldr r2, _0806399C
	adds r4, r7, #0
	adds r4, #0x64
	ldrh r1, [r4, #0]
	movs r0, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r5, [r0, #0]
	movs r0, #1
	negs r0, r0
	ldr r6, _08063994
	str r5, [sp, #0x54]
	ldr r2, [sp, #0x94]
	mov r3, r9
	str r2, [r3, #0x14]
	str r0, [r3, #0x18]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x4c]
	str r4, [sp, #0xa8]
	cmp r0, #0
	beq _08063812
	ldr r0, _080639A0
	mov sl, r0
	mov r4, sl
	ands r4, r5
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x44]
	cmp r0, #0
	beq _08063812
	mov r1, sl
	ands r4, r1
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x50]
	cmp r0, #0
	beq _08063812
	movs r1, #0
	add r2, sp, #0x60
_080637FA:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _080637FA
	add r0, sp, #0x44
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_08063812:
	ldrh r0, [r7, #0]
	mov r2, r9
	strb r0, [r2, #0x1c]
	bl sub_0800CF80
	adds r5, r0, #0
	cmp r5, #0
	beq _08063824
	b _08063AB4
_08063824:
	mov r3, r8
	strh r5, [r3, #0]
	add r4, sp, #0x7c
	strh r5, [r4, #0]
	movs r0, #0x21
	str r0, [sp, #0x98]
	bl sub_080020F4
	ldr r1, [sp, #0x88]
	cmp r1, r0
	bne _08063842
	movs r0, #0x75
	bl sub_0805865C
	strh r5, [r7, #0x1c]
_08063842:
	ldr r2, [sp, #0x94]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0x9f
	ble _08063850
	b _08063AB4
_08063850:
	movs r3, #1
	mov sl, r3
	add r0, sp, #0x78
	mov r8, r0
	mov r6, sp
	adds r6, #0x7a
_0806385C:
	ldr r1, [sp, #0x8c]
	lsls r0, r1, #0x10
	ldr r2, [sp, #0x90]
	lsls r1, r2, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	add r2, sp, #0x78
	mov r3, sp
	adds r3, #0x7a
	bl sub_0800BC08
	ldr r3, [sp, #0x4c]
	mov r0, sl
	str r0, [sp, #0]
	movs r0, #0x21
	add r1, sp, #0x7c
	mov r2, sp
	adds r2, #0x7e
	bl sub_08008CC4
	adds r1, r7, #0
	adds r1, #0xb6
	strh r0, [r1, #0]
	ldr r3, [sp, #0x18]
	mov r1, sl
	str r1, [sp, #0]
	movs r0, #0
	add r1, sp, #0x80
	mov r2, sp
	adds r2, #0x82
	bl sub_08008CC4
	ldr r3, [sp, #0x18]
	mov r2, sl
	str r2, [sp, #0]
	movs r0, #1
	add r1, sp, #0x84
	mov r2, sp
	adds r2, #0x86
	bl sub_08008CC4
	bl sub_0800CC98
	cmp r0, #0
	beq _080638C0
	b _08063A74
_080638C0:
	bl sub_08058DB0
	cmp r0, #0
	beq _080638CA
	b _08063A74
_080638CA:
	bl sub_0800CD34
	cmp r0, #0
	beq _080638D4
	b _08063A74
_080638D4:
	bl sub_0800D11C
	cmp r0, #0
	beq _080638DE
	b _08063A74
_080638DE:
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r4, r7, r3
	ldr r0, [r4, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08063902
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806390C
	ldr r0, [r4, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge _08063902
	b _08063A74
_08063902:
	bl sub_0800CCCC
	cmp r0, #0
	beq _0806390C
	b _08063A74
_0806390C:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0, #0]
	ldrb r1, [r0, #4]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1a
	movs r0, #0x21
	negs r0, r0
	ands r1, r0
	ldr r0, _080639A4
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r1, r0
	beq _0806392C
	b _08063A74
_0806392C:
	ldr r1, [sp, #0x1c]
	movs r0, #0x1f
	movs r2, #1
	bl sub_08000AF0
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080639AC
	ldr r0, _080639A8
	ldr r0, [r0, #0]
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _08063A1C
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r2, #0
	ldrsh r1, [r6, r2]
	asrs r2, r5, #0x10
	subs r1, r1, r2
	add r2, sp, #0x7c
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	add r2, sp, #0x60
	str r2, [sp, #4]
	ldr r2, [sp, #0x4c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x98]
	bl sub_08007CF0
	ldrh r0, [r7, #0]
	adds r0, #0x10
	mov r3, r9
	ldr r1, [r3, #0xc]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	b _08063A1C
	.2byte 0x0000
_0806398C: .4byte gUnk_03003CE0
_08063990: .4byte 0x0005005E
_08063994: .4byte gUnk_08518938
_08063998: .4byte 0x0006005E
_0806399C: .4byte gUnk_08479140
_080639A0: .4byte 0x0000FFFF
_080639A4: .4byte gUnk_03003170
_080639A8: .4byte gUnk_03002344
_080639AC:
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	asrs r2, r5, #0x10
	subs r1, r1, r2
	add r2, sp, #0x7c
	ldrh r3, [r2, #0]
	mov r2, sl
	str r2, [sp, #0]
	add r2, sp, #0x60
	str r2, [sp, #4]
	ldr r2, [sp, #0x4c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x98]
	bl sub_08007CF0
	ldr r3, [sp, #0xa8]
	ldrh r0, [r3, #0]
	cmp r0, #9
	bne _080639F0
	ldrh r0, [r7, #0]
	adds r0, #0x10
	mov r2, r9
	ldr r1, [r2, #0xc]
	movs r2, #1
	bl sub_08000AF0
	adds r4, r7, #0
	adds r4, #0x66
	b _08063A08
_080639F0:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	adds r4, r7, #0
	adds r4, #0x66
	ldrb r2, [r4, #0]
	lsls r2, r2, #5
	mov r3, r9
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
_08063A08:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldrb r2, [r4, #0]
	lsls r2, r2, #5
	mov r3, r9
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
_08063A1C:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	asrs r2, r5, #0x10
	adds r2, #0x18
	subs r1, r1, r2
	ldr r2, [sp, #0xa0]
	ldrh r3, [r2, #0]
	mov r2, sl
	str r2, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007CF0
	ldr r0, _08063AC0
	ldr r0, [r0, #0]
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _08063A74
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldr r2, [sp, #0xa4]
	ldrh r3, [r2, #0]
	movs r2, #3
	str r2, [sp, #0]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08008E74
_08063A74:
	bl sub_080003F0
	bl sub_0800CB78
	cmp r0, #0
	bne _08063AB4
	bl sub_0800CD00
	cmp r0, #0
	bne _08063AB4
	bl sub_08056E90
	cmp r0, #0
	bne _08063AA6
	bl sub_08058DB0
	cmp r0, #0
	bne _08063AA6
	ldr r3, [sp, #0x94]
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x94]
_08063AA6:
	ldr r2, [sp, #0x94]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0x9f
	bgt _08063AB4
	b _0806385C
_08063AB4:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08063B6A
	b _08063AC8
	.2byte 0x0000
_08063AC0: .4byte gUnk_03002344
_08063AC4:
	bl sub_080003F0
_08063AC8:
	bl sub_0800D11C
	cmp r0, #0
	bne _08063AC4
	b _08063AD6
_08063AD2:
	bl sub_080003F0
_08063AD6:
	bl sub_0800D098
	adds r4, r0, #0
	cmp r4, #0
	bne _08063AD2
	bl sub_080020F4
	ldr r3, [sp, #0x88]
	cmp r3, r0
	bne _08063B6A
	movs r0, #0x75
	bl sub_0805867C
	adds r1, r7, #0
	adds r1, #0x68
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_0800CCCC
	adds r5, r0, #0
	cmp r5, #0
	beq _08063B10
	ldrh r0, [r7, #0x2e]
	ldrh r1, [r7, #0x2c]
	bl sub_08056FB8
	strh r4, [r7, #0x2e]
	strh r4, [r7, #0x2c]
	b _08063B6A
_08063B10:
	ldr r4, [r7, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r4, r0
	cmp r4, #0
	beq _08063B58
	bl sub_0800CF80
	cmp r0, #0
	bne _08063B3C
	movs r0, #0
	movs r1, #4
	bl sub_08056FB8
	ldr r0, _08063B38
	ldr r1, [r0, #0]
	movs r0, #3
	strh r0, [r1, #0x36]
	b _08063B66
	.2byte 0x0000
_08063B38: .4byte gUnk_03005CF4
_08063B3C:
	movs r0, #0xb
	movs r1, #0
	movs r2, #1
	bl sub_08026CD0
	ldr r0, _08063B54
	ldr r0, [r0, #0]
	strh r5, [r0, #0x36]
	bl sub_0800CEFC
	b _08063B66
	.2byte 0x0000
_08063B54: .4byte gUnk_03005CF4
_08063B58:
	movs r0, #0
	movs r1, #0
	bl sub_08056FB8
	ldr r0, _08063B7C
	ldr r0, [r0, #0]
	strh r4, [r0, #0x36]
_08063B66:
	bl sub_0800CCDC
_08063B6A:
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08063B7C: .4byte gUnk_03005CF4
	thumb_func_end sub_080636B0
