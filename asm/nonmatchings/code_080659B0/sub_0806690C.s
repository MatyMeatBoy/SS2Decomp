	thumb_func_start sub_0806690C
sub_0806690C: @ 0x0806690C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x128
	mov r9, r0
	bl sub_080020F4
	str r0, [sp, #0x114]
	bl sub_08002118
	adds r4, r0, #0
	mov r0, r9
	bl sub_08002238
	adds r4, #0x14
	add r4, r9
	str r4, [sp, #0x118]
	adds r0, #8
	str r0, [sp, #0x11c]
_08066936:
	movs r4, #1
_08066938:
	bl sub_080003F0
	ldr r1, [sp, #0x11c]
	ldrb r0, [r1, #0]
	cmp r0, #0xb1
	bne _08066956
	ldrb r0, [r1, #1]
	cmp r0, #0xb0
	bgt _08066956
	cmp r0, #0x81
	blt _08066956
	movs r4, #0
	str r0, [sp, #0x124]
	ldrb r2, [r1, #2]
	str r2, [sp, #0x120]
_08066956:
	movs r0, #0x80
	ldr r3, [sp, #0x118]
	strb r0, [r3, #0]
	cmp r4, #0
	bne _08066938
	movs r5, #0
	ldr r6, _080669F8
	movs r4, #1
	mov r7, r9
	lsls r4, r7
_0806696A:
	add r0, sp, #0x124
	ldrb r1, [r0, #0]
	ldr r0, [sp, #0x118]
	strb r1, [r0, #0]
	bl sub_080003F0
	ldr r0, [r6, #0]
	ands r0, r4
	movs r1, #0xb3
	cmp r0, #0
	beq _0806698A
	ldr r2, [sp, #0x11c]
	ldrb r1, [r2, #1]
	adds r5, #1
	cmp r5, #0x3c
	bhi _08066936
_0806698A:
	cmp r1, #0xb2
	bne _0806696A
	cmp r5, #0x3c
	bhi _08066936
	movs r5, #0
	movs r7, #1
	negs r7, r7
	movs r4, #0
	ldr r3, [sp, #0x120]
	cmp r4, r3
	bhs _08066A10
	ldr r4, _080669F8
	mov r8, r4
	movs r6, #1
	mov r0, r9
	lsls r6, r0
_080669AA:
	ldr r1, [sp, #0x11c]
	ldrb r0, [r1, #2]
	subs r4, r0, #1
	cmp r4, #0xff
	bhi _08066A0A
	lsls r4, r4, #1
	lsls r0, r4, #2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r2, [sp, #0x11c]
	ldr r0, [r2, #4]
	str r0, [r1, #0]
	adds r0, r4, #1
	lsls r0, r0, #2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1, #0]
	ldrb r1, [r2, #2]
	movs r0, #0x80
	subs r0, r0, r1
	ldr r3, [sp, #0x118]
	strb r0, [r3, #0]
	bl sub_080003F0
	ldr r1, [sp, #0x11c]
	ldrb r0, [r1, #2]
	cmp r7, r0
	bne _080669FC
	mov r2, r8
	ldr r0, [r2, #0]
	ands r0, r6
	cmp r0, #0
	beq _08066A00
	adds r5, #1
	b _08066A00
	.2byte 0x0000
_080669F8: .4byte gUnk_03002730
_080669FC:
	movs r5, #0
	adds r7, r0, #0
_08066A00:
	cmp r5, #0x3c
	bhi _08066A14
	ldr r3, [sp, #0x11c]
	ldrb r0, [r3, #2]
	subs r4, r0, #1
_08066A0A:
	ldr r0, [sp, #0x120]
	cmp r4, r0
	blo _080669AA
_08066A10:
	cmp r5, #0x3c
	bls _08066A1A
_08066A14:
	ldr r1, [sp, #0x120]
	cmp r4, r1
	blo _08066936
_08066A1A:
	ldr r2, [sp, #0x11c]
	ldrb r0, [r2, #2]
	ldr r3, [sp, #0x118]
	strb r0, [r3, #0]
	bl sub_0800224C
	ldr r0, [sp, #0x124]
	subs r0, #0x81
	cmp r0, #0x2f
	bhi _08066936
	lsls r0, r0, #2
	ldr r1, _08066A38
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08066A38: .4byte _08066A3C
_08066A3C:
	.4byte _08066B74
_08066A40: .4byte _08066B9C
_08066A44: .4byte _08066BD8
_08066A48: .4byte _08066BFC
_08066A4C: .4byte _08066C30
_08066A50: .4byte _08066C44
_08066A54: .4byte _08066C58
_08066A58: .4byte _08066C60
_08066A5C: .4byte _08066C9C
_08066A60: .4byte _08066D20
_08066A64: .4byte _08066F10
_08066A68: .4byte _08066FC2
_08066A6C: .4byte _08066FE8
_08066A70: .4byte _08066FFC
_08066A74: .4byte _08067020
_08066A78: .4byte _08067048
_08066A7C: .4byte _0806705C
_08066A80: .4byte _080670A4
_08066A84: .4byte _08067A60
_08066A88: .4byte _080670F0
_08066A8C: .4byte _080671A0
_08066A90: .4byte _080671D4
_08066A94: .4byte _0806724C
_08066A98: .4byte _080672DC
_08066A9C: .4byte _080672FE
_08066AA0: .4byte _080673A4
_08066AA4: .4byte _08067484
_08066AA8: .4byte _08067492
_08066AAC: .4byte _080675F0
_08066AB0: .4byte _08067680
_08066AB4: .4byte _0806769C
_08066AB8: .4byte _080676C8
_08066ABC: .4byte _080676E0
_08066AC0: .4byte _08067724
_08066AC4: .4byte _08067794
_08066AC8: .4byte _080677A0
_08066ACC: .4byte _080677AE
_08066AD0: .4byte _080677B8
_08066AD4: .4byte _080677DC
_08066AD8: .4byte _0806791C
_08066ADC: .4byte _0806793C
_08066AE0: .4byte _08067946
_08066AE4: .4byte _08067968
_08066AE8: .4byte _08067A3E
_08066AEC: .4byte _08067A48
_08066AF0: .4byte _08067A50
_08066AF4: .4byte _08067A60
_08066AF8: .4byte _08066CE4
_08066AFC:
	ldr r5, _08066B1C
	adds r2, r2, r5
	ldrb r1, [r2, #0]
	movs r0, #2
	movs r3, #0
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r0, [r6, #0]
	adds r0, r4, r0
	adds r0, #0x8a
	strh r3, [r0, #0]
	ldr r0, _08066B20
	ldr r0, [r0, #0]
	strh r7, [r0, #0xc]
	b _08066936
	.2byte 0x0000
_08066B1C: .4byte 0x00000201
_08066B20: .4byte gUnk_03005CF4
_08066B24:
	movs r6, #0xfe
	lsls r6, r6, #1
	adds r2, r2, r6
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	str r0, [r2, #0]
	str r1, [r2, #4]
	b _08066936
_08066B34:
	adds r3, r2, #0
	adds r3, #0x7a
	ldrh r1, [r3, #0]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r3, #0]
	movs r0, #0xa
	strh r0, [r2, #0xc]
	b _08066B56
_08066B46:
	movs r0, #0xa
	strh r0, [r2, #0xc]
	adds r3, r2, #0
	adds r3, #0x7a
	ldrh r1, [r3, #0]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r3, #0]
_08066B56:
	adds r0, r2, #0
	adds r0, #0x5c
	ldrh r0, [r0, #0]
	adds r1, r2, #0
	adds r1, #0x4a
	strh r0, [r1, #0]
	ldrh r0, [r1, #0]
	str r0, [r2, #0x4c]
	b _08066936
_08066B68:
	adds r2, #0x7a
	ldrh r1, [r2, #0]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0]
	b _08066936
_08066B74:
	add r2, sp, #4
	movs r4, #0
	ldr r0, _08066B98
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r7, r9
	muls r7, r1, r7
	adds r1, r7, #0
	adds r0, #2
	adds r1, r1, r0
_08066B88:
	adds r0, r2, r4
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r1, #1
	adds r4, #1
	cmp r4, #9
	bls _08066B88
	b _08066936
_08066B98: .4byte gUnk_03003CE0
_08066B9C:
	ldr r1, _08066BD4
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	adds r4, r0, r1
	ldr r0, [sp, #4]
	strh r0, [r4, #0xc]
	ldr r0, [sp, #4]
	lsrs r0, r0, #0x10
	strh r0, [r4, #0xe]
	bl sub_080020F4
	cmp r9, r0
	bne _08066BBE
	b _08066936
_08066BBE:
	ldr r1, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x64
	strh r1, [r0, #0]
	ldr r0, [sp, #4]
	lsrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x66
	strb r0, [r1, #0]
	b _08066936
	.2byte 0x0000
_08066BD4: .4byte gUnk_03003CE0
_08066BD8:
	bl sub_080020F4
	cmp r9, r0
	bne _08066BE2
	b _08066936
_08066BE2:
	ldr r1, _08066BF8
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	adds r0, r0, r1
	ldr r1, [sp, #4]
	strh r1, [r0, #0x10]
	b _08066936
	.2byte 0x0000
_08066BF8: .4byte gUnk_03003CE0
_08066BFC:
	ldr r2, _08066C28
	ldr r0, _08066C2C
	mov r4, r9
	lsls r1, r4, #2
	adds r3, r1, r0
	ldr r0, [r3, #0]
	lsls r0, r0, #2
	add r1, r9
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r0, r0, r2
	ldr r1, [sp, #4]
	str r1, [r0, #0]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	cmp r0, #8
	bhi _08066C22
	b _08066936
_08066C22:
	movs r0, #9
	str r0, [r3, #0]
	b _08066936
_08066C28: .4byte gUnk_03006260
_08066C2C: .4byte gUnk_03006210
_08066C30:
	ldr r0, _08066C40
	ldr r1, [r0, #0]
	adds r1, #0x22
	add r0, sp, #4
	movs r2, #0xa
	bl CpuSet
	b _08066936
_08066C40: .4byte gUnk_03005CF4
_08066C44:
	add r0, sp, #4
	bl sub_080168FC
	ldr r1, _08066C54
	movs r0, #0
	strb r0, [r1, #0]
	b _08066936
	.2byte 0x0000
_08066C54: .4byte gUnk_03006220
_08066C58:
	ldr r0, [sp, #4]
	bl sub_08016A7C
	b _08066936
_08066C60:
	movs r5, #0
	ldr r3, _08066C94
	movs r6, #1
	mov r8, r6
	ldr r4, [r3, #0]
	movs r1, #0
	ldr r7, _08066C98
	ldr r3, [sp, #4]
	movs r6, #0xb8
	lsls r6, r6, #2
_08066C74:
	mov r0, r8
	lsls r0, r5
	ands r0, r4
	cmp r0, #0
	beq _08066C8A
	ldr r0, [r7, #0]
	adds r2, r1, r0
	ldrh r0, [r2, #2]
	cmp r3, r0
	bne _08066C8A
	b _08066B68
_08066C8A:
	adds r1, r1, r6
	adds r5, #1
	cmp r5, #4
	bls _08066C74
	b _08066936
_08066C94: .4byte gUnk_030056FC
_08066C98: .4byte gUnk_030056F4
_08066C9C:
	bl sub_080020F4
	cmp r9, r0
	bne _08066CA6
	b _08066936
_08066CA6:
	movs r5, #0
	ldr r3, _08066CDC
	movs r1, #1
	mov r8, r1
	ldr r4, [r3, #0]
	movs r1, #0
	ldr r7, _08066CE0
	ldr r3, [sp, #4]
	movs r6, #0xb8
	lsls r6, r6, #2
_08066CBA:
	mov r0, r8
	lsls r0, r5
	ands r0, r4
	cmp r0, #0
	beq _08066CD0
	ldr r0, [r7, #0]
	adds r2, r1, r0
	ldrh r0, [r2, #2]
	cmp r3, r0
	bne _08066CD0
	b _08066B46
_08066CD0:
	adds r1, r1, r6
	adds r5, #1
	cmp r5, #4
	bls _08066CBA
	b _08066936
	.2byte 0x0000
_08066CDC: .4byte gUnk_030056FC
_08066CE0: .4byte gUnk_030056F4
_08066CE4:
	movs r5, #0
	ldr r3, _08066D18
	movs r1, #1
	mov r8, r1
	ldr r4, [r3, #0]
	movs r1, #0
	ldr r7, _08066D1C
	ldr r3, [sp, #4]
	movs r6, #0xb8
	lsls r6, r6, #2
_08066CF8:
	mov r0, r8
	lsls r0, r5
	ands r0, r4
	cmp r0, #0
	beq _08066D0E
	ldr r0, [r7, #0]
	adds r2, r1, r0
	ldrh r0, [r2, #2]
	cmp r3, r0
	bne _08066D0E
	b _08066B34
_08066D0E:
	adds r1, r1, r6
	adds r5, #1
	cmp r5, #4
	bls _08066CF8
	b _08066936
_08066D18: .4byte gUnk_030056FC
_08066D1C: .4byte gUnk_030056F4
_08066D20:
	bl sub_080020F4
	cmp r9, r0
	bne _08066D2A
	b _08066936
_08066D2A:
	add r6, sp, #4
	ldrb r0, [r6, #0]
	cmp r0, #3
	bhi _08066D34
	b _08066E38
_08066D34:
	movs r5, #0
	movs r1, #1
	mov sl, r1
	mov r8, sl
	mov r2, r8
	mov r3, r9
	lsls r2, r3
	mov r8, r2
	movs r7, #0
_08066D46:
	ldr r0, _08066DE0
	mov r1, sl
	lsls r1, r5
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _08066E24
	ldr r4, _08066DE4
	ldr r0, [r4, #0]
	adds r2, r7, r0
	ldrb r0, [r6, #0]
	ldrh r1, [r2, #2]
	cmp r0, r1
	bne _08066E24
	ldrh r0, [r6, #4]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08066D74
	movs r0, #0xa
	strh r0, [r2, #0xc]
_08066D74:
	ldr r0, [r4, #0]
	adds r2, r7, r0
	adds r0, r2, #0
	adds r0, #0x58
	mov r1, r9
	strh r1, [r0, #0]
	adds r3, r2, #0
	adds r3, #0x4a
	ldrh r0, [r6, #4]
	mov ip, r0
	ldr r1, _08066DE8
	adds r0, r1, #0
	mov r1, ip
	ands r0, r1
	ldrh r1, [r3, #0]
	adds r0, r0, r1
	strh r0, [r3, #0]
	ldrh r0, [r6, #4]
	str r0, [r2, #0x4c]
	ldrb r0, [r6, #1]
	adds r1, r2, #0
	adds r1, #0x62
	strh r0, [r1, #0]
	ldr r3, _08066DEC
	adds r0, r2, r3
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _08066DB6
	adds r2, #0x5a
	ldrh r1, [r2, #0]
	mov r0, r8
	orrs r0, r1
	strh r0, [r2, #0]
_08066DB6:
	ldr r0, [r4, #0]
	adds r0, r0, r7
	adds r1, r6, #0
	bl sub_0801F2CC
	ldr r0, [r4, #0]
	adds r0, r0, r7
	ldrb r1, [r6, #1]
	bl sub_0801E244
	adds r1, r0, #0
	cmp r1, #0
	beq _08066DF0
	ldr r0, [r4, #0]
	adds r0, r7, r0
	ldrh r0, [r0, #0]
	adds r0, #4
	ldrb r2, [r6, #1]
	bl sub_0801DB94
	b _08066E0E
_08066DE0: .4byte gUnk_030056FC
_08066DE4: .4byte gUnk_030056F4
_08066DE8: .4byte 0x00007FFF
_08066DEC: .4byte 0x00000226
_08066DF0:
	ldr r0, [r4, #0]
	adds r0, r0, r7
	movs r1, #0
	bl sub_0801E104
	adds r1, r0, #0
	cmp r1, #0
	beq _08066E0E
	ldr r0, [r4, #0]
	adds r0, r7, r0
	ldrh r0, [r0, #0]
	adds r0, #4
	ldrb r2, [r6, #1]
	bl sub_0801DB94
_08066E0E:
	ldrb r0, [r6, #1]
	cmp r0, #3
	bne _08066E24
	ldr r0, _08066E34
	ldr r0, [r0, #0]
	adds r0, r7, r0
	ldrh r0, [r0, #0]
	adds r0, #4
	movs r1, #1
	bl sub_08021E44
_08066E24:
	movs r4, #0xb8
	lsls r4, r4, #2
	adds r7, r7, r4
	adds r5, #1
	cmp r5, #4
	bls _08066D46
	b _08066936
	.2byte 0x0000
_08066E34: .4byte gUnk_030056F4
_08066E38:
	ldrb r4, [r6, #0]
	bl sub_080020F4
	cmp r4, r0
	beq _08066E44
	b _08066936
_08066E44:
	bl sub_080020F4
	movs r7, #0xa6
	lsls r7, r7, #1
	muls r0, r7, r0
	ldr r5, _08066ED4
	adds r0, r0, r5
	add r1, sp, #4
	bl sub_0801F320
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r7, r1
	adds r1, r1, r5
	adds r1, #0x88
	ldrh r2, [r6, #4]
	ldr r0, _08066ED8
	ands r0, r2
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl sub_080020F4
	muls r0, r7, r0
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r5, r3
	adds r0, r0, r1
	mov r1, r9
	adds r1, #1
	str r1, [r0, #0]
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	adds r4, r0, #0
	bl sub_080020F4
	muls r0, r7, r0
	adds r0, r0, r5
	adds r0, #0x6d
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, r4
	bhs _08066EFC
	bl sub_080020F4
	muls r0, r7, r0
	adds r0, r0, r5
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r7, r0
	adds r0, r0, r5
	ldrb r1, [r6, #1]
	bl sub_0801E1A4
	adds r4, r0, #0
	cmp r4, #0
	beq _08066EDC
	bl sub_080020F4
	ldrb r2, [r6, #1]
	adds r1, r4, #0
	bl sub_0801DB94
	b _08066EFC
	.2byte 0x0000
_08066ED4: .4byte gUnk_03003CE0
_08066ED8: .4byte 0x00007FFF
_08066EDC:
	bl sub_080020F4
	muls r0, r7, r0
	adds r0, r0, r5
	movs r1, #0
	bl sub_0801E164
	adds r4, r0, #0
	cmp r4, #0
	beq _08066EFC
	bl sub_080020F4
	ldrb r2, [r6, #1]
	adds r1, r4, #0
	bl sub_0801DB94
_08066EFC:
	ldrb r0, [r6, #1]
	cmp r0, #3
	beq _08066F04
	b _08066936
_08066F04:
	bl sub_080020F4
	movs r1, #1
	bl sub_08021E44
	b _08066936
_08066F10:
	add r6, sp, #4
	ldrb r0, [r6, #0]
	cmp r0, #3
	bls _08066F62
	movs r5, #0
	ldr r3, _08066F4C
	movs r2, #0
_08066F1E:
	movs r1, #1
	lsls r1, r5
	ldr r0, [r3, #0]
	ands r0, r1
	cmp r0, #0
	beq _08066F54
	ldr r0, _08066F50
	ldr r0, [r0, #0]
	adds r1, r2, r0
	ldrb r0, [r6, #0]
	ldrh r4, [r1, #2]
	cmp r0, r4
	bne _08066F54
	adds r0, r1, #0
	movs r1, #0
	bl sub_0801E104
	adds r4, r0, #0
	cmp r4, #0
	bne _08066F48
	b _08066936
_08066F48:
	adds r0, r5, #4
	b _08066F8C
_08066F4C: .4byte gUnk_030056FC
_08066F50: .4byte gUnk_030056F4
_08066F54:
	movs r7, #0xb8
	lsls r7, r7, #2
	adds r2, r2, r7
	adds r5, #1
	cmp r5, #4
	bls _08066F1E
	b _08066936
_08066F62:
	ldrb r4, [r6, #0]
	bl sub_080020F4
	cmp r4, r0
	beq _08066F6E
	b _08066936
_08066F6E:
	bl sub_080020F4
	movs r7, #0xa6
	lsls r7, r7, #1
	muls r0, r7, r0
	ldr r5, _08066F98
	adds r0, r0, r5
	ldrb r1, [r6, #1]
	bl sub_0801E1A4
	adds r4, r0, #0
	cmp r4, #0
	beq _08066F9C
	bl sub_080020F4
_08066F8C:
	ldrb r2, [r6, #1]
	adds r1, r4, #0
	bl sub_0801DB94
	b _08066FBC
	.2byte 0x0000
_08066F98: .4byte gUnk_03003CE0
_08066F9C:
	bl sub_080020F4
	muls r0, r7, r0
	adds r0, r0, r5
	movs r1, #0
	bl sub_0801E164
	adds r4, r0, #0
	cmp r4, #0
	beq _08066FBC
	bl sub_080020F4
	ldrb r2, [r6, #1]
	adds r1, r4, #0
	bl sub_0801DB94
_08066FBC:
	ldrh r0, [r6, #4]
	strh r0, [r4, #6]
	b _08066936
_08066FC2:
	bl sub_080020F4
	cmp r9, r0
	bne _08066FCC
	b _08066936
_08066FCC:
	ldr r0, _08066FE4
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r2, r9
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, #0x30
	adds r1, r1, r0
	ldr r0, [sp, #4]
	str r0, [r1, #0]
	b _08066936
	.2byte 0x0000
_08066FE4: .4byte gUnk_03003CE0
_08066FE8:
	ldr r0, _08066FF8
	ldr r1, [r0, #0]
	ldr r0, [sp, #4]
	str r0, [r1, #0x40]
	bl sub_08056E64
	b _08066936
	.2byte 0x0000
_08066FF8: .4byte gUnk_03005CF4
_08066FFC:
	bl sub_080020F4
	cmp r9, r0
	bne _08067006
	b _08066936
_08067006:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _08067018
	adds r1, r1, r0
	ldr r2, _0806701C
	b _08067038
	.2byte 0x0000
_08067018: .4byte gUnk_03003D38
_0806701C: .4byte 0x0400000C
_08067020:
	bl sub_080020F4
	cmp r9, r0
	bne _0806702A
	b _08066936
_0806702A:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _08067040
	adds r1, r1, r0
	ldr r2, _08067044
_08067038:
	add r0, sp, #4
	bl CpuSet
	b _08066936
_08067040: .4byte gUnk_03003D18
_08067044: .4byte 0x04000008
_08067048:
	ldr r0, _08067058
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x38]
	ldr r1, [sp, #4]
	orrs r0, r1
	str r0, [r2, #0x38]
	b _08066936
	.2byte 0x0000
_08067058: .4byte gUnk_03005CF4
_0806705C:
	add r4, sp, #4
	bl sub_080020F4
	cmp r9, r0
	bne _08067068
	b _08066936
_08067068:
	movs r5, #0
	ldr r3, _0806709C
	ldr r3, [r3, #0]
	movs r1, #0
	movs r6, #1
_08067072:
	adds r0, r6, #0
	lsls r0, r5
	ands r0, r3
	cmp r0, #0
	beq _0806708C
	ldr r0, _080670A0
	ldr r0, [r0, #0]
	adds r2, r1, r0
	ldrh r0, [r4, #6]
	ldrh r7, [r2, #2]
	cmp r0, r7
	bne _0806708C
	b _08066B24
_0806708C:
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r5, #1
	cmp r5, #4
	bls _08067072
	b _08066936
	.2byte 0x0000
_0806709C: .4byte gUnk_030056FC
_080670A0: .4byte gUnk_030056F4
_080670A4:
	bl sub_080020F4
	cmp r9, r0
	bne _080670AE
	b _08066936
_080670AE:
	movs r5, #0
	ldr r4, _080670E8
	movs r2, #0
	movs r3, #1
_080670B6:
	adds r1, r3, #0
	lsls r1, r5
	ldr r0, [r4, #0]
	ands r0, r1
	cmp r0, #0
	beq _080670D8
	ldr r0, _080670EC
	ldr r0, [r0, #0]
	adds r1, r2, r0
	ldr r0, [sp, #4]
	ldrh r6, [r1, #2]
	cmp r0, r6
	bne _080670D8
	ldr r0, [sp, #8]
	str r0, [r1, #0x14]
	ldr r0, [sp, #0xc]
	str r0, [r1, #0x18]
_080670D8:
	movs r7, #0xb8
	lsls r7, r7, #2
	adds r2, r2, r7
	adds r5, #1
	cmp r5, #4
	bls _080670B6
	b _08066936
	.2byte 0x0000
_080670E8: .4byte gUnk_030056FC
_080670EC: .4byte gUnk_030056F4
_080670F0:
	bl sub_080020F4
	cmp r9, r0
	bne _080670FC
	bl _08066936
_080670FC:
	add r0, sp, #4
	mov sl, r0
	movs r4, #0
	ldr r0, [sp, #4]
	cmp r4, r0
	blo _0806710C
	bl _08066936
_0806710C:
	ldr r1, _08067194
	mov ip, r1
	movs r2, #0xb4
	lsls r2, r2, #3
	mov r8, r2
	ldr r7, _08067198
	add r3, sp, #8
_0806711A:
	mov r6, ip
	ldr r5, [r6, #0]
	ldrb r0, [r3, #2]
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, r5, r1
	mov r1, r8
	adds r0, r2, r1
	ldrh r0, [r0, #0]
	cmp r0, #0xb
	beq _08067182
	cmp r0, #0xc
	beq _08067182
	adds r2, r2, r7
	ldrh r1, [r2, #0]
	ldrh r0, [r3, #0]
	subs r1, r1, r0
	movs r6, #0
	strh r1, [r2, #0]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r2, r0, r7
	ldrh r1, [r2, #0]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0806715C
	strh r6, [r2, #0]
_0806715C:
	mov r5, ip
	ldr r2, [r5, #0]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	ldrb r1, [r3, #3]
	ldr r6, _0806719C
	adds r0, r0, r6
	strh r1, [r0, #0]
	ldrb r1, [r3, #2]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	add r2, r8
	movs r0, #0xa
	strh r0, [r2, #0]
_08067182:
	adds r3, #4
	adds r4, #1
	mov r1, sl
	ldr r0, [r1, #0]
	cmp r4, r0
	blo _0806711A
	bl _08066936
	.2byte 0x0000
_08067194: .4byte gUnk_03005CF4
_08067198: .4byte 0x0000059C
_0806719C: .4byte 0x0000059E
_080671A0:
	bl sub_080020F4
	cmp r0, #0
	beq _080671AC
	bl _08066936
_080671AC:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r3, _080671D0
	movs r2, #0xa6
	lsls r2, r2, #1
	mov r4, r9
	muls r4, r2, r4
	adds r2, r4, #0
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r3, r3, r5
	adds r2, r2, r3
	ldr r2, [r2, #0]
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	add r3, sp, #0xc
	b _080671EC
_080671D0: .4byte gUnk_03003CE0
_080671D4:
	bl sub_080020F4
	cmp r0, #0
	beq _080671E0
	bl _08066936
_080671E0:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r3, sp, #0x10
_080671EC:
	bl sub_0805B2C4
	adds r5, r0, #0
	bl sub_08002164
	cmp r0, #1
	bls _08067204
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	movs r2, #1
	bl sub_0802230C
_08067204:
	ldr r6, _08067240
	ldr r2, [r6, #0]
	cmp r2, #0x31
	bls _08067210
	bl _08066936
_08067210:
	ldr r1, _08067244
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r4, [r1, #0]
	adds r4, r4, r0
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0x98
	strb r0, [r4, #0]
	adds r1, r4, #0
	adds r1, #8
	adds r0, r5, #0
	ldr r2, _08067248
	bl CpuSet
	movs r0, #4
	strb r0, [r4, #1]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
	bl _08066936
	.2byte 0x0000
_08067240: .4byte gUnk_03006338
_08067244: .4byte gUnk_03006300
_08067248: .4byte 0x04000008
_0806724C:
	bl sub_080020F4
	cmp r0, #0
	beq _08067258
	bl _08066936
_08067258:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, _080672CC
	movs r3, #0xa6
	lsls r3, r3, #1
	mov r6, r9
	muls r6, r3, r6
	adds r3, r6, #0
	movs r7, #0xa4
	lsls r7, r7, #1
	adds r2, r2, r7
	adds r4, r3, r2
	ldr r2, [r4, #0]
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	bl sub_0805D37C
	cmp r0, #0
	beq _08067284
	bl _08066936
_08067284:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [r4, #0]
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	add r3, sp, #0xc
	bl sub_0805B2C4
	adds r3, r0, #0
	ldr r5, _080672D0
	ldr r2, [r5, #0]
	cmp r2, #0x31
	bls _080672A4
	bl _08066936
_080672A4:
	ldr r1, _080672D4
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r4, [r1, #0]
	adds r4, r4, r0
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0x98
	strb r0, [r4, #0]
	adds r1, r4, #0
	adds r1, #8
	adds r0, r3, #0
	ldr r2, _080672D8
	bl CpuSet
	movs r0, #4
	strb r0, [r4, #1]
	b _08067392
	.2byte 0x0000
_080672CC: .4byte gUnk_03003CE0
_080672D0: .4byte gUnk_03006338
_080672D4: .4byte gUnk_03006300
_080672D8: .4byte 0x04000008
_080672DC:
	bl sub_080020F4
	cmp r0, #0
	bne _080672E8
	bl _08066936
_080672E8:
	bl sub_0805B618
	add r1, sp, #4
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	bl _08066936
_080672FE:
	bl sub_080020F4
	cmp r0, #0
	beq _0806730A
	bl _08066936
_0806730A:
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0805D460
	adds r3, r0, #0
	cmp r3, #0
	bne _0806735C
	mov r4, r9
	lsls r0, r4, #0x10
	lsrs r5, r0, #0x10
	ldr r4, _08067354
	ldr r2, [r4, #0]
	cmp r2, #0x31
	bls _0806732C
	bl _08066936
_0806732C:
	ldr r1, _08067358
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0x9a
	strb r0, [r1, #0]
	lsls r0, r5, #0x10
	str r0, [r1, #8]
	ldrh r0, [r3, #0xc]
	str r0, [r1, #0xc]
	strb r2, [r1, #1]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	bl _08066936
_08067354: .4byte gUnk_03006338
_08067358: .4byte gUnk_03006300
_0806735C:
	movs r0, #2
	strh r0, [r3, #0xa]
	mov r5, r9
	lsls r0, r5, #0x10
	lsrs r6, r0, #0x10
	movs r4, #1
	ldr r5, _0806739C
	ldr r2, [r5, #0]
	cmp r2, #0x31
	bls _08067374
	bl _08066936
_08067374:
	ldr r1, _080673A0
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	str r4, [r1, #4]
	movs r0, #0x9a
	strb r0, [r1, #0]
	lsls r0, r6, #0x10
	orrs r0, r4
	str r0, [r1, #8]
	ldrh r0, [r3, #0xc]
	str r0, [r1, #0xc]
	strb r4, [r1, #1]
_08067392:
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	bl _08066936
_0806739C: .4byte gUnk_03006338
_080673A0: .4byte gUnk_03006300
_080673A4:
	ldr r1, [sp, #4]
	lsrs r0, r1, #0x10
	ldr r6, [sp, #0x114]
	cmp r0, r6
	beq _080673B2
	bl _08066936
_080673B2:
	ldr r0, _080673CC
	ands r1, r0
	cmp r1, #0
	beq _08067456
	cmp r6, #0
	bne _080673D0
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0805D498
	b _080673DA
	.2byte 0x0000
_080673CC: .4byte 0x0000FFFF
_080673D0:
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0805D460
_080673DA:
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_0805AB20
	cmp r0, #0
	beq _08067424
	ldr r3, _0806741C
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bhi _08067412
	ldr r1, _08067420
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0x9b
	strb r0, [r1, #0]
	ldrh r0, [r4, #0xc]
	str r0, [r1, #8]
	strb r2, [r1, #1]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
_08067412:
	movs r0, #0x26
	bl sub_0805865C
	b _08067456
	.2byte 0x0000
_0806741C: .4byte gUnk_03006338
_08067420: .4byte gUnk_03006300
_08067424:
	ldr r3, _08067474
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bhi _0806744C
	ldr r1, _08067478
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0x9b
	strb r0, [r1, #0]
	ldrh r0, [r4, #0xc]
	str r0, [r1, #8]
	strb r2, [r1, #1]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
_0806744C:
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	adds r2, r5, #0
	bl sub_08066490
_08067456:
	ldr r0, _0806747C
	movs r1, #0xa6
	lsls r1, r1, #1
	ldr r7, [sp, #0x114]
	adds r2, r7, #0
	muls r2, r1, r2
	adds r0, #0x30
	adds r2, r2, r0
	ldr r0, [r2, #0]
	ldr r1, _08067480
	ands r0, r1
	str r0, [r2, #0]
	bl _08066936
	.2byte 0x0000
_08067474: .4byte gUnk_03006338
_08067478: .4byte gUnk_03006300
_0806747C: .4byte gUnk_03003CE0
_08067480: .4byte 0xFFFFBFFF
_08067484:
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl sub_0805D4C4
	bl _08066936
_08067492:
	ldr r0, [sp, #4]
	lsrs r0, r0, #0x10
	bl sub_08019BF8
	adds r5, r0, #0
	ldr r0, [sp, #4]
	ldr r1, _080674C8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	subs r0, #1
	cmp r0, #0x12
	bls _080674BC
	bl _08066936
_080674BC:
	lsls r0, r0, #2
	ldr r1, _080674CC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080674C8: .4byte 0x0000FFFF
_080674CC: .4byte _080674D0
_080674D0:
	.4byte _0806751C
_080674D4: .4byte _08066936
_080674D8: .4byte _08066936
_080674DC: .4byte _08066936
_080674E0: .4byte _08066936
_080674E4: .4byte _08067560
_080674E8: .4byte _08067566
_080674EC: .4byte _08067598
_080674F0: .4byte _08067580
_080674F4: .4byte _080675AE
_080674F8: .4byte _080675CA
_080674FC: .4byte _08066936
_08067500: .4byte _08066936
_08067504: .4byte _08066936
_08067508: .4byte _08066936
_0806750C: .4byte _08066936
_08067510: .4byte _08066936
_08067514: .4byte _08066936
_08067518: .4byte _0806751C
_0806751C:
	ldr r1, [sp, #8]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x64
	adds r1, r2, #0
	adds r1, #0xa2
	ldrh r1, [r1, #0]
	muls r0, r1, r0
	movs r1, #0x64
	bl __divsi3
	adds r3, r5, #0
	adds r3, #0x5c
	ldrh r1, [r3, #0]
	adds r1, r1, r0
	strh r1, [r3, #0]
	movs r0, #0
	ldrsh r2, [r3, r0]
	ldr r1, _0806755C
	adds r0, r5, r1
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	cmp r2, r0
	bgt _08067556
	bl _08066936
_08067556:
	strh r0, [r3, #0]
	bl _08066936
_0806755C: .4byte 0x0000020A
_08067560:
	movs r6, #0x81
	lsls r6, r6, #2
	b _0806759C
_08067566:
	ldr r0, _0806757C
	adds r1, r5, r0
	adds r0, r2, #0
	adds r0, #0xa2
	ldrh r0, [r0, #0]
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl _08066936
	.2byte 0x0000
_0806757C: .4byte 0x00000206
_08067580:
	ldr r3, _08067594
	adds r1, r5, r3
	adds r0, r2, #0
	adds r0, #0xa2
	ldrh r0, [r0, #0]
	ldrh r4, [r1, #0]
	adds r0, r0, r4
	strh r0, [r1, #0]
	bl _08066936
_08067594: .4byte 0x0000020A
_08067598:
	movs r6, #0x82
	lsls r6, r6, #2
_0806759C:
	adds r1, r5, r6
	adds r0, r2, #0
	adds r0, #0xa2
	ldrh r0, [r0, #0]
	ldrh r7, [r1, #0]
	adds r0, r0, r7
	strh r0, [r1, #0]
	bl _08066936
_080675AE:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801E104
	adds r4, r0, #0
	cmp r4, #0
	bne _080675C0
	bl _08066936
_080675C0:
	ldrh r0, [r5, #0]
	adds r0, #4
	adds r1, r4, #0
	movs r2, #6
	b _080675E4
_080675CA:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801E104
	adds r4, r0, #0
	cmp r4, #0
	bne _080675DC
	bl _08066936
_080675DC:
	ldrh r0, [r5, #0]
	adds r0, #4
	adds r1, r4, #0
	movs r2, #7
_080675E4:
	bl sub_0801DB94
	ldr r0, [sp, #8]
	str r0, [r4, #0x18]
	bl _08066936
_080675F0:
	ldr r0, [sp, #4]
	ldr r1, _0806764C
	ands r0, r1
	ldr r1, [sp, #0x114]
	cmp r0, r1
	beq _08067600
	bl _08066936
_08067600:
	add r4, sp, #0x104
	movs r0, #1
	strh r0, [r4, #0]
	ldr r0, [sp, #4]
	lsrs r0, r0, #0x10
	strh r0, [r4, #2]
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl sub_0805BD5C
	cmp r0, #0
	bne _08067654
	adds r0, r4, #0
	bl sub_0805AB20
	cmp r0, #0
	beq _08067626
	bl _08066936
_08067626:
	ldr r2, _08067650
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r3, [sp, #0x114]
	adds r1, r3, #0
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x8c
	adds r0, r1, r0
	ldr r0, [r0, #0]
	adds r2, #0x90
	adds r1, r1, r2
	ldr r1, [r1, #0]
	adds r2, r4, #0
	bl sub_08066490
	bl _08066936
	.2byte 0x0000
_0806764C: .4byte 0x0000FFFF
_08067650: .4byte gUnk_03003CE0
_08067654:
	ldr r1, [r4, #0]
	ldr r0, _08067678
	cmp r1, r0
	beq _08067660
	bl _08066936
_08067660:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806766C
	bl _08066936
_0806766C:
	ldr r0, _0806767C
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0x24]
	bl _08066936
_08067678: .4byte 0x00060001
_0806767C: .4byte gUnk_03006440
_08067680:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r4, r9
	muls r4, r0, r4
	adds r0, r4, #0
	ldr r1, _08067698
	adds r0, r0, r1
	ldr r1, [sp, #4]
	bl sub_08065918
	bl _08066936
_08067698: .4byte gUnk_03003CE0
_0806769C:
	bl sub_0800D12C
	ldr r2, _080676C4
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r5, [sp, #0x114]
	adds r1, r5, #0
	muls r1, r0, r1
	adds r1, r1, r2
	ldrh r0, [r1, #0x2e]
	ldrh r1, [r1, #0x2c]
	bl sub_08056FB8
	bl sub_08057170
	movs r0, #0x24
	bl sub_0805865C
	bl _08066936
_080676C4: .4byte gUnk_03003CE0
_080676C8:
	ldr r3, [sp, #4]
	lsrs r2, r3, #0x10
	ldr r0, _080676DC
	ands r3, r0
	mov r0, r9
	ldr r1, [sp, #0x114]
	bl sub_0801D7AC
	bl _08066936
_080676DC: .4byte 0x0000FFFF
_080676E0:
	movs r5, #0
	ldr r3, _0806771C
	movs r7, #1
	ldr r3, [r3, #0]
	ldr r1, [sp, #4]
	movs r0, #0xff
	ands r1, r0
	movs r4, #0
	movs r6, #0xb8
	lsls r6, r6, #2
	mov r8, r6
_080676F6:
	adds r0, r7, #0
	lsls r0, r5
	ands r0, r3
	cmp r0, #0
	beq _08067710
	ldr r6, _08067720
	ldr r0, [r6, #0]
	adds r2, r4, r0
	ldrh r0, [r2, #2]
	cmp r1, r0
	bne _08067710
	bl _08066AFC
_08067710:
	add r4, r8
	adds r5, #1
	cmp r5, #4
	bls _080676F6
	bl _08066936
_0806771C: .4byte gUnk_030056FC
_08067720: .4byte gUnk_030056F4
_08067724:
	movs r5, #0
	ldr r7, _08067788
	movs r4, #0
	movs r6, #0xb4
	lsls r6, r6, #1
_0806772E:
	ldr r0, _0806778C
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _08067778
	ldr r0, _08067790
	ldr r0, [r0, #0]
	adds r2, r4, r0
	ldr r0, [sp, #4]
	ldrh r1, [r2, #2]
	cmp r0, r1
	bne _08067778
	ldr r1, [sp, #8]
	adds r0, r2, #0
	bl sub_0801E104
	adds r2, r0, #0
	cmp r2, #0
	beq _08067778
	ldr r0, [sp, #8]
	strh r0, [r2, #4]
	mov r3, r9
	strh r3, [r2, #2]
	ldrh r1, [r2, #2]
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0xc]
	cmp r0, #5
	bne _08067778
	ldrh r0, [r2, #4]
	cmp r0, #6
	bne _08067778
	strh r6, [r2, #0]
_08067778:
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r5, #1
	cmp r5, #4
	bls _0806772E
	bl _08066936
_08067788: .4byte gUnk_03003CE0
_0806778C: .4byte gUnk_030056FC
_08067790: .4byte gUnk_030056F4
_08067794:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl sub_08057328
	bl _08066936
_080677A0:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	ldr r2, [sp, #0xc]
	bl sub_08057430
	bl _08066936
_080677AE:
	mov r0, r9
	bl sub_080793BC
	bl _08066936
_080677B8:
	ldr r1, _080677D8
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r1
	add r1, sp, #4
	ldrh r1, [r1, #0]
	movs r3, #0x8f
	lsls r3, r3, #1
	adds r0, r0, r3
	strh r1, [r0, #0]
	bl _08066936
	.2byte 0x0000
_080677D8: .4byte gUnk_03003CE0
_080677DC:
	ldr r0, [sp, #4]
	ldr r4, [sp, #0x114]
	cmp r0, r4
	beq _080677E6
	b _08067906
_080677E6:
	ldr r5, _0806787C
	mov sl, r5
	adds r7, r4, #0
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r7, r6, r7
	adds r5, r7, r5
	adds r0, r5, #0
	adds r0, #0x62
	ldrh r1, [r0, #0]
	adds r0, #0x62
	strh r1, [r0, #0]
	ldr r0, _08067880
	adds r2, r7, r0
	ldr r0, [r2, #0]
	ldr r1, _08067884
	ands r0, r1
	str r0, [r2, #0]
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0]
	ldrh r0, [r5, #0x20]
	cmp r0, #0xb
	bne _08067820
	movs r0, #0
	strh r0, [r5, #0x20]
_08067820:
	ldr r6, _08067888
	ldr r2, [r6, #0]
	cmp r2, #0x31
	bhi _08067858
	ldr r1, _0806788C
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r4, [r1, #0]
	adds r4, r4, r0
	mov r3, r8
	str r3, [r4, #4]
	movs r0, #0x8c
	strb r0, [r4, #0]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r2, _08067880
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r4, #8]
	mov r3, r8
	strb r3, [r4, #1]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
_08067858:
	bl sub_0806617C
	ldrh r0, [r5, #0]
	mov r4, sl
	adds r4, #0xe0
	adds r4, r7, r4
	ldr r1, [r4, #0]
	bl sub_08022200
	ldr r0, [r4, #0]
	subs r0, #1
	cmp r0, #5
	bhi _08067906
	lsls r0, r0, #2
	ldr r1, _08067890
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0806787C: .4byte gUnk_03003CE0
_08067880: .4byte gUnk_03003D10
_08067884: .4byte 0xFFFFDFFF
_08067888: .4byte gUnk_03006338
_0806788C: .4byte gUnk_03006300
_08067890: .4byte _08067894
_08067894:
	.4byte _080678AC
_08067898: .4byte _080678BC
_0806789C: .4byte _080678CC
_080678A0: .4byte _080678DC
_080678A4: .4byte _080678EC
_080678A8: .4byte _080678FC
_080678AC:
	ldr r0, _080678B8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x24]
	adds r0, #1
	strh r0, [r1, #0x24]
	b _08067906
_080678B8: .4byte gUnk_030034E0
_080678BC:
	ldr r0, _080678C8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x26]
	adds r0, #1
	strh r0, [r1, #0x26]
	b _08067906
_080678C8: .4byte gUnk_030034E0
_080678CC:
	ldr r0, _080678D8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x28]
	adds r0, #1
	strh r0, [r1, #0x28]
	b _08067906
_080678D8: .4byte gUnk_030034E0
_080678DC:
	ldr r0, _080678E8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x2a]
	adds r0, #1
	strh r0, [r1, #0x2a]
	b _08067906
_080678E8: .4byte gUnk_030034E0
_080678EC:
	ldr r0, _080678F8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x2c]
	adds r0, #1
	strh r0, [r1, #0x2c]
	b _08067906
_080678F8: .4byte gUnk_030034E0
_080678FC:
	ldr r0, _08067918
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x2e]
	adds r0, #1
	strh r0, [r1, #0x2e]
_08067906:
	movs r0, #0x91
	bl sub_0805865C
	ldr r0, [sp, #4]
	movs r1, #8
	bl sub_08074DE8
	bl _08066936
_08067918: .4byte gUnk_030034E0
_0806791C:
	ldr r3, [sp, #4]
	ldr r4, _08067938
	adds r0, r3, #0
	ands r0, r4
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	lsrs r3, r3, #0x10
	ands r3, r4
	ldr r4, [sp, #0x10]
	str r4, [sp, #0]
	bl sub_08079888
	bl _08066936
_08067938: .4byte 0x0000FFFF
_0806793C:
	ldr r0, [sp, #4]
	bl sub_08065C50
	bl _08066936
_08067946:
	ldr r3, [sp, #4]
	ldr r4, _08067964
	adds r0, r3, #0
	ands r0, r4
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	lsrs r3, r3, #0x10
	ands r3, r4
	ldr r4, [sp, #0x10]
	str r4, [sp, #0]
	bl sub_08079CC4
	bl _08066936
	.2byte 0x0000
_08067964: .4byte 0x0000FFFF
_08067968:
	bl sub_0800CE30
	adds r4, r0, #0
	cmp r4, #0
	beq _08067990
	ldr r3, _0806798C
	ldr r1, [r3, #0]
	ldr r0, [sp, #4]
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, [sp, #8]
	str r0, [r2, #0]
	movs r0, #0
	str r0, [r1, #0x74]
	str r0, [r1, #0x78]
	b _080679A4
	.2byte 0x0000
_0806798C: .4byte gUnk_03005CF4
_08067990:
	ldr r2, _08067A28
	ldr r0, [r2, #0]
	ldr r1, [sp, #4]
	str r1, [r0, #0x74]
	ldr r1, [sp, #8]
	str r1, [r0, #0x78]
	str r4, [r0, #0x7c]
	adds r0, #0x80
	str r4, [r0, #0]
	adds r3, r2, #0
_080679A4:
	add r4, sp, #0xc
	movs r5, #7
	movs r2, #0
	ldr r7, _08067A28
	movs r6, #0xd8
	lsls r6, r6, #1
_080679B0:
	ldr r0, [r7, #0]
	adds r0, r0, r6
	adds r0, r0, r2
	ldrb r1, [r4, #0]
	strb r1, [r0, #0]
	adds r4, #1
	adds r2, #1
	cmp r2, r5
	blo _080679B0
	movs r2, #0
	cmp r2, r5
	bhs _080679E0
	ldr r7, _08067A28
	movs r6, #0xde
	lsls r6, r6, #1
_080679CE:
	ldr r0, [r7, #0]
	adds r0, r0, r6
	adds r0, r0, r2
	ldrb r1, [r4, #0]
	strb r1, [r0, #0]
	adds r4, #1
	adds r2, #1
	cmp r2, r5
	blo _080679CE
_080679E0:
	movs r5, #5
	movs r2, #0
	ldr r7, _08067A28
	ldr r6, _08067A2C
_080679E8:
	ldr r0, [r7, #0]
	adds r0, r0, r6
	adds r0, r0, r2
	ldrb r1, [r4, #0]
	strb r1, [r0, #0]
	adds r4, #1
	adds r2, #1
	cmp r2, r5
	blo _080679E8
	movs r2, #0
	cmp r2, r5
	bhs _08067A16
	ldr r7, _08067A28
	ldr r6, _08067A30
_08067A04:
	ldr r0, [r7, #0]
	adds r0, r0, r6
	adds r0, r0, r2
	ldrb r1, [r4, #0]
	strb r1, [r0, #0]
	adds r4, #1
	adds r2, #1
	cmp r2, r5
	blo _08067A04
_08067A16:
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq _08067A34
	ldr r1, [r3, #0]
	movs r0, #1
	str r0, [r1, #0x70]
	bl _08066936
	.2byte 0x0000
_08067A28: .4byte gUnk_03005CF4
_08067A2C: .4byte 0x000001B7
_08067A30: .4byte 0x000001C3
_08067A34:
	ldr r1, [r3, #0]
	movs r0, #2
	str r0, [r1, #0x70]
	bl _08066936
_08067A3E:
	ldr r1, _08067A44
	b _08067A52
	.2byte 0x0000
_08067A44: .4byte gUnk_0300636C
_08067A48:
	ldr r1, _08067A4C
	b _08067A52
_08067A4C: .4byte gUnk_03006224
_08067A50:
	ldr r1, _08067A5C
_08067A52:
	ldr r0, [sp, #4]
	strb r0, [r1, #0]
	bl _08066936
	.2byte 0x0000
_08067A5C: .4byte gUnk_03006228
_08067A60:
	bl sub_08056E24
	bl _08066936
	thumb_func_end sub_0806690C
