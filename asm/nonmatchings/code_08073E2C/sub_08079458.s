	thumb_func_start sub_08079458
sub_08079458: @ 0x08079458
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	adds r4, r0, #0
	bl sub_080020F4
	str r0, [sp, #0x6c]
	ldr r0, [r4, #8]
	str r0, [sp, #0x4c]
	ldr r0, [r4, #0x14]
	add r1, sp, #0x4c
	mov r8, r1
	str r0, [r1, #4]
	ldr r2, [r4, #0]
	str r2, [sp, #0x60]
	ldr r0, [r4, #4]
	str r0, [sp, #0x64]
	mov r6, sp
	adds r6, #0x4a
	movs r0, #0
	strh r0, [r6, #0]
	add r5, sp, #0x48
	strh r0, [r5, #0]
	ldr r1, _080794B0
	movs r3, #0x80
	lsls r3, r3, #0x18
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldr r0, [r4, #0xc]
	cmp r0, #5
	bls _080794A4
	b _0807959E
_080794A4:
	lsls r0, r0, #2
	ldr r1, _080794B4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080794B0: .4byte 0x000500AF
_080794B4: .4byte _080794B8
_080794B8:
	.4byte _080794D0
_080794BC: .4byte _0807956C
_080794C0: .4byte _08079504
_080794C4: .4byte _08079570
_080794C8: .4byte _08079538
_080794CC: .4byte _08079574
_080794D0:
	movs r1, #0xb4
	mov r9, r1
	ldr r0, _080794FC
	str r0, [sp, #0x54]
	ldr r0, _08079500
	bl sub_08007290
	adds r7, r0, #0
	bl sub_080008C8
	movs r1, #0x14
	bl sub_080B95E4
	lsls r0, r0, #0x10
	movs r2, #0xc8
	lsls r2, r2, #0xe
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0
	b _0807959C
	.2byte 0x0000
_080794FC: .4byte 0x00200030
_08079500: .4byte 0x0010000D
_08079504:
	movs r1, #0x78
	mov r9, r1
	ldr r0, _08079530
	str r0, [sp, #0x54]
	ldr r0, _08079534
	bl sub_08007290
	adds r7, r0, #0
	bl sub_080008C8
	movs r1, #0x14
	bl sub_080B95E4
	lsls r0, r0, #0x10
	movs r2, #0xc8
	lsls r2, r2, #0xe
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0
	b _0807959C
	.2byte 0x0000
_08079530: .4byte 0x00200030
_08079534: .4byte 0x0010000D
_08079538:
	movs r1, #0
	mov r9, r1
	ldr r0, _08079564
	str r0, [sp, #0x54]
	ldr r0, _08079568
	bl sub_08007290
	adds r7, r0, #0
	bl sub_080008C8
	movs r1, #0x14
	bl sub_080B95E4
	lsls r0, r0, #0x10
	movs r2, #0xc8
	lsls r2, r2, #0xe
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0
	b _0807959C
	.2byte 0x0000
_08079564: .4byte 0x00200030
_08079568: .4byte 0x0010000D
_0807956C:
	movs r1, #0xb4
	b _08079576
_08079570:
	movs r1, #0x78
	b _08079576
_08079574:
	movs r1, #0
_08079576:
	mov r9, r1
	ldr r0, _080796B4
	str r0, [sp, #0x54]
	ldr r0, _080796B8
	bl sub_08007290
	adds r7, r0, #0
	bl sub_080008C8
	movs r1, #0x28
	bl sub_080B95E4
	lsls r0, r0, #0x10
	movs r2, #0xc8
	lsls r2, r2, #0xf
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #1
_0807959C:
	str r0, [sp, #0x68]
_0807959E:
	adds r0, r7, #0
	adds r0, #0xa8
	ldrb r0, [r0, #0]
	str r0, [sp, #0x5c]
	mov r1, r9
	cmp r1, #0
	beq _080795C4
	bl sub_0800CCCC
	cmp r0, #0
	bne _080795C4
	bl sub_0800CD34
	cmp r0, #0
	bne _080795C4
	movs r0, #0xbe
	lsls r0, r0, #1
	bl sub_0805865C
_080795C4:
	mov r0, r9
	movs r2, #1
	negs r2, r2
	add r9, r2
	ldr r1, [sp, #0x60]
	lsls r1, r1, #2
	str r1, [sp, #0x70]
	cmp r0, #0
	beq _0807968C
	add r2, sp, #0x4c
	mov r8, r2
	add r7, sp, #0x44
	mov r6, sp
	adds r6, #0x46
_080795E0:
	ldr r0, [sp, #0x4c]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, r8
	ldr r1, [r2, #4]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x4c]
	asrs r0, r0, #8
	mov r2, r8
	ldr r1, [r2, #4]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	ldr r1, [sp, #0x5c]
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	bne _0807967C
	bl sub_0800CD8C
	cmp r0, #0
	bne _0807967C
	bl sub_0800CCCC
	cmp r0, #0
	bne _0807967C
	mov r0, r9
	movs r1, #0x3c
	bl sub_080B956C
	movs r1, #0
	ldrsh r4, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r1, #8
	adds r2, r0, #1
	movs r3, #1
	cmp r0, #0
	beq _08079658
	movs r3, #2
_08079658:
	adds r0, r4, #0
	bl sub_0805FAC0
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	str r5, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	ldr r3, [sp, #0x5c]
	bl sub_08007870
_0807967C:
	bl sub_080003F0
	mov r0, r9
	movs r1, #1
	negs r1, r1
	add r9, r1
	cmp r0, #0
	bne _080795E0
_0807968C:
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x50]
	bl sub_08022078
	bl sub_0800CCCC
	cmp r0, #0
	bne _080796C2
	bl sub_0800CD34
	cmp r0, #0
	bne _080796C2
	ldr r2, [sp, #0x68]
	cmp r2, #0
	bne _080796BC
	movs r0, #0x2f
	bl sub_0805865C
	b _080796C2
	.2byte 0x0000
_080796B4: .4byte 0x00300040
_080796B8: .4byte 0x0010000E
_080796BC:
	movs r0, #0x30
	bl sub_0805865C
_080796C2:
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x60]
	cmp r0, r1
	beq _080796D8
	bl sub_08002204
	cmp r0, #0
	beq _08079756
	ldr r2, [sp, #0x60]
	cmp r2, #3
	bls _08079756
_080796D8:
	add r4, sp, #0x54
	add r0, sp, #0x4c
	adds r1, r4, #0
	mov r2, sl
	bl sub_0801FC34
	movs r6, #0
	ldr r7, _080797E0
_080796E8:
	ldr r0, _080797E4
	movs r1, #1
	lsls r1, r6
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _0807974C
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	subs r0, r0, r6
	lsls r0, r0, #5
	ldr r1, [r7, #0]
	adds r5, r1, r0
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0807974C
	ldr r2, _080797E8
	adds r0, r5, r2
	ldrb r2, [r0, #0]
	ldr r1, _080797EC
	ldr r0, [sp, #0x58]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x58]
	ldr r2, _080797F0
	adds r1, r5, r2
	ldrb r2, [r1, #0]
	lsls r2, r2, #0x10
	ldr r1, _080797F4
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r1, #0x14
	add r0, sp, #0x4c
	adds r2, r4, #0
	add r3, sp, #0x58
	bl sub_08021FE0
	cmp r0, #0
	beq _0807974C
	add r0, sp, #0x4c
	adds r1, r5, #0
	mov r2, sl
	bl sub_0801F1C4
_0807974C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bls _080796E8
_08079756:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080797F8
	adds r4, r1, r0
	ldrh r1, [r4, #0x20]
	cmp r1, #0xe
	beq _0807985C
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0807985C
	cmp r1, #0xb
	beq _0807985C
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0807985C
	bl sub_0800CDF8
	cmp r0, #0
	bne _0807982A
	bl sub_0800D1B0
	cmp r0, #0
	bne _0807982A
	bl sub_0800CCCC
	cmp r0, #0
	bne _0807982A
	add r3, sp, #0x58
	movs r0, #0x10
	strh r0, [r3, #2]
	strh r0, [r3, #0]
	adds r5, r4, #0
	adds r5, #0x8c
	add r2, sp, #0x54
	add r0, sp, #0x4c
	adds r1, r5, #0
	bl sub_08021FE0
	cmp r0, #0
	beq _0807985C
	bl sub_080008C8
	movs r1, #0x64
	bl sub_080B95E4
	adds r2, r0, #0
	adds r1, r4, #0
	adds r1, #0x6e
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _080797D2
	ldrb r1, [r1, #0]
	cmp r2, r1
	blo _080797FC
_080797D2:
	movs r0, #0
	mov r1, sl
	movs r2, #1
	bl sub_08029A7C
	b _0807985C
	.2byte 0x0000
_080797E0: .4byte gUnk_030056F4
_080797E4: .4byte gUnk_030056FC
_080797E8: .4byte 0x0000022E
_080797EC: .4byte 0xFFFF0000
_080797F0: .4byte 0x0000022F
_080797F4: .4byte 0x0000FFFF
_080797F8: .4byte gUnk_03003CE0
_080797FC:
	ldr r0, [r5, #0]
	adds r1, r4, #0
	adds r1, #0x90
	ldr r1, [r1, #0]
	bl sub_08022504
	mov r1, sl
	lsls r0, r1, #0xe
	lsrs r0, r0, #0x10
	movs r1, #1
	cmp r0, #0
	beq _08079816
	adds r1, r0, #0
_08079816:
	mov sl, r1
	movs r0, #0
	movs r2, #1
	bl sub_08029A7C
	movs r0, #0xb2
	lsls r0, r0, #1
	bl sub_0805865C
	b _0807985C
_0807982A:
	bl sub_0800CDC0
	cmp r0, #0
	beq _0807985C
	ldr r0, _08079880
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0807985C
	add r3, sp, #0x58
	movs r0, #0x10
	strh r0, [r3, #2]
	strh r0, [r3, #0]
	adds r1, r4, #0
	adds r1, #0x8c
	add r2, sp, #0x54
	add r0, sp, #0x4c
	bl sub_08021FE0
	cmp r0, #0
	beq _0807985C
	add r0, sp, #0x4c
	adds r1, r4, #0
	mov r2, sl
	bl sub_08022028
_0807985C:
	ldr r2, _08079884
	ldr r0, [sp, #0x70]
	adds r2, r0, r2
	movs r1, #1
	ldr r0, [sp, #0x64]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08079880: .4byte gUnk_030056FC
_08079884: .4byte gUnk_030063E0
	thumb_func_end sub_08079458
