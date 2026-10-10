	thumb_func_start sub_0802D050
sub_0802D050: @ 0x0802D050
	push {r4, r5, lr}
	movs r0, #0x30
	movs r1, #0x54
	movs r2, #0x90
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D19C
	ldr r0, [r0, #0]
	ldr r2, _0802D1A0
	adds r1, r0, r2
	movs r2, #0
_0802D068:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802D070
	b _0802D1CC
_0802D070:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D068
	bl sub_080003F0
	movs r2, #0
_0802D07E:
	cmp r2, #0
	beq _0802D092
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D092:
	ldr r5, _0802D1A4
	ldr r0, _0802D19C
	ldr r0, [r0, #0]
	ldr r2, _0802D1A0
	adds r1, r0, r2
	movs r2, #0
_0802D09E:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802D0A6
	b _0802D1C8
_0802D0A6:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D09E
	bl sub_080003F0
	movs r0, #0
_0802D0B4:
	cmp r0, #0
	beq _0802D0BA
	str r5, [r0, #0x44]
_0802D0BA:
	ldr r0, _0802D1A8
	movs r1, #0x78
	movs r2, #0x5f
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D19C
	ldr r0, [r0, #0]
	ldr r2, _0802D1A0
	adds r1, r0, r2
	movs r2, #0
_0802D0D0:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D1C4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D0D0
	bl sub_080003F0
	movs r2, #0
_0802D0E4:
	cmp r2, #0
	beq _0802D0F8
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D0F8:
	ldr r5, _0802D1AC
	ldr r0, _0802D19C
	ldr r0, [r0, #0]
	ldr r2, _0802D1A0
	adds r1, r0, r2
	movs r2, #0
_0802D104:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D1C0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D104
	bl sub_080003F0
	movs r0, #0
_0802D118:
	cmp r0, #0
	beq _0802D11E
	str r5, [r0, #0x44]
_0802D11E:
	ldr r0, _0802D1B0
	movs r1, #0xb5
	movs r2, #0x6d
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D19C
	ldr r0, [r0, #0]
	ldr r2, _0802D1A0
	adds r1, r0, r2
	movs r2, #0
_0802D134:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D1BC
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D134
	bl sub_080003F0
	movs r2, #0
_0802D148:
	cmp r2, #0
	beq _0802D15C
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D15C:
	ldr r5, _0802D1B4
	ldr r0, _0802D19C
	ldr r0, [r0, #0]
	ldr r2, _0802D1A0
	adds r1, r0, r2
	movs r2, #0
_0802D168:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D1B8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D168
	bl sub_080003F0
	movs r0, #0
_0802D17C:
	cmp r0, #0
	beq _0802D182
	str r5, [r0, #0x44]
_0802D182:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802D1F8
	bl sub_0801AB24
	cmp r0, #1
	beq _0802D1DC
	cmp r0, #1
	bgt _0802D1D0
	cmp r0, #0
	beq _0802D1D6
	b _0802D1F0
_0802D19C: .4byte gUnk_03005CF4
_0802D1A0: .4byte 0x000007A4
_0802D1A4: .4byte sub_08037DFC
_0802D1A8: .4byte 0x00020039
_0802D1AC: .4byte sub_080592FC
_0802D1B0: .4byte 0x0005002A
_0802D1B4: .4byte sub_080384D4
_0802D1B8:
	adds r0, r1, #0
	b _0802D17C
_0802D1BC:
	adds r2, r1, #0
	b _0802D148
_0802D1C0:
	adds r0, r1, #0
	b _0802D118
_0802D1C4:
	adds r2, r1, #0
	b _0802D0E4
_0802D1C8:
	adds r0, r1, #0
	b _0802D0B4
_0802D1CC:
	adds r2, r1, #0
	b _0802D07E
_0802D1D0:
	cmp r0, #2
	beq _0802D1E4
	b _0802D1F0
_0802D1D6:
	bl sub_080576A8
	b _0802D1F0
_0802D1DC:
	movs r0, #6
	bl sub_0801AB50
	b _0802D1F0
_0802D1E4:
	movs r0, #6
	bl sub_0801AB90
	b _0802D1F0
_0802D1EC:
	bl sub_080003F0
_0802D1F0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802D1EC
_0802D1F8:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802D050
