	thumb_func_start sub_08053D98
sub_08053D98: @ 0x08053D98
	push {r4, r5, r6, lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _08053DDC
	bl sub_0801AB24
	cmp r0, #1
	beq _08053DC0
	cmp r0, #1
	bgt _08053DB4
	cmp r0, #0
	beq _08053DBA
	b _08053DD4
_08053DB4:
	cmp r0, #2
	beq _08053DC8
	b _08053DD4
_08053DBA:
	bl sub_080576A8
	b _08053DD4
_08053DC0:
	movs r0, #6
	bl sub_0801AB50
	b _08053DD4
_08053DC8:
	movs r0, #6
	bl sub_0801AB90
	b _08053DD4
_08053DD0:
	bl sub_080003F0
_08053DD4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08053DD0
_08053DDC:
	movs r1, #0xb
	ldr r0, _08053E2C
	str r1, [r0, #0]
	ldr r0, _08053E30
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08053DF4
	movs r0, #0xb
	bl sub_08006CB4
_08053DF4:
	ldr r0, _08053E34
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08053E38
	movs r6, #1
	movs r4, #0
_08053E00:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08053E14
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08053E14
	strh r4, [r2, #0xc]
_08053E14:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08053E00
	bl sub_08019F04
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08053E2C: .4byte gUnk_03005CF8
_08053E30: .4byte gUnk_030027D0
_08053E34: .4byte gUnk_030056F4
_08053E38: .4byte gUnk_030056FC
	thumb_func_end sub_08053D98
