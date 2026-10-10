	thumb_func_start sub_080545A0
sub_080545A0: @ 0x080545A0
	push {r4, r5, r6, lr}
	bl sub_0800CC98
	cmp r0, #0
	bne _080545E4
	bl sub_0801AB24
	cmp r0, #1
	beq _080545C8
	cmp r0, #1
	bgt _080545BC
	cmp r0, #0
	beq _080545C2
	b _080545DC
_080545BC:
	cmp r0, #2
	beq _080545D0
	b _080545DC
_080545C2:
	bl sub_080576A8
	b _080545DC
_080545C8:
	movs r0, #6
	bl sub_0801AB50
	b _080545DC
_080545D0:
	movs r0, #6
	bl sub_0801AB90
	b _080545DC
_080545D8:
	bl sub_080003F0
_080545DC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080545D8
_080545E4:
	movs r1, #0xb
	ldr r0, _08054634
	str r1, [r0, #0]
	ldr r0, _08054638
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080545FC
	movs r0, #0xb
	bl sub_08006CB4
_080545FC:
	ldr r0, _0805463C
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08054640
	movs r6, #1
	movs r4, #0
_08054608:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0805461C
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0805461C
	strh r4, [r2, #0xc]
_0805461C:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08054608
	bl sub_08019F04
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08054634: .4byte gUnk_03005CF8
_08054638: .4byte gUnk_030027D0
_0805463C: .4byte gUnk_030056F4
_08054640: .4byte gUnk_030056FC
	thumb_func_end sub_080545A0
