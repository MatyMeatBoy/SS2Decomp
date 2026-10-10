	thumb_func_start sub_0802E6E0
sub_0802E6E0: @ 0x0802E6E0
	push {r4, r5, lr}
	ldr r0, _0802E764
	movs r1, #0x92
	lsls r1, r1, #1
	movs r2, #0x7b
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E768
	ldr r0, [r0, #0]
	ldr r2, _0802E76C
	adds r1, r0, r2
	movs r2, #0
_0802E6FA:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802E778
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E6FA
	bl sub_080003F0
	movs r2, #0
_0802E70E:
	cmp r2, #0
	beq _0802E722
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E722:
	ldr r5, _0802E770
	ldr r0, _0802E768
	ldr r0, [r0, #0]
	ldr r2, _0802E76C
	adds r1, r0, r2
	movs r2, #0
_0802E72E:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802E774
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E72E
	bl sub_080003F0
	movs r0, #0
_0802E742:
	cmp r0, #0
	beq _0802E748
	str r5, [r0, #0x44]
_0802E748:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802E7A4
	bl sub_0801AB24
	cmp r0, #1
	beq _0802E788
	cmp r0, #1
	bgt _0802E77C
	cmp r0, #0
	beq _0802E782
	b _0802E79C
	.2byte 0x0000
_0802E764: .4byte 0x0009000C
_0802E768: .4byte gUnk_03005CF4
_0802E76C: .4byte 0x000007A4
_0802E770: .4byte sub_08033C40
_0802E774:
	adds r0, r1, #0
	b _0802E742
_0802E778:
	adds r2, r1, #0
	b _0802E70E
_0802E77C:
	cmp r0, #2
	beq _0802E790
	b _0802E79C
_0802E782:
	bl sub_080576A8
	b _0802E79C
_0802E788:
	movs r0, #6
	bl sub_0801AB50
	b _0802E79C
_0802E790:
	movs r0, #6
	bl sub_0801AB90
	b _0802E79C
_0802E798:
	bl sub_080003F0
_0802E79C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802E798
_0802E7A4:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802E6E0
