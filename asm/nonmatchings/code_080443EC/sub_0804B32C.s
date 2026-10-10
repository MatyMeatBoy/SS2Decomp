	thumb_func_start sub_0804B32C
sub_0804B32C: @ 0x0804B32C
	push {r4, r5, r6, lr}
	sub sp, #8
	bl sub_0800CCCC
	cmp r0, #0
	beq _0804B33A
	b _0804B5DA
_0804B33A:
	ldr r4, _0804B39C
	ldr r2, [r4, #0]
	movs r3, #0x20
	ldr r1, [r2, #0x38]
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0804B34C
	b _0804B5DA
_0804B34C:
	orrs r1, r3
	str r1, [r2, #0x38]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804B3A0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	movs r0, #2
	bl sub_0801A388
	movs r0, #1
	bl sub_0801A388
	movs r0, #2
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0xa
	bl sub_08028AAC
	ldr r2, _0804B3A4
	movs r0, #2
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	ldr r6, _0804B3A8
	ldr r0, [r4, #0]
	ldr r1, _0804B3AC
	adds r4, r0, r1
	movs r5, #0
	b _0804B3B4
_0804B39C: .4byte gUnk_03005CF4
_0804B3A0: .4byte gUnk_03003CE0
_0804B3A4: .4byte 0x0000270F
_0804B3A8: .4byte sub_0805A054
_0804B3AC: .4byte 0x00000E34
_0804B3B0:
	adds r5, #1
	adds r4, #0x28
_0804B3B4:
	cmp r5, #0x1d
	bhi _0804B3F2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804B3B0
	b _0804B3C8
_0804B3C4:
	bl sub_080003F0
_0804B3C8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804B3C4
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
	movs r1, #2
	bl sub_08000274
_0804B3F2:
	movs r4, #0x1e
	b _0804B400
_0804B3F6:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804B40C
_0804B400:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804B3F6
_0804B40C:
	movs r0, #0xf0
	lsls r0, r0, #7
	movs r1, #0xa0
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #2
	b _0804B42A
_0804B420:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804B436
_0804B42A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804B420
_0804B436:
	movs r0, #0xe0
	lsls r0, r0, #7
	movs r1, #0xa0
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r0, #0xf8
	lsls r0, r0, #7
	movs r1, #0x90
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #2
	b _0804B464
_0804B45A:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804B470
_0804B464:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804B45A
_0804B470:
	movs r0, #0x80
	lsls r0, r0, #8
	movs r1, #0xa0
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r0, #0xe8
	lsls r0, r0, #7
	movs r1, #0x90
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #8
	b _0804B49E
_0804B494:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804B4AA
_0804B49E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804B494
_0804B4AA:
	ldr r2, _0804B4C4
	movs r0, #1
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	ldr r6, _0804B4C8
	ldr r0, _0804B4CC
	ldr r0, [r0, #0]
	ldr r1, _0804B4D0
	adds r4, r0, r1
	movs r5, #0
	b _0804B4D8
_0804B4C4: .4byte 0x0000270F
_0804B4C8: .4byte sub_0805A054
_0804B4CC: .4byte gUnk_03005CF4
_0804B4D0: .4byte 0x00000E34
_0804B4D4:
	adds r5, #1
	adds r4, #0x28
_0804B4D8:
	cmp r5, #0x1d
	bhi _0804B516
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804B4D4
	b _0804B4EC
_0804B4E8:
	bl sub_080003F0
_0804B4EC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804B4E8
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
_0804B516:
	movs r0, #0xf
	movs r1, #0x78
	movs r2, #0x50
	bl sub_080289C0
	adds r4, r0, #0
	movs r1, #0
	bl sub_080290E4
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_0802939C
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0
	bl sub_08028AAC
	b _0804B542
_0804B53E:
	bl sub_080003F0
_0804B542:
	bl sub_0805F184
	cmp r0, #0
	bne _0804B53E
	b _0804B550
_0804B54C:
	bl sub_080003F0
_0804B550:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804B54C
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804B570
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	b _0804B578
_0804B570: .4byte 0x0014003F
_0804B574:
	bl sub_080003F0
_0804B578:
	adds r0, r5, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804B574
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0802939C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x78
	movs r3, #0x64
	bl sub_08028D98
	ldr r0, _0804B5EC
	ldr r0, [r0, #0]
	ldr r2, _0804B5F0
	adds r1, r0, r2
	movs r2, #0
_0804B5A0:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0804B5B4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804B5A0
	bl sub_080003F0
	movs r1, #0
_0804B5B4:
	cmp r1, #0
	beq _0804B5BC
	movs r0, #4
	strh r0, [r1, #0x36]
_0804B5BC:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804B5F4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_0804B5DA:
	bl sub_0800CE30
	cmp r0, #0
	beq _0804B5FC
	ldr r0, _0804B5EC
	ldr r0, [r0, #0]
	ldr r1, _0804B5F8
	b _0804B602
	.2byte 0x0000
_0804B5EC: .4byte gUnk_03005CF4
_0804B5F0: .4byte 0x000007A4
_0804B5F4: .4byte gUnk_03003CE0
_0804B5F8: .4byte 0x000001C5
_0804B5FC:
	ldr r0, _0804B614
	ldr r0, [r0, #0]
	ldr r1, _0804B618
_0804B602:
	adds r2, r0, r1
	ldrb r1, [r2, #0]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0804B614: .4byte gUnk_03005CF4
_0804B618: .4byte 0x000001B9
	thumb_func_end sub_0804B32C
