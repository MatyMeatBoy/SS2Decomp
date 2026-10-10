	thumb_func_start sub_08046F28
sub_08046F28: @ 0x08046F28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08046F6C
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	muls r0, r5, r0
	adds r4, #0x8c
	adds r0, r0, r4
	ldr r0, [r0, #0]
	asrs r6, r0, #8
	ldr r0, _08046F70
	cmp r6, r0
	ble _08046F74
	adds r0, r7, #0
	movs r1, #6
	bl sub_08029174
	b _08046F7C
_08046F6C: .4byte gUnk_03003CE0
_08046F70: .4byte 0x000001AF
_08046F74:
	adds r0, r7, #0
	movs r1, #2
	bl sub_08029174
_08046F7C:
	bl sub_0800CE30
	cmp r0, #0
	beq _08046F98
	ldr r0, _08046F90
	ldr r0, [r0, #0]
	ldr r1, _08046F94
	adds r0, r0, r1
	b _08046FA0
	.2byte 0x0000
_08046F90: .4byte gUnk_03005CF4
_08046F94: .4byte 0x000001C7
_08046F98:
	ldr r0, _08046FBC
	ldr r0, [r0, #0]
	ldr r3, _08046FC0
	adds r0, r0, r3
_08046FA0:
	ldrb r0, [r0, #0]
	asrs r6, r0, #2
	movs r0, #1
	ands r6, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08046FC8
	ldr r0, _08046FBC
	ldr r0, [r0, #0]
	ldr r4, _08046FC4
	adds r0, r0, r4
	b _08046FD0
	.2byte 0x0000
_08046FBC: .4byte gUnk_03005CF4
_08046FC0: .4byte 0x000001BB
_08046FC4: .4byte 0x000001C7
_08046FC8:
	ldr r0, _08046FEC
	ldr r0, [r0, #0]
	ldr r1, _08046FF0
	adds r0, r0, r1
_08046FD0:
	ldrb r0, [r0, #0]
	asrs r5, r0, #3
	movs r0, #1
	ands r5, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08046FF8
	ldr r0, _08046FEC
	ldr r0, [r0, #0]
	ldr r3, _08046FF4
	adds r0, r0, r3
	b _08047000
	.2byte 0x0000
_08046FEC: .4byte gUnk_03005CF4
_08046FF0: .4byte 0x000001BB
_08046FF4: .4byte 0x000001C7
_08046FF8:
	ldr r0, _0804701C
	ldr r0, [r0, #0]
	ldr r4, _08047020
	adds r0, r0, r4
_08047000:
	ldrb r0, [r0, #0]
	asrs r4, r0, #4
	movs r0, #1
	ands r4, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08047028
	ldr r0, _0804701C
	ldr r0, [r0, #0]
	ldr r1, _08047024
	adds r0, r0, r1
	b _08047030
	.2byte 0x0000
_0804701C: .4byte gUnk_03005CF4
_08047020: .4byte 0x000001BB
_08047024: .4byte 0x000001C7
_08047028:
	ldr r0, _0804704C
	ldr r0, [r0, #0]
	ldr r3, _08047050
	adds r0, r0, r3
_08047030:
	ldrb r0, [r0, #0]
	asrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	cmp r6, #0
	beq _080470AA
	cmp r5, #0
	beq _080470AA
	cmp r4, #0
	beq _080470AA
	cmp r1, #0
	beq _0804710E
	b _08047058
	.2byte 0x0000
_0804704C: .4byte gUnk_03005CF4
_08047050: .4byte 0x000001BB
_08047054:
	bl sub_080003F0
_08047058:
	bl sub_0805F184
	cmp r0, #0
	bne _08047054
	b _08047066
_08047062:
	bl sub_080003F0
_08047066:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047062
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08047088
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08047090
_08047088: .4byte 0x001402C4
_0804708C:
	bl sub_080003F0
_08047090:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804709C
	b _0804743E
_0804709C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0804708C
	bl sub_0805EFBC
	b _0804743E
_080470AA:
	cmp r1, #0
	beq _0804710E
	b _080470B4
_080470B0:
	bl sub_080003F0
_080470B4:
	bl sub_0805F184
	cmp r0, #0
	bne _080470B0
	b _080470C2
_080470BE:
	bl sub_080003F0
_080470C2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080470BE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080470E4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080470EC
_080470E4: .4byte 0x001402C3
_080470E8:
	bl sub_080003F0
_080470EC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080470F8
	b _0804743E
_080470F8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080470E8
	bl sub_0805EFBC
	b _0804743E
_08047106:
	adds r0, r1, #0
	b _080471C0
_0804710A:
	bl sub_080003F0
_0804710E:
	bl sub_0805F184
	cmp r0, #0
	bne _0804710A
	b _0804711C
_08047118:
	bl sub_080003F0
_0804711C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047118
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08047140
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08047148
	.2byte 0x0000
_08047140: .4byte 0x001402BC
_08047144:
	bl sub_080003F0
_08047148:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804715E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08047144
	bl sub_0805EFBC
_0804715E:
	movs r3, #0
	movs r2, #0
	ldr r0, _080471CC
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_0804716C:
	ldrh r0, [r1, #0]
	cmp r0, #2
	bne _0804717A
	ldrh r0, [r1, #2]
	cmp r0, #0x38
	bne _0804717A
	adds r3, #1
_0804717A:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _0804716C
	adds r6, r3, #0
	bl sub_080020F4
	adds r5, r0, #0
	cmp r6, #0
	bne _08047190
	b _0804743E
_08047190:
	cmp r5, #0
	beq _08047196
	b _0804743E
_08047196:
	adds r2, r7, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r7, r0
	bls _080471D8
	ldr r0, _080471D0
	ldr r0, [r0, #0]
	ldr r3, _080471D4
	adds r1, r0, r3
	movs r3, #0
_080471AC:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _08047106
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _080471AC
	bl sub_080003F0
	movs r0, #0
_080471C0:
	cmp r0, #0
	beq _08047220
	adds r0, #0x42
	strh r4, [r0, #0]
	b _08047220
	.2byte 0x0000
_080471CC: .4byte gUnk_030034E0
_080471D0: .4byte gUnk_03005CF4
_080471D4: .4byte 0x000007A4
_080471D8:
	cmp r7, #0
	beq _08047200
	subs r2, r7, #1
	cmp r2, #4
	bhi _08047220
	ldr r1, _080471FC
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	movs r1, #3
	bl sub_08019EB8
	b _08047220
_080471FC: .4byte gUnk_030056F4
_08047200:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08047218
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0, #0]
	b _08047220
_08047218: .4byte gUnk_03003CE0
_0804721C:
	bl sub_080003F0
_08047220:
	bl sub_0805F184
	cmp r0, #0
	bne _0804721C
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08047244
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804724C
	.2byte 0x0000
_08047244: .4byte 0x001402BD
_08047248:
	bl sub_080003F0
_0804724C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08047248
	adds r0, r4, #0
	bl sub_0805EF14
	adds r4, r0, #0
	cmp r4, #0
	bne _08047264
	b _080473F0
_08047264:
	add r3, sp, #0xc
	mov r8, r3
	b _0804726E
_0804726A:
	bl sub_080003F0
_0804726E:
	bl sub_0805F184
	cmp r0, #0
	bne _0804726A
	b _0804727C
_08047278:
	bl sub_080003F0
_0804727C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047278
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080472A0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080472A8
	.2byte 0x0000
_080472A0: .4byte 0x001402BF
_080472A4:
	bl sub_080003F0
_080472A8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080472BE
	bl sub_0800CDF8
	cmp r0, #0
	beq _080472A4
	bl sub_0805EFBC
_080472BE:
	movs r4, #1
	movs r3, #0
	ldr r6, _08047338
	movs r5, #0
_080472C6:
	ldr r0, [r6, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #2
	bne _080472EE
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x38
	bne _080472EE
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _080472F4
_080472EE:
	adds r3, #1
	cmp r3, #0x18
	bls _080472C6
_080472F4:
	movs r1, #1
	movs r2, #0x1e
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	mov r1, r8
	movs r2, #0
_08047304:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08047304
	movs r4, #0
_08047310:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08047310
	ldr r0, _0804733C
	movs r1, #0x25
	bl sub_08068070
	ldr r0, _08047340
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08047348
	movs r0, #0x33
	bl sub_08006D08
	b _08047348
_08047338: .4byte gUnk_030034E0
_0804733C: .4byte sub_0805990C
_08047340: .4byte gUnk_030027D0
_08047344:
	bl sub_080003F0
_08047348:
	bl sub_0805F184
	cmp r0, #0
	bne _08047344
	b _08047356
_08047352:
	bl sub_080003F0
_08047356:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047352
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08047378
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08047380
_08047378: .4byte 0x001402C0
_0804737C:
	bl sub_080003F0
_08047380:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804739C
	bl sub_0800CDF8
	cmp r0, #0
	beq _0804737C
	bl sub_0805EFBC
	b _0804739C
_08047398:
	bl sub_080003F0
_0804739C:
	bl sub_0805F184
	cmp r0, #0
	bne _08047398
	b _080473AA
_080473A6:
	bl sub_080003F0
_080473AA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080473A6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080473CC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080473D4
_080473CC: .4byte 0x001402C1
_080473D0:
	bl sub_080003F0
_080473D4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804743E
	bl sub_0800CDF8
	cmp r0, #0
	beq _080473D0
	bl sub_0805EFBC
	b _0804743E
_080473EC:
	bl sub_080003F0
_080473F0:
	bl sub_0805F184
	cmp r0, #0
	bne _080473EC
	b _080473FE
_080473FA:
	bl sub_080003F0
_080473FE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080473FA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08047420
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08047428
_08047420: .4byte 0x001402BE
_08047424:
	bl sub_080003F0
_08047428:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804743E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08047424
	bl sub_0805EFBC
_0804743E:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0802939C
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08047470
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08047470: .4byte gUnk_03003CE0
	thumb_func_end sub_08046F28
