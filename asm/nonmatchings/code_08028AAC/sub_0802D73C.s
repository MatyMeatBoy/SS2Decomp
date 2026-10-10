	thumb_func_start sub_0802D73C
sub_0802D73C: @ 0x0802D73C
	push {r4, r5, lr}
	movs r0, #0x48
	movs r1, #0x58
	movs r2, #0x40
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D7BC
	ldr r0, [r0, #0]
	ldr r2, _0802D7C0
	adds r1, r0, r2
	movs r2, #0
_0802D754:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D7CC
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D754
	bl sub_080003F0
	movs r2, #0
_0802D768:
	cmp r2, #0
	beq _0802D77C
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D77C:
	ldr r5, _0802D7C4
	ldr r0, _0802D7BC
	ldr r0, [r0, #0]
	ldr r2, _0802D7C0
	adds r1, r0, r2
	movs r2, #0
_0802D788:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D7C8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D788
	bl sub_080003F0
	movs r0, #0
_0802D79C:
	cmp r0, #0
	beq _0802D7A2
	str r5, [r0, #0x44]
_0802D7A2:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802D7F8
	bl sub_0801AB24
	cmp r0, #1
	beq _0802D7DC
	cmp r0, #1
	bgt _0802D7D0
	cmp r0, #0
	beq _0802D7D6
	b _0802D7F0
_0802D7BC: .4byte gUnk_03005CF4
_0802D7C0: .4byte 0x000007A4
_0802D7C4: .4byte sub_080399E4
_0802D7C8:
	adds r0, r1, #0
	b _0802D79C
_0802D7CC:
	adds r2, r1, #0
	b _0802D768
_0802D7D0:
	cmp r0, #2
	beq _0802D7E4
	b _0802D7F0
_0802D7D6:
	bl sub_080576A8
	b _0802D7F0
_0802D7DC:
	movs r0, #6
	bl sub_0801AB50
	b _0802D7F0
_0802D7E4:
	movs r0, #6
	bl sub_0801AB90
	b _0802D7F0
_0802D7EC:
	bl sub_080003F0
_0802D7F0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802D7EC
_0802D7F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802D73C
