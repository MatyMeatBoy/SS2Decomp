	thumb_func_start sub_0804E7B8
sub_0804E7B8: @ 0x0804E7B8
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	cmp r4, #0
	beq _0804E7C8
	cmp r4, #1
	beq _0804E7D8
	b _0804EAA2
_0804E7C8:
	ldr r0, _0804E7D4
	movs r1, #1
	bl sub_08068070
	b _0804EAA2
	.2byte 0x0000
_0804E7D4: .4byte sub_0804E7B8
_0804E7D8:
	ldr r0, _0804E820
	ldr r0, [r0, #0]
	ldr r2, [r0, #0x38]
	adds r1, r2, #0
	ands r1, r4
	cmp r1, #0
	beq _0804E7E8
	b _0804EAA2
_0804E7E8:
	orrs r2, r4
	str r2, [r0, #0x38]
	bl sub_0800CCCC
	cmp r0, #0
	beq _0804E7F6
	b _0804EAA2
_0804E7F6:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0804E824
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r0, #0
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #2
	b _0804E832
_0804E820: .4byte gUnk_03005CF4
_0804E824: .4byte gUnk_03003CE0
_0804E828:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804E83E
_0804E832:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804E828
_0804E83E:
	movs r0, #0xe0
	lsls r0, r0, #6
	movs r1, #0x80
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r0, #0x88
	lsls r0, r0, #7
	movs r1, #0xe0
	lsls r1, r1, #6
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #2
	b _0804E86C
_0804E862:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804E878
_0804E86C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804E862
_0804E878:
	movs r0, #0x90
	lsls r0, r0, #7
	movs r1, #0x80
	lsls r1, r1, #7
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r0, #0xf0
	lsls r0, r0, #6
	movs r1, #0xe0
	lsls r1, r1, #6
	movs r2, #0x29
	movs r3, #1
	bl sub_08073E2C
	movs r4, #8
	b _0804E8A6
_0804E89C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804E8B2
_0804E8A6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804E89C
_0804E8B2:
	movs r0, #0x2f
	movs r1, #0x40
	movs r2, #0x40
	bl sub_080289C0
	adds r5, r0, #0
	movs r4, #0xa
	negs r4, r4
	movs r1, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #5
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #5
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #4
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #3
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xc
	movs r3, #2
	bl sub_08028D98
	b _0804E926
_0804E922:
	bl sub_080003F0
_0804E926:
	bl sub_0805F184
	cmp r0, #0
	bne _0804E922
	b _0804E934
_0804E930:
	bl sub_080003F0
_0804E934:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804E930
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804E954
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804E95C
_0804E954: .4byte 0x00140059
_0804E958:
	bl sub_080003F0
_0804E95C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804E958
	adds r0, r5, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #6
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0x72
	movs r2, #0x48
	movs r3, #0x28
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #0
	bl sub_08029174
	adds r0, r5, #0
	movs r1, #4
	bl sub_080290E4
	movs r4, #2
	negs r4, r4
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	movs r3, #4
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #4
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	movs r3, #4
	bl sub_08028D98
	b _0804E9CC
_0804E9C8:
	bl sub_080003F0
_0804E9CC:
	bl sub_0805F184
	cmp r0, #0
	bne _0804E9C8
	b _0804E9DA
_0804E9D6:
	bl sub_080003F0
_0804E9DA:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804E9D6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804E9FC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804EA04
	.2byte 0x0000
_0804E9FC: .4byte 0x0014005A
_0804EA00:
	bl sub_080003F0
_0804EA04:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804EA00
	ldr r2, _0804EAAC
	movs r0, #7
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804EAB0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	adds r0, r5, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0x72
	movs r2, #0x72
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #6
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xb0
	movs r2, #0x90
	movs r3, #0x1e
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #4
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0xac
	movs r2, #0
	movs r3, #0x3c
	bl sub_08028AAC
	ldr r0, _0804EAB4
	ldr r0, [r0, #0]
	ldr r2, _0804EAB8
	adds r1, r0, r2
	movs r2, #0
_0804EA86:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _0804EA9A
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804EA86
	bl sub_080003F0
	movs r1, #0
_0804EA9A:
	cmp r1, #0
	beq _0804EAA2
	movs r0, #4
	strh r0, [r1, #0x36]
_0804EAA2:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0804EAAC: .4byte 0x0000270F
_0804EAB0: .4byte gUnk_03003CE0
_0804EAB4: .4byte gUnk_03005CF4
_0804EAB8: .4byte 0x000007A4
	thumb_func_end sub_0804E7B8
