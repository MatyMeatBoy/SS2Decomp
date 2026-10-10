	thumb_func_start sub_0802E7AC
sub_0802E7AC: @ 0x0802E7AC
	push {r4, r5, lr}
	ldr r0, _0802E9D0
	ldr r2, _0802E9D4
	movs r1, #0xb8
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E9D8
	ldr r0, [r0, #0]
	ldr r2, _0802E9DC
	adds r1, r0, r2
	movs r2, #0
_0802E7C4:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E7CC
	b _0802EA1C
_0802E7CC:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E7C4
	bl sub_080003F0
	movs r2, #0
_0802E7DA:
	cmp r2, #0
	beq _0802E7EE
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E7EE:
	ldr r5, _0802E9E0
	ldr r0, _0802E9D8
	ldr r0, [r0, #0]
	ldr r2, _0802E9DC
	adds r1, r0, r2
	movs r2, #0
_0802E7FA:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E802
	b _0802EA18
_0802E802:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E7FA
	bl sub_080003F0
	movs r0, #0
_0802E810:
	cmp r0, #0
	beq _0802E816
	str r5, [r0, #0x44]
_0802E816:
	movs r0, #0x1a
	movs r1, #0xfc
	movs r2, #0xd0
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E9D8
	ldr r0, [r0, #0]
	ldr r2, _0802E9DC
	adds r1, r0, r2
	movs r2, #0
_0802E82C:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E834
	b _0802EA14
_0802E834:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E82C
	bl sub_080003F0
	movs r2, #0
_0802E842:
	cmp r2, #0
	beq _0802E856
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E856:
	ldr r5, _0802E9E4
	ldr r0, _0802E9D8
	ldr r0, [r0, #0]
	ldr r2, _0802E9DC
	adds r1, r0, r2
	movs r2, #0
_0802E862:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E86A
	b _0802EA10
_0802E86A:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E862
	bl sub_080003F0
	movs r0, #0
_0802E878:
	cmp r0, #0
	beq _0802E87E
	str r5, [r0, #0x44]
_0802E87E:
	ldr r0, _0802E9E8
	movs r1, #0x98
	lsls r1, r1, #1
	movs r2, #0xd6
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E9D8
	ldr r0, [r0, #0]
	ldr r2, _0802E9DC
	adds r1, r0, r2
	movs r2, #0
_0802E896:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E89E
	b _0802EA0C
_0802E89E:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E896
	bl sub_080003F0
	movs r2, #0
_0802E8AC:
	cmp r2, #0
	beq _0802E8C0
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E8C0:
	ldr r5, _0802E9EC
	ldr r0, _0802E9D8
	ldr r0, [r0, #0]
	ldr r2, _0802E9DC
	adds r1, r0, r2
	movs r2, #0
_0802E8CC:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E8D4
	b _0802EA08
_0802E8D4:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E8CC
	bl sub_080003F0
	movs r0, #0
_0802E8E2:
	cmp r0, #0
	beq _0802E8E8
	str r5, [r0, #0x44]
_0802E8E8:
	movs r0, #0x31
	movs r1, #0xf8
	movs r2, #0xf5
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E9D8
	ldr r0, [r0, #0]
	ldr r2, _0802E9DC
	adds r1, r0, r2
	movs r2, #0
_0802E8FE:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802E906
	b _0802EA04
_0802E906:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E8FE
	bl sub_080003F0
	movs r2, #0
_0802E914:
	cmp r2, #0
	beq _0802E928
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E928:
	ldr r5, _0802E9F0
	ldr r0, _0802E9D8
	ldr r0, [r0, #0]
	ldr r2, _0802E9DC
	adds r1, r0, r2
	movs r2, #0
_0802E934:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802EA00
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E934
	bl sub_080003F0
	movs r0, #0
_0802E948:
	cmp r0, #0
	beq _0802E94E
	str r5, [r0, #0x44]
_0802E94E:
	movs r2, #0x83
	lsls r2, r2, #1
	movs r0, #0x32
	movs r1, #0x8b
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E9D8
	ldr r0, [r0, #0]
	ldr r2, _0802E9DC
	adds r1, r0, r2
	movs r2, #0
_0802E966:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802E9FC
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E966
	bl sub_080003F0
	movs r2, #0
_0802E97A:
	cmp r2, #0
	beq _0802E98E
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E98E:
	ldr r5, _0802E9F4
	ldr r0, _0802E9D8
	ldr r0, [r0, #0]
	ldr r2, _0802E9DC
	adds r1, r0, r2
	movs r2, #0
_0802E99A:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802E9F8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E99A
	bl sub_080003F0
	movs r0, #0
_0802E9AE:
	cmp r0, #0
	beq _0802E9B4
	str r5, [r0, #0x44]
_0802E9B4:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802EA48
	bl sub_0801AB24
	cmp r0, #1
	beq _0802EA2C
	cmp r0, #1
	bgt _0802EA20
	cmp r0, #0
	beq _0802EA26
	b _0802EA40
	.2byte 0x0000
_0802E9D0: .4byte 0x00070023
_0802E9D4: .4byte 0x0000010B
_0802E9D8: .4byte gUnk_03005CF4
_0802E9DC: .4byte 0x000007A4
_0802E9E0: .4byte sub_08058EF8
_0802E9E4: .4byte sub_08059C38
_0802E9E8: .4byte 0x0001004A
_0802E9EC: .4byte sub_08059B84
_0802E9F0: .4byte sub_08059E54
_0802E9F4: .4byte sub_08059F08
_0802E9F8:
	adds r0, r1, #0
	b _0802E9AE
_0802E9FC:
	adds r2, r1, #0
	b _0802E97A
_0802EA00:
	adds r0, r1, #0
	b _0802E948
_0802EA04:
	adds r2, r1, #0
	b _0802E914
_0802EA08:
	adds r0, r1, #0
	b _0802E8E2
_0802EA0C:
	adds r2, r1, #0
	b _0802E8AC
_0802EA10:
	adds r0, r1, #0
	b _0802E878
_0802EA14:
	adds r2, r1, #0
	b _0802E842
_0802EA18:
	adds r0, r1, #0
	b _0802E810
_0802EA1C:
	adds r2, r1, #0
	b _0802E7DA
_0802EA20:
	cmp r0, #2
	beq _0802EA34
	b _0802EA40
_0802EA26:
	bl sub_080576A8
	b _0802EA40
_0802EA2C:
	movs r0, #6
	bl sub_0801AB50
	b _0802EA40
_0802EA34:
	movs r0, #6
	bl sub_0801AB90
	b _0802EA40
_0802EA3C:
	bl sub_080003F0
_0802EA40:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802EA3C
_0802EA48:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0802E7AC
