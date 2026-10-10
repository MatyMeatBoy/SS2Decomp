	thumb_func_start sub_08048570
sub_08048570: @ 0x08048570
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	cmp r0, #0
	beq _08048580
	cmp r0, #1
	bne _0804857E
	b _0804894A
_0804857E:
	b _08048A5E
_08048580:
	ldr r7, _08048590
	ldr r0, _08048594
	ldr r0, [r0, #0]
	ldr r1, _08048598
	adds r4, r0, r1
	movs r5, #0
	b _080485A0
	.2byte 0x0000
_08048590: .4byte sub_08048A74
_08048594: .4byte gUnk_03005CF4
_08048598: .4byte 0x00000E34
_0804859C:
	adds r5, #1
	adds r4, #0x28
_080485A0:
	cmp r5, #0x1d
	bhi _080485E0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804859C
	b _080485B4
_080485B0:
	bl sub_080003F0
_080485B4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080485B0
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
	movs r1, #0
	bl sub_08000274
	adds r6, r4, #0
_080485E0:
	movs r0, #0x78
	movs r1, #0xaf
	movs r2, #0x32
	movs r3, #0x14
	bl sub_0802A080
	ldr r0, _08048644
	ldr r0, [r0, #0]
	movs r1, #8
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	beq _080485FC
	movs r0, #1
_080485FC:
	cmp r0, #0
	beq _08048602
	b _08048A5E
_08048602:
	bl sub_08002164
	adds r1, r0, #0
	cmp r1, #1
	bne _08048624
	movs r1, #0xa5
	ldr r0, _08048648
	str r1, [r0, #0]
	ldr r0, _0804864C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08048624
	movs r0, #0xa5
	bl sub_08006CB4
_08048624:
	ldr r0, _08048644
	ldr r2, [r0, #0]
	movs r0, #4
	ldr r1, [r2, #0x38]
	ands r1, r0
	cmp r1, #0
	beq _08048634
	movs r1, #1
_08048634:
	cmp r1, #1
	beq _0804863A
	b _08048880
_0804863A:
	ldr r6, _08048650
	ldr r0, _08048654
	adds r4, r2, r0
	movs r5, #0
	b _0804865C
_08048644: .4byte gUnk_03005CF4
_08048648: .4byte gUnk_03005CF8
_0804864C: .4byte gUnk_030027D0
_08048650: .4byte sub_08048A74
_08048654: .4byte 0x00000E34
_08048658:
	adds r5, #1
	adds r4, #0x28
_0804865C:
	cmp r5, #0x1d
	bhi _0804869A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08048658
	b _08048670
_0804866C:
	bl sub_080003F0
_08048670:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804866C
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
_0804869A:
	ldr r6, _080486A8
	ldr r0, _080486AC
	ldr r0, [r0, #0]
	ldr r1, _080486B0
	adds r4, r0, r1
	movs r5, #0
	b _080486B8
_080486A8: .4byte sub_08048A74
_080486AC: .4byte gUnk_03005CF4
_080486B0: .4byte 0x00000E34
_080486B4:
	adds r5, #1
	adds r4, #0x28
_080486B8:
	cmp r5, #0x1d
	bhi _080486F6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080486B4
	b _080486CC
_080486C8:
	bl sub_080003F0
_080486CC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080486C8
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
	movs r1, #3
	bl sub_08000274
_080486F6:
	ldr r6, _08048704
	ldr r0, _08048708
	ldr r0, [r0, #0]
	ldr r1, _0804870C
	adds r4, r0, r1
	movs r5, #0
	b _08048714
_08048704: .4byte sub_08048A74
_08048708: .4byte gUnk_03005CF4
_0804870C: .4byte 0x00000E34
_08048710:
	adds r5, #1
	adds r4, #0x28
_08048714:
	cmp r5, #0x1d
	bhi _08048752
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08048710
	b _08048728
_08048724:
	bl sub_080003F0
_08048728:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08048724
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
	movs r1, #4
	bl sub_08000274
_08048752:
	ldr r6, _08048760
	ldr r0, _08048764
	ldr r0, [r0, #0]
	ldr r1, _08048768
	adds r4, r0, r1
	movs r5, #0
	b _08048770
_08048760: .4byte sub_08048A74
_08048764: .4byte gUnk_03005CF4
_08048768: .4byte 0x00000E34
_0804876C:
	adds r5, #1
	adds r4, #0x28
_08048770:
	cmp r5, #0x1d
	bhi _080487AE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804876C
	b _08048784
_08048780:
	bl sub_080003F0
_08048784:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08048780
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
	movs r1, #5
	bl sub_08000274
_080487AE:
	ldr r6, _080487BC
	ldr r0, _080487C0
	ldr r0, [r0, #0]
	ldr r1, _080487C4
	adds r4, r0, r1
	movs r5, #0
	b _080487CC
_080487BC: .4byte sub_08048A74
_080487C0: .4byte gUnk_03005CF4
_080487C4: .4byte 0x00000E34
_080487C8:
	adds r5, #1
	adds r4, #0x28
_080487CC:
	cmp r5, #0x1d
	bhi _0804880A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080487C8
	b _080487E0
_080487DC:
	bl sub_080003F0
_080487E0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080487DC
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
	movs r1, #6
	bl sub_08000274
_0804880A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804882C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	movs r4, #0x3c
	b _0804883A
_0804882C: .4byte gUnk_03003CE0
_08048830:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08048846
_0804883A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08048830
_08048846:
	ldr r0, _08048878
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _0804887C
	movs r6, #1
	movs r4, #0
_08048852:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08048866
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08048866
	strh r4, [r2, #0xc]
_08048866:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08048852
	bl sub_08019F04
	b _08048A5E
_08048878: .4byte gUnk_030056F4
_0804887C: .4byte gUnk_030056FC
_08048880:
	ldr r0, _080488BC
	movs r1, #7
	bl sub_08068070
	cmp r6, #0
	beq _0804889C
	adds r0, r6, #0
	bl sub_08000470
	cmp r0, #0
	beq _0804889C
	adds r0, r6, #0
	bl sub_080003A8
_0804889C:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080488C0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	movs r4, #1
	b _080488CE
_080488BC: .4byte sub_08059954
_080488C0: .4byte gUnk_03003CE0
_080488C4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080488DA
_080488CE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080488C4
_080488DA:
	bl sub_0805EFBC
_080488DE:
	bl sub_080003F0
	bl sub_0805F184
	cmp r0, #0
	bne _080488DE
	ldr r6, _080488F8
	ldr r0, _080488FC
	ldr r0, [r0, #0]
	ldr r1, _08048900
	adds r4, r0, r1
	movs r5, #0
	b _08048908
_080488F8: .4byte sub_08048A74
_080488FC: .4byte gUnk_03005CF4
_08048900: .4byte 0x00000E34
_08048904:
	adds r5, #1
	adds r4, #0x28
_08048908:
	cmp r5, #0x1d
	bls _0804890E
	b _08048A5E
_0804890E:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08048904
	b _0804891E
_0804891A:
	bl sub_080003F0
_0804891E:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804891A
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
	movs r1, #1
	bl sub_08000274
	b _08048A5E
_0804894A:
	movs r4, #1
	b _08048958
_0804894E:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08048964
_08048958:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804894E
_08048964:
	ldr r0, _0804897C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08048980
	bl sub_08019C3C
	b _08048982
	.2byte 0x0000
_0804897C: .4byte gUnk_03005CF4
_08048980:
	movs r0, #1
_08048982:
	cmp r0, #0
	bne _0804894A
	ldr r0, _080489AC
	movs r1, #3
	bl sub_08068070
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080489B0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _080489B8
_080489AC: .4byte sub_08059954
_080489B0: .4byte gUnk_03003CE0
_080489B4:
	bl sub_080003F0
_080489B8:
	bl sub_0805F184
	cmp r0, #0
	bne _080489B4
	b _080489C6
_080489C2:
	bl sub_080003F0
_080489C6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080489C2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080489E8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080489F0
	.2byte 0x0000
_080489E8: .4byte 0x0014002F
_080489EC:
	bl sub_080003F0
_080489F0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080489EC
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08048A1C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	movs r4, #0x3c
	b _08048A2A
_08048A1C: .4byte gUnk_03003CE0
_08048A20:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08048A36
_08048A2A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08048A20
_08048A36:
	ldr r0, _08048A68
	movs r1, #7
	bl sub_08068070
	bl sub_08002164
	adds r1, r0, #0
	cmp r1, #1
	bne _08048A5E
	ldr r0, _08048A6C
	str r1, [r0, #0]
	ldr r0, _08048A70
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08048A5E
	movs r0, #1
	bl sub_08006CB4
_08048A5E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08048A68: .4byte sub_080599B0
_08048A6C: .4byte gUnk_03005CF8
_08048A70: .4byte gUnk_030027D0
	thumb_func_end sub_08048570
