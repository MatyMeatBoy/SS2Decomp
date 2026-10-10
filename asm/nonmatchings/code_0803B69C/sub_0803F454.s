	thumb_func_start sub_0803F454
sub_0803F454: @ 0x0803F454
	push {r4, r5, r6, lr}
	cmp r0, #0xe
	bls _0803F45E
	bl _0803FE18
_0803F45E:
	lsls r0, r0, #2
	ldr r1, _0803F468
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0803F468: .4byte _0803F46C
_0803F46C:
	.4byte _0803F4A8
_0803F470: .4byte _0803F4E0
_0803F474: .4byte _0803F8E0
_0803F478: .4byte _0803F8F4
_0803F47C: .4byte _0803F900
_0803F480: .4byte _0803F98A
_0803F484: .4byte _0803FA12
_0803F488: .4byte _0803FA1E
_0803F48C: .4byte _0803FA30
_0803F490: .4byte _0803FB6A
_0803F494: .4byte _0803FB78
_0803F498: .4byte _0803FB8C
_0803F49C: .4byte _0803FBE0
_0803F4A0: .4byte _0803FC34
_0803F4A4: .4byte _0803FC98
_0803F4A8:
	movs r4, #0x8c
	lsls r4, r4, #1
	b _0803F4B8
_0803F4AE:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F4C4
_0803F4B8:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F4AE
_0803F4C4:
	movs r0, #0
	movs r1, #8
	bl sub_0802939C
	ldr r2, _0803F4DC
	movs r0, #0
	movs r1, #0x5a
	movs r3, #0x96
	bl sub_08028AAC
	b _0803F8EA
	.2byte 0x0000
_0803F4DC: .4byte 0x00000183
_0803F4E0:
	ldr r6, _0803F4F0
	ldr r0, _0803F4F4
	ldr r0, [r0, #0]
	ldr r1, _0803F4F8
	adds r4, r0, r1
	movs r5, #0
	b _0803F500
	.2byte 0x0000
_0803F4F0: .4byte sub_0803F454
_0803F4F4: .4byte gUnk_03005CF4
_0803F4F8: .4byte 0x00000E34
_0803F4FC:
	adds r5, #1
	adds r4, #0x28
_0803F500:
	cmp r5, #0x1d
	bhi _0803F53E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0803F4FC
	b _0803F514
_0803F510:
	bl sub_080003F0
_0803F514:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0803F510
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000274
_0803F53E:
	movs r0, #0
	movs r1, #0x14
	movs r2, #0
	movs r3, #0xa
	bl sub_08028D98
	ldr r0, _0803F578
	movs r1, #6
	bl sub_08068070
	ldr r0, _0803F57C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803F566
	movs r0, #0xb2
	lsls r0, r0, #1
	bl sub_08006D08
_0803F566:
	movs r1, #0x14
	negs r1, r1
	movs r0, #0
	movs r2, #0
	movs r3, #0xa
	bl sub_08028D98
	movs r4, #0x3c
	b _0803F58A
_0803F578: .4byte sub_0803F454
_0803F57C: .4byte gUnk_030027D0
_0803F580:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F596
_0803F58A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F580
_0803F596:
	ldr r6, _0803F5A4
	ldr r0, _0803F5A8
	ldr r0, [r0, #0]
	ldr r1, _0803F5AC
	adds r4, r0, r1
	movs r5, #0
	b _0803F5B4
_0803F5A4: .4byte sub_0803F454
_0803F5A8: .4byte gUnk_03005CF4
_0803F5AC: .4byte 0x00000E34
_0803F5B0:
	adds r5, #1
	adds r4, #0x28
_0803F5B4:
	cmp r5, #0x1d
	bhi _0803F5F2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0803F5B0
	b _0803F5C8
_0803F5C4:
	bl sub_080003F0
_0803F5C8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0803F5C4
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000274
_0803F5F2:
	movs r0, #0
	movs r1, #0x14
	movs r2, #0
	movs r3, #0xa
	bl sub_08028D98
	ldr r0, _0803F62C
	movs r1, #6
	bl sub_08068070
	ldr r0, _0803F630
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803F61A
	movs r0, #0xb2
	lsls r0, r0, #1
	bl sub_08006D08
_0803F61A:
	movs r1, #0x14
	negs r1, r1
	movs r0, #0
	movs r2, #0
	movs r3, #0xa
	bl sub_08028D98
	movs r4, #0x3c
	b _0803F63E
_0803F62C: .4byte sub_0803F454
_0803F630: .4byte gUnk_030027D0
_0803F634:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F64A
_0803F63E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F634
_0803F64A:
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #0
	bl sub_08029174
	movs r0, #0
	movs r1, #0x1c
	movs r2, #0
	movs r3, #0xa
	bl sub_08028D98
	movs r0, #0
	movs r1, #0
	bl sub_0802939C
	ldr r0, _0803F680
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803F67C
	movs r0, #0xb2
	lsls r0, r0, #1
	bl sub_08006D08
_0803F67C:
	movs r4, #0xa
	b _0803F68E
_0803F680: .4byte gUnk_030027D0
_0803F684:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F69A
_0803F68E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F684
_0803F69A:
	movs r5, #1
_0803F69C:
	movs r0, #0
	movs r1, #4
	movs r2, #0
	movs r3, #8
	bl sub_08028D98
	movs r0, #0
	movs r1, #4
	negs r1, r1
	movs r2, #0
	movs r3, #8
	bl sub_08028D98
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #9
	bls _0803F69C
	movs r4, #4
	b _0803F6CE
_0803F6C4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F6DA
_0803F6CE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F6C4
_0803F6DA:
	ldr r0, _0803F6F8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803F6EC
	movs r0, #0x27
	bl sub_08006D08
_0803F6EC:
	ldr r0, _0803F6FC
	movs r1, #7
	bl sub_08068070
	movs r4, #4
	b _0803F70A
_0803F6F8: .4byte gUnk_030027D0
_0803F6FC: .4byte sub_0803F454
_0803F700:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F716
_0803F70A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F700
_0803F716:
	movs r0, #0
	movs r1, #0x10
	bl sub_08029174
	movs r1, #0x50
	negs r1, r1
	movs r0, #0
	movs r2, #0
	movs r3, #8
	bl sub_08028D98
	movs r0, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #0x96
	b _0803F742
_0803F738:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F74E
_0803F742:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F738
_0803F74E:
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0803F75C
	b _0803F8D2
_0803F75C:
	lsls r0, r0, #2
	ldr r1, _0803F768
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0803F768: .4byte _0803F76C
_0803F76C:
	.4byte _0803F78C
_0803F770: .4byte _0803F804
_0803F774: .4byte _0803F8D2
_0803F778: .4byte _0803F78C
_0803F77C: .4byte _0803F78C
_0803F780: .4byte _0803F78C
_0803F784: .4byte _0803F86C
_0803F788: .4byte _0803F78C
_0803F78C:
	movs r5, #1
_0803F78E:
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #2
	bl sub_08028D98
	movs r4, #0x3c
	adds r5, #1
	b _0803F7AA
_0803F7A0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F7B6
_0803F7AA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F7A0
_0803F7B6:
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	bls _0803F78E
	movs r4, #0x1e
	b _0803F7CC
_0803F7C2:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F7D8
_0803F7CC:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F7C2
_0803F7D8:
	movs r0, #0
	movs r1, #8
	bl sub_08029174
	movs r0, #0
	movs r1, #0x1e
	movs r2, #0
	movs r3, #8
	bl sub_08028D98
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #0
	bl sub_08029174
	movs r0, #0
	movs r1, #0x1e
	movs r2, #0
	movs r3, #8
	bl sub_08028D98
	b _0803F8D2
_0803F804:
	movs r4, #0xc8
	b _0803F812
_0803F808:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F81E
_0803F812:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F808
_0803F81E:
	movs r1, #0x89
	lsls r1, r1, #8
	movs r0, #0
	bl sub_0802939C
	movs r4, #0xa
	b _0803F836
_0803F82C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F842
_0803F836:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F82C
_0803F842:
	ldr r0, _0803F850
	movs r1, #4
	bl sub_08068070
	movs r4, #0x87
	b _0803F85E
	.2byte 0x0000
_0803F850: .4byte sub_0803F454
_0803F854:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F8D2
_0803F85E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F854
	b _0803F8D2
_0803F86C:
	movs r4, #0xc8
	b _0803F87A
_0803F870:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F886
_0803F87A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F870
_0803F886:
	movs r1, #0x89
	lsls r1, r1, #8
	movs r0, #0
	bl sub_0802939C
	movs r4, #0xa
	b _0803F89E
_0803F894:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F8AA
_0803F89E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F894
_0803F8AA:
	ldr r0, _0803F8B8
	movs r1, #5
	bl sub_08068070
	movs r4, #0x87
	b _0803F8C6
	.2byte 0x0000
_0803F8B8: .4byte sub_0803F454
_0803F8BC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F8D2
_0803F8C6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F8BC
_0803F8D2:
	ldr r0, _0803F8DC
	movs r1, #3
	bl sub_08068070
	b _0803FE18
_0803F8DC: .4byte sub_0803F454
_0803F8E0:
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #0
	bl sub_0802926C
_0803F8EA:
	movs r0, #0
	movs r1, #0
	bl sub_0802939C
	b _0803FE18
_0803F8F4:
	ldr r0, _0803F8FC
	ldr r2, [r0, #0]
	movs r1, #2
	b _0803FB7E
_0803F8FC: .4byte gUnk_03005CF4
_0803F900:
	movs r0, #0xd4
	lsls r0, r0, #6
	ldr r1, _0803F914
	movs r2, #0x16
	movs r3, #0
	bl sub_08073E2C
	movs r4, #0x37
	b _0803F922
	.2byte 0x0000
_0803F914: .4byte 0x00018300
_0803F918:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F92E
_0803F922:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F918
_0803F92E:
	movs r0, #0xd4
	lsls r0, r0, #6
	ldr r1, _0803F940
	movs r2, #0x16
	movs r3, #0
	bl sub_08073E2C
	movs r4, #0x37
	b _0803F94E
_0803F940: .4byte 0x00018300
_0803F944:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F95A
_0803F94E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F944
_0803F95A:
	movs r0, #0xd4
	lsls r0, r0, #6
	ldr r1, _0803F96C
	movs r2, #0x16
	movs r3, #0
	bl sub_08073E2C
	movs r4, #0x37
	b _0803F97C
_0803F96C: .4byte 0x00018300
_0803F970:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0803F97C
	b _0803FE18
_0803F97C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F970
	b _0803FE18
_0803F98A:
	movs r0, #0xd4
	lsls r0, r0, #6
	ldr r1, _0803F99C
	movs r2, #0x1b
	movs r3, #0
	bl sub_08073E2C
	movs r4, #0x37
	b _0803F9AA
_0803F99C: .4byte 0x00018300
_0803F9A0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F9B6
_0803F9AA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F9A0
_0803F9B6:
	movs r0, #0xd4
	lsls r0, r0, #6
	ldr r1, _0803F9C8
	movs r2, #0x1b
	movs r3, #0
	bl sub_08073E2C
	movs r4, #0x37
	b _0803F9D6
_0803F9C8: .4byte 0x00018300
_0803F9CC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F9E2
_0803F9D6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F9CC
_0803F9E2:
	movs r0, #0xd4
	lsls r0, r0, #6
	ldr r1, _0803F9F4
	movs r2, #0x1b
	movs r3, #0
	bl sub_08073E2C
	movs r4, #0x37
	b _0803FA04
_0803F9F4: .4byte 0x00018300
_0803F9F8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0803FA04
	b _0803FE18
_0803FA04:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F9F8
	b _0803FE18
_0803FA12:
	movs r0, #0x82
	lsls r0, r0, #8
	movs r1, #0xb9
	lsls r1, r1, #9
	movs r2, #0x1d
	b _0803FA28
_0803FA1E:
	movs r0, #0xbe
	lsls r0, r0, #7
	movs r1, #0xb9
	lsls r1, r1, #9
	movs r2, #0x22
_0803FA28:
	movs r3, #0
	bl sub_08073E2C
	b _0803FE18
_0803FA30:
	ldr r0, _0803FA50
	movs r1, #0xb
	bl sub_08068070
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #0
	bl sub_0802926C
	movs r0, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #0x3c
	b _0803FA5E
	.2byte 0x0000
_0803FA50: .4byte sub_0803F454
_0803FA54:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803FA6A
_0803FA5E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803FA54
_0803FA6A:
	ldr r0, _0803FA88
	movs r1, #0xb
	bl sub_08068070
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #0
	bl sub_0802926C
	movs r0, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #0x3c
	b _0803FA96
_0803FA88: .4byte sub_0803F454
_0803FA8C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803FAA2
_0803FA96:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803FA8C
_0803FAA2:
	ldr r0, _0803FAC0
	movs r1, #0xb
	bl sub_08068070
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #0
	bl sub_0802926C
	movs r0, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #0xfa
	b _0803FACE
_0803FAC0: .4byte sub_0803F454
_0803FAC4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803FADA
_0803FACE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803FAC4
_0803FADA:
	movs r5, #1
_0803FADC:
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #2
	bl sub_08028D98
	movs r4, #0x3c
	adds r5, #1
	b _0803FAF8
_0803FAEE:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803FB04
_0803FAF8:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803FAEE
_0803FB04:
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	bls _0803FADC
	ldr r0, _0803FB20
	movs r1, #0xe
	bl sub_08068070
	ldr r1, _0803FB24
	movs r0, #0
	bl sub_08029174
	movs r4, #0x10
	b _0803FB32
_0803FB20: .4byte sub_0803F454
_0803FB24: .4byte 0x00008008
_0803FB28:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803FB3E
_0803FB32:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803FB28
_0803FB3E:
	ldr r0, _0803FB4C
	movs r1, #3
	bl sub_08068070
	movs r4, #0x3c
	b _0803FB5C
	.2byte 0x0000
_0803FB4C: .4byte sub_0803F454
_0803FB50:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0803FB5C
	b _0803FE18
_0803FB5C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803FB50
	b _0803FE18
_0803FB6A:
	ldr r0, _0803FB74
	ldr r2, [r0, #0]
	movs r1, #4
	b _0803FB7E
	.2byte 0x0000
_0803FB74: .4byte gUnk_03005CF4
_0803FB78:
	ldr r0, _0803FB88
	ldr r2, [r0, #0]
	movs r1, #8
_0803FB7E:
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	b _0803FE18
	.2byte 0x0000
_0803FB88: .4byte gUnk_03005CF4
_0803FB8C:
	ldr r0, _0803FBD0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803FB9E
	movs r0, #0x17
	bl sub_08006D08
_0803FB9E:
	ldr r0, _0803FBD4
	movs r2, #0xbd
	lsls r2, r2, #1
	movs r1, #0x64
	bl sub_080289C0
	adds r4, r0, #0
	movs r1, #0x34
	movs r2, #0
	movs r3, #0xd
	bl sub_08028D98
	ldr r0, _0803FBD8
	ldr r0, [r0, #0]
	ldr r2, _0803FBDC
	adds r1, r0, r2
	movs r2, #0
_0803FBC0:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0803FC7C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803FBC0
	b _0803FC76
_0803FBD0: .4byte gUnk_030027D0
_0803FBD4: .4byte 0x00460049
_0803FBD8: .4byte gUnk_03005CF4
_0803FBDC: .4byte 0x000007A4
_0803FBE0:
	ldr r0, _0803FC24
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803FBF2
	movs r0, #0x17
	bl sub_08006D08
_0803FBF2:
	ldr r0, _0803FC28
	movs r2, #0xbd
	lsls r2, r2, #1
	movs r1, #0x64
	bl sub_080289C0
	adds r4, r0, #0
	movs r1, #0x34
	movs r2, #0
	movs r3, #0xd
	bl sub_08028D98
	ldr r0, _0803FC2C
	ldr r0, [r0, #0]
	ldr r2, _0803FC30
	adds r1, r0, r2
	movs r2, #0
_0803FC14:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0803FC7C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803FC14
	b _0803FC76
_0803FC24: .4byte gUnk_030027D0
_0803FC28: .4byte 0x00460049
_0803FC2C: .4byte gUnk_03005CF4
_0803FC30: .4byte 0x000007A4
_0803FC34:
	ldr r0, _0803FC88
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803FC46
	movs r0, #0x17
	bl sub_08006D08
_0803FC46:
	ldr r0, _0803FC8C
	movs r2, #0xbd
	lsls r2, r2, #1
	movs r1, #0x64
	bl sub_080289C0
	adds r4, r0, #0
	movs r1, #0x34
	movs r2, #0
	movs r3, #0xd
	bl sub_08028D98
	ldr r0, _0803FC90
	ldr r0, [r0, #0]
	ldr r2, _0803FC94
	adds r1, r0, r2
	movs r2, #0
_0803FC68:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0803FC7C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803FC68
_0803FC76:
	bl sub_080003F0
	movs r1, #0
_0803FC7C:
	cmp r1, #0
	bne _0803FC82
	b _0803FE18
_0803FC82:
	movs r0, #4
	strh r0, [r1, #0x36]
	b _0803FE18
_0803FC88: .4byte gUnk_030027D0
_0803FC8C: .4byte 0x00460049
_0803FC90: .4byte gUnk_03005CF4
_0803FC94: .4byte 0x000007A4
_0803FC98:
	movs r4, #8
	b _0803FCA6
_0803FC9C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803FCB2
_0803FCA6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803FC9C
_0803FCB2:
	ldr r6, _0803FCC0
	ldr r0, _0803FCC4
	ldr r0, [r0, #0]
	ldr r1, _0803FCC8
	adds r4, r0, r1
	movs r5, #0
	b _0803FCD0
_0803FCC0: .4byte sub_0803F454
_0803FCC4: .4byte gUnk_03005CF4
_0803FCC8: .4byte 0x00000E34
_0803FCCC:
	adds r5, #1
	adds r4, #0x28
_0803FCD0:
	cmp r5, #0x1d
	bhi _0803FD0E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0803FCCC
	b _0803FCE4
_0803FCE0:
	bl sub_080003F0
_0803FCE4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0803FCE0
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_08000274
_0803FD0E:
	movs r4, #8
	b _0803FD1C
_0803FD12:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803FD28
_0803FD1C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803FD12
_0803FD28:
	ldr r6, _0803FD38
	ldr r0, _0803FD3C
	ldr r0, [r0, #0]
	ldr r1, _0803FD40
	adds r4, r0, r1
	movs r5, #0
	b _0803FD48
	.2byte 0x0000
_0803FD38: .4byte sub_0803F454
_0803FD3C: .4byte gUnk_03005CF4
_0803FD40: .4byte 0x00000E34
_0803FD44:
	adds r5, #1
	adds r4, #0x28
_0803FD48:
	cmp r5, #0x1d
	bhi _0803FD86
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0803FD44
	b _0803FD5C
_0803FD58:
	bl sub_080003F0
_0803FD5C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0803FD58
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xc
	bl sub_08000274
_0803FD86:
	movs r4, #8
	b _0803FD94
_0803FD8A:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803FDA0
_0803FD94:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803FD8A
_0803FDA0:
	ldr r6, _0803FDB0
	ldr r0, _0803FDB4
	ldr r0, [r0, #0]
	ldr r1, _0803FDB8
	adds r4, r0, r1
	movs r5, #0
	b _0803FDC0
	.2byte 0x0000
_0803FDB0: .4byte sub_0803F454
_0803FDB4: .4byte gUnk_03005CF4
_0803FDB8: .4byte 0x00000E34
_0803FDBC:
	adds r5, #1
	adds r4, #0x28
_0803FDC0:
	cmp r5, #0x1d
	bhi _0803FDFE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0803FDBC
	b _0803FDD4
_0803FDD0:
	bl sub_080003F0
_0803FDD4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0803FDD0
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0xd
	bl sub_08000274
_0803FDFE:
	movs r4, #0x64
	b _0803FE0C
_0803FE02:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803FE18
_0803FE0C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803FE02
_0803FE18:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0803FE30
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0x20]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0803FE30: .4byte gUnk_03003CE0
	thumb_func_end sub_0803F454
