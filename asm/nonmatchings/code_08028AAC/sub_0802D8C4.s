	thumb_func_start sub_0802D8C4
sub_0802D8C4: @ 0x0802D8C4
	push {r4, r5, r6, r7, lr}
	movs r0, #0x36
	movs r1, #0x34
	movs r2, #0x50
	bl sub_080289C0
	adds r6, r0, #0
	ldr r0, _0802D93C
	ldr r0, [r0, #0]
	ldr r2, _0802D940
	adds r1, r0, r2
	movs r2, #0
_0802D8DC:
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _0802D8E4
	b _0802DABC
_0802D8E4:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D8DC
	bl sub_080003F0
	movs r2, #0
_0802D8F2:
	cmp r2, #0
	beq _0802D906
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D906:
	ldr r4, _0802D944
	ldr r0, _0802D93C
	ldr r0, [r0, #0]
	ldr r2, _0802D940
	adds r1, r0, r2
	movs r2, #0
_0802D912:
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _0802D91A
	b _0802DAB8
_0802D91A:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D912
	bl sub_080003F0
	movs r0, #0
_0802D928:
	cmp r0, #0
	beq _0802D92E
	str r4, [r0, #0x44]
_0802D92E:
	ldr r7, _0802D948
	ldr r0, _0802D93C
	ldr r0, [r0, #0]
	ldr r1, _0802D94C
	adds r4, r0, r1
	movs r5, #0
	b _0802D954
_0802D93C: .4byte gUnk_03005CF4
_0802D940: .4byte 0x000007A4
_0802D944: .4byte sub_0803B194
_0802D948: .4byte sub_0803B69C
_0802D94C: .4byte 0x00000E34
_0802D950:
	adds r5, #1
	adds r4, #0x28
_0802D954:
	cmp r5, #0x1d
	bhi _0802D992
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802D950
	b _0802D968
_0802D964:
	bl sub_080003F0
_0802D968:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802D964
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
_0802D992:
	ldr r0, _0802DA8C
	movs r1, #0x6c
	movs r2, #0x76
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802DA90
	ldr r0, [r0, #0]
	ldr r2, _0802DA94
	adds r1, r0, r2
	movs r2, #0
_0802D9A8:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802D9B0
	b _0802DAB4
_0802D9B0:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D9A8
	bl sub_080003F0
	movs r2, #0
_0802D9BE:
	cmp r2, #0
	beq _0802D9D2
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802D9D2:
	ldr r5, _0802DA98
	ldr r0, _0802DA90
	ldr r0, [r0, #0]
	ldr r2, _0802DA94
	adds r1, r0, r2
	movs r2, #0
_0802D9DE:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802DAB0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802D9DE
	bl sub_080003F0
	movs r0, #0
_0802D9F2:
	cmp r0, #0
	beq _0802D9F8
	str r5, [r0, #0x44]
_0802D9F8:
	movs r1, #0xc6
	lsls r1, r1, #1
	movs r0, #0x35
	movs r2, #0x4e
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802DA90
	ldr r0, [r0, #0]
	ldr r2, _0802DA94
	adds r1, r0, r2
	movs r2, #0
_0802DA10:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802DAAC
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DA10
	bl sub_080003F0
	movs r2, #0
_0802DA24:
	cmp r2, #0
	beq _0802DA38
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802DA38:
	ldr r5, _0802DA9C
	ldr r0, _0802DA90
	ldr r0, [r0, #0]
	ldr r2, _0802DA94
	adds r1, r0, r2
	movs r2, #0
_0802DA44:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802DAA8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DA44
	bl sub_080003F0
	movs r0, #0
_0802DA58:
	cmp r0, #0
	beq _0802DA5E
	str r5, [r0, #0x44]
_0802DA5E:
	ldr r0, _0802DAA0
	movs r1, #0x22
	movs r2, #0x42
	bl sub_080289C0
	ldr r0, _0802DAA4
	movs r1, #0x32
	movs r2, #0x42
	bl sub_080289C0
	bl sub_0800CC98
	cmp r0, #0
	bne _0802DAE8
	bl sub_0801AB24
	cmp r0, #1
	beq _0802DACC
	cmp r0, #1
	bgt _0802DAC0
	cmp r0, #0
	beq _0802DAC6
	b _0802DAE0
_0802DA8C: .4byte 0x00040027
_0802DA90: .4byte gUnk_03005CF4
_0802DA94: .4byte 0x000007A4
_0802DA98: .4byte sub_0803B720
_0802DA9C: .4byte sub_0803BC3C
_0802DAA0: .4byte 0x000B0036
_0802DAA4: .4byte 0x000C0036
_0802DAA8:
	adds r0, r1, #0
	b _0802DA58
_0802DAAC:
	adds r2, r1, #0
	b _0802DA24
_0802DAB0:
	adds r0, r1, #0
	b _0802D9F2
_0802DAB4:
	adds r2, r1, #0
	b _0802D9BE
_0802DAB8:
	adds r0, r1, #0
	b _0802D928
_0802DABC:
	adds r2, r1, #0
	b _0802D8F2
_0802DAC0:
	cmp r0, #2
	beq _0802DAD4
	b _0802DAE0
_0802DAC6:
	bl sub_080576A8
	b _0802DAE0
_0802DACC:
	movs r0, #6
	bl sub_0801AB50
	b _0802DAE0
_0802DAD4:
	movs r0, #6
	bl sub_0801AB90
	b _0802DAE0
_0802DADC:
	bl sub_080003F0
_0802DAE0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802DADC
_0802DAE8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0802D8C4
