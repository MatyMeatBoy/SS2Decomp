	thumb_func_start sub_08055974
sub_08055974: @ 0x08055974
	push {r4, r5, r6, lr}
	ldr r6, _08055984
	ldr r0, _08055988
	ldr r0, [r0, #0]
	ldr r1, _0805598C
	adds r4, r0, r1
	movs r5, #0
	b _08055994
_08055984: .4byte sub_08055A60
_08055988: .4byte gUnk_03005CF4
_0805598C: .4byte 0x00000E34
_08055990:
	adds r5, #1
	adds r4, #0x28
_08055994:
	cmp r5, #0x1d
	bhi _080559D2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08055990
	b _080559A8
_080559A4:
	bl sub_080003F0
_080559A8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080559A4
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
_080559D2:
	bl sub_0800CE30
	cmp r0, #0
	beq _080559EC
	ldr r0, _080559E8
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	adds r0, r0, r1
	b _080559F6
	.2byte 0x0000
_080559E8: .4byte gUnk_03005CF4
_080559EC:
	ldr r0, _08055A28
	ldr r0, [r0, #0]
	movs r2, #0xdd
	lsls r2, r2, #1
	adds r0, r0, r2
_080559F6:
	ldrb r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08055A0C
	ldr r2, _08055A2C
	movs r0, #8
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
_08055A0C:
	bl sub_0800CC98
	cmp r0, #0
	bne _08055A58
	bl sub_0801AB24
	cmp r0, #1
	beq _08055A3C
	cmp r0, #1
	bgt _08055A30
	cmp r0, #0
	beq _08055A36
	b _08055A50
	.2byte 0x0000
_08055A28: .4byte gUnk_03005CF4
_08055A2C: .4byte 0x0000270F
_08055A30:
	cmp r0, #2
	beq _08055A44
	b _08055A50
_08055A36:
	bl sub_080576A8
	b _08055A50
_08055A3C:
	movs r0, #6
	bl sub_0801AB50
	b _08055A50
_08055A44:
	movs r0, #6
	bl sub_0801AB90
	b _08055A50
_08055A4C:
	bl sub_080003F0
_08055A50:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08055A4C
_08055A58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08055974
