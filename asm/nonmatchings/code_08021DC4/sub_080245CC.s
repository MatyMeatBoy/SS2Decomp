	thumb_func_start sub_080245CC
sub_080245CC: @ 0x080245CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe4
	str r0, [sp, #0x84]
	bl sub_0800048C
	ldr r1, _0802463C
	adds r0, r0, r1
	ldr r1, _08024640
	ldr r1, [r1, #0]
	subs r0, r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #4
	adds r1, r1, r0
	lsls r0, r1, #8
	adds r1, r1, r0
	lsls r0, r1, #0x10
	adds r1, r1, r0
	negs r1, r1
	asrs r1, r1, #3
	str r1, [sp, #0xb0]
	ldr r0, _08024644
	adds r0, #0xb0
	ldr r0, [r0, #0]
	str r0, [sp, #0xcc]
	ldr r2, [sp, #0x84]
	ldrh r0, [r2, #0]
	lsls r0, r0, #3
	str r0, [sp, #0x8c]
	ldrh r0, [r2, #2]
	lsls r0, r0, #3
	str r0, [sp, #0x90]
	ldrh r5, [r2, #6]
	lsls r1, r5, #0x10
	lsrs r3, r1, #0x10
	str r3, [sp, #0xa4]
	movs r0, #8
	ands r0, r3
	movs r5, #1
	cmp r0, #0
	beq _08024628
	movs r5, #0
_08024628:
	movs r0, #0x80
	ldr r4, [sp, #0xa4]
	ands r0, r4
	cmp r0, #0
	beq _08024648
	movs r7, #1
	str r7, [sp, #0xc4]
	movs r0, #8
	str r0, [sp, #0xb8]
	b _0802465C
_0802463C: .4byte 0xFFFFE844
_08024640: .4byte gUnk_03005CF4
_08024644: .4byte gUnk_03003170
_08024648:
	movs r2, #0
	str r2, [sp, #0xc4]
	lsrs r1, r1, #0x14
	movs r0, #7
	ands r1, r0
	str r1, [sp, #0xb8]
	ldr r3, [sp, #0x8c]
	str r3, [sp, #0x9c]
	ldr r4, [sp, #0x90]
	str r4, [sp, #0xa0]
_0802465C:
	movs r0, #4
	ldr r7, [sp, #0xa4]
	ands r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	negs r0, r0
	lsrs r0, r0, #0x1f
	str r0, [sp, #0xc8]
	movs r0, #3
	adds r1, r7, #0
	ands r1, r0
	str r1, [sp, #0xa4]
	add r2, sp, #0x78
	movs r0, #0
	strh r0, [r2, #0]
	mov r1, sp
	adds r1, #0x7a
	strh r0, [r1, #0]
	movs r3, #0
	str r3, [sp, #0xb4]
	movs r4, #1
	str r4, [sp, #0xbc]
	movs r7, #0
	str r7, [sp, #0xa8]
	str r0, [sp, #0xc0]
	ldr r0, _080246B0
	str r7, [r0, #0]
	ldr r1, [sp, #0xc8]
	cmp r1, #0
	bne _080246B8
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	beq _080246B8
	add r4, sp, #0x44
	ldr r1, _080246B4
	subs r3, #1
	str r7, [sp, #0]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_08065158
	b _080246CC
_080246B0: .4byte gUnk_03005CF0
_080246B4: .4byte 0x0005014F
_080246B8:
	add r4, sp, #0x44
	ldr r1, _08024738
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_08065158
_080246CC:
	ldr r0, _0802473C
	bl sub_08007290
	str r0, [sp, #0x88]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08024740
	adds r1, r1, r0
	mov r8, r1
	ldr r1, _08024744
	ldr r0, _08024748
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0xe
	bl sub_08065158
	bl sub_0800CCCC
	cmp r0, #0
	bne _0802471A
	ldr r3, [sp, #0xa4]
	lsls r0, r3, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
_0802471A:
	add r4, sp, #0x2c
	ldr r7, [sp, #0xa4]
	adds r1, r4, r7
	movs r0, #0xe
	strb r0, [r1, #0]
	bl sub_0800CF80
	cmp r0, #0
	beq _0802474C
	movs r0, #0xf0
	str r0, [sp, #0x94]
	movs r1, #0x10
	str r1, [sp, #0x98]
	b _0802475A
	.2byte 0x0000
_08024738: .4byte 0x00050150
_0802473C: .4byte 0x001403D1
_08024740: .4byte gUnk_03003CE0
_08024744: .4byte gUnk_084B16E0
_08024748: .4byte gUnk_03005CF4
_0802474C:
	movs r2, #0x18
	str r2, [sp, #0x94]
	movs r3, #0x10
	str r3, [sp, #0x98]
	b _0802475A
_08024756:
	bl sub_080003F0
_0802475A:
	bl sub_0800BA6C
	cmp r0, #0
	beq _08024756
	cmp r5, #0
	bne _0802476A
	bl _08024F88
_0802476A:
	bl _08024F56
_0802476E:
	bl sub_080003F0
_08024772:
	bl sub_0800CDF8
	cmp r0, #0
	bne _0802476E
	bl sub_080021A8
	cmp r0, #0
	beq _08024786
	bl _080257B4
_08024786:
	ldr r0, _08024834
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024798
	b _080248B0
_08024798:
	str r1, [sp, #0]
	add r0, sp, #0x10
	ldr r1, [sp, #0xa4]
	add r2, sp, #0x78
	mov r3, sp
	adds r3, #0x7a
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	bne _0802485A
	bl sub_0800CCCC
	cmp r0, #0
	bne _0802485A
	bl sub_0800CD8C
	adds r7, r0, #0
	cmp r7, #0
	bne _0802485A
	ldr r4, [sp, #0xbc]
	cmp r4, #0
	beq _080247DC
	ldr r1, [sp, #0xa4]
	lsls r0, r1, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	movs r2, #0
	str r2, [sp, #0xbc]
_080247DC:
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r3, [sp, #0x8c]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x90]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x7c
	mov r5, sp
	adds r5, #0x7e
	movs r2, #0x30
	str r2, [sp, #0]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r7, [sp, #0xcc]
	ldrh r0, [r7, #0xe]
	cmp r0, #0
	beq _08024838
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	add r4, sp, #0x78
	ldrh r3, [r4, #0]
	str r6, [sp, #0]
	add r7, sp, #0x2c
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xa4]
	bl sub_08008E74
	b _0802485E
_08024834: .4byte gUnk_03005CF4
_08024838:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	add r4, sp, #0x78
	ldrh r3, [r4, #0]
	str r6, [sp, #0]
	add r7, sp, #0x2c
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xa4]
	bl sub_08007870
	b _0802485E
_0802485A:
	movs r0, #1
	str r0, [sp, #0xbc]
_0802485E:
	bl sub_0800CDC0
	cmp r0, #0
	beq _080248A4
	movs r7, #0
	movs r3, #0
	ldr r4, _08024870
	b _0802488C
	.2byte 0x0000
_08024870: .4byte gUnk_03003D10
_08024874:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0802488A
	adds r7, #1
_0802488A:
	adds r3, #1
_0802488C:
	str r3, [sp, #0xe0]
	bl sub_08002164
	ldr r3, [sp, #0xe0]
	cmp r3, r0
	blo _08024874
	bl sub_08002164
	cmp r7, r0
	bne _080248A4
	bl _08025710
_080248A4:
	ldr r1, _080248AC
	movs r0, #0
	str r0, [r1, #0]
	b _08024F52
_080248AC: .4byte gUnk_03005CF0
_080248B0:
	ldr r1, [sp, #0xc0]
	cmp r1, #0
	bne _0802491E
	bl sub_0800CCCC
	cmp r0, #0
	bne _0802491E
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bne _080248E2
	ldr r3, [sp, #0xc8]
	cmp r3, #0
	beq _080248D2
	movs r0, #0x3e
	bl sub_0805865C
	b _0802491A
_080248D2:
	movs r0, #0x3e
	movs r1, #0x63
	movs r2, #0x40
	bl sub_08058B74
	bl sub_0800D000
	b _0802491A
_080248E2:
	movs r0, #0x5d
	bl sub_0805865C
	bl sub_0800CDC0
	cmp r0, #0
	beq _0802490C
	bl sub_0800CDAC
	ldr r0, _08024908
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	movs r1, #0
	movs r2, #1
	bl sub_0800A34C
	bl sub_0800CD9C
	b _0802491A
_08024908: .4byte gUnk_03003170
_0802490C:
	ldr r0, _080249BC
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	movs r1, #0
	movs r2, #1
	bl sub_0800A34C
_0802491A:
	movs r4, #1
	str r4, [sp, #0xc0]
_0802491E:
	ldr r7, [sp, #0xc4]
	cmp r7, #0
	bne _08024926
	b _08024B24
_08024926:
	add r4, sp, #0x7c
	mov r7, r8
	adds r7, #0x8c
	ldr r0, [r7, #0]
	asrs r0, r0, #8
	strh r0, [r4, #0]
	mov r5, sp
	adds r5, #0x7e
	mov r6, r8
	adds r6, #0x90
	ldr r0, [r6, #0]
	asrs r0, r0, #8
	strh r0, [r5, #0]
	bl sub_0800CCCC
	cmp r0, #0
	beq _0802494A
	b _08024AE8
_0802494A:
	bl sub_0806569C
	cmp r0, #0
	beq _08024954
	b _08024AE8
_08024954:
	mov r1, r8
	ldrh r0, [r1, #0x20]
	cmp r0, #0xe
	bne _0802495E
	b _08024AE8
_0802495E:
	movs r2, #0
	ldrsh r0, [r4, r2]
	ldr r3, [sp, #0x8c]
	subs r0, r0, r3
	cmp r0, #0
	bge _0802496C
	negs r0, r0
_0802496C:
	ldr r4, [sp, #0x94]
	cmp r0, r4
	blt _08024974
	b _08024AE8
_08024974:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0x90]
	subs r0, r0, r2
	cmp r0, #0
	bge _08024982
	negs r0, r0
_08024982:
	ldr r3, [sp, #0x98]
	cmp r0, r3
	blt _0802498A
	b _08024AE8
_0802498A:
	ldr r0, [r7, #0]
	ldr r1, [r6, #0]
	movs r2, #0xa4
	lsls r2, r2, #1
	add r2, r8
	ldr r2, [r2, #0]
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	bl sub_0805D37C
	cmp r0, #0
	beq _080249A6
	b _08024C3E
_080249A6:
	mov r4, r8
	ldrh r0, [r4, #0x20]
	subs r0, #2
	cmp r0, #0xc
	bhi _080249F8
	lsls r0, r0, #2
	ldr r1, _080249C0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080249BC: .4byte gUnk_03003170
_080249C0: .4byte _080249C4
_080249C4:
	.4byte _08024C3E
_080249C8: .4byte _080249F8
_080249CC: .4byte _08024C3E
_080249D0: .4byte _08024C3E
_080249D4: .4byte _080249F8
_080249D8: .4byte _08024C3E
_080249DC: .4byte _08024C3E
_080249E0: .4byte _08024C3E
_080249E4: .4byte _08024C3E
_080249E8: .4byte _08024C3E
_080249EC: .4byte _08024C3E
_080249F0: .4byte _080249F8
_080249F4: .4byte _08024C3E
_080249F8:
	mov r7, r8
	ldr r1, [r7, #0x30]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08024AA0
	ldr r0, [sp, #0xb0]
	cmp r0, #0
	beq _08024A16
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r1, r0
	str r1, [r7, #0x30]
	b _08024A20
_08024A16:
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r1, r0
	mov r2, r8
	str r1, [r2, #0x30]
_08024A20:
	bl sub_0805F184
	cmp r0, #0
	bne _08024A44
	ldr r4, [sp, #0x88]
	adds r4, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
_08024A44:
	mov r3, r8
	ldrh r1, [r3, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08024A92
	ldr r1, [r3, #0x30]
	ldr r0, _08024A68
	orrs r1, r0
	str r1, [r3, #0x30]
	ldr r4, [sp, #0xb0]
	cmp r4, #0
	beq _08024A70
	ldr r0, _08024A6C
	ands r1, r0
	str r1, [r3, #0x30]
	b _08024A78
	.2byte 0x0000
_08024A68: .4byte 0x00000403
_08024A6C: .4byte 0xFEFFFFFF
_08024A70:
	ldr r0, _08024A9C
	ands r1, r0
	mov r7, r8
	str r1, [r7, #0x30]
_08024A78:
	bl sub_08067D74
	mov r1, r8
	adds r1, #0xd8
	movs r0, #0
	str r0, [r1, #0]
	mov r1, r8
	strh r0, [r1, #0x26]
	strh r0, [r1, #0x24]
	adds r1, #0xce
	strh r0, [r1, #0]
	mov r2, r8
	strh r0, [r2, #0x20]
_08024A92:
	movs r3, #1
	str r3, [sp, #0xb4]
	movs r4, #0
	str r4, [sp, #0xac]
	b _08024C3E
_08024A9C: .4byte 0xFF7FFFFF
_08024AA0:
	ldr r0, [sp, #0xac]
	adds r7, r0, #0
	adds r7, #1
	str r7, [sp, #0xac]
	cmp r0, #0x3c
	bhi _08024AAE
	b _08024C3E
_08024AAE:
	bl sub_08058DB0
	cmp r0, #0
	beq _08024AB8
	b _08024C3E
_08024AB8:
	ldr r0, _08024ADC
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08024AC6
	b _08024C3E
_08024AC6:
	mov r1, r8
	ldr r0, [r1, #0x30]
	ldr r1, _08024AE0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x30]
	ldr r1, _08024AE4
	ldr r0, [sp, #0xb0]
	bl sub_08057328
	b _08024C3E
_08024ADC: .4byte gUnk_03001324
_08024AE0: .4byte 0xFFFFFBFF
_08024AE4: .4byte sub_08024538
_08024AE8:
	ldr r3, [sp, #0xb4]
	cmp r3, #0
	beq _08024AFA
	movs r4, #0
	str r4, [sp, #0xb4]
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
_08024AFA:
	ldr r7, [sp, #0xb0]
	cmp r7, #0
	beq _08024B14
	mov r1, r8
	ldr r0, [r1, #0x30]
	ldr r1, _08024B10
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x30]
	b _08024C3E
	.2byte 0x0000
_08024B10: .4byte 0xFEFFFFFF
_08024B14:
	mov r3, r8
	ldr r0, [r3, #0x30]
	ldr r1, _08024B20
	ands r0, r1
	str r0, [r3, #0x30]
	b _08024C3E
_08024B20: .4byte 0xFF7FFFFF
_08024B24:
	ldr r0, _08024B54
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08024B2E
	b _08024C30
_08024B2E:
	ldr r0, _08024B58
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08024B3A
	b _08024C30
_08024B3A:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08024B44
	b _08024C30
_08024B44:
	ldr r4, [sp, #0xb8]
	cmp r4, #7
	bhi _08024C20
	lsls r0, r4, #2
	ldr r1, _08024B5C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08024B54: .4byte gUnk_03005CF0
_08024B58: .4byte gUnk_03003170
_08024B5C: .4byte _08024B60
_08024B60:
	.4byte _08024B80
_08024B64: .4byte _08024B94
_08024B68: .4byte _08024BA4
_08024B6C: .4byte _08024BB4
_08024B70: .4byte _08024BC4
_08024B74: .4byte _08024BD4
_08024B78: .4byte _08024BF0
_08024B7C: .4byte _08024C0C
_08024B80:
	ldr r2, [sp, #0x94]
	ldr r0, _08024B90
	str r0, [sp, #0]
	ldr r7, [sp, #0x84]
	str r7, [sp, #4]
	ldr r0, [sp, #0x9c]
	ldr r1, [sp, #0xa0]
	b _08024BE2
_08024B90: .4byte sub_0805A60C
_08024B94:
	ldr r0, _08024BA0
	str r0, [sp, #0]
	ldr r0, [sp, #0x84]
	str r0, [sp, #4]
	b _08024BDC
	.2byte 0x0000
_08024BA0: .4byte sub_0805A618
_08024BA4:
	ldr r0, _08024BB0
	str r0, [sp, #0]
	ldr r1, [sp, #0x84]
	str r1, [sp, #4]
	b _08024BF8
	.2byte 0x0000
_08024BB0: .4byte sub_0805A624
_08024BB4:
	ldr r0, _08024BC0
	str r0, [sp, #0]
	ldr r2, [sp, #0x84]
	str r2, [sp, #4]
	b _08024BDC
	.2byte 0x0000
_08024BC0: .4byte sub_0805A630
_08024BC4:
	ldr r0, _08024BD0
	str r0, [sp, #0]
	ldr r3, [sp, #0x84]
	str r3, [sp, #4]
	b _08024BDC
	.2byte 0x0000
_08024BD0: .4byte sub_0805A63C
_08024BD4:
	ldr r0, _08024BEC
	str r0, [sp, #0]
	ldr r4, [sp, #0x84]
	str r4, [sp, #4]
_08024BDC:
	ldr r0, [sp, #0x9c]
	ldr r1, [sp, #0xa0]
	movs r2, #0x10
_08024BE2:
	movs r3, #0x10
	bl sub_08057DD0
	b _08024C20
	.2byte 0x0000
_08024BEC: .4byte sub_0805A648
_08024BF0:
	ldr r0, _08024C08
	str r0, [sp, #0]
	ldr r7, [sp, #0x84]
	str r7, [sp, #4]
_08024BF8:
	ldr r0, [sp, #0x9c]
	ldr r1, [sp, #0xa0]
	movs r2, #0x10
	movs r3, #0x40
	bl sub_08057DD0
	b _08024C20
	.2byte 0x0000
_08024C08: .4byte sub_0805A654
_08024C0C:
	ldr r0, _08024C28
	str r0, [sp, #0]
	ldr r0, [sp, #0x84]
	str r0, [sp, #4]
	ldr r0, [sp, #0x9c]
	ldr r1, [sp, #0xa0]
	movs r2, #0x10
	movs r3, #0x10
	bl sub_08057DD0
_08024C20:
	ldr r1, _08024C2C
	movs r0, #1
	b _08024C3C
	.2byte 0x0000
_08024C28: .4byte sub_0805A660
_08024C2C: .4byte gUnk_03005CF0
_08024C30:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08024C3E
	ldr r1, _08024C5C
	movs r0, #0
_08024C3C:
	str r0, [r1, #0]
_08024C3E:
	bl sub_08002204
	cmp r0, #0
	bne _08024C48
	b _08024E6A
_08024C48:
	movs r1, #0
	mov r9, r1
	mov sl, r1
	movs r7, #0
	movs r3, #0
	movs r2, #0
	str r2, [sp, #0xd8]
	ldr r6, _08024C60
	b _08024DD0
	.2byte 0x0000
_08024C5C: .4byte gUnk_03005CF0
_08024C60: .4byte gUnk_03003E28
_08024C64:
	add r4, sp, #0x7c
	ldr r2, _08024CCC
	ldr r1, [r6, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	strh r0, [r4, #0]
	mov r5, sp
	adds r5, #0x7e
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	strh r0, [r5, #0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08024C88
	movs r0, #0
	strh r0, [r4, #0]
_08024C88:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08024C94
	movs r0, #0
	strh r0, [r5, #0]
_08024C94:
	str r2, [sp, #0xdc]
	str r3, [sp, #0xe0]
	bl sub_0800CB9C
	ldr r2, [sp, #0xdc]
	ldr r3, [sp, #0xe0]
	cmp r0, #0
	beq _08024D38
	bl sub_0800CF80
	ldr r2, [sp, #0xdc]
	ldr r3, [sp, #0xe0]
	cmp r0, #0
	beq _08024CD0
	ldr r1, [r6, #0]
	ldrb r0, [r1, #7]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08024CC4
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1a
	adds r4, r2, #0
	cmp r0, #0
	bne _08024D7C
_08024CC4:
	adds r7, #1
	adds r4, r2, #0
	b _08024D7C
	.2byte 0x0000
_08024CCC: .4byte gUnk_03003CE0
_08024CD0:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #0x8c]
	subs r1, r0, r4
	cmp r1, #0
	bge _08024CDE
	negs r1, r1
_08024CDE:
	ldr r0, [sp, #0x94]
	adds r0, #0x20
	cmp r1, r0
	bge _08024CFE
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r4, [sp, #0x90]
	subs r1, r0, r4
	cmp r1, #0
	bge _08024CF4
	negs r1, r1
_08024CF4:
	ldr r0, [sp, #0x98]
	adds r0, #0x20
	adds r4, r2, #0
	cmp r1, r0
	blt _08024D10
_08024CFE:
	ldr r0, [r6, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	ldr r4, _08024D34
	cmp r0, #0
	beq _08024D9A
_08024D10:
	ldr r2, [r6, #0]
	ldrb r0, [r2, #7]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08024D7A
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08024D9A
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	beq _08024D7C
	b _08024D7A
_08024D34: .4byte gUnk_03003CE0
_08024D38:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #0x8c]
	subs r1, r0, r4
	cmp r1, #0
	bge _08024D46
	negs r1, r1
_08024D46:
	ldr r0, [sp, #0x94]
	adds r0, #0x20
	adds r4, r2, #0
	cmp r1, r0
	bge _08024D7C
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0x90]
	subs r1, r0, r2
	cmp r1, #0
	bge _08024D5E
	negs r1, r1
_08024D5E:
	ldr r0, [sp, #0x98]
	adds r0, #0x20
	cmp r1, r0
	bge _08024D7C
	adds r0, r4, #0
	adds r0, #0x30
	ldr r1, [sp, #0xd8]
	adds r0, r1, r0
	ldr r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _08024D7C
_08024D7A:
	adds r7, #1
_08024D7C:
	ldr r2, [r6, #0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08024D9A
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	beq _08024D9A
	movs r2, #1
	add sl, r2
_08024D9A:
	adds r0, r4, #0
	adds r0, #0x30
	ldr r4, [sp, #0xd8]
	adds r0, r4, r0
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08024DB2
	movs r0, #1
	add r9, r0
_08024DB2:
	str r3, [sp, #0xe0]
	bl sub_0800CF80
	ldr r3, [sp, #0xe0]
	cmp r0, #0
	beq _08024DC2
	movs r1, #0
	mov r9, r1
_08024DC2:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r6, r6, r2
	ldr r4, [sp, #0xd8]
	adds r4, r4, r2
	str r4, [sp, #0xd8]
	adds r3, #1
_08024DD0:
	str r3, [sp, #0xe0]
	bl sub_08002164
	ldr r3, [sp, #0xe0]
	cmp r3, r0
	bhs _08024DDE
	b _08024C64
_08024DDE:
	bl sub_08002164
	cmp r7, r0
	bne _08024E18
	bl sub_08002164
	cmp sl, r0
	beq _08024E18
	ldr r7, [sp, #0xa4]
	cmp r7, #0
	beq _08024DFA
	ldr r0, [sp, #0xc8]
	cmp r0, #0
	beq _08024E10
_08024DFA:
	mov r1, sl
	cmp r1, #0
	bne _08024E1C
	bl sub_08002164
	cmp r9, r0
	beq _08024E1C
	ldr r2, [sp, #0xa8]
	adds r2, #1
	str r2, [sp, #0xa8]
	b _08024E1C
_08024E10:
	ldr r3, [sp, #0xa8]
	adds r3, #1
	str r3, [sp, #0xa8]
	b _08024E1C
_08024E18:
	movs r4, #0
	str r4, [sp, #0xa8]
_08024E1C:
	ldr r7, [sp, #0xa8]
	cmp r7, #2
	bls _08024E6A
	ldr r4, _08024E54
	ldr r1, [r4, #0]
	ldr r2, [sp, #0x84]
	ldrh r0, [r2, #4]
	str r0, [r1, #0x40]
	ldr r1, _08024E58
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xa
	bne _08024E60
	adds r0, r1, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x10
	bne _08024E60
	bl sub_0800CE30
	cmp r0, #0
	beq _08024E60
	ldr r1, [r4, #0]
	movs r0, #0x12
	str r0, [r1, #0x40]
	b _08024E60
	.2byte 0x0000
_08024E54: .4byte gUnk_03005CF4
_08024E58: .4byte gUnk_03003170
_08024E5C:
	bl sub_080003F0
_08024E60:
	bl sub_08067DC8
	cmp r0, #0
	beq _08024E5C
	b _08024F6A
_08024E6A:
	ldr r3, [sp, #0xb8]
	mov r9, r3
	movs r4, #1
	mov sl, r4
	str r4, [sp, #0]
	add r0, sp, #0x44
	mov r1, r9
	add r2, sp, #0x78
	mov r3, sp
	adds r3, #0x7a
	bl sub_08065370
	bl sub_0800CD34
	cmp r0, #0
	bne _08024F52
	bl sub_0800CC98
	cmp r0, #0
	bne _08024F52
	bl sub_0800CCCC
	cmp r0, #0
	bne _08024F52
	bl sub_0800CD8C
	adds r7, r0, #0
	cmp r7, #0
	bne _08024F52
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, [sp, #0x8c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x90]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	add r4, sp, #0x7c
	mov r5, sp
	adds r5, #0x7e
	movs r2, #0x30
	str r2, [sp, #0]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, _08024F08
	ldr r0, [r0, #0]
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _08024F52
	ldr r7, [sp, #0xb8]
	cmp r7, #2
	beq _08024F0C
	cmp r7, #6
	beq _08024F30
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	add r4, sp, #0x78
	ldrh r3, [r4, #0]
	str r6, [sp, #0]
	add r2, sp, #0x60
	str r2, [sp, #4]
	ldr r2, [sp, #0x4c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
	str r2, [sp, #0xc]
	mov r2, r9
	b _08024F4E
	.2byte 0x0000
_08024F08: .4byte gUnk_03002344
_08024F0C:
	movs r7, #0
	ldrsh r0, [r4, r7]
	adds r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	add r4, sp, #0x78
	ldrh r3, [r4, #0]
	str r6, [sp, #0]
	add r2, sp, #0x60
	str r2, [sp, #4]
	ldr r2, [sp, #0x4c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
	str r2, [sp, #0xc]
	movs r2, #2
	bl sub_08007870
	b _08024F52
_08024F30:
	movs r7, #0
	ldrsh r0, [r4, r7]
	subs r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	add r4, sp, #0x78
	ldrh r3, [r4, #0]
	str r6, [sp, #0]
	add r2, sp, #0x60
	str r2, [sp, #4]
	ldr r2, [sp, #0x4c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
	str r2, [sp, #0xc]
	movs r2, #6
_08024F4E:
	bl sub_08007870
_08024F52:
	bl sub_080003F0
_08024F56:
	ldr r0, _08024F84
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08024F6A
	bl _08024772
_08024F6A:
	ldr r0, _08024F84
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08024F7C
	b _080256F6
_08024F7C:
	movs r0, #0x24
	bl sub_0805865C
	b _080256F6
_08024F84: .4byte gUnk_03005CF4
_08024F88:
	ldr r0, _08024FA8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x13
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08025022
	lsrs r0, r1, #0x14
	ands r0, r2
	cmp r0, #0
	bne _08025022
	movs r5, #1
	b _08024FB0
	.2byte 0x0000
_08024FA8: .4byte gUnk_03005CF4
_08024FAC:
	bl sub_080003F0
_08024FB0:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08024FAC
	bl sub_080021A8
	cmp r0, #0
	beq _08024FC4
	bl _080257B4
_08024FC4:
	bl sub_0800CDC0
	cmp r0, #0
	beq _08025006
	movs r7, #0
	movs r3, #0
	ldr r4, _08024FD4
	b _08024FF0
_08024FD4: .4byte gUnk_03003D10
_08024FD8:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08024FEE
	adds r7, #1
_08024FEE:
	adds r3, #1
_08024FF0:
	str r3, [sp, #0xe0]
	bl sub_08002164
	ldr r3, [sp, #0xe0]
	cmp r3, r0
	blo _08024FD8
	bl sub_08002164
	cmp r7, r0
	bne _08025006
	b _0802571C
_08025006:
	bl sub_080003F0
	ldr r0, _0802505C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x13
	ands r0, r5
	cmp r0, #0
	bne _08025022
	lsrs r0, r1, #0x14
	ands r0, r5
	cmp r0, #0
	beq _08024FB0
_08025022:
	movs r7, #0x10
	str r7, [sp, #0x94]
	movs r0, #0xc
	str r0, [sp, #0x98]
	ldr r0, _0802505C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802503C
	b _080255FE
_0802503C:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08025046
	b _080255EC
_08025046:
	ldr r1, [sp, #0xa4]
	cmp r1, #0
	bne _08025070
	ldr r2, [sp, #0xc8]
	cmp r2, #0
	beq _08025060
	movs r0, #0x3e
	bl sub_0805865C
	b _080255EC
	.2byte 0x0000
_0802505C: .4byte gUnk_03005CF4
_08025060:
	movs r0, #0x3e
	movs r1, #0x63
	movs r2, #0x40
	bl sub_08058B74
	bl sub_0800D000
	b _080255EC
_08025070:
	movs r0, #0x5d
	bl sub_0805865C
	bl sub_0800CDC0
	cmp r0, #0
	beq _0802509C
	bl sub_0800CDAC
	ldr r0, _08025098
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	movs r1, #0
	movs r2, #1
	bl sub_0800A34C
	bl sub_0800CD9C
	b _080255EC
	.2byte 0x0000
_08025098: .4byte gUnk_03003170
_0802509C:
	ldr r0, _080250AC
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	movs r1, #0
	movs r2, #1
	bl sub_0800A34C
	b _080255EC
_080250AC: .4byte gUnk_03003170
_080250B0:
	bl sub_080003F0
_080250B4:
	bl sub_0800CDF8
	cmp r0, #0
	bne _080250B0
	bl sub_080021A8
	cmp r0, #0
	beq _080250C6
	b _080257B4
_080250C6:
	bl sub_08002204
	cmp r0, #0
	bne _080250D0
	b _080252B6
_080250D0:
	movs r3, #0
	mov r9, r3
	mov sl, r3
	movs r7, #0
	movs r4, #0
	str r4, [sp, #0xd4]
	ldr r6, _080250E0
	b _08025246
_080250E0: .4byte gUnk_03003E28
_080250E4:
	add r4, sp, #0x7c
	ldr r2, _0802514C
	ldr r1, [r6, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	strh r0, [r4, #0]
	mov r5, sp
	adds r5, #0x7e
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	strh r0, [r5, #0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _08025108
	movs r0, #0
	strh r0, [r4, #0]
_08025108:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08025114
	movs r0, #0
	strh r0, [r5, #0]
_08025114:
	str r2, [sp, #0xdc]
	str r3, [sp, #0xe0]
	bl sub_0800CB9C
	ldr r2, [sp, #0xdc]
	ldr r3, [sp, #0xe0]
	cmp r0, #0
	beq _080251B8
	bl sub_0800CF80
	ldr r2, [sp, #0xdc]
	ldr r3, [sp, #0xe0]
	cmp r0, #0
	beq _08025150
	ldr r1, [r6, #0]
	ldrb r0, [r1, #7]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08025144
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1a
	adds r4, r2, #0
	cmp r0, #0
	bne _080251FC
_08025144:
	adds r7, #1
	adds r4, r2, #0
	b _080251FC
	.2byte 0x0000
_0802514C: .4byte gUnk_03003CE0
_08025150:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #0x8c]
	subs r1, r0, r4
	cmp r1, #0
	bge _0802515E
	negs r1, r1
_0802515E:
	ldr r0, [sp, #0x94]
	adds r0, #0x20
	cmp r1, r0
	bge _0802517E
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r4, [sp, #0x90]
	subs r1, r0, r4
	cmp r1, #0
	bge _08025174
	negs r1, r1
_08025174:
	ldr r0, [sp, #0x98]
	adds r0, #0x20
	adds r4, r2, #0
	cmp r1, r0
	blt _08025190
_0802517E:
	ldr r0, [r6, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	ldr r4, _080251B4
	cmp r0, #0
	beq _08025210
_08025190:
	ldr r2, [r6, #0]
	ldrb r0, [r2, #7]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _080251FA
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08025210
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	beq _080251FC
	b _080251FA
_080251B4: .4byte gUnk_03003CE0
_080251B8:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #0x8c]
	subs r1, r0, r4
	cmp r1, #0
	bge _080251C6
	negs r1, r1
_080251C6:
	ldr r0, [sp, #0x94]
	adds r0, #0x20
	adds r4, r2, #0
	cmp r1, r0
	bge _080251FC
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0x90]
	subs r1, r0, r2
	cmp r1, #0
	bge _080251DE
	negs r1, r1
_080251DE:
	ldr r0, [sp, #0x98]
	adds r0, #0x20
	cmp r1, r0
	bge _080251FC
	adds r0, r4, #0
	adds r0, #0x30
	ldr r1, [sp, #0xd4]
	adds r0, r1, r0
	ldr r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _080251FC
_080251FA:
	adds r7, #1
_080251FC:
	ldr r0, [r6, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08025210
	movs r2, #1
	add sl, r2
_08025210:
	adds r0, r4, #0
	adds r0, #0x30
	ldr r4, [sp, #0xd4]
	adds r0, r4, r0
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08025228
	movs r0, #1
	add r9, r0
_08025228:
	str r3, [sp, #0xe0]
	bl sub_0800CF80
	ldr r3, [sp, #0xe0]
	cmp r0, #0
	beq _08025238
	movs r1, #0
	mov r9, r1
_08025238:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r6, r6, r2
	ldr r4, [sp, #0xd4]
	adds r4, r4, r2
	str r4, [sp, #0xd4]
	adds r3, #1
_08025246:
	str r3, [sp, #0xe0]
	bl sub_08002164
	ldr r3, [sp, #0xe0]
	cmp r3, r0
	bhs _08025254
	b _080250E4
_08025254:
	bl sub_08002164
	cmp r7, r0
	bne _0802528E
	bl sub_08002164
	cmp sl, r0
	beq _0802528E
	ldr r7, [sp, #0xa4]
	cmp r7, #0
	beq _08025270
	ldr r0, [sp, #0xc8]
	cmp r0, #0
	beq _08025286
_08025270:
	mov r1, sl
	cmp r1, #0
	bne _08025292
	bl sub_08002164
	cmp r9, r0
	beq _08025292
	ldr r2, [sp, #0xa8]
	adds r2, #1
	str r2, [sp, #0xa8]
	b _08025292
_08025286:
	ldr r3, [sp, #0xa8]
	adds r3, #1
	str r3, [sp, #0xa8]
	b _08025292
_0802528E:
	movs r4, #0
	str r4, [sp, #0xa8]
_08025292:
	ldr r7, [sp, #0xa8]
	cmp r7, #2
	bls _080252B6
	ldr r0, _080252A4
	ldr r1, [r0, #0]
	ldr r2, [sp, #0x84]
	ldrh r0, [r2, #4]
	str r0, [r1, #0x40]
	b _080252AC
_080252A4: .4byte gUnk_03005CF4
_080252A8:
	bl sub_080003F0
_080252AC:
	bl sub_08067DC8
	cmp r0, #0
	beq _080252A8
	b _080255FE
_080252B6:
	add r5, sp, #0x7c
	mov r7, r8
	adds r7, #0x8c
	ldr r0, [r7, #0]
	asrs r0, r0, #8
	strh r0, [r5, #0]
	mov r4, sp
	adds r4, #0x7e
	mov r6, r8
	adds r6, #0x90
	ldr r0, [r6, #0]
	asrs r0, r0, #8
	strh r0, [r4, #0]
	bl sub_08058DB0
	cmp r0, #0
	beq _080252DA
	b _08025470
_080252DA:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080252E4
	b _08025470
_080252E4:
	bl sub_0806569C
	cmp r0, #0
	beq _080252EE
	b _08025470
_080252EE:
	mov r3, r8
	ldrh r0, [r3, #0x20]
	cmp r0, #0xe
	bne _080252F8
	b _08025470
_080252F8:
	add r1, sp, #0x7c
	movs r4, #0
	ldrsh r0, [r1, r4]
	ldr r2, [sp, #0x8c]
	subs r0, r0, r2
	cmp r0, #0
	bge _08025308
	negs r0, r0
_08025308:
	ldr r3, [sp, #0x94]
	cmp r0, r3
	blt _08025310
	b _08025470
_08025310:
	movs r1, #0x7e
	add r1, sp
	movs r4, #0
	ldrsh r0, [r1, r4]
	ldr r2, [sp, #0x90]
	subs r0, r0, r2
	cmp r0, #0
	bge _08025322
	negs r0, r0
_08025322:
	ldr r3, [sp, #0x98]
	cmp r0, r3
	blt _0802532A
	b _08025470
_0802532A:
	ldr r0, [r7, #0]
	ldr r1, [r6, #0]
	movs r2, #0xa4
	lsls r2, r2, #1
	add r2, r8
	ldr r2, [r2, #0]
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	bl sub_0805D37C
	cmp r0, #0
	beq _08025346
	b _080254A2
_08025346:
	mov r4, r8
	ldrh r0, [r4, #0x20]
	subs r0, #2
	cmp r0, #0xc
	bhi _08025394
	lsls r0, r0, #2
	ldr r1, _0802535C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0802535C: .4byte _08025360
_08025360:
	.4byte _080254A2
_08025364: .4byte _08025394
_08025368: .4byte _080254A2
_0802536C: .4byte _080254A2
_08025370: .4byte _08025394
_08025374: .4byte _080254A2
_08025378: .4byte _080254A2
_0802537C: .4byte _080254A2
_08025380: .4byte _080254A2
_08025384: .4byte _080254A2
_08025388: .4byte _080254A2
_0802538C: .4byte _08025394
_08025390: .4byte _080254A2
_08025394:
	mov r7, r8
	ldr r1, [r7, #0x30]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0802541C
	ldr r0, [sp, #0xb0]
	cmp r0, #0
	beq _080253B2
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r1, r0
	str r1, [r7, #0x30]
	b _080253BC
_080253B2:
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r1, r0
	mov r2, r8
	str r1, [r2, #0x30]
_080253BC:
	bl sub_0805F184
	cmp r0, #0
	bne _080253E0
	ldr r4, [sp, #0x88]
	adds r4, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
_080253E0:
	mov r3, r8
	ldrh r1, [r3, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802540C
	ldr r0, [r3, #0x30]
	ldr r1, _08025418
	orrs r0, r1
	str r0, [r3, #0x30]
	bl sub_08067D74
	mov r1, r8
	adds r1, #0xd8
	movs r0, #0
	str r0, [r1, #0]
	mov r4, r8
	strh r0, [r4, #0x20]
	strh r0, [r4, #0x26]
	strh r0, [r4, #0x24]
	subs r1, #0xa
	strh r0, [r1, #0]
_0802540C:
	movs r7, #1
	str r7, [sp, #0xb4]
	movs r0, #0
	str r0, [sp, #0xac]
	b _080254A2
	.2byte 0x0000
_08025418: .4byte 0x00000403
_0802541C:
	movs r0, #1
	orrs r1, r0
	mov r2, r8
	str r1, [r2, #0x30]
	movs r0, #0
	strh r0, [r2, #0x20]
	ldr r0, [sp, #0xac]
	adds r3, r0, #0
	adds r3, #1
	str r3, [sp, #0xac]
	cmp r0, #0x3c
	bls _080254A2
	ldr r4, [sp, #0xa8]
	cmp r4, #0
	bne _080254A2
	bl sub_08058DB0
	cmp r0, #0
	bne _080254A2
	ldr r0, _08025464
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080254A2
	mov r7, r8
	ldr r0, [r7, #0x30]
	ldr r1, _08025468
	ands r0, r1
	str r0, [r7, #0x30]
	ldr r1, _0802546C
	ldr r0, [sp, #0xb0]
	bl sub_08057328
	b _080254A2
	.2byte 0x0000
_08025464: .4byte gUnk_03001324
_08025468: .4byte 0xFFFFFBFF
_0802546C: .4byte sub_08024538
_08025470:
	ldr r0, [sp, #0xb4]
	cmp r0, #0
	beq _08025482
	movs r1, #0
	str r1, [sp, #0xb4]
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
_08025482:
	ldr r2, [sp, #0xb0]
	cmp r2, #0
	beq _08025498
	mov r3, r8
	ldr r0, [r3, #0x30]
	ldr r1, _08025494
	ands r0, r1
	str r0, [r3, #0x30]
	b _080254A2
_08025494: .4byte 0xFEFFFFFF
_08025498:
	mov r4, r8
	ldr r0, [r4, #0x30]
	ldr r1, _080255B4
	ands r0, r1
	str r0, [r4, #0x30]
_080254A2:
	movs r7, #1
	mov r9, r7
	mov r0, r9
	str r0, [sp, #0]
	add r0, sp, #0x10
	ldr r1, [sp, #0xa4]
	add r2, sp, #0x78
	mov r3, sp
	adds r3, #0x7a
	bl sub_08065370
	add r6, sp, #0x80
	mov r3, sp
	adds r3, #0x82
	mov r1, r9
	str r1, [sp, #0]
	add r0, sp, #0x44
	movs r1, #8
	adds r2, r6, #0
	bl sub_08065370
	bl sub_0800CD34
	cmp r0, #0
	beq _080254D6
	b _080255E4
_080254D6:
	bl sub_0800CC98
	cmp r0, #0
	beq _080254E0
	b _080255E4
_080254E0:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080255E4
	bl sub_0800CD8C
	adds r4, r0, #0
	cmp r4, #0
	bne _080255E4
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	movs r2, #0
	bl sub_0800BC44
	ldr r2, [sp, #0x8c]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xd0]
	ldr r3, [sp, #0x90]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	add r5, sp, #0x7c
	mov r7, sp
	adds r7, #0x7e
	movs r0, #0x30
	str r0, [sp, #0]
	str r4, [sp, #4]
	ldr r0, [sp, #0xd0]
	mov r1, sl
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_0800BC08
	ldr r0, _080255B8
	ldr r0, [r0, #0]
	mov r1, r9
	ands r0, r1
	cmp r0, #0
	beq _0802554E
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldrh r3, [r6, #0]
	str r4, [sp, #0]
	add r2, sp, #0x60
	str r2, [sp, #4]
	ldr r2, [sp, #0x4c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
	str r2, [sp, #0xc]
	movs r2, #8
	bl sub_08007870
_0802554E:
	ldr r0, [sp, #0xbc]
	cmp r0, #0
	beq _08025568
	ldr r1, [sp, #0xa4]
	lsls r0, r1, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	movs r2, #0
	str r2, [sp, #0xbc]
_08025568:
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r3, #0x30
	str r3, [sp, #0]
	str r4, [sp, #4]
	ldr r0, [sp, #0xd0]
	mov r1, sl
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_0800BC08
	ldr r4, [sp, #0xcc]
	ldrh r0, [r4, #0xe]
	cmp r0, #0
	beq _080255BC
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r7, r2]
	add r4, sp, #0x78
	ldrh r3, [r4, #0]
	str r6, [sp, #0]
	add r7, sp, #0x2c
	str r7, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xa4]
	bl sub_08008E74
	b _080255E8
	.2byte 0x0000
_080255B4: .4byte 0xFF7FFFFF
_080255B8: .4byte gUnk_03002344
_080255BC:
	add r2, sp, #0x7c
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r4, #0x7e
	add r4, sp
	movs r3, #0
	ldrsh r1, [r4, r3]
	add r7, sp, #0x78
	ldrh r3, [r7, #0]
	str r6, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xa4]
	bl sub_08007870
	b _080255E8
_080255E4:
	movs r3, #1
	str r3, [sp, #0xbc]
_080255E8:
	bl sub_080003F0
_080255EC:
	ldr r0, _080256BC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080255FE
	b _080250B4
_080255FE:
	ldr r0, _080256BC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08025614
	movs r0, #0x24
	bl sub_0805865C
_08025614:
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
	movs r4, #9
	str r4, [sp, #0xa8]
	add r7, sp, #0x78
	ldr r0, [sp, #0x8c]
	lsls r0, r0, #0x10
	mov r9, r0
_08025628:
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	ldr r1, [sp, #0xa4]
	adds r2, r7, #0
	mov r3, sp
	adds r3, #0x7a
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	bne _080256E0
	bl sub_0800CCCC
	adds r6, r0, #0
	cmp r6, #0
	bne _080256E0
	ldr r1, [sp, #0xbc]
	cmp r1, #0
	beq _08025666
	ldr r2, [sp, #0xa4]
	lsls r0, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	movs r3, #0
	str r3, [sp, #0xbc]
_08025666:
	ldr r4, [sp, #0x90]
	lsls r1, r4, #0x10
	add r4, sp, #0x7c
	mov r5, sp
	adds r5, #0x7e
	movs r0, #0x30
	str r0, [sp, #0]
	str r6, [sp, #4]
	mov r2, r9
	asrs r0, r2, #0x10
	asrs r1, r1, #0x10
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x90]
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r3, [sp, #0xcc]
	ldrh r0, [r3, #0xe]
	cmp r0, #0
	beq _080256C0
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r7, #0]
	str r6, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xa4]
	bl sub_08008E74
	b _080256E4
	.2byte 0x0000
_080256BC: .4byte gUnk_03005CF4
_080256C0:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldrh r3, [r7, #0]
	str r6, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xa4]
	bl sub_08007870
	b _080256E4
_080256E0:
	movs r0, #1
	str r0, [sp, #0xbc]
_080256E4:
	bl sub_080003F0
	ldr r1, [sp, #0xa8]
	subs r1, #1
	str r1, [sp, #0xa8]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _08025628
_080256F6:
	ldr r2, [sp, #0x84]
	ldrh r0, [r2, #6]
	lsls r2, r0, #0x10
	lsrs r1, r2, #0x10
	cmp r1, #0
	beq _08025728
	ldr r0, _0802570C
	ldr r1, [r0, #0]
	lsrs r0, r2, #0x18
	str r0, [r1, #0x44]
	b _0802572E
_0802570C: .4byte gUnk_03005CF4
_08025710:
	movs r1, #0
	movs r0, #0xc
	mov r3, r8
	strh r0, [r3, #0x20]
	strh r1, [r3, #0x22]
	b _080257B4
_0802571C:
	movs r1, #0
	movs r0, #0xc
	mov r4, r8
	strh r0, [r4, #0x20]
	strh r1, [r4, #0x22]
	b _080257B4
_08025728:
	ldr r0, _080257C4
	ldr r0, [r0, #0]
	str r1, [r0, #0x44]
_0802572E:
	ldr r7, [sp, #0xa4]
	cmp r7, #0
	bne _08025756
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	ldr r4, _080257C8
	adds r0, r0, r4
	movs r1, #6
	bl sub_0801E278
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	movs r1, #7
	bl sub_0801E278
_08025756:
	mov r1, r8
	ldr r0, [r1, #0x30]
	ldr r1, _080257CC
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x30]
	ldr r1, _080257D0
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _08025776
	adds r4, r1, #0
_0802576C:
	bl sub_080003F0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0802576C
_08025776:
	bl sub_0800D014
	movs r1, #0
	ldr r6, _080257C4
	movs r5, #0
_08025780:
	movs r2, #0
	lsls r0, r1, #2
	adds r4, r1, #1
	adds r3, r0, r1
_08025788:
	ldr r0, [r6, #0]
	adds r1, r2, r3
	movs r7, #0xe4
	lsls r7, r7, #1
	adds r0, r0, r7
	adds r0, r0, r1
	strb r5, [r0, #0]
	adds r2, #1
	cmp r2, #4
	bls _08025788
	adds r1, r4, #0
	cmp r1, #0x13
	bls _08025780
	bl sub_080003F0
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
	movs r0, #3
	bl sub_08057624
_080257B4:
	add sp, #0xe4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080257C4: .4byte gUnk_03005CF4
_080257C8: .4byte gUnk_03003CE0
_080257CC: .4byte 0xFF7FFFFF
_080257D0: .4byte gUnk_030056FC
	thumb_func_end sub_080245CC
