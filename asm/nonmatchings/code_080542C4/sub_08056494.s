	thumb_func_start sub_08056494
sub_08056494: @ 0x08056494
	push {r4, r5, r6, lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _080564D8
	bl sub_0801AB24
	cmp r0, #1
	beq _080564BC
	cmp r0, #1
	bgt _080564B0
	cmp r0, #0
	beq _080564B6
	b _080564D0
_080564B0:
	cmp r0, #2
	beq _080564C4
	b _080564D0
_080564B6:
	bl sub_080576A8
	b _080564D0
_080564BC:
	movs r0, #6
	bl sub_0801AB50
	b _080564D0
_080564C4:
	movs r0, #6
	bl sub_0801AB90
	b _080564D0
_080564CC:
	bl sub_080003F0
_080564D0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080564CC
_080564D8:
	movs r1, #0xb
	ldr r0, _08056528
	str r1, [r0, #0]
	ldr r0, _0805652C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080564F0
	movs r0, #0xb
	bl sub_08006CB4
_080564F0:
	ldr r0, _08056530
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08056534
	movs r6, #1
	movs r4, #0
_080564FC:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08056510
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08056510
	strh r4, [r2, #0xc]
_08056510:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _080564FC
	bl sub_08019F04
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08056528: .4byte gUnk_03005CF8
_0805652C: .4byte gUnk_030027D0
_08056530: .4byte gUnk_030056F4
_08056534: .4byte gUnk_030056FC
	thumb_func_end sub_08056494
