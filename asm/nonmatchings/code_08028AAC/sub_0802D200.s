	thumb_func_start sub_0802D200
sub_0802D200: @ 0x0802D200
	push {r4, r5, lr}
	movs r1, #0xbf
	lsls r1, r1, #1
	movs r0, #0x31
	movs r2, #0x66
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D284
	ldr r0, [r0, #0]
	ldr r2, _0802D288
	adds r1, r0, r2
	movs r2, #0
_0802D21A:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D294
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D21A
	bl sub_080003F0
	movs r2, #0
_0802D22E:
	cmp r2, #0
	beq _0802D242
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D242:
	ldr r5, _0802D28C
	ldr r0, _0802D284
	ldr r0, [r0, #0]
	ldr r2, _0802D288
	adds r1, r0, r2
	movs r2, #0
_0802D24E:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D290
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D24E
	bl sub_080003F0
	movs r0, #0
_0802D262:
	cmp r0, #0
	beq _0802D268
	str r5, [r0, #0x44]
_0802D268:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802D2C0
	bl sub_0801AB24
	cmp r0, #1
	beq _0802D2A4
	cmp r0, #1
	bgt _0802D298
	cmp r0, #0
	beq _0802D29E
	b _0802D2B8
	.2byte 0x0000
_0802D284: .4byte gUnk_03005CF4
_0802D288: .4byte 0x000007A4
_0802D28C: .4byte sub_08030F54
_0802D290:
	adds r0, r1, #0
	b _0802D262
_0802D294:
	adds r2, r1, #0
	b _0802D22E
_0802D298:
	cmp r0, #2
	beq _0802D2AC
	b _0802D2B8
_0802D29E:
	bl sub_080576A8
	b _0802D2B8
_0802D2A4:
	movs r0, #6
	bl sub_0801AB50
	b _0802D2B8
_0802D2AC:
	movs r0, #6
	bl sub_0801AB90
	b _0802D2B8
_0802D2B4:
	bl sub_080003F0
_0802D2B8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802D2B4
_0802D2C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802D200
