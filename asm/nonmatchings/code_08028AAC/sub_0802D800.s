	thumb_func_start sub_0802D800
sub_0802D800: @ 0x0802D800
	push {r4, r5, lr}
	movs r0, #0x23
	movs r1, #0x40
	movs r2, #0x46
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D880
	ldr r0, [r0, #0]
	ldr r2, _0802D884
	adds r1, r0, r2
	movs r2, #0
_0802D818:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D890
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D818
	bl sub_080003F0
	movs r2, #0
_0802D82C:
	cmp r2, #0
	beq _0802D840
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D840:
	ldr r5, _0802D888
	ldr r0, _0802D880
	ldr r0, [r0, #0]
	ldr r2, _0802D884
	adds r1, r0, r2
	movs r2, #0
_0802D84C:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D88C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D84C
	bl sub_080003F0
	movs r0, #0
_0802D860:
	cmp r0, #0
	beq _0802D866
	str r5, [r0, #0x44]
_0802D866:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802D8BC
	bl sub_0801AB24
	cmp r0, #1
	beq _0802D8A0
	cmp r0, #1
	bgt _0802D894
	cmp r0, #0
	beq _0802D89A
	b _0802D8B4
_0802D880: .4byte gUnk_03005CF4
_0802D884: .4byte 0x000007A4
_0802D888: .4byte sub_080316A4
_0802D88C:
	adds r0, r1, #0
	b _0802D860
_0802D890:
	adds r2, r1, #0
	b _0802D82C
_0802D894:
	cmp r0, #2
	beq _0802D8A8
	b _0802D8B4
_0802D89A:
	bl sub_080576A8
	b _0802D8B4
_0802D8A0:
	movs r0, #6
	bl sub_0801AB50
	b _0802D8B4
_0802D8A8:
	movs r0, #6
	bl sub_0801AB90
	b _0802D8B4
_0802D8B0:
	bl sub_080003F0
_0802D8B4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802D8B0
_0802D8BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802D800
