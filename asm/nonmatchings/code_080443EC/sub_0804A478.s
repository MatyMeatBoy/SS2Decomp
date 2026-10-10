	thumb_func_start sub_0804A478
sub_0804A478: @ 0x0804A478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	movs r0, #0
	bl sub_0804A89C
	ldr r0, _0804A4F8
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	add r5, sp, #4
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x1c]
	mov r1, sp
	adds r1, #0xc
	str r1, [sp, #0x20]
	mov r9, r4
	ldr r2, _0804A4FC
	mov r8, r2
_0804A4B0:
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
	adds r4, #0x22
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804A4B0
	ldr r6, _0804A500
	ldr r0, _0804A504
	ldr r0, [r0, #0]
	ldr r1, _0804A508
	adds r4, r0, r1
	movs r5, #0
	b _0804A510
_0804A4F8: .4byte gUnk_03003170
_0804A4FC: .4byte 0xFFE20000
_0804A500: .4byte sub_0804A89C
_0804A504: .4byte gUnk_03005CF4
_0804A508: .4byte 0x00000E34
_0804A50C:
	adds r5, #1
	adds r4, #0x28
_0804A510:
	cmp r5, #0x1d
	bhi _0804A550
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804A50C
	b _0804A524
_0804A520:
	bl sub_080003F0
_0804A524:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804A520
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
	mov sl, r4
_0804A550:
	ldr r6, _0804A560
	ldr r0, _0804A564
	ldr r0, [r0, #0]
	ldr r3, _0804A568
	adds r4, r0, r3
	movs r5, #0
	b _0804A570
	.2byte 0x0000
_0804A560: .4byte sub_0804A89C
_0804A564: .4byte gUnk_03005CF4
_0804A568: .4byte 0x00000E34
_0804A56C:
	adds r5, #1
	adds r4, #0x28
_0804A570:
	cmp r5, #0x1d
	bhi _0804A5B0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804A56C
	b _0804A584
_0804A580:
	bl sub_080003F0
_0804A584:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804A580
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
	str r4, [sp, #0x10]
_0804A5B0:
	ldr r6, _0804A5C0
	ldr r0, _0804A5C4
	ldr r0, [r0, #0]
	ldr r3, _0804A5C8
	adds r4, r0, r3
	movs r5, #0
	b _0804A5D0
	.2byte 0x0000
_0804A5C0: .4byte sub_0804A89C
_0804A5C4: .4byte gUnk_03005CF4
_0804A5C8: .4byte 0x00000E34
_0804A5CC:
	adds r5, #1
	adds r4, #0x28
_0804A5D0:
	cmp r5, #0x1d
	bhi _0804A610
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804A5CC
	b _0804A5E4
_0804A5E0:
	bl sub_080003F0
_0804A5E4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804A5E0
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
	movs r1, #3
	bl sub_08000274
	str r4, [sp, #0x14]
_0804A610:
	ldr r6, _0804A620
	ldr r0, _0804A624
	ldr r0, [r0, #0]
	ldr r3, _0804A628
	adds r4, r0, r3
	movs r5, #0
	b _0804A630
	.2byte 0x0000
_0804A620: .4byte sub_0804A89C
_0804A624: .4byte gUnk_03005CF4
_0804A628: .4byte 0x00000E34
_0804A62C:
	adds r5, #1
	adds r4, #0x28
_0804A630:
	cmp r5, #0x1d
	bhi _0804A670
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804A62C
	b _0804A644
_0804A640:
	bl sub_080003F0
_0804A644:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804A640
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
	movs r1, #4
	bl sub_08000274
	str r4, [sp, #0x18]
_0804A670:
	movs r0, #0x8c
	movs r1, #0x82
	movs r2, #0xc8
	movs r3, #0x64
	bl sub_0802A080
	mov r3, sl
	cmp r3, #0
	beq _0804A692
	mov r0, sl
	bl sub_08000470
	cmp r0, #0
	beq _0804A692
	mov r0, sl
	bl sub_080003A8
_0804A692:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0804A6A6
	bl sub_08000470
	cmp r0, #0
	beq _0804A6A6
	ldr r0, [sp, #0x10]
	bl sub_080003A8
_0804A6A6:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq _0804A6BC
	adds r0, r1, #0
	bl sub_08000470
	cmp r0, #0
	beq _0804A6BC
	ldr r0, [sp, #0x14]
	bl sub_080003A8
_0804A6BC:
	ldr r2, [sp, #0x18]
	cmp r2, #0
	beq _0804A6D2
	adds r0, r2, #0
	bl sub_08000470
	cmp r0, #0
	beq _0804A6D2
	ldr r0, [sp, #0x18]
	bl sub_080003A8
_0804A6D2:
	movs r4, #1
	b _0804A6E0
_0804A6D6:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804A6EC
_0804A6E0:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804A6D6
_0804A6EC:
	bl sub_0805EFBC
_0804A6F0:
	bl sub_080003F0
	bl sub_0805F184
	cmp r0, #0
	bne _0804A6F0
	movs r3, #0x66
	mov r9, r3
	ldr r0, _0804A75C
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	movs r7, #0
_0804A716:
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
	ble _0804A716
	ldr r6, _0804A760
	ldr r0, _0804A764
	ldr r0, [r0, #0]
	ldr r1, _0804A768
	adds r4, r0, r1
	movs r5, #0
	b _0804A770
_0804A75C: .4byte gUnk_03003170
_0804A760: .4byte sub_0804A89C
_0804A764: .4byte gUnk_03005CF4
_0804A768: .4byte 0x00000E34
_0804A76C:
	adds r5, #1
	adds r4, #0x28
_0804A770:
	cmp r5, #0x1d
	bhi _0804A7AE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804A76C
	b _0804A784
_0804A780:
	bl sub_080003F0
_0804A784:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804A780
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
_0804A7AE:
	ldr r6, _0804A7BC
	ldr r0, _0804A7C0
	ldr r0, [r0, #0]
	ldr r3, _0804A7C4
	adds r4, r0, r3
	movs r5, #0
	b _0804A7CC
_0804A7BC: .4byte sub_0804A89C
_0804A7C0: .4byte gUnk_03005CF4
_0804A7C4: .4byte 0x00000E34
_0804A7C8:
	adds r5, #1
	adds r4, #0x28
_0804A7CC:
	cmp r5, #0x1d
	bhi _0804A80A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804A7C8
	b _0804A7E0
_0804A7DC:
	bl sub_080003F0
_0804A7E0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804A7DC
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
_0804A80A:
	movs r4, #0x1e
	b _0804A818
_0804A80E:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804A824
_0804A818:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804A80E
_0804A824:
	bl sub_0800CB9C
	cmp r0, #0
	bne _0804A84C
	ldr r0, _0804A844
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804A852
	ldr r1, _0804A848
	movs r0, #2
	str r0, [r1, #0]
	bl sub_08006CB4
	b _0804A852
_0804A844: .4byte gUnk_030027D0
_0804A848: .4byte gUnk_03005CF8
_0804A84C:
	movs r0, #0
	bl sub_080586B4
_0804A852:
	ldr r0, _0804A894
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _0804A898
	movs r6, #1
	movs r4, #0
_0804A85E:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0804A872
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0804A872
	strh r4, [r2, #0xc]
_0804A872:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _0804A85E
	bl sub_08019F04
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0804A894: .4byte gUnk_030056F4
_0804A898: .4byte gUnk_030056FC
	thumb_func_end sub_0804A478
