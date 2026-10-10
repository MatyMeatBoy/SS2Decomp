	thumb_func_start sub_0802D568
sub_0802D568: @ 0x0802D568
	push {r4, r5, lr}
	movs r0, #0x31
	movs r1, #0xd0
	movs r2, #0x60
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D648
	ldr r0, [r0, #0]
	ldr r2, _0802D64C
	adds r1, r0, r2
	movs r2, #0
_0802D580:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D664
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D580
	bl sub_080003F0
	movs r2, #0
_0802D594:
	cmp r2, #0
	beq _0802D5A8
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D5A8:
	ldr r5, _0802D650
	ldr r0, _0802D648
	ldr r0, [r0, #0]
	ldr r2, _0802D64C
	adds r1, r0, r2
	movs r2, #0
_0802D5B4:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D660
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D5B4
	bl sub_080003F0
	movs r0, #0
_0802D5C8:
	cmp r0, #0
	beq _0802D5CE
	str r5, [r0, #0x44]
_0802D5CE:
	movs r1, #0x88
	lsls r1, r1, #1
	movs r0, #0x31
	movs r2, #0x60
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D648
	ldr r0, [r0, #0]
	ldr r2, _0802D64C
	adds r1, r0, r2
	movs r2, #0
_0802D5E6:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D65C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D5E6
	bl sub_080003F0
	movs r2, #0
_0802D5FA:
	cmp r2, #0
	beq _0802D60E
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D60E:
	ldr r5, _0802D654
	ldr r0, _0802D648
	ldr r0, [r0, #0]
	ldr r2, _0802D64C
	adds r1, r0, r2
	movs r2, #0
_0802D61A:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D658
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D61A
	bl sub_080003F0
	movs r0, #0
_0802D62E:
	cmp r0, #0
	beq _0802D634
	str r5, [r0, #0x44]
_0802D634:
	movs r4, #2
	bl sub_0800CE30
	cmp r0, #0
	beq _0802D670
	ldr r0, _0802D648
	ldr r0, [r0, #0]
	adds r0, #0x80
	ldr r0, [r0, #0]
	b _0802D676
_0802D648: .4byte gUnk_03005CF4
_0802D64C: .4byte 0x000007A4
_0802D650: .4byte sub_0803145C
_0802D654: .4byte sub_08031580
_0802D658:
	adds r0, r1, #0
	b _0802D62E
_0802D65C:
	adds r2, r1, #0
	b _0802D5FA
_0802D660:
	adds r0, r1, #0
	b _0802D5C8
_0802D664:
	adds r2, r1, #0
	b _0802D594
_0802D668:
	adds r2, r1, #0
	b _0802D6A8
_0802D66C:
	adds r0, r1, #0
	b _0802D6DC
_0802D670:
	ldr r0, _0802D6FC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x78]
_0802D676:
	ands r0, r4
	cmp r0, #0
	beq _0802D6E2
	ldr r0, _0802D700
	movs r1, #0xa6
	lsls r1, r1, #1
	movs r2, #0x64
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802D6FC
	ldr r0, [r0, #0]
	ldr r2, _0802D704
	adds r1, r0, r2
	movs r2, #0
_0802D694:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D668
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D694
	bl sub_080003F0
	movs r2, #0
_0802D6A8:
	cmp r2, #0
	beq _0802D6BC
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D6BC:
	ldr r5, _0802D708
	ldr r0, _0802D6FC
	ldr r0, [r0, #0]
	ldr r2, _0802D704
	adds r1, r0, r2
	movs r2, #0
_0802D6C8:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802D66C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D6C8
	bl sub_080003F0
	movs r0, #0
_0802D6DC:
	cmp r0, #0
	beq _0802D6E2
	str r5, [r0, #0x44]
_0802D6E2:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802D734
	bl sub_0801AB24
	cmp r0, #1
	beq _0802D718
	cmp r0, #1
	bgt _0802D70C
	cmp r0, #0
	beq _0802D712
	b _0802D72C
_0802D6FC: .4byte gUnk_03005CF4
_0802D700: .4byte 0x00010034
_0802D704: .4byte 0x000007A4
_0802D708: .4byte sub_08033650
_0802D70C:
	cmp r0, #2
	beq _0802D720
	b _0802D72C
_0802D712:
	bl sub_080576A8
	b _0802D72C
_0802D718:
	movs r0, #6
	bl sub_0801AB50
	b _0802D72C
_0802D720:
	movs r0, #6
	bl sub_0801AB90
	b _0802D72C
_0802D728:
	bl sub_080003F0
_0802D72C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802D728
_0802D734:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802D568
