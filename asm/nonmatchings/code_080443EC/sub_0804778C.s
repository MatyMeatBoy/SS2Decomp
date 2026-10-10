	thumb_func_start sub_0804778C
sub_0804778C: @ 0x0804778C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0804783C
	ldr r0, [r0, #0]
	movs r4, #1
	ldr r0, [r0, #0x38]
	ands r0, r4
	cmp r0, #0
	beq _080477A8
	movs r0, #1
_080477A8:
	cmp r0, #0
	beq _080477AE
	b _080478E4
_080477AE:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08047840
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	movs r0, #0x80
	lsls r0, r0, #3
	mov sl, r0
	ldr r0, _08047844
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
	ldr r0, _08047848
	mov r8, r0
_080477E6:
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
	ble _080477E6
	bl sub_0800CC98
	cmp r0, #0
	bne _08047874
	bl sub_0801AB24
	cmp r0, #1
	beq _08047858
	cmp r0, #1
	bgt _0804784C
	cmp r0, #0
	beq _08047852
	b _0804786C
	.2byte 0x0000
_0804783C: .4byte gUnk_03005CF4
_08047840: .4byte gUnk_03003CE0
_08047844: .4byte gUnk_03003170
_08047848: .4byte 0xFF880000
_0804784C:
	cmp r0, #2
	beq _08047860
	b _0804786C
_08047852:
	bl sub_080576A8
	b _0804786C
_08047858:
	movs r0, #6
	bl sub_0801AB50
	b _0804786C
_08047860:
	movs r0, #6
	bl sub_0801AB90
	b _0804786C
_08047868:
	bl sub_080003F0
_0804786C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08047868
_08047874:
	ldr r6, _08047884
	ldr r0, _08047888
	ldr r0, [r0, #0]
	ldr r1, _0804788C
	adds r4, r0, r1
	movs r5, #0
	b _08047894
	.2byte 0x0000
_08047884: .4byte sub_08047970
_08047888: .4byte gUnk_03005CF4
_0804788C: .4byte 0x00000E34
_08047890:
	adds r5, #1
	adds r4, #0x28
_08047894:
	cmp r5, #0x1d
	bhi _080478D2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08047890
	b _080478A8
_080478A4:
	bl sub_080003F0
_080478A8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080478A4
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
_080478D2:
	ldr r0, _080478E0
	ldr r2, [r0, #0]
	movs r1, #1
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	b _08047956
_080478E0: .4byte gUnk_03005CF4
_080478E4:
	bl sub_0800CC98
	cmp r0, #0
	bne _08047926
	bl sub_0801AB24
	cmp r0, #1
	beq _0804790A
	cmp r0, #1
	bgt _080478FE
	cmp r0, #0
	beq _08047904
	b _0804791E
_080478FE:
	cmp r0, #2
	beq _08047912
	b _0804791E
_08047904:
	bl sub_080576A8
	b _0804791E
_0804790A:
	movs r0, #6
	bl sub_0801AB50
	b _0804791E
_08047912:
	movs r0, #6
	bl sub_0801AB90
	b _0804791E
_0804791A:
	bl sub_080003F0
_0804791E:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804791A
_08047926:
	ldr r0, _08047968
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _0804796C
	movs r6, #1
	movs r4, #0
_08047932:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08047946
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08047946
	strh r4, [r2, #0xc]
_08047946:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08047932
	bl sub_08019F04
_08047956:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08047968: .4byte gUnk_030056F4
_0804796C: .4byte gUnk_030056FC
	thumb_func_end sub_0804778C
