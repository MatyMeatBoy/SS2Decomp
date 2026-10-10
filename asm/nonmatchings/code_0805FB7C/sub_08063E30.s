	thumb_func_start sub_08063E30
sub_08063E30: @ 0x08063E30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08064194
	add sp, r4
	movs r0, #0
	movs r1, #1
	bl sub_08000990
	ldr r1, _08064198
	add r5, sp, #0x1c8
	ldr r0, [r5, #0]
	ands r0, r1
	movs r1, #0xe8
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #0]
	adds r4, r5, #0
	movs r0, #1
	adds r1, r4, #0
	bl sub_08000AA8
	movs r6, #0
	movs r0, #0xb2
	lsls r0, r0, #7
	strh r0, [r5, #0]
	movs r0, #2
	adds r1, r4, #0
	bl sub_08000AA8
	movs r0, #0xb4
	lsls r0, r0, #7
	strh r0, [r5, #0]
	movs r0, #3
	adds r1, r4, #0
	bl sub_08000AA8
	add r0, sp, #0x1c0
	str r6, [r0, #0]
	ldr r1, _0806419C
	ldr r2, _080641A0
	bl CpuSet
	movs r5, #0xc0
	lsls r5, r5, #0x13
	movs r4, #0xf
	str r4, [sp, #0]
	movs r0, #0x3a
	movs r1, #0x1d
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B650
	str r4, [sp, #0]
	movs r0, #0x39
	movs r1, #0x1a
	adds r2, r5, #0
	movs r3, #0
	bl sub_0800B650
	ldr r1, _080641A4
	strh r6, [r1, #4]
	strh r6, [r1, #6]
	strh r6, [r1, #0xa]
	strh r6, [r1, #0xe]
	movs r0, #0x10
	strh r0, [r1, #8]
	adds r0, #0xf0
	strh r0, [r1, #0xc]
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #0
	bl sub_080009F8
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	bl sub_08002164
	str r0, [sp, #0x1d8]
	movs r0, #0
	str r0, [sp, #0x1dc]
	movs r1, #0
	str r1, [sp, #0x1cc]
	ldr r2, [sp, #0x1d8]
	cmp r1, r2
	bhs _08063F16
	ldr r0, _080641A8
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r1, r0, r3
	movs r2, #0xa6
	lsls r2, r2, #1
_08063EF6:
	ldr r0, [r1, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _08063F08
	ldr r4, [sp, #0x1dc]
	adds r4, #1
	str r4, [sp, #0x1dc]
_08063F08:
	adds r1, r1, r2
	ldr r5, [sp, #0x1cc]
	adds r5, #1
	str r5, [sp, #0x1cc]
	ldr r6, [sp, #0x1d8]
	cmp r5, r6
	blo _08063EF6
_08063F16:
	movs r0, #0
	str r0, [sp, #0x1d0]
	movs r1, #0
	str r1, [sp, #0x1cc]
	ldr r2, [sp, #0x1d8]
	cmp r1, r2
	blo _08063F26
	b _0806407E
_08063F26:
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r3, [sp, #0x1cc]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, _080641A8
	adds r6, r1, r0
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r6, r4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r3, #1
	str r3, [sp, #0x1ec]
	cmp r0, #0xe
	beq _08063F4C
	b _08064072
_08063F4C:
	ldr r2, _080641AC
	adds r0, r6, #0
	adds r0, #0x64
	ldrh r1, [r0, #0]
	movs r0, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, [r0, #0]
	movs r0, #0x34
	ldr r5, [sp, #0x1d0]
	adds r6, r5, #0
	muls r6, r0, r6
	add r6, sp
	adds r6, #0x10
	subs r0, #0x35
	str r2, [r6, #0x10]
	movs r1, #0
	str r1, [r6, #0x14]
	str r0, [r6, #0x18]
	adds r0, r2, #0
	ldr r1, _080641B0
	str r2, [sp, #0x200]
	bl sub_08006EE0
	str r0, [r6, #8]
	add r7, sp, #0xe0
	lsls r5, r5, #2
	mov r8, r5
	ldr r3, [sp, #0x1d0]
	lsls r3, r3, #3
	str r3, [sp, #0x1f8]
	adds r4, #0x5c
	add r4, sp
	mov sl, r4
	mov r5, sp
	adds r5, #0xf0
	str r5, [sp, #0x1e8]
	movs r1, #0x80
	lsls r1, r1, #1
	add r1, sp
	mov r9, r1
	ldr r3, [sp, #0x1d0]
	lsls r3, r3, #1
	str r3, [sp, #0x1f4]
	ldr r4, [sp, #0x1dc]
	lsls r4, r4, #1
	str r4, [sp, #0x1fc]
	add r4, sp, #0x104
	ldr r5, [sp, #0x1d0]
	adds r5, #1
	str r5, [sp, #0x1f0]
	ldr r2, [sp, #0x200]
	cmp r0, #0
	beq _0806400A
	ldr r3, _080641B4
	adds r5, r3, #0
	ands r5, r2
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r5, r0
	adds r0, r5, #0
	ldr r1, _080641B0
	str r3, [sp, #0x204]
	bl sub_08006EE0
	str r0, [r6, #0]
	ldr r3, [sp, #0x204]
	cmp r0, #0
	beq _0806400A
	ands r5, r3
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r5, r0
	adds r0, r5, #0
	ldr r1, _080641B0
	bl sub_08006EE0
	str r0, [r6, #0xc]
	cmp r0, #0
	beq _0806400A
	movs r1, #0
	adds r2, r6, #0
	adds r2, #0x1c
_08063FF2:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _08063FF2
	adds r0, r6, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_0806400A:
	movs r0, #0x34
	ldr r6, [sp, #0x1d0]
	muls r0, r6, r0
	add r0, sp
	adds r0, #0x10
	add r1, sp, #0x1cc
	ldrb r1, [r1, #0]
	strb r1, [r0, #0x1c]
	mov r2, r8
	adds r1, r7, r2
	adds r2, r6, #0
	add r2, r8
	lsls r0, r2, #1
	adds r0, #0xa
	str r0, [r1, #0]
	add r0, sp, #0x1a0
	ldr r3, [sp, #0x1f8]
	adds r0, r0, r3
	movs r5, #0
	str r5, [r0, #0]
	adds r0, r3, #0
	add r0, sl
	str r5, [r0, #0]
	ldr r0, [sp, #0x1e8]
	add r0, r8
	str r5, [r0, #0]
	lsls r2, r2, #3
	ldr r0, [sp, #0x1f4]
	adds r1, r0, r6
	lsls r1, r1, #3
	mov r5, r9
	adds r3, r2, r5
	ldr r6, [sp, #0x1fc]
	ldr r5, [sp, #0x1dc]
	adds r0, r6, r5
	lsls r0, r0, #2
	subs r1, r1, r0
	adds r1, #0x84
	lsls r5, r1, #8
	movs r7, #4
_0806405A:
	str r5, [r3, #0]
	adds r1, r4, r2
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r3, #8
	adds r2, #8
	subs r7, #1
	cmp r7, #0
	bge _0806405A
	ldr r6, [sp, #0x1f0]
	str r6, [sp, #0x1d0]
_08064072:
	ldr r0, [sp, #0x1ec]
	str r0, [sp, #0x1cc]
	ldr r1, [sp, #0x1d8]
	cmp r0, r1
	bhs _0806407E
	b _08063F26
_0806407E:
	movs r0, #0xa
	bl sub_0801AB90
	ldr r1, _080641B8
	ldr r0, _080641B4
	strh r0, [r1, #0]
	bl sub_08000B38
_0806408E:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08064098
	b _080643FE
_08064098:
	bl sub_080021A8
	adds r1, r0, #0
	cmp r1, #0
	beq _080640A4
	b _080643FE
_080640A4:
	movs r0, #0x10
	str r0, [sp, #0]
	str r1, [sp, #4]
	movs r0, #2
	movs r1, #0x3c
	movs r2, #1
	movs r3, #0x10
	bl sub_0800903C
	ldr r1, _080641A4
	ldrh r0, [r1, #6]
	adds r0, #4
	strh r0, [r1, #6]
	ldrh r0, [r1, #8]
	adds r0, #3
	strh r0, [r1, #8]
	ldrh r0, [r1, #0xc]
	subs r0, #3
	strh r0, [r1, #0xc]
	movs r2, #0
	str r2, [sp, #0x1d4]
	movs r3, #0
	str r3, [sp, #0x1d0]
	movs r4, #0
	str r4, [sp, #0x1cc]
	ldr r5, [sp, #0x1d8]
	cmp r4, r5
	blo _080640DE
	b _0806424E
_080640DE:
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r6, [sp, #0x1cc]
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _080641A8
	adds r6, r1, r0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r2, [sp, #0x1cc]
	adds r2, #1
	str r2, [sp, #0x1ec]
	cmp r0, #0xe
	beq _08064106
	b _08064242
_08064106:
	add r1, sp, #0xe0
	ldr r3, [sp, #0x1d0]
	lsls r0, r3, #2
	adds r1, r1, r0
	ldr r2, [r1, #0]
	mov r8, r0
	cmp r2, #0
	bne _080641BC
	add r0, sp, #0xf0
	mov r4, r8
	adds r5, r0, r4
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _0806412E
	adds r0, r3, #0
	adds r0, #0xf0
	bl sub_0805865C
	movs r0, #1
	str r0, [r5, #0]
_0806412E:
	movs r7, #4
	ldr r5, [sp, #0x1d0]
	lsls r5, r5, #3
	str r5, [sp, #0x1f8]
	movs r0, #0xd2
	lsls r0, r0, #1
	add r0, sp
	mov sl, r0
	movs r1, #0x80
	lsls r1, r1, #1
	add r1, sp
	mov r9, r1
	add r4, sp, #0x104
	ldr r2, [sp, #0x1d0]
	adds r2, #1
	str r2, [sp, #0x1f0]
	add r5, sp, #0x124
	adds r3, r6, #0
	adds r3, #0xb0
	str r3, [sp, #0x1e0]
	adds r6, #0xb2
	str r6, [sp, #0x1e4]
	ldr r0, [sp, #0x1d0]
	add r0, r8
	lsls r0, r0, #3
	add r0, sp
	adds r0, #0x10
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r0, r6
_0806416A:
	ldr r0, [r1, #0]
	str r0, [r1, #8]
	subs r1, #8
	subs r7, #1
	cmp r7, #0
	bgt _0806416A
	ldr r0, [sp, #0x1d0]
	add r0, r8
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r3, [sp, #0x1f8]
	add r3, sl
	ldr r1, [r0, #0]
	ldr r2, [r3, #0]
	adds r1, r1, r2
	str r1, [r0, #0]
	ldr r0, [r3, #0]
	subs r0, #0x30
	str r0, [r3, #0]
	b _080641DC
	.2byte 0x0000
_08064194: .4byte 0xFFFFFDF8
_08064198: .4byte 0xFFFF0000
_0806419C: .4byte 0x0600C800
_080641A0: .4byte 0x05000600
_080641A4: .4byte gUnk_03001250
_080641A8: .4byte gUnk_03003CE0
_080641AC: .4byte gUnk_08479140
_080641B0: .4byte gUnk_08518938
_080641B4: .4byte 0x0000FFFF
_080641B8: .4byte gUnk_03001F40
_080641BC:
	subs r0, r2, #1
	str r0, [r1, #0]
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, sp
	mov r9, r0
	add r4, sp, #0x104
	ldr r1, [sp, #0x1d0]
	adds r1, #1
	str r1, [sp, #0x1f0]
	add r5, sp, #0x124
	adds r2, r6, #0
	adds r2, #0xb0
	str r2, [sp, #0x1e0]
	adds r6, #0xb2
	str r6, [sp, #0x1e4]
_080641DC:
	ldr r0, [sp, #0x1d0]
	add r0, r8
	lsls r2, r0, #3
	adds r0, r5, r2
	ldr r0, [r0, #0]
	cmp r0, #0
	bge _080641F0
	ldr r3, [sp, #0x1d4]
	adds r3, #1
	str r3, [sp, #0x1d4]
_080641F0:
	movs r0, #0x34
	ldr r6, [sp, #0x1d0]
	adds r5, r6, #0
	muls r5, r0, r5
	add r5, sp
	adds r5, #0x10
	adds r4, r4, r2
	mov r8, r4
	mov r0, r9
	adds r6, r2, r0
	movs r1, #0
	mov r9, r1
	movs r7, #4
_0806420A:
	ldr r0, [r6, #0]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2, #0]
	asrs r1, r1, #8
	ldr r3, [sp, #0x1e0]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x1e4]
	ldrh r3, [r4, #0]
	mov r4, r9
	str r4, [sp, #0]
	adds r4, r5, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007CF0
	movs r0, #8
	add r8, r0
	adds r6, #8
	subs r7, #1
	cmp r7, #0
	bge _0806420A
	ldr r1, [sp, #0x1f0]
	str r1, [sp, #0x1d0]
_08064242:
	ldr r2, [sp, #0x1ec]
	str r2, [sp, #0x1cc]
	ldr r3, [sp, #0x1d8]
	cmp r2, r3
	bhs _0806424E
	b _080640DE
_0806424E:
	ldr r4, [sp, #0x1dc]
	ldr r5, [sp, #0x1d4]
	cmp r4, r5
	beq _0806425C
	bl sub_080003F0
	b _0806408E
_0806425C:
	movs r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	movs r0, #0x1e
	bl sub_0801AA8C
	b _080643CC
_08064274:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0806427E
	b _080643FE
_0806427E:
	bl sub_080021A8
	cmp r0, #0
	beq _08064288
	b _080643FE
_08064288:
	ldr r1, _08064338
	ldrh r0, [r1, #6]
	adds r0, #4
	strh r0, [r1, #6]
	movs r6, #0
	str r6, [sp, #0x1d0]
	movs r0, #0
	str r0, [sp, #0x1cc]
	ldr r1, [sp, #0x1d8]
	cmp r0, r1
	blo _080642A0
	b _080643C8
_080642A0:
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0x1cc]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0806433C
	adds r6, r1, r0
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r6, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	adds r2, #1
	str r2, [sp, #0x1ec]
	cmp r0, #0xe
	bne _080643BC
	add r1, sp, #0xe0
	ldr r4, [sp, #0x1d0]
	lsls r0, r4, #2
	adds r1, r1, r0
	ldr r2, [r1, #0]
	mov r8, r0
	cmp r2, #0
	bne _08064340
	movs r7, #4
	lsls r5, r4, #3
	str r5, [sp, #0x1f8]
	movs r0, #0xd2
	lsls r0, r0, #1
	add r0, sp
	mov sl, r0
	movs r1, #0x80
	lsls r1, r1, #1
	add r1, sp
	mov r9, r1
	add r4, sp, #0x104
	ldr r2, [sp, #0x1d0]
	adds r2, #1
	str r2, [sp, #0x1f0]
	add r5, sp, #0x124
	adds r3, r6, #0
	adds r3, #0xb0
	str r3, [sp, #0x1e0]
	adds r6, #0xb2
	str r6, [sp, #0x1e4]
	ldr r0, [sp, #0x1d0]
	add r0, r8
	lsls r0, r0, #3
	add r0, sp
	adds r0, #0x10
	movs r6, #0x86
	lsls r6, r6, #1
	adds r1, r0, r6
_0806430E:
	ldr r0, [r1, #0]
	str r0, [r1, #8]
	subs r1, #8
	subs r7, #1
	cmp r7, #0
	bgt _0806430E
	ldr r0, [sp, #0x1d0]
	add r0, r8
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r3, [sp, #0x1f8]
	add r3, sl
	ldr r1, [r0, #0]
	ldr r2, [r3, #0]
	adds r1, r1, r2
	str r1, [r0, #0]
	ldr r0, [r3, #0]
	subs r0, #0x30
	str r0, [r3, #0]
	b _08064360
	.2byte 0x0000
_08064338: .4byte gUnk_03001250
_0806433C: .4byte gUnk_03003CE0
_08064340:
	subs r0, r2, #1
	str r0, [r1, #0]
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, sp
	mov r9, r0
	add r4, sp, #0x104
	ldr r1, [sp, #0x1d0]
	adds r1, #1
	str r1, [sp, #0x1f0]
	add r5, sp, #0x124
	adds r2, r6, #0
	adds r2, #0xb0
	str r2, [sp, #0x1e0]
	adds r6, #0xb2
	str r6, [sp, #0x1e4]
_08064360:
	ldr r0, [sp, #0x1d0]
	add r0, r8
	lsls r2, r0, #3
	adds r0, r5, r2
	ldr r0, [r0, #0]
	movs r0, #0x34
	ldr r3, [sp, #0x1d0]
	adds r5, r3, #0
	muls r5, r0, r5
	add r5, sp
	adds r5, #0x10
	adds r4, r4, r2
	mov r8, r4
	mov r4, r9
	adds r6, r2, r4
	movs r0, #0
	mov r9, r0
	movs r7, #4
_08064384:
	ldr r0, [r6, #0]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2, #0]
	asrs r1, r1, #8
	ldr r3, [sp, #0x1e0]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x1e4]
	ldrh r3, [r4, #0]
	mov r4, r9
	str r4, [sp, #0]
	adds r4, r5, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007CF0
	movs r0, #8
	add r8, r0
	adds r6, #8
	subs r7, #1
	cmp r7, #0
	bge _08064384
	ldr r1, [sp, #0x1f0]
	str r1, [sp, #0x1d0]
_080643BC:
	ldr r2, [sp, #0x1ec]
	str r2, [sp, #0x1cc]
	ldr r3, [sp, #0x1d8]
	cmp r2, r3
	bhs _080643C8
	b _080642A0
_080643C8:
	bl sub_080003F0
_080643CC:
	bl sub_0801AAE0
	cmp r0, #0
	bne _080643D6
	b _08064274
_080643D6:
	movs r4, #0
	add r0, sp, #0x1c4
	str r4, [r0, #0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08064414
	bl CpuSet
	ldr r0, _08064418
	strh r4, [r0, #0]
	bl sub_08000B38
	bl sub_080003F0
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
_080643FE:
	movs r3, #0x82
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08064414: .4byte 0x05002000
_08064418: .4byte gUnk_03001F40
	thumb_func_end sub_08063E30
