	thumb_func_start sub_0803B720
sub_0803B720: @ 0x0803B720
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803B75C
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
	beq _0803B764
	ldr r0, _0803B760
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x7c]
	b _0803B76A
	.2byte 0x0000
_0803B75C: .4byte gUnk_03003CE0
_0803B760: .4byte gUnk_03005CF4
_0803B764:
	ldr r0, _0803B77C
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x74]
_0803B76A:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803B780
	ldr r0, _0803B77C
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _0803B788
_0803B77C: .4byte gUnk_03005CF4
_0803B780:
	ldr r0, _0803B798
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_0803B788:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803B7F2
	b _0803B7A0
_0803B798: .4byte gUnk_03005CF4
_0803B79C:
	bl sub_080003F0
_0803B7A0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B79C
	b _0803B7AE
_0803B7AA:
	bl sub_080003F0
_0803B7AE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B7AA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B7D0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B7D8
_0803B7D0: .4byte 0x00140158
_0803B7D4:
	bl sub_080003F0
_0803B7D8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B7E4
	b _0803BC0A
_0803B7E4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B7D4
	bl sub_0805EFBC
	b _0803BC0A
_0803B7F2:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0803B856
	b _0803B802
_0803B7FE:
	bl sub_080003F0
_0803B802:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B7FE
	b _0803B810
_0803B80C:
	bl sub_080003F0
_0803B810:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B80C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B834
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B83C
	.2byte 0x0000
_0803B834: .4byte 0x00140157
_0803B838:
	bl sub_080003F0
_0803B83C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B848
	b _0803BC0A
_0803B848:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B838
	bl sub_0805EFBC
	b _0803BC0A
_0803B856:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0803B8BA
	b _0803B866
_0803B862:
	bl sub_080003F0
_0803B866:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B862
	b _0803B874
_0803B870:
	bl sub_080003F0
_0803B874:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B870
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B898
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B8A0
	.2byte 0x0000
_0803B898: .4byte 0x00140156
_0803B89C:
	bl sub_080003F0
_0803B8A0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B8AC
	b _0803BC0A
_0803B8AC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B89C
	bl sub_0805EFBC
	b _0803BC0A
_0803B8BA:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _0803B91A
	b _0803B8C8
_0803B8C4:
	bl sub_080003F0
_0803B8C8:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B8C4
	b _0803B8D6
_0803B8D2:
	bl sub_080003F0
_0803B8D6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B8D2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B8F8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B900
_0803B8F8: .4byte 0x00140155
_0803B8FC:
	bl sub_080003F0
_0803B900:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B90C
	b _0803BC0A
_0803B90C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B8FC
	bl sub_0805EFBC
	b _0803BC0A
_0803B91A:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _0803B97A
	b _0803B928
_0803B924:
	bl sub_080003F0
_0803B928:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B924
	b _0803B936
_0803B932:
	bl sub_080003F0
_0803B936:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B932
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B958
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B960
_0803B958: .4byte 0x00140154
_0803B95C:
	bl sub_080003F0
_0803B960:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B96C
	b _0803BC0A
_0803B96C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B95C
	bl sub_0805EFBC
	b _0803BC0A
_0803B97A:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _0803B9DA
	b _0803B988
_0803B984:
	bl sub_080003F0
_0803B988:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B984
	b _0803B996
_0803B992:
	bl sub_080003F0
_0803B996:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B992
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B9B8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B9C0
_0803B9B8: .4byte 0x00140153
_0803B9BC:
	bl sub_080003F0
_0803B9C0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B9CC
	b _0803BC0A
_0803B9CC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B9BC
	bl sub_0805EFBC
	b _0803BC0A
_0803B9DA:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _0803BA3A
	b _0803B9E8
_0803B9E4:
	bl sub_080003F0
_0803B9E8:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B9E4
	b _0803B9F6
_0803B9F2:
	bl sub_080003F0
_0803B9F6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B9F2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803BA18
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803BA20
_0803BA18: .4byte 0x00140152
_0803BA1C:
	bl sub_080003F0
_0803BA20:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803BA2C
	b _0803BC0A
_0803BA2C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803BA1C
	bl sub_0805EFBC
	b _0803BC0A
_0803BA3A:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _0803BA9A
	b _0803BA48
_0803BA44:
	bl sub_080003F0
_0803BA48:
	bl sub_0805F184
	cmp r0, #0
	bne _0803BA44
	b _0803BA56
_0803BA52:
	bl sub_080003F0
_0803BA56:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803BA52
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803BA78
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803BA80
_0803BA78: .4byte 0x00140151
_0803BA7C:
	bl sub_080003F0
_0803BA80:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803BA8C
	b _0803BC0A
_0803BA8C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803BA7C
	bl sub_0805EFBC
	b _0803BC0A
_0803BA9A:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _0803BAFA
	b _0803BAA8
_0803BAA4:
	bl sub_080003F0
_0803BAA8:
	bl sub_0805F184
	cmp r0, #0
	bne _0803BAA4
	b _0803BAB6
_0803BAB2:
	bl sub_080003F0
_0803BAB6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803BAB2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803BAD8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803BAE0
_0803BAD8: .4byte 0x00140150
_0803BADC:
	bl sub_080003F0
_0803BAE0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803BAEC
	b _0803BC0A
_0803BAEC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803BADC
	bl sub_0805EFBC
	b _0803BC0A
_0803BAFA:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _0803BB58
	b _0803BB08
_0803BB04:
	bl sub_080003F0
_0803BB08:
	bl sub_0805F184
	cmp r0, #0
	bne _0803BB04
	b _0803BB16
_0803BB12:
	bl sub_080003F0
_0803BB16:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803BB12
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803BB38
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803BB40
_0803BB38: .4byte 0x0014014F
_0803BB3C:
	bl sub_080003F0
_0803BB40:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803BC0A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803BB3C
	bl sub_0805EFBC
	b _0803BC0A
_0803BB58:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _0803BBBC
	b _0803BB66
_0803BB62:
	bl sub_080003F0
_0803BB66:
	bl sub_0805F184
	cmp r0, #0
	bne _0803BB62
	b _0803BB74
_0803BB70:
	bl sub_080003F0
_0803BB74:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803BB70
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803BB98
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803BBA0
	.2byte 0x0000
_0803BB98: .4byte 0x0014014E
_0803BB9C:
	bl sub_080003F0
_0803BBA0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803BC0A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803BB9C
	bl sub_0805EFBC
	b _0803BC0A
_0803BBB8:
	bl sub_080003F0
_0803BBBC:
	bl sub_0805F184
	cmp r0, #0
	bne _0803BBB8
	b _0803BBCA
_0803BBC6:
	bl sub_080003F0
_0803BBCA:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803BBC6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803BBEC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803BBF4
_0803BBEC: .4byte 0x0014014D
_0803BBF0:
	bl sub_080003F0
_0803BBF4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803BC0A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803BBF0
	bl sub_0805EFBC
_0803BC0A:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803BC38
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
_0803BC38: .4byte gUnk_03003CE0
	thumb_func_end sub_0803B720
