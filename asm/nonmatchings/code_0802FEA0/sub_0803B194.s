	thumb_func_start sub_0803B194
sub_0803B194: @ 0x0803B194
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803B1C4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _0803B1CC
	ldr r0, _0803B1C8
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x7c]
	b _0803B1D2
_0803B1C4: .4byte gUnk_03003CE0
_0803B1C8: .4byte gUnk_03005CF4
_0803B1CC:
	ldr r0, _0803B1E4
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x74]
_0803B1D2:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803B1E8
	ldr r0, _0803B1E4
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _0803B1F0
_0803B1E4: .4byte gUnk_03005CF4
_0803B1E8:
	ldr r0, _0803B200
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_0803B1F0:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803B25A
	b _0803B208
_0803B200: .4byte gUnk_03005CF4
_0803B204:
	bl sub_080003F0
_0803B208:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B204
	b _0803B216
_0803B212:
	bl sub_080003F0
_0803B216:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B212
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B238
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B240
_0803B238: .4byte 0x0014014C
_0803B23C:
	bl sub_080003F0
_0803B240:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B24C
	b _0803B672
_0803B24C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B23C
	bl sub_0805EFBC
	b _0803B672
_0803B25A:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0803B2BE
	b _0803B26A
_0803B266:
	bl sub_080003F0
_0803B26A:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B266
	b _0803B278
_0803B274:
	bl sub_080003F0
_0803B278:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B274
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B29C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B2A4
	.2byte 0x0000
_0803B29C: .4byte 0x0014014B
_0803B2A0:
	bl sub_080003F0
_0803B2A4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B2B0
	b _0803B672
_0803B2B0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B2A0
	bl sub_0805EFBC
	b _0803B672
_0803B2BE:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0803B322
	b _0803B2CE
_0803B2CA:
	bl sub_080003F0
_0803B2CE:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B2CA
	b _0803B2DC
_0803B2D8:
	bl sub_080003F0
_0803B2DC:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B2D8
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B300
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B308
	.2byte 0x0000
_0803B300: .4byte 0x0014014A
_0803B304:
	bl sub_080003F0
_0803B308:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B314
	b _0803B672
_0803B314:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B304
	bl sub_0805EFBC
	b _0803B672
_0803B322:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0803B382
	b _0803B330
_0803B32C:
	bl sub_080003F0
_0803B330:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B32C
	b _0803B33E
_0803B33A:
	bl sub_080003F0
_0803B33E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B33A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B360
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B368
_0803B360: .4byte 0x00140149
_0803B364:
	bl sub_080003F0
_0803B368:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B374
	b _0803B672
_0803B374:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B364
	bl sub_0805EFBC
	b _0803B672
_0803B382:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0803B3E2
	b _0803B390
_0803B38C:
	bl sub_080003F0
_0803B390:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B38C
	b _0803B39E
_0803B39A:
	bl sub_080003F0
_0803B39E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B39A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B3C0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B3C8
_0803B3C0: .4byte 0x00140148
_0803B3C4:
	bl sub_080003F0
_0803B3C8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B3D4
	b _0803B672
_0803B3D4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B3C4
	bl sub_0805EFBC
	b _0803B672
_0803B3E2:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0803B442
	b _0803B3F0
_0803B3EC:
	bl sub_080003F0
_0803B3F0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B3EC
	b _0803B3FE
_0803B3FA:
	bl sub_080003F0
_0803B3FE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B3FA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B420
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B428
_0803B420: .4byte 0x00140147
_0803B424:
	bl sub_080003F0
_0803B428:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B434
	b _0803B672
_0803B434:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B424
	bl sub_0805EFBC
	b _0803B672
_0803B442:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _0803B4A2
	b _0803B450
_0803B44C:
	bl sub_080003F0
_0803B450:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B44C
	b _0803B45E
_0803B45A:
	bl sub_080003F0
_0803B45E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B45A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B480
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B488
_0803B480: .4byte 0x00140146
_0803B484:
	bl sub_080003F0
_0803B488:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B494
	b _0803B672
_0803B494:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B484
	bl sub_0805EFBC
	b _0803B672
_0803B4A2:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0803B502
	b _0803B4B0
_0803B4AC:
	bl sub_080003F0
_0803B4B0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B4AC
	b _0803B4BE
_0803B4BA:
	bl sub_080003F0
_0803B4BE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B4BA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B4E0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B4E8
_0803B4E0: .4byte 0x00140145
_0803B4E4:
	bl sub_080003F0
_0803B4E8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B4F4
	b _0803B672
_0803B4F4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B4E4
	bl sub_0805EFBC
	b _0803B672
_0803B502:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0803B562
	b _0803B510
_0803B50C:
	bl sub_080003F0
_0803B510:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B50C
	b _0803B51E
_0803B51A:
	bl sub_080003F0
_0803B51E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B51A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B540
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B548
_0803B540: .4byte 0x00140144
_0803B544:
	bl sub_080003F0
_0803B548:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B554
	b _0803B672
_0803B554:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B544
	bl sub_0805EFBC
	b _0803B672
_0803B562:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0803B5C0
	b _0803B570
_0803B56C:
	bl sub_080003F0
_0803B570:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B56C
	b _0803B57E
_0803B57A:
	bl sub_080003F0
_0803B57E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B57A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B5A0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B5A8
_0803B5A0: .4byte 0x00140143
_0803B5A4:
	bl sub_080003F0
_0803B5A8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803B672
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B5A4
	bl sub_0805EFBC
	b _0803B672
_0803B5C0:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _0803B624
	b _0803B5CE
_0803B5CA:
	bl sub_080003F0
_0803B5CE:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B5CA
	b _0803B5DC
_0803B5D8:
	bl sub_080003F0
_0803B5DC:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B5D8
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B600
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B608
	.2byte 0x0000
_0803B600: .4byte 0x00140142
_0803B604:
	bl sub_080003F0
_0803B608:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803B672
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B604
	bl sub_0805EFBC
	b _0803B672
_0803B620:
	bl sub_080003F0
_0803B624:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B620
	b _0803B632
_0803B62E:
	bl sub_080003F0
_0803B632:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B62E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B654
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B65C
_0803B654: .4byte 0x00140141
_0803B658:
	bl sub_080003F0
_0803B65C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803B672
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B658
	bl sub_0805EFBC
_0803B672:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803B698
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0803B698: .4byte gUnk_03003CE0
	thumb_func_end sub_0803B194
