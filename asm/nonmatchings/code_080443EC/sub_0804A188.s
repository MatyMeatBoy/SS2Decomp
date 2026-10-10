	thumb_func_start sub_0804A188
sub_0804A188: @ 0x0804A188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r5, _0804A234
	ldr r0, [r5, #0]
	movs r4, #1
	ldr r0, [r0, #0x38]
	ands r0, r4
	cmp r0, #0
	beq _0804A1A4
	movs r0, #1
_0804A1A4:
	cmp r0, #0
	beq _0804A1AA
	b _0804A310
_0804A1AA:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0804A238
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x38]
	orrs r0, r4
	str r0, [r1, #0x38]
	movs r0, #0x80
	lsls r0, r0, #3
	mov sl, r0
	ldr r0, _0804A23C
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	add r5, sp, #4
	mov r9, r4
	ldr r0, _0804A240
	mov r8, r0
_0804A1EA:
	mov r0, sp
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
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
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804A1EA
	ldr r6, _0804A244
	ldr r0, _0804A234
	ldr r0, [r0, #0]
	ldr r1, _0804A248
	adds r4, r0, r1
	movs r5, #0
	b _0804A250
	.2byte 0x0000
_0804A234: .4byte gUnk_03005CF4
_0804A238: .4byte gUnk_03003CE0
_0804A23C: .4byte gUnk_03003170
_0804A240: .4byte 0xFFC40000
_0804A244: .4byte sub_0804A478
_0804A248: .4byte 0x00000E34
_0804A24C:
	adds r5, #1
	adds r4, #0x28
_0804A250:
	cmp r5, #0x1d
	bhi _0804A28E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804A24C
	b _0804A264
_0804A260:
	bl sub_080003F0
_0804A264:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804A260
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
	movs r1, #0
	bl sub_08000274
_0804A28E:
	movs r4, #2
	b _0804A29C
_0804A292:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804A2A8
_0804A29C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804A292
_0804A2A8:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804A2EA
	bl sub_0801AB24
	cmp r0, #1
	beq _0804A2CE
	cmp r0, #1
	bgt _0804A2C2
	cmp r0, #0
	beq _0804A2C8
	b _0804A2E2
_0804A2C2:
	cmp r0, #2
	beq _0804A2D6
	b _0804A2E2
_0804A2C8:
	bl sub_080576A8
	b _0804A2E2
_0804A2CE:
	movs r0, #6
	bl sub_0801AB50
	b _0804A2E2
_0804A2D6:
	movs r0, #6
	bl sub_0801AB90
	b _0804A2E2
_0804A2DE:
	bl sub_080003F0
_0804A2E2:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804A2DE
_0804A2EA:
	movs r1, #0xc4
	ldr r0, _0804A308
	str r1, [r0, #0]
	ldr r0, _0804A30C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804A2FE
	b _0804A460
_0804A2FE:
	movs r0, #0xc4
	bl sub_08006CB4
	b _0804A460
	.2byte 0x0000
_0804A308: .4byte gUnk_03005CF8
_0804A30C: .4byte gUnk_030027D0
_0804A310:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804A352
	bl sub_0801AB24
	cmp r0, #1
	beq _0804A336
	cmp r0, #1
	bgt _0804A32A
	cmp r0, #0
	beq _0804A330
	b _0804A34A
_0804A32A:
	cmp r0, #2
	beq _0804A33E
	b _0804A34A
_0804A330:
	bl sub_080576A8
	b _0804A34A
_0804A336:
	movs r0, #6
	bl sub_0801AB50
	b _0804A34A
_0804A33E:
	movs r0, #6
	bl sub_0801AB90
	b _0804A34A
_0804A346:
	bl sub_080003F0
_0804A34A:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804A346
_0804A352:
	movs r0, #0x8c
	movs r1, #0x82
	movs r2, #0xc8
	movs r3, #0x64
	bl sub_0802A080
	ldr r6, _0804A36C
	ldr r0, _0804A370
	ldr r0, [r0, #0]
	ldr r3, _0804A374
	adds r4, r0, r3
	movs r5, #0
	b _0804A37C
_0804A36C: .4byte sub_0804A89C
_0804A370: .4byte gUnk_03005CF4
_0804A374: .4byte 0x00000E34
_0804A378:
	adds r5, #1
	adds r4, #0x28
_0804A37C:
	cmp r5, #0x1d
	bhi _0804A3BA
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804A378
	b _0804A390
_0804A38C:
	bl sub_080003F0
_0804A390:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804A38C
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
	movs r1, #5
	bl sub_08000274
_0804A3BA:
	ldr r6, _0804A3C8
	ldr r0, _0804A3CC
	ldr r0, [r0, #0]
	ldr r3, _0804A3D0
	adds r4, r0, r3
	movs r5, #0
	b _0804A3D8
_0804A3C8: .4byte sub_0804A89C
_0804A3CC: .4byte gUnk_03005CF4
_0804A3D0: .4byte 0x00000E34
_0804A3D4:
	adds r5, #1
	adds r4, #0x28
_0804A3D8:
	cmp r5, #0x1d
	bhi _0804A416
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804A3D4
	b _0804A3EC
_0804A3E8:
	bl sub_080003F0
_0804A3EC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804A3E8
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
	movs r1, #6
	bl sub_08000274
_0804A416:
	movs r4, #0x1e
	b _0804A424
_0804A41A:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804A430
_0804A424:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804A41A
_0804A430:
	ldr r0, _0804A470
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _0804A474
	movs r6, #1
	movs r4, #0
_0804A43C:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0804A450
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0804A450
	strh r4, [r2, #0xc]
_0804A450:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _0804A43C
	bl sub_08019F04
_0804A460:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804A470: .4byte gUnk_030056F4
_0804A474: .4byte gUnk_030056FC
	thumb_func_end sub_0804A188
