	thumb_func_start sub_08053A80
sub_08053A80: @ 0x08053A80
	push {r4, r5, r6, lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _08053AC4
	bl sub_0801AB24
	cmp r0, #1
	beq _08053AA8
	cmp r0, #1
	bgt _08053A9C
	cmp r0, #0
	beq _08053AA2
	b _08053ABC
_08053A9C:
	cmp r0, #2
	beq _08053AB0
	b _08053ABC
_08053AA2:
	bl sub_080576A8
	b _08053ABC
_08053AA8:
	movs r0, #6
	bl sub_0801AB50
	b _08053ABC
_08053AB0:
	movs r0, #6
	bl sub_0801AB90
	b _08053ABC
_08053AB8:
	bl sub_080003F0
_08053ABC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08053AB8
_08053AC4:
	movs r1, #0xb
	ldr r0, _08053B14
	str r1, [r0, #0]
	ldr r0, _08053B18
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08053ADC
	movs r0, #0xb
	bl sub_08006CB4
_08053ADC:
	ldr r0, _08053B1C
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08053B20
	movs r6, #1
	movs r4, #0
_08053AE8:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08053AFC
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08053AFC
	strh r4, [r2, #0xc]
_08053AFC:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08053AE8
	bl sub_08019F04
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08053B14: .4byte gUnk_03005CF8
_08053B18: .4byte gUnk_030027D0
_08053B1C: .4byte gUnk_030056F4
_08053B20: .4byte gUnk_030056FC
	thumb_func_end sub_08053A80
