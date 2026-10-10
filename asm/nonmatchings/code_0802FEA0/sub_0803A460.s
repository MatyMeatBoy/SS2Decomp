	thumb_func_start sub_0803A460
sub_0803A460: @ 0x0803A460
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803A49C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_0800CE30
	cmp r0, #0
	beq _0803A4A4
	ldr r0, _0803A4A0
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x7c]
	b _0803A4AA
	.2byte 0x0000
_0803A49C: .4byte gUnk_03003CE0
_0803A4A0: .4byte gUnk_03005CF4
_0803A4A4:
	ldr r0, _0803A4B8
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x74]
_0803A4AA:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A512
	b _0803A4C0
	.2byte 0x0000
_0803A4B8: .4byte gUnk_03005CF4
_0803A4BC:
	bl sub_080003F0
_0803A4C0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A4BC
	b _0803A4CE
_0803A4CA:
	bl sub_080003F0
_0803A4CE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A4CA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A4F0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A4F8
_0803A4F0: .4byte 0x0014013A
_0803A4F4:
	bl sub_080003F0
_0803A4F8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803A504
	b _0803A8C6
_0803A504:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A4F4
	bl sub_0805EFBC
	b _0803A8C6
_0803A512:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0803A576
	b _0803A522
_0803A51E:
	bl sub_080003F0
_0803A522:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A51E
	b _0803A530
_0803A52C:
	bl sub_080003F0
_0803A530:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A52C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A554
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A55C
	.2byte 0x0000
_0803A554: .4byte 0x00140139
_0803A558:
	bl sub_080003F0
_0803A55C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803A568
	b _0803A8C6
_0803A568:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A558
	bl sub_0805EFBC
	b _0803A8C6
_0803A576:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0803A5D6
	b _0803A584
_0803A580:
	bl sub_080003F0
_0803A584:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A580
	b _0803A592
_0803A58E:
	bl sub_080003F0
_0803A592:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A58E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A5B4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A5BC
_0803A5B4: .4byte 0x00140138
_0803A5B8:
	bl sub_080003F0
_0803A5BC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803A5C8
	b _0803A8C6
_0803A5C8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A5B8
	bl sub_0805EFBC
	b _0803A8C6
_0803A5D6:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0803A636
	b _0803A5E4
_0803A5E0:
	bl sub_080003F0
_0803A5E4:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A5E0
	b _0803A5F2
_0803A5EE:
	bl sub_080003F0
_0803A5F2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A5EE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A614
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A61C
_0803A614: .4byte 0x00140137
_0803A618:
	bl sub_080003F0
_0803A61C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803A628
	b _0803A8C6
_0803A628:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A618
	bl sub_0805EFBC
	b _0803A8C6
_0803A636:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0803A696
	b _0803A644
_0803A640:
	bl sub_080003F0
_0803A644:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A640
	b _0803A652
_0803A64E:
	bl sub_080003F0
_0803A652:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A64E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A674
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A67C
_0803A674: .4byte 0x00140136
_0803A678:
	bl sub_080003F0
_0803A67C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803A688
	b _0803A8C6
_0803A688:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A678
	bl sub_0805EFBC
	b _0803A8C6
_0803A696:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803A6F6
	b _0803A6A4
_0803A6A0:
	bl sub_080003F0
_0803A6A4:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A6A0
	b _0803A6B2
_0803A6AE:
	bl sub_080003F0
_0803A6B2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A6AE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A6D4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A6DC
_0803A6D4: .4byte 0x00140135
_0803A6D8:
	bl sub_080003F0
_0803A6DC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803A6E8
	b _0803A8C6
_0803A6E8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A6D8
	bl sub_0805EFBC
	b _0803A8C6
_0803A6F6:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0803A756
	b _0803A704
_0803A700:
	bl sub_080003F0
_0803A704:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A700
	b _0803A712
_0803A70E:
	bl sub_080003F0
_0803A712:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A70E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A734
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A73C
_0803A734: .4byte 0x00140134
_0803A738:
	bl sub_080003F0
_0803A73C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803A748
	b _0803A8C6
_0803A748:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A738
	bl sub_0805EFBC
	b _0803A8C6
_0803A756:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803A7B6
	b _0803A764
_0803A760:
	bl sub_080003F0
_0803A764:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A760
	b _0803A772
_0803A76E:
	bl sub_080003F0
_0803A772:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A76E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A794
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A79C
_0803A794: .4byte 0x00140133
_0803A798:
	bl sub_080003F0
_0803A79C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803A7A8
	b _0803A8C6
_0803A7A8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A798
	bl sub_0805EFBC
	b _0803A8C6
_0803A7B6:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803A814
	b _0803A7C4
_0803A7C0:
	bl sub_080003F0
_0803A7C4:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A7C0
	b _0803A7D2
_0803A7CE:
	bl sub_080003F0
_0803A7D2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A7CE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A7F4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A7FC
_0803A7F4: .4byte 0x00140132
_0803A7F8:
	bl sub_080003F0
_0803A7FC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803A8C6
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A7F8
	bl sub_0805EFBC
	b _0803A8C6
_0803A814:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803A878
	b _0803A822
_0803A81E:
	bl sub_080003F0
_0803A822:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A81E
	b _0803A830
_0803A82C:
	bl sub_080003F0
_0803A830:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A82C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A854
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A85C
	.2byte 0x0000
_0803A854: .4byte 0x00140131
_0803A858:
	bl sub_080003F0
_0803A85C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803A8C6
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A858
	bl sub_0805EFBC
	b _0803A8C6
_0803A874:
	bl sub_080003F0
_0803A878:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A874
	b _0803A886
_0803A882:
	bl sub_080003F0
_0803A886:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A882
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A8A8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A8B0
_0803A8A8: .4byte 0x00140130
_0803A8AC:
	bl sub_080003F0
_0803A8B0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803A8C6
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A8AC
	bl sub_0805EFBC
_0803A8C6:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803A8EC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0803A8EC: .4byte gUnk_03003CE0
	thumb_func_end sub_0803A460
