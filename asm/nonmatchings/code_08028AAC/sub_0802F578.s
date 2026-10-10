	thumb_func_start sub_0802F578
sub_0802F578: @ 0x0802F578
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802F5A8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _0802F5B0
	ldr r0, _0802F5AC
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x7c]
	b _0802F5B6
_0802F5A8: .4byte gUnk_03003CE0
_0802F5AC: .4byte gUnk_03005CF4
_0802F5B0:
	ldr r0, _0802F5C4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x74]
_0802F5B6:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802F61E
	b _0802F5CC
	.2byte 0x0000
_0802F5C4: .4byte gUnk_03005CF4
_0802F5C8:
	bl sub_080003F0
_0802F5CC:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F5C8
	b _0802F5DA
_0802F5D6:
	bl sub_080003F0
_0802F5DA:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F5D6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F5FC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F604
_0802F5FC: .4byte 0x001400B9
_0802F600:
	bl sub_080003F0
_0802F604:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802F610
	b _0802FA56
_0802F610:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F600
	bl sub_0805EFBC
	b _0802FA56
_0802F61E:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802F67E
	b _0802F62C
_0802F628:
	bl sub_080003F0
_0802F62C:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F628
	b _0802F63A
_0802F636:
	bl sub_080003F0
_0802F63A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F636
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F65C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F664
_0802F65C: .4byte 0x001400B8
_0802F660:
	bl sub_080003F0
_0802F664:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802F670
	b _0802FA56
_0802F670:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F660
	bl sub_0805EFBC
	b _0802FA56
_0802F67E:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802F6DE
	b _0802F68C
_0802F688:
	bl sub_080003F0
_0802F68C:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F688
	b _0802F69A
_0802F696:
	bl sub_080003F0
_0802F69A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F696
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F6BC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F6C4
_0802F6BC: .4byte 0x001400B7
_0802F6C0:
	bl sub_080003F0
_0802F6C4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802F6D0
	b _0802FA56
_0802F6D0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F6C0
	bl sub_0805EFBC
	b _0802FA56
_0802F6DE:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802F73E
	b _0802F6EC
_0802F6E8:
	bl sub_080003F0
_0802F6EC:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F6E8
	b _0802F6FA
_0802F6F6:
	bl sub_080003F0
_0802F6FA:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F6F6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F71C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F724
_0802F71C: .4byte 0x001400B6
_0802F720:
	bl sub_080003F0
_0802F724:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802F730
	b _0802FA56
_0802F730:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F720
	bl sub_0805EFBC
	b _0802FA56
_0802F73E:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802F79E
	b _0802F74C
_0802F748:
	bl sub_080003F0
_0802F74C:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F748
	b _0802F75A
_0802F756:
	bl sub_080003F0
_0802F75A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F756
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F77C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F784
_0802F77C: .4byte 0x001400B5
_0802F780:
	bl sub_080003F0
_0802F784:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802F790
	b _0802FA56
_0802F790:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F780
	bl sub_0805EFBC
	b _0802FA56
_0802F79E:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0802F7A8
	b _0802F8E6
_0802F7A8:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802F7C0
	ldr r0, _0802F7B8
	ldr r0, [r0, #0]
	ldr r1, _0802F7BC
	b _0802F7C6
_0802F7B8: .4byte gUnk_03005CF4
_0802F7BC: .4byte 0x000001C5
_0802F7C0:
	ldr r0, _0802F7D4
	ldr r0, [r0, #0]
	ldr r1, _0802F7D8
_0802F7C6:
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0802F892
	b _0802F7E0
_0802F7D4: .4byte gUnk_03005CF4
_0802F7D8: .4byte 0x000001B9
_0802F7DC:
	bl sub_080003F0
_0802F7E0:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F7DC
	b _0802F7EE
_0802F7EA:
	bl sub_080003F0
_0802F7EE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F7EA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F810
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F818
_0802F810: .4byte 0x001400B2
_0802F814:
	bl sub_080003F0
_0802F818:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0802F82E
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F814
	bl sub_0805EFBC
_0802F82E:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802F848
	ldr r0, _0802F840
	ldr r0, [r0, #0]
	ldr r1, _0802F844
	b _0802F84E
	.2byte 0x0000
_0802F840: .4byte gUnk_03005CF4
_0802F844: .4byte 0x000001C5
_0802F848:
	ldr r0, _0802F868
	ldr r0, [r0, #0]
	ldr r1, _0802F86C
_0802F84E:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0802F85A
	b _0802FA56
_0802F85A:
	ldr r0, _0802F870
	movs r1, #0x16
	bl sub_08068070
	movs r4, #0x64
	b _0802F880
	.2byte 0x0000
_0802F868: .4byte gUnk_03005CF4
_0802F86C: .4byte 0x000001B9
_0802F870: .4byte sub_0805990C
_0802F874:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0802F880
	b _0802FA74
_0802F880:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802F874
	b _0802FA74
_0802F88E:
	bl sub_080003F0
_0802F892:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F88E
	b _0802F8A0
_0802F89C:
	bl sub_080003F0
_0802F8A0:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F89C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F8C4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F8CC
	.2byte 0x0000
_0802F8C4: .4byte 0x001400B1
_0802F8C8:
	bl sub_080003F0
_0802F8CC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802F8D8
	b _0802FA56
_0802F8D8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F8C8
	bl sub_0805EFBC
	b _0802FA56
_0802F8E6:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0802F946
	b _0802F8F4
_0802F8F0:
	bl sub_080003F0
_0802F8F4:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F8F0
	b _0802F902
_0802F8FE:
	bl sub_080003F0
_0802F902:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F8FE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F924
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F92C
_0802F924: .4byte 0x001400B0
_0802F928:
	bl sub_080003F0
_0802F92C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802F938
	b _0802FA56
_0802F938:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F928
	bl sub_0805EFBC
	b _0802FA56
_0802F946:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802F9A4
	b _0802F954
_0802F950:
	bl sub_080003F0
_0802F954:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F950
	b _0802F962
_0802F95E:
	bl sub_080003F0
_0802F962:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F95E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F984
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F98C
_0802F984: .4byte 0x001400AF
_0802F988:
	bl sub_080003F0
_0802F98C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0802FA56
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F988
	bl sub_0805EFBC
	b _0802FA56
_0802F9A4:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0802FA08
	b _0802F9B2
_0802F9AE:
	bl sub_080003F0
_0802F9B2:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F9AE
	b _0802F9C0
_0802F9BC:
	bl sub_080003F0
_0802F9C0:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F9BC
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F9E4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F9EC
	.2byte 0x0000
_0802F9E4: .4byte 0x001400AE
_0802F9E8:
	bl sub_080003F0
_0802F9EC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0802FA56
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F9E8
	bl sub_0805EFBC
	b _0802FA56
_0802FA04:
	bl sub_080003F0
_0802FA08:
	bl sub_0805F184
	cmp r0, #0
	bne _0802FA04
	b _0802FA16
_0802FA12:
	bl sub_080003F0
_0802FA16:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802FA12
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802FA38
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802FA40
_0802FA38: .4byte 0x001400AD
_0802FA3C:
	bl sub_080003F0
_0802FA40:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0802FA56
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802FA3C
	bl sub_0805EFBC
_0802FA56:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802FA7C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_0802FA74:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0802FA7C: .4byte gUnk_03003CE0
	thumb_func_end sub_0802F578
