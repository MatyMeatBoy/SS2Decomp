	thumb_func_start sub_08030480
sub_08030480: @ 0x08030480
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080304BC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_0800CE30
	cmp r0, #0
	beq _080304C4
	ldr r0, _080304C0
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x7c]
	b _080304CA
	.2byte 0x0000
_080304BC: .4byte gUnk_03003CE0
_080304C0: .4byte gUnk_03005CF4
_080304C4:
	ldr r0, _080304D8
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x74]
_080304CA:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08030532
	b _080304E0
	.2byte 0x0000
_080304D8: .4byte gUnk_03005CF4
_080304DC:
	bl sub_080003F0
_080304E0:
	bl sub_0805F184
	cmp r0, #0
	bne _080304DC
	b _080304EE
_080304EA:
	bl sub_080003F0
_080304EE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080304EA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030510
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030518
_08030510: .4byte 0x001400DB
_08030514:
	bl sub_080003F0
_08030518:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030524
	b _08030882
_08030524:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030514
	bl sub_0805EFBC
	b _08030882
_08030532:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08030592
	b _08030540
_0803053C:
	bl sub_080003F0
_08030540:
	bl sub_0805F184
	cmp r0, #0
	bne _0803053C
	b _0803054E
_0803054A:
	bl sub_080003F0
_0803054E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803054A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030570
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030578
_08030570: .4byte 0x001400DA
_08030574:
	bl sub_080003F0
_08030578:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030584
	b _08030882
_08030584:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030574
	bl sub_0805EFBC
	b _08030882
_08030592:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080305F2
	b _080305A0
_0803059C:
	bl sub_080003F0
_080305A0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803059C
	b _080305AE
_080305AA:
	bl sub_080003F0
_080305AE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080305AA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080305D0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080305D8
_080305D0: .4byte 0x001400D9
_080305D4:
	bl sub_080003F0
_080305D8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080305E4
	b _08030882
_080305E4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080305D4
	bl sub_0805EFBC
	b _08030882
_080305F2:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08030652
	b _08030600
_080305FC:
	bl sub_080003F0
_08030600:
	bl sub_0805F184
	cmp r0, #0
	bne _080305FC
	b _0803060E
_0803060A:
	bl sub_080003F0
_0803060E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803060A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030630
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030638
_08030630: .4byte 0x001400D8
_08030634:
	bl sub_080003F0
_08030638:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030644
	b _08030882
_08030644:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030634
	bl sub_0805EFBC
	b _08030882
_08030652:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080306B2
	b _08030660
_0803065C:
	bl sub_080003F0
_08030660:
	bl sub_0805F184
	cmp r0, #0
	bne _0803065C
	b _0803066E
_0803066A:
	bl sub_080003F0
_0803066E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803066A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030690
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030698
_08030690: .4byte 0x001400D7
_08030694:
	bl sub_080003F0
_08030698:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080306A4
	b _08030882
_080306A4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030694
	bl sub_0805EFBC
	b _08030882
_080306B2:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08030712
	b _080306C0
_080306BC:
	bl sub_080003F0
_080306C0:
	bl sub_0805F184
	cmp r0, #0
	bne _080306BC
	b _080306CE
_080306CA:
	bl sub_080003F0
_080306CE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080306CA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080306F0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080306F8
_080306F0: .4byte 0x001400D6
_080306F4:
	bl sub_080003F0
_080306F8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030704
	b _08030882
_08030704:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080306F4
	bl sub_0805EFBC
	b _08030882
_08030712:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08030772
	b _08030720
_0803071C:
	bl sub_080003F0
_08030720:
	bl sub_0805F184
	cmp r0, #0
	bne _0803071C
	b _0803072E
_0803072A:
	bl sub_080003F0
_0803072E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803072A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030750
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030758
_08030750: .4byte 0x001400D5
_08030754:
	bl sub_080003F0
_08030758:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08030764
	b _08030882
_08030764:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030754
	bl sub_0805EFBC
	b _08030882
_08030772:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080307D0
	b _08030780
_0803077C:
	bl sub_080003F0
_08030780:
	bl sub_0805F184
	cmp r0, #0
	bne _0803077C
	b _0803078E
_0803078A:
	bl sub_080003F0
_0803078E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803078A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080307B0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080307B8
_080307B0: .4byte 0x001400D4
_080307B4:
	bl sub_080003F0
_080307B8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08030882
	bl sub_0800CDF8
	cmp r0, #0
	beq _080307B4
	bl sub_0805EFBC
	b _08030882
_080307D0:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08030834
	b _080307DE
_080307DA:
	bl sub_080003F0
_080307DE:
	bl sub_0805F184
	cmp r0, #0
	bne _080307DA
	b _080307EC
_080307E8:
	bl sub_080003F0
_080307EC:
	bl sub_0805EF90
	cmp r0, #0
	bne _080307E8
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030810
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08030818
	.2byte 0x0000
_08030810: .4byte 0x001400D3
_08030814:
	bl sub_080003F0
_08030818:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08030882
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030814
	bl sub_0805EFBC
	b _08030882
_08030830:
	bl sub_080003F0
_08030834:
	bl sub_0805F184
	cmp r0, #0
	bne _08030830
	b _08030842
_0803083E:
	bl sub_080003F0
_08030842:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803083E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08030864
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803086C
_08030864: .4byte 0x001400D2
_08030868:
	bl sub_080003F0
_0803086C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08030882
	bl sub_0800CDF8
	cmp r0, #0
	beq _08030868
	bl sub_0805EFBC
_08030882:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080308B0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_080308B0: .4byte gUnk_03003CE0
	thumb_func_end sub_08030480
