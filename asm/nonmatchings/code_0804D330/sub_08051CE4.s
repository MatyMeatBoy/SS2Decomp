	thumb_func_start sub_08051CE4
sub_08051CE4: @ 0x08051CE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _08051D00
	ldr r2, [r0, #0]
	movs r1, #8
	ldr r0, [r2, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _08051D5C
	ldr r7, _08051D04
	ldr r0, _08051D08
	adds r4, r2, r0
	movs r6, #0
	b _08051D10
_08051D00: .4byte gUnk_03005CF4
_08051D04: .4byte sub_08051DF0
_08051D08: .4byte 0x00000E34
_08051D0C:
	adds r6, #1
	adds r4, #0x28
_08051D10:
	cmp r6, #0x1d
	bhi _08051D6C
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08051D0C
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08051D58
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #6
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
	b _08051D6C
	.2byte 0x0000
_08051D58: .4byte sub_0802A104
_08051D5C:
	movs r1, #0x84
	lsls r1, r1, #1
	movs r2, #0xac
	lsls r2, r2, #1
	movs r0, #7
	movs r3, #0
	bl sub_08028AAC
_08051D6C:
	bl sub_0800CC98
	cmp r0, #0
	bne _08051DAE
	bl sub_0801AB24
	cmp r0, #1
	beq _08051D92
	cmp r0, #1
	bgt _08051D86
	cmp r0, #0
	beq _08051D8C
	b _08051DA6
_08051D86:
	cmp r0, #2
	beq _08051D9A
	b _08051DA6
_08051D8C:
	bl sub_080576A8
	b _08051DA6
_08051D92:
	movs r0, #6
	bl sub_0801AB50
	b _08051DA6
_08051D9A:
	movs r0, #6
	bl sub_0801AB90
	b _08051DA6
_08051DA2:
	bl sub_080003F0
_08051DA6:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08051DA2
_08051DAE:
	ldr r0, _08051DE8
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08051DEC
	movs r6, #1
	movs r4, #0
_08051DBA:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08051DCE
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08051DCE
	strh r4, [r2, #0xc]
_08051DCE:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08051DBA
	bl sub_08019F04
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08051DE8: .4byte gUnk_030056F4
_08051DEC: .4byte gUnk_030056FC
	thumb_func_end sub_08051CE4
