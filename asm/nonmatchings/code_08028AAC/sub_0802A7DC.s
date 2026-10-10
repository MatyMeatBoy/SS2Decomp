	thumb_func_start sub_0802A7DC
sub_0802A7DC: @ 0x0802A7DC
	push {r4, r5, r6, lr}
	movs r0, #0xa
	bl sub_0801AC24
	movs r4, #0xc
	b _0802A7F2
_0802A7E8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802A7FE
_0802A7F2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802A7E8
_0802A7FE:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802A868
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	ldr r0, _0802A86C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0802A82E
	movs r0, #0xc0
	lsls r0, r0, #1
	bl sub_08006D08
_0802A82E:
	ldr r0, _0802A870
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
	movs r0, #4
	movs r1, #2
	movs r2, #0x12
	movs r3, #0xa
	bl sub_0805DC1C
	movs r0, #0
	movs r1, #0x17
	bl sub_0802A590
	ldr r1, _0802A874
	ldr r0, _0802A878
	strh r0, [r1, #0x38]
	ldr r0, _0802A87C
	strh r0, [r1, #0x3a]
	ldr r0, _0802A880
	strh r0, [r1, #0x32]
	ldr r0, _0802A884
	strh r0, [r1, #0x36]
	movs r4, #1
	b _0802A892
_0802A868: .4byte gUnk_03003CE0
_0802A86C: .4byte gUnk_030027D0
_0802A870: .4byte gUnk_03005CF4
_0802A874: .4byte gUnk_03001250
_0802A878: .4byte 0x0000FFFF
_0802A87C: .4byte 0x0000E1E1
_0802A880: .4byte 0x000023C5
_0802A884: .4byte 0x00001773
_0802A888:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802A89E
_0802A892:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802A888
_0802A89E:
	movs r1, #0x80
	lsls r1, r1, #7
	movs r0, #0
	movs r2, #1
	bl sub_080009C0
	movs r0, #0xa
	bl sub_0801AB90
	movs r4, #0xc
	b _0802A8BE
_0802A8B4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802A8CA
_0802A8BE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802A8B4
_0802A8CA:
	ldr r0, _0802A8F8
	bl sub_0802A644
	ldr r0, _0802A8FC
	bl sub_0802A644
	ldr r0, _0802A900
	bl sub_0802A644
	ldr r0, _0802A904
	bl sub_0802A644
	ldr r4, _0802A908
	movs r0, #0x1e
	bl sub_08006C30
	movs r0, #0
	str r0, [r4, #0]
	movs r0, #0x1e
	bl sub_0801AA8C
	b _0802A910
	.2byte 0x0000
_0802A8F8: .4byte 0x0000049A
_0802A8FC: .4byte 0x0000049B
_0802A900: .4byte 0x0000049C
_0802A904: .4byte 0x0000049D
_0802A908: .4byte gUnk_03005CF8
_0802A90C:
	bl sub_080003F0
_0802A910:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802A90C
	movs r1, #0x80
	lsls r1, r1, #7
	movs r0, #0
	movs r2, #1
	bl sub_080009F8
	ldr r0, _0802A984
	ldr r0, [r0, #0]
	ldr r1, _0802A988
	adds r5, r0, r1
	movs r6, #0
_0802A92E:
	adds r4, r5, #0
	adds r4, #0x48
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _0802A942
	adds r0, r4, #0
	bl sub_080003A8
_0802A942:
	adds r6, #1
	adds r5, #0x70
	cmp r6, #0xe
	bls _0802A92E
	bl sub_0800D108
	bl sub_0800D0F4
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _0802A98C
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_08067D74
	bl sub_080020F4
	muls r0, r5, r0
	adds r4, #0x8c
	adds r0, r0, r4
	movs r1, #0x96
	lsls r1, r1, #9
	str r1, [r0, #0]
	movs r4, #0xa
	b _0802A99A
	.2byte 0x0000
_0802A984: .4byte gUnk_03005CF4
_0802A988: .4byte 0x000007A4
_0802A98C: .4byte gUnk_03003CE0
_0802A990:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802A9A6
_0802A99A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802A990
_0802A9A6:
	bl sub_0808899C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_0802A7DC
