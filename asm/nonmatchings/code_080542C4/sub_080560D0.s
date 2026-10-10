	thumb_func_start sub_080560D0
sub_080560D0: @ 0x080560D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	cmp r0, #9
	bls _080560DA
	b _080563E0
_080560DA:
	lsls r0, r0, #2
	ldr r1, _080560E4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080560E4: .4byte _080560E8
_080560E8:
	.4byte _08056110
_080560EC: .4byte _08056188
_080560F0: .4byte _080561A4
_080560F4: .4byte _0805621C
_080560F8: .4byte _08056238
_080560FC: .4byte _080562B0
_08056100: .4byte _080562CC
_08056104: .4byte _08056344
_08056108: .4byte _08056364
_0805610C: .4byte _08056374
_08056110:
	ldr r7, _08056120
	ldr r0, _08056124
	ldr r0, [r0, #0]
	ldr r1, _08056128
	adds r4, r0, r1
	movs r6, #0
	b _08056130
	.2byte 0x0000
_08056120: .4byte sub_080560D0
_08056124: .4byte gUnk_03005CF4
_08056128: .4byte 0x00000E34
_0805612C:
	adds r6, #1
	adds r4, #0x28
_08056130:
	cmp r6, #0x1d
	bhi _08056174
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _0805612C
	str r7, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08056180
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #7
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_08056174:
	ldr r0, _08056184
	movs r1, #1
	movs r2, #0
	bl sub_08068820
	b _080563E0
_08056180: .4byte sub_0802A104
_08056184: .4byte sub_080560D0
_08056188:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #7
	movs r2, #0xd8
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _080561A0
	ldr r2, [r0, #0]
	movs r1, #1
	b _08056358
	.2byte 0x0000
_080561A0: .4byte gUnk_03005CF4
_080561A4:
	ldr r7, _080561B4
	ldr r0, _080561B8
	ldr r0, [r0, #0]
	ldr r1, _080561BC
	adds r4, r0, r1
	movs r6, #0
	b _080561C4
	.2byte 0x0000
_080561B4: .4byte sub_080560D0
_080561B8: .4byte gUnk_03005CF4
_080561BC: .4byte 0x00000E34
_080561C0:
	adds r6, #1
	adds r4, #0x28
_080561C4:
	cmp r6, #0x1d
	bhi _08056208
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _080561C0
	str r7, [sp, #0xc]
	movs r0, #4
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08056214
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #8
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_08056208:
	ldr r0, _08056218
	movs r1, #3
	movs r2, #1
	bl sub_08068820
	b _080563E0
_08056214: .4byte sub_0802A104
_08056218: .4byte sub_080560D0
_0805621C:
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r0, #8
	movs r2, #0xd8
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _08056234
	ldr r2, [r0, #0]
	movs r1, #2
	b _08056358
	.2byte 0x0000
_08056234: .4byte gUnk_03005CF4
_08056238:
	ldr r7, _08056248
	ldr r0, _0805624C
	ldr r0, [r0, #0]
	ldr r1, _08056250
	adds r4, r0, r1
	movs r6, #0
	b _08056258
	.2byte 0x0000
_08056248: .4byte sub_080560D0
_0805624C: .4byte gUnk_03005CF4
_08056250: .4byte 0x00000E34
_08056254:
	adds r6, #1
	adds r4, #0x28
_08056258:
	cmp r6, #0x1d
	bhi _0805629C
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08056254
	str r7, [sp, #0xc]
	movs r0, #6
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _080562A8
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #9
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_0805629C:
	ldr r0, _080562AC
	movs r1, #5
	movs r2, #2
	bl sub_08068820
	b _080563E0
_080562A8: .4byte sub_0802A104
_080562AC: .4byte sub_080560D0
_080562B0:
	movs r1, #0x80
	lsls r1, r1, #2
	movs r0, #9
	movs r2, #0xd8
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _080562C8
	ldr r2, [r0, #0]
	movs r1, #4
	b _08056358
	.2byte 0x0000
_080562C8: .4byte gUnk_03005CF4
_080562CC:
	ldr r7, _080562DC
	ldr r0, _080562E0
	ldr r0, [r0, #0]
	ldr r1, _080562E4
	adds r4, r0, r1
	movs r6, #0
	b _080562EC
	.2byte 0x0000
_080562DC: .4byte sub_080560D0
_080562E0: .4byte gUnk_03005CF4
_080562E4: .4byte 0x00000E34
_080562E8:
	adds r6, #1
	adds r4, #0x28
_080562EC:
	cmp r6, #0x1d
	bhi _08056330
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _080562E8
	str r7, [sp, #0xc]
	movs r0, #8
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0805633C
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0xa
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_08056330:
	ldr r0, _08056340
	movs r1, #7
	movs r2, #3
	bl sub_08068820
	b _080563E0
_0805633C: .4byte sub_0802A104
_08056340: .4byte sub_080560D0
_08056344:
	movs r1, #0x98
	lsls r1, r1, #2
	movs r0, #0xa
	movs r2, #0xd8
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _08056360
	ldr r2, [r0, #0]
	movs r1, #8
_08056358:
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	b _080563E0
_08056360: .4byte gUnk_03005CF4
_08056364:
	ldr r0, _08056370
	movs r1, #9
	movs r2, #4
	bl sub_08068820
	b _080563E0
_08056370: .4byte sub_080560D0
_08056374:
	movs r0, #0xa8
	lsls r0, r0, #0xa
	movs r1, #0x94
	lsls r1, r1, #9
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #4
	b _08056392
_08056388:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0805639E
_08056392:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08056388
_0805639E:
	movs r0, #0xa6
	lsls r0, r0, #0xa
	movs r1, #0x94
	lsls r1, r1, #9
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r0, #0xaa
	lsls r0, r0, #0xa
	movs r1, #0x94
	lsls r1, r1, #9
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	ldr r0, _080563E8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080563D0
	ldr r0, _080563EC
	bl sub_08006D08
_080563D0:
	movs r1, #0xa8
	lsls r1, r1, #2
	movs r2, #0x94
	lsls r2, r2, #1
	movs r0, #0xb
	movs r3, #0
	bl sub_08028AAC
_080563E0:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080563E8: .4byte gUnk_030027D0
_080563EC: .4byte 0x0000017B
	thumb_func_end sub_080560D0
