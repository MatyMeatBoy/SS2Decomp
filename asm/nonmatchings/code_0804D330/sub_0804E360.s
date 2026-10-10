	thumb_func_start sub_0804E360
sub_0804E360: @ 0x0804E360
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0804E3B0
	ldr r0, [r0, #0]
	movs r4, #1
	ldr r1, [r0, #0x38]
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _0804E376
	movs r0, #1
_0804E376:
	cmp r0, #0
	beq _0804E3E2
	ldr r4, _0804E3B4
	movs r0, #6
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08028AAC
	movs r0, #7
	adds r1, r4, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_08028AAC
	bl sub_0800CC98
	cmp r0, #0
	beq _0804E39E
	b _0804E61E
_0804E39E:
	bl sub_0801AB24
	cmp r0, #1
	beq _0804E3C4
	cmp r0, #1
	bgt _0804E3B8
	cmp r0, #0
	beq _0804E3BE
	b _0804E3D8
_0804E3B0: .4byte gUnk_03005CF4
_0804E3B4: .4byte 0x0000270F
_0804E3B8:
	cmp r0, #2
	beq _0804E3CC
	b _0804E3D8
_0804E3BE:
	bl sub_080576A8
	b _0804E3D8
_0804E3C4:
	movs r0, #6
	bl sub_0801AB50
	b _0804E3D8
_0804E3CC:
	movs r0, #6
	bl sub_0801AB90
	b _0804E3D8
_0804E3D4:
	bl sub_080003F0
_0804E3D8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804E3D4
	b _0804E61E
_0804E3E2:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0804E3EC
	b _0804E516
_0804E3EC:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0804E420
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CC98
	cmp r0, #0
	bne _0804E44C
	bl sub_0801AB24
	cmp r0, #1
	beq _0804E430
	cmp r0, #1
	bgt _0804E424
	cmp r0, #0
	beq _0804E42A
	b _0804E444
	.2byte 0x0000
_0804E420: .4byte gUnk_03003CE0
_0804E424:
	cmp r0, #2
	beq _0804E438
	b _0804E444
_0804E42A:
	bl sub_080576A8
	b _0804E444
_0804E430:
	movs r0, #6
	bl sub_0801AB50
	b _0804E444
_0804E438:
	movs r0, #6
	bl sub_0801AB90
	b _0804E444
_0804E440:
	bl sub_080003F0
_0804E444:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804E440
_0804E44C:
	ldr r7, _0804E45C
	ldr r0, _0804E460
	ldr r0, [r0, #0]
	ldr r1, _0804E464
	adds r4, r0, r1
	movs r6, #0
	b _0804E46C
	.2byte 0x0000
_0804E45C: .4byte sub_0804E7B8
_0804E460: .4byte gUnk_03005CF4
_0804E464: .4byte 0x00000E34
_0804E468:
	adds r6, #1
	adds r4, #0x28
_0804E46C:
	cmp r6, #0x1d
	bhi _0804E4B0
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _0804E468
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0804E4C0
	str r1, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #6
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_0804E4B0:
	ldr r6, _0804E4C4
	ldr r0, _0804E4C8
	ldr r0, [r0, #0]
	ldr r1, _0804E4CC
	adds r4, r0, r1
	movs r5, #0
	b _0804E4D4
	.2byte 0x0000
_0804E4C0: .4byte sub_0802A104
_0804E4C4: .4byte sub_0804E628
_0804E4C8: .4byte gUnk_03005CF4
_0804E4CC: .4byte 0x00000E34
_0804E4D0:
	adds r5, #1
	adds r4, #0x28
_0804E4D4:
	cmp r5, #0x1d
	bls _0804E4DA
	b _0804E61E
_0804E4DA:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804E4D0
	b _0804E4EA
_0804E4E6:
	bl sub_080003F0
_0804E4EA:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804E4E6
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
	b _0804E61E
_0804E516:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804E558
	bl sub_0801AB24
	cmp r0, #1
	beq _0804E53C
	cmp r0, #1
	bgt _0804E530
	cmp r0, #0
	beq _0804E536
	b _0804E550
_0804E530:
	cmp r0, #2
	beq _0804E544
	b _0804E550
_0804E536:
	bl sub_080576A8
	b _0804E550
_0804E53C:
	movs r0, #6
	bl sub_0801AB50
	b _0804E550
_0804E544:
	movs r0, #6
	bl sub_0801AB90
	b _0804E550
_0804E54C:
	bl sub_080003F0
_0804E550:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804E54C
_0804E558:
	ldr r7, _0804E568
	ldr r0, _0804E56C
	ldr r0, [r0, #0]
	ldr r1, _0804E570
	adds r4, r0, r1
	movs r6, #0
	b _0804E578
	.2byte 0x0000
_0804E568: .4byte sub_0804E7B8
_0804E56C: .4byte gUnk_03005CF4
_0804E570: .4byte 0x00000E34
_0804E574:
	adds r6, #1
	adds r4, #0x28
_0804E578:
	cmp r6, #0x1d
	bhi _0804E5BC
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _0804E574
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0804E5CC
	str r1, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #6
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_0804E5BC:
	ldr r6, _0804E5D0
	ldr r0, _0804E5D4
	ldr r0, [r0, #0]
	ldr r1, _0804E5D8
	adds r4, r0, r1
	movs r5, #0
	b _0804E5E0
	.2byte 0x0000
_0804E5CC: .4byte sub_0802A104
_0804E5D0: .4byte sub_0804E628
_0804E5D4: .4byte gUnk_03005CF4
_0804E5D8: .4byte 0x00000E34
_0804E5DC:
	adds r5, #1
	adds r4, #0x28
_0804E5E0:
	cmp r5, #0x1d
	bhi _0804E61E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804E5DC
	b _0804E5F4
_0804E5F0:
	bl sub_080003F0
_0804E5F4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804E5F0
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
_0804E61E:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0804E360
