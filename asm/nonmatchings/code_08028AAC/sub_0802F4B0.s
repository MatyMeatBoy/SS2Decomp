	thumb_func_start sub_0802F4B0
sub_0802F4B0: @ 0x0802F4B0
	push {r4, r5, lr}
	movs r1, #0x86
	lsls r1, r1, #1
	movs r0, #0x2e
	movs r2, #0x87
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802F534
	ldr r0, [r0, #0]
	ldr r2, _0802F538
	adds r1, r0, r2
	movs r2, #0
_0802F4CA:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802F544
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802F4CA
	bl sub_080003F0
	movs r2, #0
_0802F4DE:
	cmp r2, #0
	beq _0802F4F2
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802F4F2:
	ldr r5, _0802F53C
	ldr r0, _0802F534
	ldr r0, [r0, #0]
	ldr r2, _0802F538
	adds r1, r0, r2
	movs r2, #0
_0802F4FE:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802F540
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802F4FE
	bl sub_080003F0
	movs r0, #0
_0802F512:
	cmp r0, #0
	beq _0802F518
	str r5, [r0, #0x44]
_0802F518:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802F570
	bl sub_0801AB24
	cmp r0, #1
	beq _0802F554
	cmp r0, #1
	bgt _0802F548
	cmp r0, #0
	beq _0802F54E
	b _0802F568
	.2byte 0x0000
_0802F534: .4byte gUnk_03005CF4
_0802F538: .4byte 0x000007A4
_0802F53C: .4byte sub_0803C3C8
_0802F540:
	adds r0, r1, #0
	b _0802F512
_0802F544:
	adds r2, r1, #0
	b _0802F4DE
_0802F548:
	cmp r0, #2
	beq _0802F55C
	b _0802F568
_0802F54E:
	bl sub_080576A8
	b _0802F568
_0802F554:
	movs r0, #6
	bl sub_0801AB50
	b _0802F568
_0802F55C:
	movs r0, #6
	bl sub_0801AB90
	b _0802F568
_0802F564:
	bl sub_080003F0
_0802F568:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802F564
_0802F570:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802F4B0
