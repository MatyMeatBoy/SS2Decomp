	thumb_func_start sub_08044EB4
sub_08044EB4: @ 0x08044EB4
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #1
	mov r9, r0
	ldr r1, _08044EE4
	mov r8, r1
_08044EC8:
	bl sub_0800CE30
	cmp r0, #0
	beq _08044EE8
	mov r2, r8
	ldr r0, [r2, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r7, r0, #6
	mov r2, r9
	ands r7, r2
	b _08044EFA
_08044EE4: .4byte gUnk_03005CF4
_08044EE8:
	mov r1, r8
	ldr r0, [r1, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	asrs r7, r0, #6
	mov r0, r9
	ands r7, r0
_08044EFA:
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08044F0E
	mov r1, r8
	ldr r0, [r1, #0]
	movs r2, #0xe2
	lsls r2, r2, #1
	b _08044F16
_08044F0E:
	mov r1, r8
	ldr r0, [r1, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
_08044F16:
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	asrs r5, r0, #7
	ands r5, r4
	movs r4, #1
	b _08044F2C
_08044F22:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08044F38
_08044F2C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08044F22
_08044F38:
	movs r1, #1
	str r1, [sp, #8]
	bl sub_0800CE30
	ldr r1, [sp, #8]
	cmp r0, #0
	beq _08044F50
	mov r2, r8
	ldr r0, [r2, #0]
	movs r2, #0xe2
	lsls r2, r2, #1
	b _08044F58
_08044F50:
	mov r2, r8
	ldr r0, [r2, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
_08044F58:
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	asrs r4, r0, #6
	ands r4, r1
	movs r1, #1
	str r1, [sp, #8]
	bl sub_0800CE30
	ldr r1, [sp, #8]
	cmp r0, #0
	beq _08044F7C
	mov r2, r8
	ldr r0, [r2, #0]
	movs r2, #0xe2
	lsls r2, r2, #1
	b _08044F84
_08044F78:
	adds r2, r1, #0
	b _08045116
_08044F7C:
	mov r2, r8
	ldr r0, [r2, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
_08044F84:
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	asrs r0, r0, #7
	ands r0, r1
	cmp r7, r4
	bne _08044F92
	b _08045154
_08044F92:
	ldr r4, _08044F98
	b _08044FA6
	.2byte 0x0000
_08044F98: .4byte 0x00000898
_08044F9C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08044FB2
_08044FA6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08044F9C
_08044FB2:
	bl sub_0805EFBC
_08044FB6:
	bl sub_080003F0
	bl sub_0805F184
	cmp r0, #0
	bne _08044FB6
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08044FEC
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	mov r2, r9
	orrs r0, r2
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	ldr r7, _08044FF0
	mov r1, r8
	ldr r0, [r1, #0]
	ldr r2, _08044FF4
	adds r4, r0, r2
	movs r5, #0
	b _08044FFC
	.2byte 0x0000
_08044FEC: .4byte gUnk_03003CE0
_08044FF0: .4byte sub_08059A40
_08044FF4: .4byte 0x00000E34
_08044FF8:
	adds r5, #1
	adds r4, #0x28
_08044FFC:
	cmp r5, #0x1d
	bhi _0804503A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08044FF8
	b _08045010
_0804500C:
	bl sub_080003F0
_08045010:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804500C
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x3c
	bl sub_08000274
_0804503A:
	adds r0, r6, #0
	movs r1, #0x78
	movs r2, #0xfa
	movs r3, #0
	bl sub_08028AAC
	adds r0, r6, #0
	movs r1, #4
	bl sub_080290E4
	adds r0, r6, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r6, #0
	movs r1, #0x78
	movs r2, #0x82
	movs r3, #0x64
	bl sub_08028AAC
	adds r0, r6, #0
	movs r1, #0
	bl sub_0802939C
	b _08045070
_0804506C:
	bl sub_080003F0
_08045070:
	bl sub_0805F184
	cmp r0, #0
	bne _0804506C
	b _0804507E
_0804507A:
	bl sub_080003F0
_0804507E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804507A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080450A0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080450A8
	.2byte 0x0000
_080450A0: .4byte 0x001400EA
_080450A4:
	bl sub_080003F0
_080450A8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080450A4
	adds r0, r6, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r6, #0
	movs r1, #6
	bl sub_080290E4
	adds r0, r6, #0
	movs r1, #0xb0
	movs r2, #0x82
	movs r3, #0x28
	bl sub_08028AAC
	adds r0, r6, #0
	movs r1, #4
	bl sub_080290E4
	adds r0, r6, #0
	movs r1, #0xb0
	movs r2, #0x60
	movs r3, #0x1e
	bl sub_08028AAC
	adds r0, r6, #0
	movs r1, #0
	bl sub_080290E4
	adds r0, r6, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #8
	movs r5, #4
	mov r1, r8
	ldr r0, [r1, #0]
	ldr r2, _08045144
	adds r1, r0, r2
	movs r2, #0
_08045100:
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _08045108
	b _08044F78
_08045108:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08045100
	bl sub_080003F0
	movs r2, #0
_08045116:
	cmp r2, #0
	beq _08045126
	strh r4, [r2, #0x18]
	strh r5, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08045126:
	ldr r4, _08045148
	mov r1, r8
	ldr r0, [r1, #0]
	ldr r2, _08045144
	adds r1, r0, r2
	movs r2, #0
_08045132:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _08045150
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08045132
	b _08045306
	.2byte 0x0000
_08045144: .4byte 0x000007A4
_08045148: .4byte sub_0802FEA0
_0804514C:
	adds r2, r1, #0
	b _080452DA
_08045150:
	adds r0, r1, #0
	b _0804530C
_08045154:
	cmp r5, r0
	bne _0804515A
	b _08044EC8
_0804515A:
	movs r4, #0xc8
	lsls r4, r4, #4
	b _0804516A
_08045160:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08045176
_0804516A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08045160
_08045176:
	bl sub_0805EFBC
_0804517A:
	bl sub_080003F0
	bl sub_0805F184
	cmp r0, #0
	bne _0804517A
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080451B0
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	mov r2, r9
	orrs r0, r2
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	ldr r7, _080451B4
	mov r1, r8
	ldr r0, [r1, #0]
	ldr r2, _080451B8
	adds r4, r0, r2
	movs r5, #0
	b _080451C0
	.2byte 0x0000
_080451B0: .4byte gUnk_03003CE0
_080451B4: .4byte sub_08059A40
_080451B8: .4byte 0x00000E34
_080451BC:
	adds r5, #1
	adds r4, #0x28
_080451C0:
	cmp r5, #0x1d
	bhi _080451FE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080451BC
	b _080451D4
_080451D0:
	bl sub_080003F0
_080451D4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080451D0
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0x3c
	bl sub_08000274
_080451FE:
	adds r0, r6, #0
	movs r1, #0x78
	movs r2, #0xfa
	movs r3, #0
	bl sub_08028AAC
	adds r0, r6, #0
	movs r1, #4
	bl sub_080290E4
	adds r0, r6, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r6, #0
	movs r1, #0x78
	movs r2, #0x82
	movs r3, #0x64
	bl sub_08028AAC
	adds r0, r6, #0
	movs r1, #0
	bl sub_0802939C
	b _08045234
_08045230:
	bl sub_080003F0
_08045234:
	bl sub_0805F184
	cmp r0, #0
	bne _08045230
	b _08045242
_0804523E:
	bl sub_080003F0
_08045242:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804523E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08045264
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804526C
	.2byte 0x0000
_08045264: .4byte 0x001400EB
_08045268:
	bl sub_080003F0
_0804526C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08045268
	adds r0, r6, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r6, #0
	movs r1, #6
	bl sub_080290E4
	adds r0, r6, #0
	movs r1, #0xb0
	movs r2, #0x82
	movs r3, #0x28
	bl sub_08028AAC
	adds r0, r6, #0
	movs r1, #4
	bl sub_080290E4
	adds r0, r6, #0
	movs r1, #0xb0
	movs r2, #0x60
	movs r3, #0x1e
	bl sub_08028AAC
	adds r0, r6, #0
	movs r1, #0
	bl sub_080290E4
	adds r0, r6, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #8
	movs r5, #4
	mov r1, r8
	ldr r0, [r1, #0]
	ldr r2, _0804533C
	adds r1, r0, r2
	movs r2, #0
_080452C4:
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _080452CC
	b _0804514C
_080452CC:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080452C4
	bl sub_080003F0
	movs r2, #0
_080452DA:
	cmp r2, #0
	beq _080452EA
	strh r4, [r2, #0x18]
	strh r5, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_080452EA:
	ldr r4, _08045340
	mov r1, r8
	ldr r0, [r1, #0]
	ldr r2, _0804533C
	adds r1, r0, r2
	movs r2, #0
_080452F6:
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _080452FE
	b _08045150
_080452FE:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080452F6
_08045306:
	bl sub_080003F0
	movs r0, #0
_0804530C:
	cmp r0, #0
	beq _08045312
	str r4, [r0, #0x44]
_08045312:
	ldr r0, _08045344
	movs r1, #0x17
	bl sub_08068070
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08045348
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	b _08044EC8
	.2byte 0x0000
_0804533C: .4byte 0x000007A4
_08045340: .4byte sub_0802FEA0
_08045344: .4byte sub_0805990C
_08045348: .4byte gUnk_03003CE0
	thumb_func_end sub_08044EB4
