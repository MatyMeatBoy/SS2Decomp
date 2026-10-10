	thumb_func_start sub_08053CF4
sub_08053CF4: @ 0x08053CF4
	push {r4, r5, r6, lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _08053D38
	bl sub_0801AB24
	cmp r0, #1
	beq _08053D1C
	cmp r0, #1
	bgt _08053D10
	cmp r0, #0
	beq _08053D16
	b _08053D30
_08053D10:
	cmp r0, #2
	beq _08053D24
	b _08053D30
_08053D16:
	bl sub_080576A8
	b _08053D30
_08053D1C:
	movs r0, #6
	bl sub_0801AB50
	b _08053D30
_08053D24:
	movs r0, #6
	bl sub_0801AB90
	b _08053D30
_08053D2C:
	bl sub_080003F0
_08053D30:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08053D2C
_08053D38:
	movs r1, #0xb
	ldr r0, _08053D88
	str r1, [r0, #0]
	ldr r0, _08053D8C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08053D50
	movs r0, #0xb
	bl sub_08006CB4
_08053D50:
	ldr r0, _08053D90
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08053D94
	movs r6, #1
	movs r4, #0
_08053D5C:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08053D70
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08053D70
	strh r4, [r2, #0xc]
_08053D70:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08053D5C
	bl sub_08019F04
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08053D88: .4byte gUnk_03005CF8
_08053D8C: .4byte gUnk_030027D0
_08053D90: .4byte gUnk_030056F4
_08053D94: .4byte gUnk_030056FC
	thumb_func_end sub_08053CF4
