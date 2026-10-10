	thumb_func_start sub_080531C4
sub_080531C4: @ 0x080531C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080531F8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _080531FC
	movs r4, #0
	b _0805322A
_080531F8: .4byte gUnk_03003CE0
_080531FC:
	bl sub_080020F4
	cmp r0, #1
	beq _0805321E
	cmp r0, #1
	bgt _0805320E
	cmp r0, #0
	beq _08053218
	b _0805322A
_0805320E:
	cmp r0, #2
	beq _08053222
	cmp r0, #3
	beq _08053228
	b _0805322A
_08053218:
	movs r4, #0xc
	negs r4, r4
	b _0805322A
_0805321E:
	movs r4, #0xc
	b _0805322A
_08053222:
	movs r4, #0x24
	negs r4, r4
	b _0805322A
_08053228:
	movs r4, #0x24
_0805322A:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_08028D98
	bl sub_08002164
	adds r3, r0, #0
	movs r2, #0
	negs r5, r4
	add r0, sp, #0xc
	mov sl, r0
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x1c]
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x20]
	cmp r2, r3
	bhs _08053278
	ldr r0, _0805326C
	adds r0, #0x64
	movs r4, #0xa6
	lsls r4, r4, #1
_0805325E:
	ldrh r1, [r0, #0]
	cmp r1, #6
	beq _08053268
	cmp r1, #8
	bne _08053270
_08053268:
	movs r0, #1
	b _0805327A
_0805326C: .4byte gUnk_03003CE0
_08053270:
	adds r0, r0, r4
	adds r2, #1
	cmp r2, r3
	blo _0805325E
_08053278:
	movs r0, #0
_0805327A:
	str r0, [sp, #0x18]
	movs r4, #1
	b _0805328A
_08053280:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08053296
_0805328A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08053280
_08053296:
	bl sub_0800CC98
	cmp r0, #0
	bne _080532D8
	bl sub_0801AB24
	cmp r0, #1
	beq _080532BC
	cmp r0, #1
	bgt _080532B0
	cmp r0, #0
	beq _080532B6
	b _080532D0
_080532B0:
	cmp r0, #2
	beq _080532C4
	b _080532D0
_080532B6:
	bl sub_080576A8
	b _080532D0
_080532BC:
	movs r0, #6
	bl sub_0801AB50
	b _080532D0
_080532C4:
	movs r0, #6
	bl sub_0801AB90
	b _080532D0
_080532CC:
	bl sub_080003F0
_080532D0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080532CC
_080532D8:
	movs r1, #0xd9
	ldr r0, _080532F4
	str r1, [r0, #0]
	ldr r0, _080532F8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080532F0
	movs r0, #0xd9
	bl sub_08006CB4
_080532F0:
	movs r4, #0x14
	b _08053306
_080532F4: .4byte gUnk_03005CF8
_080532F8: .4byte gUnk_030027D0
_080532FC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08053312
_08053306:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080532FC
_08053312:
	movs r1, #0x11
	mov r9, r1
	ldr r0, _08053384
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	lsls r5, r5, #0x10
	ldr r0, _08053388
	mov r8, r0
_0805332E:
	add r0, sp, #8
	adds r1, r7, #0
	asrs r2, r5, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, sl
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0805332E
	ldr r0, _0805338C
	ldr r0, [r0, #0]
	movs r1, #1
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	beq _08053376
	movs r0, #1
_08053376:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	beq _080533B8
	cmp r0, #0
	bne _080533E8
	b _08053394
	.2byte 0x0000
_08053384: .4byte gUnk_03003170
_08053388: .4byte 0xFFC00000
_0805338C: .4byte gUnk_03005CF4
_08053390:
	bl sub_080003F0
_08053394:
	bl sub_0805F184
	cmp r0, #0
	bne _08053390
	b _080533A2
_0805339E:
	bl sub_080003F0
_080533A2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805339E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080533B4
	b _08053420
	.2byte 0x0000
_080533B4: .4byte 0x001400A5
_080533B8:
	cmp r0, #0
	bne _08053404
	b _080533C2
_080533BE:
	bl sub_080003F0
_080533C2:
	bl sub_0805F184
	cmp r0, #0
	bne _080533BE
	b _080533D0
_080533CC:
	bl sub_080003F0
_080533D0:
	bl sub_0805EF90
	cmp r0, #0
	bne _080533CC
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080533E0
	b _08053420
_080533E0: .4byte 0x001400A2
_080533E4:
	bl sub_080003F0
_080533E8:
	bl sub_0805F184
	cmp r0, #0
	bne _080533E4
	b _080533F6
_080533F2:
	bl sub_080003F0
_080533F6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080533F2
	b _0805341A
_08053400:
	bl sub_080003F0
_08053404:
	bl sub_0805F184
	cmp r0, #0
	bne _08053400
	b _08053412
_0805340E:
	bl sub_080003F0
_08053412:
	bl sub_0805EF90
	cmp r0, #0
	bne _0805340E
_0805341A:
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08053440
_08053420:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r3, r0, #0
	ldr r0, _08053444
	ldr r2, [r0, #0]
	movs r1, #1
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	adds r4, r3, #0
	b _0805344C
_08053440: .4byte 0x001400A3
_08053444: .4byte gUnk_03005CF4
_08053448:
	bl sub_080003F0
_0805344C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08053448
	movs r2, #0x22
	mov r9, r2
	ldr r0, _080534FC
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r6, [r1, r3]
	adds r0, #0x82
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r4, #0
	mov r8, r4
	movs r7, #0
_08053470:
	ldr r0, [sp, #0x1c]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x20]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08053470
	movs r1, #0xb
	ldr r0, _08053500
	str r1, [r0, #0]
	ldr r0, _08053504
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080534C0
	movs r0, #0xb
	bl sub_08006CB4
_080534C0:
	ldr r0, _08053508
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2, #4]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0805350C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080534FC: .4byte gUnk_03003170
_08053500: .4byte gUnk_03005CF8
_08053504: .4byte gUnk_030027D0
_08053508: .4byte gUnk_03005CF4
_0805350C: .4byte gUnk_03003CE0
	thumb_func_end sub_080531C4
