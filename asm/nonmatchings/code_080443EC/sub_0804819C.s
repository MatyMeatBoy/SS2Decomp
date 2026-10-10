	thumb_func_start sub_0804819C
sub_0804819C: @ 0x0804819C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, _080481D8
	ldr r2, [r4, #0]
	movs r3, #2
	ldr r1, [r2, #0x38]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080481BA
	movs r0, #1
_080481BA:
	cmp r0, #0
	beq _080481C0
	b _08048412
_080481C0:
	orrs r1, r3
	str r1, [r2, #0x38]
	movs r5, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _080481DC
	ldr r0, [r4, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	b _080481E4
_080481D8: .4byte gUnk_03005CF4
_080481DC:
	ldr r0, [r4, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r0, r0, r2
_080481E4:
	ldrb r0, [r0, #0]
	asrs r4, r0, #6
	ands r4, r5
	bl sub_080020F4
	adds r6, r0, #0
	movs r3, #0
	movs r2, #0
	add r5, sp, #4
	mov sl, r5
	ldr r0, _08048258
	ldr r0, [r0, #0]
	movs r7, #0xa8
	lsls r7, r7, #1
	adds r1, r0, r7
_08048202:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _08048210
	ldrh r0, [r1, #2]
	cmp r0, #0x22
	bne _08048210
	adds r3, #1
_08048210:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08048202
	adds r5, r3, #0
	movs r3, #0
	movs r2, #0
	ldr r0, _08048258
	ldr r0, [r0, #0]
	movs r7, #0xb8
	lsls r7, r7, #2
	adds r1, r0, r7
_08048228:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _08048236
	ldrh r0, [r1, #2]
	cmp r0, #0x22
	bne _08048236
	adds r3, #1
_08048236:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x4a
	bls _08048228
	cmp r6, #0
	bne _0804826A
	orrs r4, r5
	orrs r4, r3
	cmp r4, #0
	bne _08048260
	ldr r0, _0804825C
	movs r1, #0
	movs r2, #0
	bl sub_08068820
	b _0804826A
	.2byte 0x0000
_08048258: .4byte gUnk_030034E0
_0804825C: .4byte sub_0805A004
_08048260:
	ldr r0, _08048314
	movs r1, #1
	movs r2, #0
	bl sub_08068820
_0804826A:
	bl sub_08002164
	cmp r0, #1
	bne _0804828A
	movs r1, #0xc4
	ldr r0, _08048318
	str r1, [r0, #0]
	ldr r0, _0804831C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804828A
	movs r0, #0xc4
	bl sub_08006CB4
_0804828A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08048320
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	movs r0, #0x80
	lsls r0, r0, #3
	mov r9, r0
	ldr r0, _08048324
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	ldr r7, _08048328
_080482C2:
	mov r0, sp
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, sl
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080482C2
	bl sub_0800CC98
	cmp r0, #0
	bne _08048354
	bl sub_0801AB24
	cmp r0, #1
	beq _08048338
	cmp r0, #1
	bgt _0804832C
	cmp r0, #0
	beq _08048332
	b _0804834C
_08048314: .4byte sub_0805A004
_08048318: .4byte gUnk_03005CF8
_0804831C: .4byte gUnk_030027D0
_08048320: .4byte gUnk_03003CE0
_08048324: .4byte gUnk_03003170
_08048328: .4byte 0xFFDD0000
_0804832C:
	cmp r0, #2
	beq _08048340
	b _0804834C
_08048332:
	bl sub_080576A8
	b _0804834C
_08048338:
	movs r0, #6
	bl sub_0801AB50
	b _0804834C
_08048340:
	movs r0, #6
	bl sub_0801AB90
	b _0804834C
_08048348:
	bl sub_080003F0
_0804834C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08048348
_08048354:
	ldr r6, _08048364
	ldr r0, _08048368
	ldr r0, [r0, #0]
	ldr r5, _0804836C
	adds r4, r0, r5
	movs r5, #0
	b _08048374
	.2byte 0x0000
_08048364: .4byte sub_08048570
_08048368: .4byte gUnk_03005CF4
_0804836C: .4byte 0x00000E34
_08048370:
	adds r5, #1
	adds r4, #0x28
_08048374:
	cmp r5, #0x1d
	bhi _080483B2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08048370
	b _08048388
_08048384:
	bl sub_080003F0
_08048388:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08048384
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r7, #0xff
	lsls r7, r7, #2
	adds r0, r1, r7
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
_080483B2:
	ldr r6, _080483C0
	ldr r0, _080483C4
	ldr r0, [r0, #0]
	ldr r1, _080483C8
	adds r4, r0, r1
	movs r5, #0
	b _080483D0
_080483C0: .4byte sub_08048570
_080483C4: .4byte gUnk_03005CF4
_080483C8: .4byte 0x00000E34
_080483CC:
	adds r5, #1
	adds r4, #0x28
_080483D0:
	cmp r5, #0x1d
	bls _080483D6
	b _0804855E
_080483D6:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080483CC
	b _080483E6
_080483E2:
	bl sub_080003F0
_080483E6:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080483E2
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000274
	b _0804855E
_08048412:
	bl sub_0800CC98
	cmp r0, #0
	bne _08048454
	bl sub_0801AB24
	cmp r0, #1
	beq _08048438
	cmp r0, #1
	bgt _0804842C
	cmp r0, #0
	beq _08048432
	b _0804844C
_0804842C:
	cmp r0, #2
	beq _08048440
	b _0804844C
_08048432:
	bl sub_080576A8
	b _0804844C
_08048438:
	movs r0, #6
	bl sub_0801AB50
	b _0804844C
_08048440:
	movs r0, #6
	bl sub_0801AB90
	b _0804844C
_08048448:
	bl sub_080003F0
_0804844C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08048448
_08048454:
	ldr r0, _080484A4
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _080484A8
	movs r6, #1
	movs r4, #0
_08048460:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08048474
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08048474
	strh r4, [r2, #0xc]
_08048474:
	adds r3, #1
	movs r7, #0xb8
	lsls r7, r7, #2
	adds r2, r2, r7
	cmp r3, #4
	bls _08048460
	bl sub_08019F04
	ldr r0, _080484AC
	ldr r2, [r0, #0]
	movs r0, #8
	ldr r1, [r2, #0x38]
	ands r1, r0
	cmp r1, #0
	beq _08048494
	movs r1, #1
_08048494:
	cmp r1, #0
	bne _08048530
	ldr r6, _080484B0
	ldr r0, _080484B4
	adds r4, r2, r0
	movs r5, #0
	b _080484BC
	.2byte 0x0000
_080484A4: .4byte gUnk_030056F4
_080484A8: .4byte gUnk_030056FC
_080484AC: .4byte gUnk_03005CF4
_080484B0: .4byte sub_08048570
_080484B4: .4byte 0x00000E34
_080484B8:
	adds r5, #1
	adds r4, #0x28
_080484BC:
	cmp r5, #0x1d
	bhi _080484FA
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080484B8
	b _080484D0
_080484CC:
	bl sub_080003F0
_080484D0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080484CC
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000274
_080484FA:
	bl sub_08002164
	cmp r0, #1
	bne _0804855E
	ldr r0, _08048524
	movs r1, #7
	bl sub_08068070
	movs r1, #0xa5
	ldr r0, _08048528
	str r1, [r0, #0]
	ldr r0, _0804852C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804855E
	movs r0, #0xa5
	bl sub_08006CB4
	b _0804855E
_08048524: .4byte sub_08059954
_08048528: .4byte gUnk_03005CF8
_0804852C: .4byte gUnk_030027D0
_08048530:
	bl sub_0800CB9C
	cmp r0, #0
	bne _08048558
	ldr r0, _08048550
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804855E
	ldr r1, _08048554
	movs r0, #1
	str r0, [r1, #0]
	bl sub_08006CB4
	b _0804855E
_08048550: .4byte gUnk_030027D0
_08048554: .4byte gUnk_03005CF8
_08048558:
	movs r0, #0
	bl sub_080586B4
_0804855E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0804819C
