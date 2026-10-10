	thumb_func_start sub_0802CF84
sub_0802CF84: @ 0x0802CF84
	push {r4, r5, lr}
	ldr r0, _0802D008
	movs r1, #0xdc
	lsls r1, r1, #1
	movs r2, #0x60
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D00C
	ldr r0, [r0, #0]
	ldr r2, _0802D010
	adds r1, r0, r2
	movs r2, #0
_0802CF9E:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D01C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CF9E
	bl sub_080003F0
	movs r2, #0
_0802CFB2:
	cmp r2, #0
	beq _0802CFC6
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802CFC6:
	ldr r5, _0802D014
	ldr r0, _0802D00C
	ldr r0, [r0, #0]
	ldr r2, _0802D010
	adds r1, r0, r2
	movs r2, #0
_0802CFD2:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D018
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CFD2
	bl sub_080003F0
	movs r0, #0
_0802CFE6:
	cmp r0, #0
	beq _0802CFEC
	str r5, [r0, #0x44]
_0802CFEC:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802D048
	bl sub_0801AB24
	cmp r0, #1
	beq _0802D02C
	cmp r0, #1
	bgt _0802D020
	cmp r0, #0
	beq _0802D026
	b _0802D040
	.2byte 0x0000
_0802D008: .4byte 0x0002000D
_0802D00C: .4byte gUnk_03005CF4
_0802D010: .4byte 0x000007A4
_0802D014: .4byte sub_08037B04
_0802D018:
	adds r0, r1, #0
	b _0802CFE6
_0802D01C:
	adds r2, r1, #0
	b _0802CFB2
_0802D020:
	cmp r0, #2
	beq _0802D034
	b _0802D040
_0802D026:
	bl sub_080576A8
	b _0802D040
_0802D02C:
	movs r0, #6
	bl sub_0801AB50
	b _0802D040
_0802D034:
	movs r0, #6
	bl sub_0801AB90
	b _0802D040
_0802D03C:
	bl sub_080003F0
_0802D040:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802D03C
_0802D048:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802CF84
