	thumb_func_start sub_0800D368
sub_0800D368: @ 0x0800D368
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1d8
	adds r7, r0, #0
	add r0, sp, #0x44
	mov sl, r0
	ldr r1, _0800D510
	movs r2, #1
	negs r2, r2
	mov r8, r2
	movs r5, #0
	str r5, [sp, #0]
	movs r2, #0
	mov r3, r8
	bl sub_08065158
	movs r3, #7
	mov r9, r3
	mov r6, r9
	mov r4, sl
	strb r6, [r4, #0x1c]
	movs r6, #8
	strb r6, [r4, #0x1d]
	add r4, sp, #0xac
	ldr r1, _0800D514
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	mov r3, r8
	bl sub_08065158
	mov r0, r9
	strb r0, [r4, #0x1c]
	strb r6, [r4, #0x1d]
	movs r1, #0xfa
	add r1, sp
	strh r5, [r1, #0]
	add r6, sp, #0xf8
	strh r5, [r6, #0]
	add r4, sp, #0x78
	ldr r1, _0800D518
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	mov r3, r8
	bl sub_08065158
	bl sub_080653CC
	str r0, [sp, #0x178]
	ldrh r0, [r7, #0]
	bl sub_0807A064
	adds r0, r7, #0
	adds r0, #0xb4
	strh r5, [r0, #0]
	subs r0, #2
	strh r5, [r0, #0]
	subs r0, #2
	strh r5, [r0, #0]
	adds r1, r7, #0
	adds r1, #0xb8
	ldr r0, _0800D51C
	strh r0, [r1, #0]
	adds r0, r7, #0
	adds r0, #0xd8
	str r5, [r0, #0]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #1
	negs r0, r0
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x68
	movs r0, #1
	strb r0, [r1, #0]
	movs r3, #0
	str r3, [sp, #0x118]
	str r5, [sp, #0x130]
	movs r0, #3
	str r0, [sp, #0x120]
	movs r1, #0x64
	str r1, [sp, #0x144]
	movs r2, #0
	str r2, [sp, #0x14c]
	mov r2, sp
	adds r2, #0xfe
	strh r3, [r2, #0]
	add r1, sp, #0xfc
	add r5, sp, #0x118
	ldrh r5, [r5, #0]
	strh r5, [r1, #0]
	movs r0, #0
	str r0, [sp, #0x138]
	movs r3, #1
	str r3, [sp, #0x18c]
	movs r5, #0
	str r5, [sp, #0x198]
	str r0, [sp, #0x15c]
	movs r3, #0
	str r3, [sp, #0x1a0]
	str r5, [sp, #0x19c]
	str r0, [sp, #0x150]
	str r3, [sp, #0x1a4]
	str r5, [sp, #0x148]
	movs r0, #0x64
	str r0, [sp, #0x16c]
	ldrb r3, [r7, #0x1c]
	str r3, [sp, #0x168]
	ldr r5, _0800D51C
	str r5, [sp, #0x194]
	movs r0, #0
	str r0, [sp, #0x170]
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0, #0]
	str r0, [sp, #0x12c]
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r0, [r0, #0]
	str r0, [sp, #0x180]
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	beq _0800D476
	adds r0, r7, #0
	bl sub_0801E024
	bl sub_0801DD9C
_0800D476:
	adds r5, r7, #0
	adds r5, #0x62
	ldrh r0, [r5, #0]
	adds r4, r7, #0
	adds r4, #0xc4
	strh r0, [r4, #0]
	adds r3, r7, #0
	adds r3, #0x60
	ldrh r0, [r3, #0]
	adds r2, r7, #0
	adds r2, #0xc2
	strh r0, [r2, #0]
	adds r1, r7, #0
	adds r1, #0xdc
	ldrh r0, [r7, #0]
	lsls r0, r0, #0x18
	str r0, [r1, #0]
	movs r6, #0
	str r6, [sp, #0x128]
	str r5, [sp, #0x1b4]
	str r4, [sp, #0x1bc]
	str r3, [sp, #0x1b0]
	str r2, [sp, #0x1b8]
	str r1, [sp, #0x1c8]
	movs r1, #0
	adds r0, r7, #0
	adds r0, #0xe4
_0800D4AC:
	stm r0!, {r1}
	ldr r2, [sp, #0x128]
	adds r2, #1
	str r2, [sp, #0x128]
	cmp r2, #4
	bls _0800D4AC
	movs r3, #0x8a
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r1, #0
	strh r1, [r0, #0]
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	beq _0800D528
	movs r0, #1
	bl sub_08060DB0
	movs r0, #1
	bl sub_08061688
	adds r0, r7, #0
	bl sub_08015E00
	bl sub_080020F4
	ldr r1, _0800D520
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r7, #0x30]
	bl sub_0800D2F4
	bl sub_08067B50
	bl sub_08065DAC
	bl sub_08065D50
	b _0800D528
	.2byte 0x0000
_0800D510: .4byte 0x0005008C
_0800D514: .4byte 0x0005008B
_0800D518: .4byte 0x00050010
_0800D51C: .4byte 0x0000FFFF
_0800D520: .4byte gUnk_03003CE0
_0800D524:
	bl sub_080003F0
_0800D528:
	ldrb r0, [r7, #2]
	cmp r0, #0
	beq _0800D524
	ldr r0, _0800D548
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800D524
	ldrh r0, [r7, #0]
	movs r1, #0x78
	bl sub_08065838
	bl _0801355A
_0800D548: .4byte gUnk_03005CF4
_0800D54C:
	mov r4, sp
	adds r4, #0xf0
	str r4, [sp, #0x1c0]
	mov r5, sp
	adds r5, #0xf2
	str r5, [sp, #0x1c4]
	b _0800D55E
_0800D55A:
	bl sub_080003F0
_0800D55E:
	bl sub_0800CD34
	cmp r0, #0
	bne _0800D55A
	ldr r6, [sp, #0x168]
	ldr r0, [sp, #0x16c]
	cmp r6, r0
	beq _0800D5A4
	str r0, [sp, #0x168]
	movs r1, #1
	str r1, [sp, #0x128]
	adds r2, r7, #0
	adds r2, #0xac
	adds r3, r2, #0
_0800D57A:
	ldr r0, [r3, #0]
	ldr r4, [sp, #0x128]
	lsls r1, r4, #2
	adds r1, r1, r0
	subs r0, r1, #4
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	adds r4, #1
	str r4, [sp, #0x128]
	cmp r4, #0x1f
	bls _0800D57A
	ldr r1, [r2, #0]
	ldr r5, [sp, #0x180]
	ldrh r0, [r5, #0]
	lsrs r0, r0, #4
	strh r0, [r1, #0]
	ldr r1, [r2, #0]
	ldrh r0, [r5, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	strh r0, [r1, #2]
_0800D5A4:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	bne _0800D5AE
	bl _0800E48C
_0800D5AE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0800D5CA
	movs r0, #1
	strh r0, [r7, #0x18]
	movs r0, #2
	strh r0, [r7, #0x1a]
	ldr r0, [sp, #0x174]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x174]
	b _0800D5D4
_0800D5CA:
	movs r0, #0
	strh r0, [r7, #0x18]
	strh r0, [r7, #0x1a]
	movs r6, #0
	str r6, [sp, #0x174]
_0800D5D4:
	bl sub_0800CD8C
	cmp r0, #0
	bne _0800D5E0
	bl sub_0801DD9C
_0800D5E0:
	bl sub_0800CC98
	movs r1, #0x8c
	adds r1, r1, r7
	mov r9, r1
	movs r2, #0x90
	adds r2, r2, r7
	mov sl, r2
	cmp r0, #0
	bne _0800D6EA
	bl sub_08058DB0
	cmp r0, #0
	bne _0800D6EA
	adds r0, r7, #0
	bl sub_08013C3C
	ldr r3, [sp, #0x144]
	lsls r1, r3, #0x10
	movs r4, #0x80
	lsls r4, r4, #9
	adds r1, r1, r4
	adds r2, r7, #0
	adds r2, #0x5e
	lsrs r5, r1, #0x10
	str r5, [sp, #0x144]
	asrs r1, r1, #0x10
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	blt _0800D622
	ldrh r2, [r2, #0]
	str r2, [sp, #0x144]
_0800D622:
	mov r1, r9
	ldr r0, [r1, #0]
	mov r2, sl
	ldr r1, [r2, #0]
	ldr r3, [sp, #0x180]
	ldrb r2, [r3, #4]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	bl sub_0805D37C
	ldr r1, _0800D654
	ldr r1, [r1, #0]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #2
	add r2, sp, #0x100
	adds r1, r1, r2
	str r0, [r1, #0]
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _0800D658
	str r0, [sp, #0x184]
	movs r4, #0
	str r4, [sp, #0x188]
	b _0800D67A
_0800D654: .4byte gUnk_03002344
_0800D658:
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _0800D666
	str r0, [sp, #0x184]
	movs r5, #0
	str r5, [sp, #0x188]
	b _0800D67A
_0800D666:
	ldr r0, [sp, #0x188]
	adds r6, r0, #0
	adds r6, #1
	str r6, [sp, #0x188]
	cmp r0, #2
	ble _0800D67A
	movs r0, #0
	str r0, [sp, #0x184]
	movs r1, #0
	str r1, [sp, #0x188]
_0800D67A:
	bl sub_0801DF8C
	cmp r0, #0
	beq _0800D686
	movs r2, #0
	str r2, [sp, #0x184]
_0800D686:
	ldr r0, _0800D6D0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xd
	bne _0800D69C
	ldr r0, _0800D6D4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0800D69C
	movs r3, #0
	str r3, [sp, #0x184]
_0800D69C:
	ldr r4, [sp, #0x184]
	cmp r4, #0
	beq _0800D6D8
	bl sub_0805F184
	cmp r0, #0
	bne _0800D6EA
	bl sub_0806569C
	cmp r0, #0
	bne _0800D6EA
	bl sub_0800CE68
	cmp r0, #0
	bne _0800D6EA
	adds r2, r4, #0
	adds r2, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0xf
	movs r1, #0x12
	bl sub_0805FFBC
	movs r5, #0
	str r5, [sp, #0x18c]
	b _0800D6EA
_0800D6D0: .4byte gUnk_03003170
_0800D6D4: .4byte gUnk_030056FC
_0800D6D8:
	ldr r6, [sp, #0x18c]
	cmp r6, #0
	bne _0800D6EA
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
	movs r0, #1
	str r0, [sp, #0x18c]
_0800D6EA:
	ldr r1, [r7, #0x30]
	movs r6, #1
	adds r5, r1, #0
	ands r5, r6
	cmp r5, #0
	beq _0800D730
	movs r0, #0
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
	strh r0, [r7, #0x16]
	movs r1, #0x9b
	lsls r1, r1, #1
	adds r4, r7, r1
	ldrh r1, [r4, #0]
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0, #0]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldr r0, _0800D72C
	ldrh r2, [r0, #0]
	movs r0, #0xf0
	ands r0, r2
	strh r0, [r1, #0]
	ldrh r0, [r4, #0]
	adds r0, #1
	movs r1, #5
	bl __modsi3
	strh r0, [r4, #0]
	b _0800D802
	.2byte 0x0000
_0800D72C: .4byte gUnk_0300130C
_0800D730:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0800D784
	mov r3, r9
	ldr r0, [r3, #0]
	mov r4, sl
	ldr r1, [r4, #0]
	adds r2, r7, #0
	adds r2, #0x9c
	ldr r2, [r2, #0]
	adds r3, r7, #0
	adds r3, #0xa0
	ldr r3, [r3, #0]
	movs r4, #8
	str r4, [sp, #0]
	bl sub_08016C88
	strh r0, [r7, #0x12]
	strh r5, [r7, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800D802
	ldr r0, [r7, #0x30]
	movs r1, #0x25
	negs r1, r1
	ands r0, r1
	str r0, [r7, #0x30]
	bl sub_080020F4
	ldr r2, _0800D780
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	orrs r0, r6
	str r0, [r1, #0]
	b _0800D802
_0800D780: .4byte gUnk_03003CE0
_0800D784:
	movs r5, #0x9b
	lsls r5, r5, #1
	adds r5, r5, r7
	mov r8, r5
	ldrh r0, [r5, #0]
	movs r6, #0x9e
	lsls r6, r6, #1
	adds r5, r7, r6
	ldr r1, [r5, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r6, _0800D7F0
	ldrh r1, [r6, #0]
	movs r4, #0xf0
	ands r4, r1
	strh r4, [r0, #0]
	mov r1, r8
	ldrh r0, [r1, #0]
	adds r0, #1
	movs r1, #5
	bl __modsi3
	mov r2, r8
	strh r0, [r2, #0]
	cmp r4, #0
	beq _0800D7D4
	movs r3, #0
	str r3, [sp, #0x128]
	adds r3, r6, #0
	ldr r2, [r5, #0]
_0800D7C0:
	ldrh r0, [r3, #0]
	ldrh r1, [r2, #0]
	orrs r0, r1
	strh r0, [r3, #0]
	adds r2, #2
	ldr r4, [sp, #0x128]
	adds r4, #1
	str r4, [sp, #0x128]
	cmp r4, #4
	bls _0800D7C0
_0800D7D4:
	bl sub_0801AC78
	cmp r0, #0
	beq _0800D7FC
	ldr r0, _0800D7F0
	ldrh r0, [r0, #0]
	strh r0, [r7, #0x12]
	ldr r0, _0800D7F4
	ldrh r0, [r0, #0]
	strh r0, [r7, #0x14]
	ldr r0, _0800D7F8
	ldrh r0, [r0, #0]
	b _0800D800
	.2byte 0x0000
_0800D7F0: .4byte gUnk_0300130C
_0800D7F4: .4byte gUnk_03001324
_0800D7F8: .4byte gUnk_03001328
_0800D7FC:
	strh r0, [r7, #0x12]
	strh r0, [r7, #0x14]
_0800D800:
	strh r0, [r7, #0x16]
_0800D802:
	ldr r2, [r7, #0x30]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _0800D820
	ldrh r1, [r7, #0x18]
	movs r0, #0xc
	orrs r1, r0
	ldrh r0, [r7, #0x14]
	bics r0, r1
	strh r0, [r7, #0x14]
	movs r0, #0x11
	negs r0, r0
	ands r2, r0
	str r2, [r7, #0x30]
_0800D820:
	ldr r2, [r7, #0x30]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0800D83E
	ldrh r1, [r7, #0x1a]
	movs r0, #0xc
	orrs r1, r0
	ldrh r0, [r7, #0x14]
	bics r0, r1
	strh r0, [r7, #0x14]
	ldr r0, _0800D864
	ands r2, r0
	str r2, [r7, #0x30]
_0800D83E:
	mov r5, r9
	ldr r4, [r5, #0]
	mov r6, sl
	ldr r5, [r6, #0]
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800BCA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	beq _0800D868
	cmp r0, #8
	beq _0800D872
	b _0800D89A
	.2byte 0x0000
_0800D864: .4byte 0xFFFEFFFF
_0800D868:
	movs r0, #0
	str r0, [sp, #0x144]
	movs r1, #0
	str r1, [sp, #0x154]
	b _0800D89A
_0800D872:
	ldrh r0, [r7, #0x14]
	ldr r1, _0800D904
	ands r1, r0
	movs r4, #0
	strh r1, [r7, #0x14]
	bl sub_0800D098
	cmp r0, #0
	beq _0800D89A
	ldrh r1, [r7, #0x12]
	ldr r0, _0800D908
	ands r0, r1
	strh r0, [r7, #0x12]
	str r4, [sp, #0]
	ldr r0, [sp, #0x178]
	movs r1, #0x78
	movs r2, #0x3c
	movs r3, #0x21
	bl sub_08065230
_0800D89A:
	ldrh r0, [r7, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0800D8A8
	b _0800DF0A
_0800D8A8:
	bl sub_0805EF90
	cmp r0, #0
	beq _0800D8B2
	b _0800DF0A
_0800D8B2:
	ldrh r1, [r7, #0x14]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _0800D948
	bl sub_0800CE68
	cmp r0, #0
	beq _0800D8CA
	b _0800DF0A
_0800D8CA:
	bl sub_08058DB0
	cmp r0, #0
	beq _0800D8D4
	b _0800DF0A
_0800D8D4:
	ldr r0, [r7, #0x30]
	movs r1, #0x90
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0800D8E2
	b _0800DF0A
_0800D8E2:
	bl sub_0800CCCC
	cmp r0, #0
	beq _0800D910
	ldr r0, _0800D90C
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0800D910
	movs r0, #3
	bl sub_08057B64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x128]
	b _0800D914
	.2byte 0x0000
_0800D904: .4byte 0x0000FFF7
_0800D908: .4byte 0x0000FF0F
_0800D90C: .4byte gUnk_03003170
_0800D910:
	movs r2, #0
	str r2, [sp, #0x128]
_0800D914:
	ldr r0, [sp, #0x128]
	subs r0, #2
	cmp r0, #8
	bhi _0800D91E
	b _0800DF0A
_0800D91E:
	ldr r1, _0800D940
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #8
	bne _0800D936
	adds r0, r1, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x11
	bne _0800D936
	b _0800DF0A
_0800D936:
	ldr r0, _0800D944
	bl sub_08000420
	b _0800DF0A
	.2byte 0x0000
_0800D940: .4byte gUnk_03003170
_0800D944: .4byte 0x00018A92
_0800D948:
	ldr r0, _0800D998
	ldrh r1, [r0, #0]
	ldrh r0, [r7, #0x18]
	ands r0, r1
	cmp r0, #0
	bne _0800D956
	b _0800DAA0
_0800D956:
	ldr r3, [r7, #0x30]
	ldr r0, _0800D99C
	ands r0, r3
	cmp r0, #0
	bne _0800D9C2
	bl sub_0800CE68
	cmp r0, #0
	beq _0800D96A
	b _0800DF0A
_0800D96A:
	bl sub_0800CC98
	cmp r0, #0
	beq _0800D974
	b _0800DF0A
_0800D974:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xc
	bne _0800D97C
	b _0800DF0A
_0800D97C:
	ldr r3, [sp, #0x184]
	cmp r3, #0
	bne _0800D984
	b _0800DF0A
_0800D984:
	adds r0, r3, #0
	bl sub_080686F4
	cmp r0, #0
	bne _0800D9A4
	ldr r0, _0800D9A0
	movs r1, #0x1e
	bl sub_08065A90
	b _0800DF0A
_0800D998: .4byte gUnk_03001324
_0800D99C: .4byte 0x00006001
_0800D9A0: .4byte 0x000003D5
_0800D9A4:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	str r0, [r7, #0x30]
	ldrh r1, [r7, #0x18]
	mvns r1, r1
	ldrh r2, [r7, #0x14]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r7, #0x14]
	ldrh r0, [r7, #0x12]
	ands r1, r0
	strh r1, [r7, #0x12]
	b _0800DF0A
_0800D9C2:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	bne _0800D9CE
	b _0800DF0A
_0800D9CE:
	ldr r2, _0800DA94
	adds r0, r2, #0
	adds r0, #0x8c
	ldrh r1, [r0, #0]
	cmp r1, #2
	bne _0800D9E4
	adds r0, #4
	ldrh r0, [r0, #0]
	cmp r0, #7
	bne _0800D9E4
	b _0800DF0A
_0800D9E4:
	cmp r1, #5
	bne _0800D9F4
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xa
	bne _0800D9F4
	b _0800DF0A
_0800D9F4:
	cmp r1, #8
	bne _0800DA04
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x11
	bne _0800DA04
	b _0800DF0A
_0800DA04:
	cmp r1, #0xd
	bne _0800DA0A
	b _0800DF0A
_0800DA0A:
	cmp r1, #0x13
	bne _0800DA1A
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0800DA1A
	b _0800DF0A
_0800DA1A:
	cmp r1, #0x15
	bne _0800DA30
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0800DA2A
	b _0800DF0A
_0800DA2A:
	cmp r0, #4
	bne _0800DA30
	b _0800DF0A
_0800DA30:
	ldr r0, _0800DA98
	ands r3, r0
	cmp r3, #0
	beq _0800DA3A
	b _0800DF0A
_0800DA3A:
	bl sub_0800CF80
	cmp r0, #0
	beq _0800DA44
	b _0800DF0A
_0800DA44:
	bl sub_08058DB0
	cmp r0, #0
	beq _0800DA4E
	b _0800DF0A
_0800DA4E:
	bl sub_08056E90
	cmp r0, #0
	beq _0800DA58
	b _0800DF0A
_0800DA58:
	bl sub_0800CB9C
	cmp r0, #0
	beq _0800DA6A
	bl sub_0800CDC0
	cmp r0, #0
	beq _0800DA6A
	b _0800DF0A
_0800DA6A:
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0800DA9C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	str r0, [sp, #0x17c]
	movs r1, #1
	bl sub_0805EF84
	movs r0, #0xc
	strh r0, [r7, #0x20]
	movs r0, #7
	strh r0, [r7, #0x22]
	b _0800DF0A
	.2byte 0x0000
_0800DA94: .4byte gUnk_03003170
_0800DA98: .4byte 0x01800401
_0800DA9C: .4byte 0x001404E1
_0800DAA0:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0800DB3C
	ldrh r0, [r7, #0x20]
	cmp r0, #0xc
	bne _0800DAB2
	b _0800DF0A
_0800DAB2:
	bl sub_0800CC98
	cmp r0, #0
	beq _0800DABC
	b _0800DF0A
_0800DABC:
	bl sub_08058DB0
	cmp r0, #0
	beq _0800DAC6
	b _0800DF0A
_0800DAC6:
	bl sub_0800CE68
	cmp r0, #0
	beq _0800DAD0
	b _0800DF0A
_0800DAD0:
	ldr r0, [r7, #0x30]
	movs r1, #0x90
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0800DADE
	b _0800DF0A
_0800DADE:
	bl sub_0800CCCC
	cmp r0, #0
	beq _0800DB04
	ldr r0, _0800DB00
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0800DB04
	movs r0, #3
	bl sub_08057B64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x128]
	b _0800DB08
	.2byte 0x0000
_0800DB00: .4byte gUnk_03003170
_0800DB04:
	movs r4, #0
	str r4, [sp, #0x128]
_0800DB08:
	ldr r0, [sp, #0x128]
	subs r0, #2
	cmp r0, #8
	bhi _0800DB12
	b _0800DF0A
_0800DB12:
	ldr r1, _0800DB34
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #8
	bne _0800DB2A
	adds r0, r1, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x11
	bne _0800DB2A
	b _0800DF0A
_0800DB2A:
	ldr r0, _0800DB38
	bl sub_08000420
	b _0800DF0A
	.2byte 0x0000
_0800DB34: .4byte gUnk_03003170
_0800DB38: .4byte 0x00018A93
_0800DB3C:
	ldrh r1, [r7, #0x16]
	ldrh r0, [r7, #0x1a]
	ands r0, r1
	cmp r0, #0
	bne _0800DB48
	b _0800DC5C
_0800DB48:
	ldr r1, _0800DC18
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xc
	bne _0800DB56
	b _0800DC5C
_0800DB56:
	cmp r0, #0xe
	bne _0800DB5C
	b _0800DC5C
_0800DB5C:
	cmp r0, #0xb
	bne _0800DB6A
	adds r0, r1, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0800DC5C
_0800DB6A:
	ldrh r0, [r7, #0x20]
	cmp r0, #3
	beq _0800DC5C
	cmp r0, #0xe
	beq _0800DC5C
	cmp r0, #0xb
	beq _0800DC5C
	cmp r0, #4
	beq _0800DC5C
	cmp r0, #6
	beq _0800DC5C
	cmp r0, #7
	beq _0800DC5C
	cmp r0, #8
	beq _0800DC5C
	cmp r0, #0xc
	beq _0800DC5C
	ldr r5, [sp, #0x174]
	cmp r5, #5
	bls _0800DC5C
	ldr r0, [r7, #0x30]
	ldr r1, _0800DC1C
	ands r0, r1
	cmp r0, #0
	bne _0800DC5C
	bl sub_08058DB0
	cmp r0, #0
	beq _0800DBA6
	b _0800DF0A
_0800DBA6:
	bl sub_0800CE68
	cmp r0, #0
	beq _0800DBB0
	b _0800DF0A
_0800DBB0:
	bl sub_0800CC98
	cmp r0, #0
	beq _0800DBBA
	b _0800DF0A
_0800DBBA:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xc
	bne _0800DBC2
	b _0800DF0A
_0800DBC2:
	ldr r0, [sp, #0x12c]
	adds r0, #0x54
	ldrh r1, [r0, #0]
	lsls r1, r1, #1
	ldr r0, [sp, #0x12c]
	adds r0, #0x56
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0800DBD8
	b _0800DF0A
_0800DBD8:
	ldr r0, _0800DC20
	ldr r6, [sp, #0x194]
	cmp r6, r0
	beq _0800DBE2
	b _0800DF0A
_0800DBE2:
	ldr r5, _0800DC24
	ldr r1, [r5, #0]
	adds r0, r1, #0
	adds r0, #0x54
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r1, #0x56
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0800DBFA
	b _0800DF0A
_0800DBFA:
	subs r0, #1
	bl sub_0805D548
	adds r4, r0, #0
	bl sub_0801DE60
	cmp r0, #0
	bne _0800DC28
	ldr r0, [r5, #0]
	adds r0, #0x30
	movs r1, #5
	bl sub_0801E0AC
	adds r2, r0, #0
	b _0800DC2A
_0800DC18: .4byte gUnk_03003170
_0800DC1C: .4byte 0x01802404
_0800DC20: .4byte 0x0000FFFF
_0800DC24: .4byte gUnk_030034E0
_0800DC28:
	movs r2, #0
_0800DC2A:
	movs r0, #1
	negs r0, r0
	cmp r4, r0
	bne _0800DC34
	b _0800DF0A
_0800DC34:
	ldr r0, _0800DC58
	lsls r1, r4, #4
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r1, r1, r3
	ldr r0, [r0, #0]
	adds r0, r0, r1
	adds r1, r2, #0
	bl sub_0805BD5C
	cmp r0, #0
	bne _0800DC4E
	b _0800DF0A
_0800DC4E:
	adds r0, r4, #0
	bl sub_0805D580
	b _0800DF0A
	.2byte 0x0000
_0800DC58: .4byte gUnk_030034E0
_0800DC5C:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0800DC66
	b _0800DD6C
_0800DC66:
	bl sub_0800CCCC
	cmp r0, #0
	beq _0800DC8C
	ldr r0, _0800DC88
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0800DC8C
	movs r0, #3
	bl sub_08057B64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x128]
	b _0800DC90
	.2byte 0x0000
_0800DC88: .4byte gUnk_03003170
_0800DC8C:
	movs r4, #0
	str r4, [sp, #0x128]
_0800DC90:
	ldr r1, [r7, #0x30]
	ldr r0, _0800DD64
	ands r0, r1
	cmp r0, #0
	beq _0800DC9C
	b _0800DF0A
_0800DC9C:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xc
	bne _0800DCA4
	b _0800DF0A
_0800DCA4:
	cmp r0, #0xa
	bne _0800DCAA
	b _0800DF0A
_0800DCAA:
	cmp r0, #0xb
	bne _0800DCB0
	b _0800DF0A
_0800DCB0:
	cmp r0, #5
	bne _0800DCB6
	b _0800DF0A
_0800DCB6:
	cmp r0, #3
	bne _0800DCBC
	b _0800DF0A
_0800DCBC:
	cmp r0, #9
	bne _0800DCC2
	b _0800DF0A
_0800DCC2:
	cmp r0, #4
	bne _0800DCC8
	b _0800DF0A
_0800DCC8:
	movs r0, #0x80
	lsls r0, r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq _0800DCD4
	b _0800DF0A
_0800DCD4:
	bl sub_08058DB0
	cmp r0, #0
	beq _0800DCDE
	b _0800DF0A
_0800DCDE:
	bl sub_0800CC98
	cmp r0, #0
	beq _0800DCE8
	b _0800DF0A
_0800DCE8:
	bl sub_0801AAE0
	cmp r0, #0
	bne _0800DCF2
	b _0800DF0A
_0800DCF2:
	bl sub_0800D11C
	cmp r0, #0
	beq _0800DCFC
	b _0800DF0A
_0800DCFC:
	bl sub_0800CE68
	cmp r0, #0
	beq _0800DD06
	b _0800DF0A
_0800DD06:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xe
	bne _0800DD0E
	b _0800DF0A
_0800DD0E:
	bl sub_0800BA6C
	cmp r0, #0
	bne _0800DD18
	b _0800DF0A
_0800DD18:
	ldr r5, [sp, #0x174]
	cmp r5, #5
	bhi _0800DD20
	b _0800DF0A
_0800DD20:
	bl sub_0801AAE0
	cmp r0, #0
	bne _0800DD2A
	b _0800DF0A
_0800DD2A:
	bl sub_08065974
	adds r4, r0, #0
	cmp r4, #0
	beq _0800DD36
	b _0800DF0A
_0800DD36:
	ldr r0, [sp, #0x128]
	subs r0, #2
	cmp r0, #8
	bhi _0800DD40
	b _0800DF0A
_0800DD40:
	bl sub_080020F4
	ldr r2, _0800DD68
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	strh r4, [r7, #0x14]
	strh r4, [r7, #0x12]
	bl sub_08065654
	b _0800DF0A
_0800DD64: .4byte 0x01802404
_0800DD68: .4byte gUnk_03003CE0
_0800DD6C:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0800DD76
	b _0800DF0A
_0800DD76:
	movs r6, #1
	str r6, [sp, #0x128]
	ldr r0, _0800DD94
	adds r1, r0, #0
	adds r1, #0x8c
	ldrh r1, [r1, #0]
	subs r1, #2
	adds r2, r0, #0
	cmp r1, #0x11
	bhi _0800DE2A
	lsls r0, r1, #2
	ldr r1, _0800DD98
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800DD94: .4byte gUnk_03003170
_0800DD98: .4byte _0800DD9C
_0800DD9C:
	.4byte _0800DDE4
_0800DDA0: .4byte _0800DDF4
_0800DDA4: .4byte _0800DE2A
_0800DDA8: .4byte _0800DE04
_0800DDAC: .4byte _0800DE2A
_0800DDB0: .4byte _0800DE2A
_0800DDB4: .4byte _0800DE2A
_0800DDB8: .4byte _0800DE2A
_0800DDBC: .4byte _0800DE2A
_0800DDC0: .4byte _0800DE2A
_0800DDC4: .4byte _0800DE2A
_0800DDC8: .4byte _0800DE2A
_0800DDCC: .4byte _0800DE14
_0800DDD0: .4byte _0800DE2A
_0800DDD4: .4byte _0800DE2A
_0800DDD8: .4byte _0800DE2A
_0800DDDC: .4byte _0800DE2A
_0800DDE0: .4byte _0800DE1A
_0800DDE4:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #7
	bne _0800DE2E
	movs r0, #0
	str r0, [sp, #0x128]
	b _0800DE2E
_0800DDF4:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0800DE2E
	movs r1, #0
	str r1, [sp, #0x128]
	b _0800DE2E
_0800DE04:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xa
	bne _0800DE2E
	movs r2, #0
	str r2, [sp, #0x128]
	b _0800DE2E
_0800DE14:
	movs r3, #0
	str r3, [sp, #0x128]
	b _0800DE2E
_0800DE1A:
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0800DE2E
	movs r4, #0
	str r4, [sp, #0x128]
	b _0800DE2E
_0800DE2A:
	movs r5, #1
	str r5, [sp, #0x128]
_0800DE2E:
	bl sub_0800CF80
	cmp r0, #0
	bne _0800DF04
	ldr r6, [sp, #0x128]
	cmp r6, #1
	bne _0800DF04
	ldrh r0, [r7, #0x20]
	cmp r0, #4
	beq _0800DF04
	cmp r0, #3
	beq _0800DF04
	cmp r0, #0xa
	beq _0800DF04
	cmp r0, #9
	beq _0800DF04
	cmp r0, #5
	beq _0800DF04
	cmp r0, #0xc
	beq _0800DF04
	ldr r4, _0800DEF0
	ldr r0, [r4, #0]
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0800DF04
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800DF04
	ldr r2, [sp, #0x174]
	cmp r2, #5
	bls _0800DF04
	bl sub_0800CD8C
	cmp r0, #0
	bne _0800DF04
	ldrh r0, [r7, #0x20]
	cmp r0, #0xe
	beq _0800DEFC
	ldr r5, [r7, #0x30]
	ldr r0, _0800DEF4
	ands r5, r0
	cmp r5, #0
	bne _0800DEFC
	ldr r1, _0800DEF8
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xb
	bne _0800DEA2
	adds r0, r1, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0800DEFC
_0800DEA2:
	ldr r0, [r4, #0]
	movs r3, #0x99
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r0, [r0, #0]
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	mov r8, r0
	adds r3, r7, #0
	adds r3, #0xc6
	movs r4, #0
	ldrsh r2, [r3, r4]
	adds r0, #0xa0
	adds r1, r7, #0
	adds r1, #0x79
	ldrb r1, [r1, #0]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	ldr r0, [r0, #0]
	adds r0, r0, r1
	cmp r2, r0
	blo _0800DEFC
	adds r0, r7, #0
	adds r0, #0x64
	ldrh r0, [r0, #0]
	cmp r0, #9
	bhi _0800DEFC
	adds r0, r7, #0
	adds r0, #0x68
	strb r5, [r0, #0]
	movs r0, #0xe
	strh r0, [r7, #0x20]
	strh r5, [r3, #0]
	bl sub_0806617C
	b _0800DF0A
_0800DEF0: .4byte gUnk_030034E0
_0800DEF4: .4byte 0x01803400
_0800DEF8: .4byte gUnk_03003170
_0800DEFC:
	movs r0, #0x61
	bl sub_0805865C
	b _0800DF0A
_0800DF04:
	movs r0, #0x61
	bl sub_0805865C
_0800DF0A:
	movs r5, #0x8a
	lsls r5, r5, #1
	adds r1, r7, r5
	ldrh r0, [r1, #0]
	subs r0, #1
	movs r2, #0
	strh r0, [r1, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0800DF20
	strh r2, [r1, #0]
_0800DF20:
	movs r6, #0x91
	lsls r6, r6, #1
	adds r1, r7, r6
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	bl sub_0800CDF8
	cmp r0, #0
	beq _0800DF36
	b _0800E466
_0800DF36:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0800DF44
	b _0800E466
_0800DF44:
	bl sub_0801DE60
	cmp r0, #4
	beq _0800DF5A
	cmp r0, #4
	bgt _0800DF56
	cmp r0, #1
	beq _0800DF5A
	b _0800DF70
_0800DF56:
	cmp r0, #6
	bne _0800DF70
_0800DF5A:
	ldr r0, _0800DF6C
	ldr r0, [r0, #0]
	adds r0, #0x30
	movs r1, #7
	bl sub_0801E0AC
	adds r2, r0, #0
	b _0800DF72
	.2byte 0x0000
_0800DF6C: .4byte gUnk_030034E0
_0800DF70:
	movs r2, #0
_0800DF72:
	movs r0, #0x3c
	ldrsh r1, [r7, r0]
	adds r0, r7, #0
	adds r0, #0x70
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r2, r0
	movs r2, #0x64
	muls r0, r2, r0
	adds r0, #0xc8
	adds r1, r1, r0
	ldr r0, _0800E008
	bl __divsi3
	adds r2, r0, #0
	ldr r0, [sp, #0x198]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x198]
	cmp r2, r0
	bge _0800DFBC
	movs r2, #0
	str r2, [sp, #0x198]
	ldr r3, [sp, #0x1b8]
	ldrh r0, [r3, #0]
	adds r0, #0xa
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x1b0]
	ldrh r2, [r4, #0]
	movs r5, #0
	ldrsh r1, [r4, r5]
	cmp r0, r1
	ble _0800DFBC
	strh r2, [r3, #0]
_0800DFBC:
	ldr r6, [r7, #0x34]
	movs r0, #0
	str r0, [sp, #0x128]
_0800DFC2:
	movs r2, #0
	ldrsh r1, [r6, r2]
	cmp r1, #0
	bge _0800DFD8
	movs r0, #2
	negs r0, r0
	adds r3, r6, #0
	adds r3, #0x28
	cmp r1, r0
	beq _0800DFD8
	b _0800E44A
_0800DFD8:
	ldrh r0, [r6, #2]
	cmp r0, #3
	bls _0800DFE0
	b _0800E2B0
_0800DFE0:
	ldr r1, _0800E00C
	adds r2, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	ldrh r0, [r0, #0xc]
	subs r0, #2
	adds r5, r1, #0
	adds r3, r6, #0
	adds r3, #0x28
	cmp r0, #6
	bls _0800DFFC
	b _0800E44A
_0800DFFC:
	lsls r0, r0, #2
	ldr r1, _0800E010
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0800E008: .4byte 0x0000BB80
_0800E00C: .4byte gUnk_03003CE0
_0800E010: .4byte _0800E014
_0800E014:
	.4byte _0800E030
_0800E018: .4byte _0800E0BC
_0800E01C: .4byte _0800E44A
_0800E020: .4byte _0800E224
_0800E024: .4byte _0800E1D8
_0800E028: .4byte _0800E44A
_0800E02C: .4byte _0800E1D8
_0800E030:
	ldrh r0, [r6, #4]
	adds r3, r6, #0
	adds r3, #0x28
	cmp r0, #7
	beq _0800E03C
	b _0800E44A
_0800E03C:
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r0, r2, #0
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0800E058
	b _0800E458
_0800E058:
	str r3, [sp, #0x1cc]
	bl sub_0801DF8C
	ldr r3, [sp, #0x1cc]
	cmp r0, #0
	beq _0800E066
	b _0800E44A
_0800E066:
	adds r1, r7, #0
	adds r1, #0x68
	ldrh r0, [r6, #2]
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x68
	ldrb r1, [r1, #0]
	ldrb r0, [r0, #0]
	cmp r1, r0
	beq _0800E07C
	b _0800E44A
_0800E07C:
	ldr r2, [sp, #0x150]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x150]
	ldr r1, _0800E0B8
	ldrh r0, [r6, #6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	cmp r2, r0
	bhi _0800E096
	b _0800E44A
_0800E096:
	ldr r4, [sp, #0x1bc]
	ldrh r0, [r4, #0]
	adds r0, #1
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r5, [sp, #0x1b4]
	ldrh r2, [r5, #0]
	movs r4, #0
	ldrsh r1, [r5, r4]
	cmp r0, r1
	ble _0800E0B2
	ldr r5, [sp, #0x1bc]
	strh r2, [r5, #0]
_0800E0B2:
	movs r0, #0
	str r0, [sp, #0x150]
	b _0800E44A
_0800E0B8: .4byte gUnk_0847ACF8
_0800E0BC:
	ldrh r0, [r6, #4]
	adds r3, r6, #0
	adds r3, #0x28
	cmp r0, #6
	beq _0800E0C8
	b _0800E44A
_0800E0C8:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r1, r5, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0800E0E2
	b _0800E458
_0800E0E2:
	str r3, [sp, #0x1cc]
	bl sub_0800CF80
	ldr r3, [sp, #0x1cc]
	cmp r0, #0
	beq _0800E0F0
	b _0800E44A
_0800E0F0:
	movs r5, #0
	ldr r1, _0800E1A0
	mov ip, r1
	movs r2, #2
	negs r2, r2
	mov sl, r2
	movs r4, #1
	negs r4, r4
	mov r9, r4
_0800E102:
	movs r0, #1
	lsls r0, r5
	ldr r2, _0800E1A4
	ldr r1, [r2, #0]
	ands r1, r0
	adds r4, r5, #1
	mov r8, r4
	cmp r1, #0
	beq _0800E1D0
	lsls r0, r5, #1
	str r0, [sp, #0x1d4]
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	mov r2, ip
	ldr r1, [r2, #0]
	adds r1, r1, r0
	adds r1, #0x8c
	movs r4, #0
	movs r0, #0
	str r0, [sp, #0x128]
	movs r0, #0
	ldrsh r2, [r1, r0]
	str r2, [sp, #0x1d0]
	ldr r0, [sp, #0x1d0]
	cmp r0, sl
	bne _0800E148
	ldrh r0, [r1, #4]
	cmp r0, #6
	bne _0800E148
	ldrh r0, [r1, #2]
	ldrh r2, [r7, #0]
	cmp r0, r2
	beq _0800E1D0
_0800E148:
	ldr r0, [sp, #0x128]
	adds r0, #1
	str r0, [sp, #0x128]
	adds r1, #0x28
	cmp r0, #7
	bhi _0800E16C
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, sl
	bne _0800E148
	ldrh r0, [r1, #4]
	cmp r0, #6
	bne _0800E148
	ldrh r0, [r1, #2]
	ldrh r2, [r7, #0]
	cmp r0, r2
	bne _0800E148
	movs r4, #1
_0800E16C:
	cmp r4, #0
	bne _0800E1D0
	ldr r4, [sp, #0x1d4]
	adds r0, r4, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	mov r5, ip
	ldr r1, [r5, #0]
	adds r1, r1, r0
	adds r1, #0x8c
	movs r0, #0
	str r0, [sp, #0x128]
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, r9
	bne _0800E1A8
	adds r0, r1, #0
	adds r1, r6, #0
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	b _0800E1CC
_0800E1A0: .4byte gUnk_030056F4
_0800E1A4: .4byte gUnk_030056FC
_0800E1A8:
	ldr r4, [sp, #0x128]
	adds r4, #1
	str r4, [sp, #0x128]
	adds r1, #0x28
	cmp r4, #7
	bhi _0800E1D0
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, r9
	bne _0800E1A8
	adds r0, r1, #0
	adds r1, r6, #0
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
_0800E1CC:
	ldr r1, [r1, #0]
	str r1, [r0, #0]
_0800E1D0:
	mov r5, r8
	cmp r5, #4
	bls _0800E102
	b _0800E44A
_0800E1D8:
	ldrh r0, [r6, #4]
	adds r3, r6, #0
	adds r3, #0x28
	cmp r0, #4
	beq _0800E1E4
	b _0800E44A
_0800E1E4:
	str r3, [sp, #0x1cc]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800E202
	bl sub_0801DF8C
	cmp r0, #0
	bne _0800E202
	bl sub_08056E90
	ldr r3, [sp, #0x1cc]
	cmp r0, #0
	bne _0800E202
	b _0800E44A
_0800E202:
	ldr r0, _0800E220
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	bl sub_0805AD78
	movs r0, #0
	strh r0, [r6, #0]
	ldrh r1, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x64
	strh r1, [r0, #0]
	bl sub_0806617C
	b _0800E32A
_0800E220: .4byte gUnk_030034E0
_0800E224:
	ldrh r0, [r6, #4]
	adds r3, r6, #0
	adds r3, #0x28
	cmp r0, #7
	beq _0800E230
	b _0800E44A
_0800E230:
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r0, r2, #0
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0800E24C
	b _0800E458
_0800E24C:
	str r3, [sp, #0x1cc]
	bl sub_0801DF8C
	ldr r3, [sp, #0x1cc]
	cmp r0, #0
	beq _0800E25A
	b _0800E44A
_0800E25A:
	adds r1, r7, #0
	adds r1, #0x68
	ldrh r0, [r6, #2]
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x68
	ldrb r1, [r1, #0]
	ldrb r0, [r0, #0]
	cmp r1, r0
	beq _0800E270
	b _0800E44A
_0800E270:
	ldr r2, [sp, #0x150]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x150]
	ldr r1, _0800E2AC
	ldrh r0, [r6, #6]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	cmp r2, r0
	bhi _0800E28A
	b _0800E44A
_0800E28A:
	ldr r1, [sp, #0x1bc]
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, [sp, #0x1b4]
	ldrh r2, [r4, #0]
	movs r5, #0
	ldrsh r1, [r4, r5]
	cmp r0, r1
	ble _0800E2A6
	ldr r0, [sp, #0x1bc]
	strh r2, [r0, #0]
_0800E2A6:
	movs r1, #0
	str r1, [sp, #0x150]
	b _0800E44A
_0800E2AC: .4byte gUnk_0847ACF8
_0800E2B0:
	ldrh r0, [r6, #4]
	subs r0, #1
	adds r3, r6, #0
	adds r3, #0x28
	cmp r0, #6
	bls _0800E2BE
	b _0800E44A
_0800E2BE:
	lsls r0, r0, #2
	ldr r1, _0800E2C8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800E2C8: .4byte _0800E2CC
_0800E2CC:
	.4byte _0800E2E8
_0800E2D0: .4byte _0800E304
_0800E2D4: .4byte _0800E44A
_0800E2D8: .4byte _0800E338
_0800E2DC: .4byte _0800E44A
_0800E2E0: .4byte _0800E360
_0800E2E4: .4byte _0800E3D8
_0800E2E8:
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r3, r6, #0
	adds r3, #0x28
	cmp r0, #0
	beq _0800E2F6
	b _0800E44A
_0800E2F6:
	adds r1, r7, #0
	adds r1, #0x8a
	ldrh r0, [r6, #6]
	ldrh r4, [r1, #0]
	adds r0, r0, r4
	strh r0, [r1, #0]
	b _0800E44A
_0800E304:
	ldrh r1, [r7, #0x14]
	movs r0, #0xf1
	ands r0, r1
	cmp r0, #0
	beq _0800E322
	ldrh r0, [r6, #0]
	subs r1, r0, #6
	strh r1, [r6, #0]
	lsls r0, r1, #0x10
	cmp r0, #0
	bge _0800E322
	ldr r5, _0800E330
	adds r0, r5, #0
	orrs r1, r0
	strh r1, [r6, #0]
_0800E322:
	ldrh r1, [r7, #0x14]
	ldr r0, _0800E334
	ands r0, r1
	strh r0, [r7, #0x14]
_0800E32A:
	adds r3, r6, #0
	adds r3, #0x28
	b _0800E44A
_0800E330: .4byte 0x0000FFFF
_0800E334: .4byte 0x0000FFFE
_0800E338:
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r3, r6, #0
	adds r3, #0x28
	cmp r0, #0
	beq _0800E346
	b _0800E44A
_0800E346:
	str r3, [sp, #0x1cc]
	bl sub_0801DF8C
	ldr r3, [sp, #0x1cc]
	cmp r0, #0
	bne _0800E44A
	adds r1, r7, #0
	adds r1, #0x88
	ldrh r0, [r6, #6]
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	b _0800E44A
_0800E360:
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E3BC
	bl sub_0800D1B0
	cmp r0, #0
	bne _0800E3BC
	ldr r1, [r6, #0x18]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r0, #0
	adds r5, #0x64
	adds r4, r7, #0
	adds r4, #0x88
	ldrh r0, [r6, #6]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	ldrh r1, [r4, #0]
	adds r1, r1, r0
	strh r1, [r4, #0]
	adds r1, r7, #0
	adds r1, #0xe0
	movs r0, #6
	str r0, [r1, #0]
	ldrh r0, [r6, #6]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0800E3D4
	ldr r2, [r0, #0]
	adds r2, #0x24
	movs r0, #6
	bl sub_08069224
_0800E3BC:
	movs r4, #0
	ldrsh r0, [r6, r4]
	adds r3, r6, #0
	adds r3, #0x28
	cmp r0, #1
	bne _0800E44A
	movs r0, #0x73
	str r3, [sp, #0x1cc]
	bl sub_0805867C
	b _0800E448
	.2byte 0x0000
_0800E3D4: .4byte gUnk_030034E0
_0800E3D8:
	movs r5, #0
	ldrsh r0, [r6, r5]
	movs r1, #0x3c
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E434
	bl sub_0800D1B0
	cmp r0, #0
	bne _0800E434
	ldr r1, [r6, #0x18]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r5, r0, #0
	adds r5, #0x64
	adds r4, r7, #0
	adds r4, #0x88
	ldrh r0, [r6, #6]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	ldrh r1, [r4, #0]
	adds r1, r1, r0
	strh r1, [r4, #0]
	adds r1, r7, #0
	adds r1, #0xe0
	movs r0, #6
	str r0, [r1, #0]
	ldrh r0, [r6, #6]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0800E4A0
	ldr r2, [r0, #0]
	adds r2, #0x24
	movs r0, #6
	bl sub_08069224
_0800E434:
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r3, r6, #0
	adds r3, #0x28
	cmp r0, #1
	bne _0800E44A
	movs r0, #0x73
	str r3, [sp, #0x1cc]
	bl sub_0805867C
_0800E448:
	ldr r3, [sp, #0x1cc]
_0800E44A:
	ldrh r1, [r6, #0]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	blt _0800E458
	subs r0, r1, #1
	strh r0, [r6, #0]
_0800E458:
	ldr r4, [sp, #0x128]
	adds r4, #1
	str r4, [sp, #0x128]
	adds r6, r3, #0
	cmp r4, #7
	bhi _0800E466
	b _0800DFC2
_0800E466:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0800E48C
	bl sub_0806617C
	bl sub_08066220
	movs r5, #0x98
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #0
	strh r0, [r1, #0]
	ldr r0, [r7, #0x30]
	ldr r1, _0800E4A4
	ands r0, r1
	str r0, [r7, #0x30]
_0800E48C:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xe
	bls _0800E496
	bl _0800FF38
_0800E496:
	lsls r0, r0, #2
	ldr r1, _0800E4A8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800E4A0: .4byte gUnk_030034E0
_0800E4A4: .4byte 0xFFFFF7FF
_0800E4A8: .4byte _0800E4AC
_0800E4AC:
	.4byte _0800E4E8
_0800E4B0: .4byte _0800E792
_0800E4B4: .4byte _0800F8AC
_0800E4B8: .4byte _0800EA90
_0800E4BC: .4byte _0800EE74
_0800E4C0: .4byte _0800F2D8
_0800E4C4: .4byte _0800F3F0
_0800E4C8: .4byte _0800F61A
_0800E4CC: .4byte _0800F856
_0800E4D0: .4byte _0800F9E8
_0800E4D4: .4byte _0800FA40
_0800E4D8: .4byte _0800FD90
_0800E4DC: .4byte _0800FE24
_0800E4E0: .4byte _0800FF38
_0800E4E4: .4byte _0800FF18
_0800E4E8:
	movs r6, #0
	str r6, [sp, #0x19c]
	movs r0, #0
	str r0, [sp, #0x130]
	ldr r0, [r7, #0x30]
	ldr r1, _0800E544
	ands r0, r1
	str r0, [r7, #0x30]
	ldrh r1, [r7, #0x12]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0800E504
	movs r6, #5
_0800E504:
	ldrh r2, [r7, #0x18]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800E51C
	ldrh r0, [r7, #0x14]
	ands r2, r0
	ldr r3, [sp, #0x154]
	adds r3, #1
	str r3, [sp, #0x154]
	cmp r2, #0
	beq _0800E520
_0800E51C:
	movs r4, #0
	str r4, [sp, #0x154]
_0800E520:
	ldrh r2, [r7, #0x1a]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800E550
	ldrh r0, [r7, #0x14]
	ands r2, r0
	cmp r2, #0
	bne _0800E550
	ldr r0, _0800E548
	ldr r5, [sp, #0x194]
	cmp r5, r0
	bne _0800E558
	ldr r0, [sp, #0x158]
	adds r0, #1
	str r0, [sp, #0x158]
	b _0800E558
	.2byte 0x0000
_0800E544: .4byte 0xFFDFFFFF
_0800E548: .4byte 0x0000FFFF
_0800E54C:
	adds r0, r4, #0
	b _0800E5A8
_0800E550:
	movs r1, #0
	str r1, [sp, #0x158]
	ldr r2, _0800E5B4
	str r2, [sp, #0x194]
_0800E558:
	ldrh r0, [r7, #0x10]
	cmp r0, #9
	beq _0800E5BC
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	movs r4, #7
	adds r5, r7, #0
	adds r5, #0x64
	ldr r0, _0800E5B8
	lsls r1, r1, #1
	mov r9, r1
	adds r3, r0, #0
	adds r3, #0xe
	ldr r0, [sp, #0x1b8]
	mov r8, r0
_0800E580:
	ldrh r0, [r3, #0]
	add r0, r9
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800E58E
	movs r2, #0
_0800E58E:
	mov r1, r8
	movs r0, #0
	ldrsh r1, [r1, r0]
	mov sl, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp sl, r0
	bge _0800E54C
	subs r3, #2
	subs r4, #1
	cmp r4, #0
	bge _0800E580
	movs r0, #0
_0800E5A8:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E5D2
	movs r1, #0
	str r1, [sp, #0x154]
	b _0800E5D2
_0800E5B4: .4byte 0x0000FFFF
_0800E5B8: .4byte gUnk_0847ACE8
_0800E5BC:
	bl sub_0801DEB8
	bl sub_08079FD0
	lsls r0, r0, #0x10
	adds r5, r7, #0
	adds r5, #0x64
	cmp r0, #0
	bne _0800E5D2
	movs r2, #0
	str r2, [sp, #0x154]
_0800E5D2:
	ldr r0, [r7, #0x30]
	movs r1, #0xc0
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0800E5E6
	movs r3, #0
	str r3, [sp, #0x144]
	movs r4, #0
	str r4, [sp, #0x154]
_0800E5E6:
	ldrh r0, [r7, #0xc]
	ldrh r5, [r5, #0]
	cmp r0, r5
	beq _0800E5F2
	movs r5, #0
	str r5, [sp, #0x154]
_0800E5F2:
	ldrh r0, [r7, #0x10]
	cmp r0, #0
	bne _0800E5FC
	movs r0, #0
	str r0, [sp, #0x144]
_0800E5FC:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800E670
	bl sub_0801E538
	cmp r0, #0
	beq _0800E670
	ldr r1, [r7, #0x30]
	movs r0, #0xd0
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _0800E670
	ldr r2, [sp, #0x154]
	cmp r2, #0xa
	bls _0800E670
	movs r0, #3
	strh r0, [r7, #0x20]
	strh r1, [r7, #0x26]
	strh r1, [r7, #0x24]
	movs r3, #0
	str r3, [sp, #0x130]
	ldr r0, _0800E66C
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #0x72
	ldrh r0, [r1, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xaa
	ldrh r1, [r0, #0]
	adds r0, r7, #0
	adds r0, #0x71
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x134]
	ldr r4, [sp, #0x1c8]
	ldr r0, [r4, #0]
	adds r0, #1
	b _0800E74C
	.2byte 0x0000
_0800E66C: .4byte gUnk_030034E0
_0800E670:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800E6D0
	ldr r4, [r7, #0x30]
	movs r0, #0xd0
	lsls r0, r0, #6
	ands r4, r0
	cmp r4, #0
	bne _0800E6D0
	ldr r5, [sp, #0x158]
	cmp r5, #0x14
	bls _0800E6D0
	ldr r5, _0800E6CC
	ldr r1, [r5, #0]
	adds r0, r1, #0
	adds r0, #0x54
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r1, #0x56
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0800E6D0
	subs r0, #1
	bl sub_0805D548
	adds r2, r0, #0
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	beq _0800E6D0
	ldr r0, [r5, #0]
	adds r0, #0x54
	ldrh r0, [r0, #0]
	str r0, [sp, #0x194]
	movs r0, #6
	strh r0, [r7, #0x20]
	strh r4, [r7, #0x26]
	strh r4, [r7, #0x24]
	movs r6, #0
	str r6, [sp, #0x130]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x134]
	b _0800E74E
_0800E6CC: .4byte gUnk_030034E0
_0800E6D0:
	ldrh r1, [r7, #0x14]
	ldrh r0, [r7, #0x18]
	ands r0, r1
	cmp r0, #0
	beq _0800E724
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800E74E
	ldr r2, [r7, #0x30]
	ldr r0, _0800E720
	ands r2, r0
	cmp r2, #0
	bne _0800E74E
	adds r0, r7, #0
	adds r0, #0x5e
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r4, [sp, #0x144]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0800E74E
	movs r5, #0x98
	lsls r5, r5, #1
	adds r0, r7, r5
	strh r2, [r0, #0]
	ldr r6, [sp, #0x1c8]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
	movs r0, #2
	strh r0, [r7, #0x20]
	adds r0, r7, #0
	adds r0, #0xb2
	strh r2, [r0, #0]
	movs r0, #0
	str r0, [sp, #0x144]
	b _0800E74E
	.2byte 0x0000
_0800E720: .4byte 0x01803400
_0800E724:
	cmp r6, #0
	beq _0800E72E
	movs r0, #1
	strh r0, [r7, #0x20]
	b _0800E74E
_0800E72E:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	bgt _0800E748
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800E74E
	str r6, [r4, #0]
	b _0800E74E
_0800E748:
	asrs r0, r1, #1
	subs r0, r1, r0
_0800E74C:
	str r0, [r4, #0]
_0800E74E:
	bl sub_0800CCCC
	adds r4, r0, #0
	cmp r4, #0
	bne _0800E78A
	ldr r1, [sp, #0x154]
	cmp r1, #0x14
	bls _0800E78A
	ldrh r0, [r7, #0x10]
	cmp r0, #0xa
	bne _0800E78A
	ldr r2, [sp, #0x1b8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _0800E78A
	bl sub_0801DF8C
	cmp r0, #0
	bne _0800E77E
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r1, r7, r4
	b _0800EA6E
_0800E77E:
	movs r5, #0x9a
	lsls r5, r5, #1
	adds r0, r7, r5
	strh r4, [r0, #0]
	bl _0800FF38
_0800E78A:
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r1, r7, r6
	b _0800EA88
_0800E792:
	movs r6, #0
	movs r0, #0
	str r0, [sp, #0x19c]
	ldr r0, [r7, #0x30]
	ldr r1, _0800E7B0
	ands r0, r1
	str r0, [r7, #0x30]
	ldrh r1, [r7, #0x12]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800E7B4
	movs r6, #5
	b _0800E7BE
	.2byte 0x0000
_0800E7B0: .4byte 0xFFDFFFFF
_0800E7B4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800E7BE
	movs r6, #1
_0800E7BE:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800E7DA
	cmp r6, #5
	bne _0800E7CE
	movs r6, #4
	b _0800E7F4
_0800E7CE:
	cmp r6, #1
	bne _0800E7D6
	movs r6, #2
	b _0800E7F4
_0800E7D6:
	movs r6, #3
	b _0800E7F4
_0800E7DA:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800E7F4
	cmp r6, #5
	bne _0800E7EA
	movs r6, #6
	b _0800E7F4
_0800E7EA:
	cmp r6, #1
	bne _0800E7F2
	movs r6, #8
	b _0800E7F4
_0800E7F2:
	movs r6, #7
_0800E7F4:
	ldrh r2, [r7, #0x18]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800E80C
	ldrh r0, [r7, #0x14]
	ands r2, r0
	ldr r3, [sp, #0x154]
	adds r3, #1
	str r3, [sp, #0x154]
	cmp r2, #0
	beq _0800E810
_0800E80C:
	movs r4, #0
	str r4, [sp, #0x154]
_0800E810:
	ldrh r2, [r7, #0x1a]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800E83C
	ldrh r0, [r7, #0x14]
	ands r2, r0
	cmp r2, #0
	bne _0800E83C
	ldr r0, _0800E834
	ldr r5, [sp, #0x194]
	cmp r5, r0
	bne _0800E844
	ldr r0, [sp, #0x158]
	adds r0, #1
	str r0, [sp, #0x158]
	b _0800E844
	.2byte 0x0000
_0800E834: .4byte 0x0000FFFF
_0800E838:
	adds r0, r4, #0
	b _0800E894
_0800E83C:
	movs r1, #0
	str r1, [sp, #0x158]
	ldr r2, _0800E8A0
	str r2, [sp, #0x194]
_0800E844:
	ldrh r0, [r7, #0x10]
	cmp r0, #9
	beq _0800E8A8
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	movs r4, #7
	adds r5, r7, #0
	adds r5, #0x64
	ldr r0, _0800E8A4
	lsls r1, r1, #1
	mov r9, r1
	adds r3, r0, #0
	adds r3, #0xe
	ldr r0, [sp, #0x1b8]
	mov r8, r0
_0800E86C:
	ldrh r0, [r3, #0]
	add r0, r9
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800E87A
	movs r2, #0
_0800E87A:
	mov r1, r8
	movs r0, #0
	ldrsh r1, [r1, r0]
	mov sl, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp sl, r0
	bge _0800E838
	subs r3, #2
	subs r4, #1
	cmp r4, #0
	bge _0800E86C
	movs r0, #0
_0800E894:
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800E8BE
	movs r1, #0
	str r1, [sp, #0x154]
	b _0800E8BE
_0800E8A0: .4byte 0x0000FFFF
_0800E8A4: .4byte gUnk_0847ACE8
_0800E8A8:
	bl sub_0801DEB8
	bl sub_08079FD0
	lsls r0, r0, #0x10
	adds r5, r7, #0
	adds r5, #0x64
	cmp r0, #0
	bne _0800E8BE
	movs r2, #0
	str r2, [sp, #0x154]
_0800E8BE:
	ldr r0, [r7, #0x30]
	movs r1, #0xc0
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0800E8D2
	movs r3, #0
	str r3, [sp, #0x144]
	movs r4, #0
	str r4, [sp, #0x154]
_0800E8D2:
	ldrh r0, [r7, #0xc]
	ldrh r5, [r5, #0]
	cmp r0, r5
	beq _0800E8DE
	movs r5, #0
	str r5, [sp, #0x154]
_0800E8DE:
	ldrh r0, [r7, #0x10]
	cmp r0, #0
	bne _0800E8E8
	movs r0, #0
	str r0, [sp, #0x144]
_0800E8E8:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800E95C
	bl sub_0801E538
	cmp r0, #0
	beq _0800E95C
	ldr r1, [r7, #0x30]
	movs r0, #0xd0
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _0800E95C
	ldr r2, [sp, #0x154]
	cmp r2, #0xa
	bls _0800E95C
	movs r0, #3
	strh r0, [r7, #0x20]
	strh r1, [r7, #0x26]
	strh r1, [r7, #0x24]
	movs r3, #0
	str r3, [sp, #0x130]
	ldr r0, _0800E958
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #0x72
	ldrh r0, [r1, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r0, #0xaa
	ldrh r1, [r0, #0]
	adds r0, r7, #0
	adds r0, #0x71
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r1, r0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x134]
	ldr r4, [sp, #0x1c8]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	b _0800EA40
_0800E958: .4byte gUnk_030034E0
_0800E95C:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800E9BC
	ldr r4, [r7, #0x30]
	movs r0, #0xd0
	lsls r0, r0, #6
	ands r4, r0
	cmp r4, #0
	bne _0800E9BC
	ldr r5, [sp, #0x158]
	cmp r5, #0x14
	bls _0800E9BC
	ldr r5, _0800E9B8
	ldr r1, [r5, #0]
	adds r0, r1, #0
	adds r0, #0x54
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r1, #0x56
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0800E9BC
	subs r0, #1
	bl sub_0805D548
	adds r2, r0, #0
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	beq _0800E9BC
	ldr r0, [r5, #0]
	adds r0, #0x54
	ldrh r0, [r0, #0]
	str r0, [sp, #0x194]
	movs r0, #6
	strh r0, [r7, #0x20]
	strh r4, [r7, #0x26]
	strh r4, [r7, #0x24]
	movs r6, #0
	str r6, [sp, #0x130]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp, #0x134]
	b _0800EA40
_0800E9B8: .4byte gUnk_030034E0
_0800E9BC:
	ldrh r1, [r7, #0x14]
	ldrh r0, [r7, #0x18]
	ands r0, r1
	cmp r0, #0
	beq _0800EA0C
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800EA40
	ldr r2, [r7, #0x30]
	movs r0, #0xd0
	lsls r0, r0, #6
	ands r2, r0
	cmp r2, #0
	bne _0800EA40
	adds r0, r7, #0
	adds r0, #0x5e
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r4, [sp, #0x144]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bgt _0800EA40
	movs r5, #0x98
	lsls r5, r5, #1
	adds r0, r7, r5
	strh r2, [r0, #0]
	ldr r6, [sp, #0x1c8]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
	movs r0, #2
	strh r0, [r7, #0x20]
	adds r0, r7, #0
	adds r0, #0xb2
	strh r2, [r0, #0]
	movs r0, #0
	str r0, [sp, #0x144]
	b _0800EA40
_0800EA0C:
	cmp r6, #0
	bne _0800EA14
	strh r6, [r7, #0x20]
	b _0800EA40
_0800EA14:
	subs r0, r6, #1
	strh r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x40
	adds r2, r7, #0
	adds r2, #0xd8
	movs r1, #0
	ldrsh r3, [r0, r1]
	ldr r1, [r2, #0]
	subs r0, r3, r1
	asrs r0, r0, #1
	adds r4, r2, #0
	cmp r0, #0
	ble _0800EA34
	adds r0, r1, r0
	b _0800EA36
_0800EA34:
	adds r0, r1, #1
_0800EA36:
	str r0, [r4, #0]
	ldr r0, [r2, #0]
	cmp r3, r0
	bgt _0800EA40
	str r3, [r2, #0]
_0800EA40:
	bl sub_0800CCCC
	adds r4, r0, #0
	cmp r4, #0
	bne _0800EA82
	ldr r2, [sp, #0x154]
	cmp r2, #0x14
	bls _0800EA82
	ldrh r0, [r7, #0x10]
	cmp r0, #0xa
	bne _0800EA82
	ldr r3, [sp, #0x1b8]
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	ble _0800EA82
	bl sub_0801DF8C
	cmp r0, #0
	bne _0800EA76
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r1, r7, r6
_0800EA6E:
	movs r0, #1
	strh r0, [r1, #0]
	bl _0800FF38
_0800EA76:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
	strh r4, [r0, #0]
	bl _0800FF38
_0800EA82:
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r1, r7, r2
_0800EA88:
	movs r0, #0
	strh r0, [r1, #0]
	bl _0800FF38
_0800EA90:
	movs r6, #0
	ldrh r1, [r7, #0x12]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800EAA0
	movs r6, #5
	b _0800EAAA
_0800EAA0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800EAAA
	movs r6, #1
_0800EAAA:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800EAC6
	cmp r6, #5
	bne _0800EABA
	movs r6, #4
	b _0800EAE0
_0800EABA:
	cmp r6, #1
	bne _0800EAC2
	movs r6, #2
	b _0800EAE0
_0800EAC2:
	movs r6, #3
	b _0800EAE0
_0800EAC6:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800EAE0
	cmp r6, #5
	bne _0800EAD6
	movs r6, #6
	b _0800EAE0
_0800EAD6:
	cmp r6, #1
	bne _0800EADE
	movs r6, #8
	b _0800EAE0
_0800EADE:
	movs r6, #7
_0800EAE0:
	ldrh r3, [r7, #0x18]
	ands r3, r1
	cmp r3, #0
	beq _0800EAEA
	b _0800ECF0
_0800EAEA:
	ldrh r0, [r7, #0x26]
	cmp r0, #0
	bne _0800EAF2
	b _0800ECD6
_0800EAF2:
	movs r0, #5
	strh r0, [r7, #0x20]
	ldrh r0, [r7, #0x10]
	cmp r0, #9
	beq _0800EB34
	ldrh r2, [r7, #0x26]
	adds r0, r7, #0
	adds r0, #0x6c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r1, _0800EB48
	lsls r2, r2, #1
	adds r2, r2, r1
	lsls r0, r0, #1
	ldrh r2, [r2, #0]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800EB20
	movs r2, #0
_0800EB20:
	ldr r4, [sp, #0x1b8]
	ldrh r1, [r4, #0]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0800EB34
	strh r3, [r4, #0]
_0800EB34:
	bl sub_0801DE60
	cmp r0, #7
	bls _0800EB3E
	b _0800ECC2
_0800EB3E:
	lsls r0, r0, #2
	ldr r1, _0800EB4C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800EB48: .4byte gUnk_0847ACE8
_0800EB4C: .4byte _0800EB50
_0800EB50:
	.4byte _0800EB70
_0800EB54: .4byte _0800EBD8
_0800EB58: .4byte _0800EB8C
_0800EB5C: .4byte _0800EB7E
_0800EB60: .4byte _0800EBD8
_0800EB64: .4byte _0800EBCA
_0800EB68: .4byte _0800EBD8
_0800EB6C: .4byte _0800EC6C
_0800EB70:
	bl sub_08014D60
	ldr r5, [sp, #0x1c8]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	b _0800ECC2
_0800EB7E:
	bl sub_080151E0
	ldr r6, [sp, #0x1c8]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
	b _0800ECC2
_0800EB8C:
	ldrh r4, [r7, #0x10]
	cmp r4, #9
	bne _0800EBC0
	bl sub_0801DEB8
	ldrh r1, [r7, #0x26]
	bl sub_0806898C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0800EC3E
	bl sub_0801DEB8
	cmp r0, #7
	bne _0800EC4E
	ldr r0, _0800EBBC
	ldrh r1, [r7, #0]
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _0800EC4E
	movs r0, #0
	b _0800ECA6
_0800EBBC: .4byte gUnk_03006410
_0800EBC0:
	ldr r1, [sp, #0x1c8]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	b _0800ECBE
_0800EBCA:
	movs r0, #5
	strh r0, [r7, #0x20]
	ldr r2, [sp, #0x1c8]
	ldr r0, [r2, #0]
	adds r0, #1
	str r0, [r2, #0]
	b _0800ECC2
_0800EBD8:
	ldrh r4, [r7, #0x10]
	cmp r4, #5
	beq _0800EBEE
	cmp r4, #5
	bgt _0800EBE8
	cmp r4, #4
	beq _0800EC5A
	b _0800ECC2
_0800EBE8:
	cmp r4, #9
	beq _0800EBFE
	b _0800ECC2
_0800EBEE:
	ldr r3, [sp, #0x1c8]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	strh r4, [r7, #0x20]
	bl sub_0801551C
	b _0800ECC2
_0800EBFE:
	bl sub_0801DEB8
	ldrh r1, [r7, #0x26]
	bl sub_0806898C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0800ECA6
	bl sub_0801DE60
	cmp r0, #6
	bne _0800EC4E
	bl sub_0801DEB8
	cmp r0, #0x11
	bne _0800EC2C
	ldr r0, _0800EC38
	ldrh r1, [r7, #0]
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne _0800EC3C
_0800EC2C:
	strh r4, [r7, #0x20]
	ldr r4, [sp, #0x1c8]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	b _0800ECC2
_0800EC38: .4byte gUnk_03006430
_0800EC3C:
	movs r0, #0
_0800EC3E:
	strh r0, [r7, #0x26]
	strh r0, [r7, #0x24]
	movs r5, #0
	str r5, [sp, #0x130]
	movs r6, #0
	str r6, [sp, #0x134]
	strh r6, [r7, #0x20]
	b _0800ECC2
_0800EC4E:
	strh r4, [r7, #0x20]
	ldr r1, [sp, #0x1c8]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	b _0800ECC2
_0800EC5A:
	ldr r5, [sp, #0x1c8]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	movs r0, #5
	strh r0, [r7, #0x20]
	bl sub_0801551C
	b _0800ECC2
_0800EC6C:
	ldrh r4, [r7, #0x10]
	cmp r4, #9
	bne _0800ECB6
	bl sub_0801DEB8
	ldrh r1, [r7, #0x26]
	bl sub_0806898C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0800ECA6
	strh r4, [r7, #0x20]
	ldr r6, [sp, #0x1c8]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
	bl sub_0801DEB8
	cmp r0, #0x13
	bne _0800ECC2
	bl sub_080008C8
	str r0, [sp, #0x170]
	movs r0, #7
	ldr r1, [sp, #0x170]
	ands r1, r0
	str r1, [sp, #0x170]
	b _0800ECC2
_0800ECA6:
	strh r0, [r7, #0x26]
	strh r0, [r7, #0x24]
	movs r2, #0
	str r2, [sp, #0x130]
	movs r3, #0
	str r3, [sp, #0x134]
	strh r3, [r7, #0x20]
	b _0800ECC2
_0800ECB6:
	ldr r5, [sp, #0x1c8]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
_0800ECBE:
	movs r0, #5
	strh r0, [r7, #0x20]
_0800ECC2:
	adds r0, r7, #0
	adds r0, #0xb4
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	movs r6, #0
	str r6, [sp, #0x144]
	bl _0800FF38
_0800ECD6:
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	movs r0, #0
	str r0, [sp, #0x130]
	movs r1, #0
	str r1, [sp, #0x134]
	strh r1, [r7, #0x20]
	ldr r0, [r7, #0x30]
	ldr r1, _0800ECEC
	bl _0800FEC4
_0800ECEC: .4byte 0xFFDFFFFF
_0800ECF0:
	bl sub_0801E538
	cmp r0, #0
	bne _0800ED04
	strh r0, [r7, #0x20]
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	b _0800EE56
_0800ED00:
	adds r0, r4, #0
	b _0800ED50
_0800ED04:
	ldrh r0, [r7, #0x10]
	cmp r0, #9
	beq _0800ED6C
	bl sub_0801D34C
	str r0, [sp, #0x128]
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	movs r4, #7
	ldr r0, _0800ED68
	lsls r1, r1, #1
	mov r8, r1
	adds r3, r0, #0
	adds r3, #0xe
	ldr r5, [sp, #0x1b8]
_0800ED2C:
	ldrh r0, [r3, #0]
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800ED3A
	movs r2, #0
_0800ED3A:
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0800ED00
	subs r3, #2
	subs r4, #1
	cmp r4, #0
	bge _0800ED2C
	movs r0, #0
_0800ED50:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [sp, #0x128]
	cmp r1, r5
	bhi _0800ED86
	ldr r4, [sp, #0x128]
	ldrh r5, [r7, #0x26]
	cmp r4, r5
	bls _0800EDA0
	movs r0, #0
	str r0, [sp, #0x128]
	b _0800EDA6
_0800ED68: .4byte gUnk_0847ACE8
_0800ED6C:
	bl sub_0801D34C
	str r0, [sp, #0x128]
	bl sub_0801DEB8
	bl sub_08079FD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r5, r0, #1
	ldr r1, [sp, #0x128]
	cmp r1, r5
	bls _0800ED94
_0800ED86:
	str r5, [sp, #0x128]
	ldrh r2, [r7, #0x26]
	cmp r5, r2
	bls _0800EDA0
	movs r3, #0
	str r3, [sp, #0x128]
	b _0800EDA6
_0800ED94:
	ldr r4, [sp, #0x128]
	ldrh r5, [r7, #0x26]
	cmp r4, r5
	bls _0800EDA0
	movs r0, #0
	str r0, [sp, #0x128]
_0800EDA0:
	ldr r1, [sp, #0x128]
	cmp r1, #0
	bne _0800EDB4
_0800EDA6:
	ldr r2, [sp, #0x130]
	ldr r3, [sp, #0x134]
	adds r0, r2, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x130]
	b _0800EDBE
_0800EDB4:
	movs r0, #0
	add r4, sp, #0x128
	ldrh r4, [r4, #0]
	strh r4, [r7, #0x26]
	strh r0, [r7, #0x24]
_0800EDBE:
	ldr r5, [sp, #0x130]
	cmp r5, #0xff
	bls _0800EE56
	lsrs r0, r5, #8
	ldrh r1, [r7, #0x24]
	adds r0, r0, r1
	movs r2, #0
	strh r0, [r7, #0x24]
	movs r1, #0xff
	ands r5, r1
	str r5, [sp, #0x130]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _0800EE56
	ldr r0, [sp, #0x134]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x134]
	ldrh r0, [r7, #0x26]
	adds r0, #1
	strh r0, [r7, #0x26]
	strh r2, [r7, #0x24]
	ldrh r0, [r7, #0x26]
	subs r0, #1
	cmp r0, #6
	bhi _0800EE56
	lsls r0, r0, #2
	ldr r1, _0800EE00
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800EE00: .4byte _0800EE04
_0800EE04:
	.4byte _0800EE20
_0800EE08: .4byte _0800EE28
_0800EE0C: .4byte _0800EE30
_0800EE10: .4byte _0800EE38
_0800EE14: .4byte _0800EE40
_0800EE18: .4byte _0800EE48
_0800EE1C: .4byte _0800EE50
_0800EE20:
	movs r0, #0x90
	bl sub_0805865C
	b _0800EE56
_0800EE28:
	movs r0, #0x96
	bl sub_0805865C
	b _0800EE56
_0800EE30:
	movs r0, #0x97
	bl sub_0805865C
	b _0800EE56
_0800EE38:
	movs r0, #0x98
	bl sub_0805865C
	b _0800EE56
_0800EE40:
	movs r0, #0x99
	bl sub_0805865C
	b _0800EE56
_0800EE48:
	movs r0, #0x9a
	bl sub_0805865C
	b _0800EE56
_0800EE50:
	movs r0, #0x9b
	bl sub_0805865C
_0800EE56:
	cmp r6, #0
	beq _0800EE62
	movs r0, #4
_0800EE5C:
	strh r0, [r7, #0x20]
	bl _0800FF38
_0800EE62:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	bgt _0800EE70
	b _0800F606
_0800EE70:
	bl _0800FF32
_0800EE74:
	movs r6, #0
	ldrh r1, [r7, #0x12]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800EE84
	movs r6, #5
	b _0800EE8E
_0800EE84:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800EE8E
	movs r6, #1
_0800EE8E:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800EEAA
	cmp r6, #5
	bne _0800EE9E
	movs r6, #4
	b _0800EEC4
_0800EE9E:
	cmp r6, #1
	bne _0800EEA6
	movs r6, #2
	b _0800EEC4
_0800EEA6:
	movs r6, #3
	b _0800EEC4
_0800EEAA:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800EEC4
	cmp r6, #5
	bne _0800EEBA
	movs r6, #6
	b _0800EEC4
_0800EEBA:
	cmp r6, #1
	bne _0800EEC2
	movs r6, #8
	b _0800EEC4
_0800EEC2:
	movs r6, #7
_0800EEC4:
	ldrh r3, [r7, #0x18]
	ands r3, r1
	cmp r3, #0
	beq _0800EECE
	b _0800F0F4
_0800EECE:
	ldrh r0, [r7, #0x26]
	cmp r0, #0
	bne _0800EED6
	b _0800F0D4
_0800EED6:
	ldrh r0, [r7, #0x10]
	cmp r0, #9
	beq _0800EF14
	ldrh r2, [r7, #0x26]
	adds r0, r7, #0
	adds r0, #0x6c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	ldr r1, _0800EF28
	lsls r2, r2, #1
	adds r2, r2, r1
	lsls r0, r0, #1
	ldrh r2, [r2, #0]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800EF00
	movs r2, #0
_0800EF00:
	ldr r4, [sp, #0x1b8]
	ldrh r1, [r4, #0]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	strh r1, [r4, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0800EF14
	strh r3, [r4, #0]
_0800EF14:
	bl sub_0801DE60
	cmp r0, #7
	bls _0800EF1E
	b _0800F0C0
_0800EF1E:
	lsls r0, r0, #2
	ldr r1, _0800EF2C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800EF28: .4byte gUnk_0847ACE8
_0800EF2C: .4byte _0800EF30
_0800EF30:
	.4byte _0800EF50
_0800EF34: .4byte _0800EFDA
_0800EF38: .4byte _0800EF62
_0800EF3C: .4byte _0800EFBA
_0800EF40: .4byte _0800EFDA
_0800EF44: .4byte _0800EFCC
_0800EF48: .4byte _0800EFDA
_0800EF4C: .4byte _0800F080
_0800EF50:
	ldr r5, [sp, #0x1c8]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	movs r0, #5
	strh r0, [r7, #0x20]
	bl sub_08014D60
	b _0800F0C0
_0800EF62:
	ldrh r4, [r7, #0x10]
	cmp r4, #9
	bne _0800EFB0
	bl sub_0801DEB8
	ldrh r1, [r7, #0x26]
	bl sub_0806898C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0800EFA0
	bl sub_0801DEB8
	cmp r0, #7
	beq _0800EF84
	b _0800F098
_0800EF84:
	ldr r0, _0800EF9C
	ldrh r1, [r7, #0]
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne _0800EF92
	b _0800F098
_0800EF92:
	movs r0, #0
	strh r0, [r7, #0x26]
	strh r0, [r7, #0x24]
	b _0800F0AA
	.2byte 0x0000
_0800EF9C: .4byte gUnk_03006410
_0800EFA0:
	strh r0, [r7, #0x26]
	strh r0, [r7, #0x24]
	movs r3, #0
	str r3, [sp, #0x130]
	movs r4, #0
	str r4, [sp, #0x134]
	strh r4, [r7, #0x20]
	b _0800F0C0
_0800EFB0:
	ldr r6, [sp, #0x1c8]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
	b _0800F0BC
_0800EFBA:
	ldr r1, [sp, #0x1c8]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	movs r0, #5
	strh r0, [r7, #0x20]
	bl sub_080151E0
	b _0800F0C0
_0800EFCC:
	movs r0, #5
	strh r0, [r7, #0x20]
	ldr r2, [sp, #0x1c8]
	ldr r0, [r2, #0]
	adds r0, #1
	str r0, [r2, #0]
	b _0800F0C0
_0800EFDA:
	ldrh r4, [r7, #0x10]
	cmp r4, #5
	beq _0800EFF0
	cmp r4, #5
	bgt _0800EFEA
	cmp r4, #4
	beq _0800F06E
	b _0800F0C0
_0800EFEA:
	cmp r4, #9
	beq _0800F000
	b _0800F0C0
_0800EFF0:
	ldr r3, [sp, #0x1c8]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	strh r4, [r7, #0x20]
	bl sub_0801551C
	b _0800F0C0
_0800F000:
	bl sub_0801DEB8
	ldrh r1, [r7, #0x26]
	bl sub_0806898C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0800F05E
	bl sub_0801DE60
	cmp r0, #6
	bne _0800F052
	bl sub_0801DEB8
	cmp r0, #0x11
	bne _0800F02E
	ldr r0, _0800F03C
	ldrh r1, [r7, #0]
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne _0800F040
_0800F02E:
	strh r4, [r7, #0x20]
	ldr r4, [sp, #0x1c8]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	b _0800F0C0
	.2byte 0x0000
_0800F03C: .4byte gUnk_03006430
_0800F040:
	movs r0, #0
	strh r0, [r7, #0x26]
	strh r0, [r7, #0x24]
	movs r5, #0
	str r5, [sp, #0x130]
	movs r6, #0
	str r6, [sp, #0x134]
	strh r6, [r7, #0x20]
	b _0800F0C0
_0800F052:
	strh r4, [r7, #0x20]
	ldr r1, [sp, #0x1c8]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	b _0800F0C0
_0800F05E:
	strh r0, [r7, #0x26]
	strh r0, [r7, #0x24]
	movs r2, #0
	str r2, [sp, #0x130]
	movs r3, #0
	str r3, [sp, #0x134]
	strh r3, [r7, #0x20]
	b _0800F0C0
_0800F06E:
	ldr r5, [sp, #0x1c8]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	movs r0, #5
	strh r0, [r7, #0x20]
	bl sub_0801551C
	b _0800F0C0
_0800F080:
	ldrh r4, [r7, #0x10]
	cmp r4, #9
	bne _0800F0B4
	bl sub_0801DEB8
	ldrh r1, [r7, #0x26]
	bl sub_0806898C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _0800F0A4
_0800F098:
	strh r4, [r7, #0x20]
	ldr r6, [sp, #0x1c8]
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
	b _0800F0C0
_0800F0A4:
	strh r0, [r7, #0x26]
	strh r0, [r7, #0x24]
	movs r0, #0
_0800F0AA:
	str r0, [sp, #0x130]
	movs r1, #0
	str r1, [sp, #0x134]
	strh r1, [r7, #0x20]
	b _0800F0C0
_0800F0B4:
	ldr r3, [sp, #0x1c8]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
_0800F0BC:
	movs r0, #5
	strh r0, [r7, #0x20]
_0800F0C0:
	adds r0, r7, #0
	adds r0, #0xb4
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	movs r4, #0
	str r4, [sp, #0x144]
	bl _0800FF38
_0800F0D4:
	strh r0, [r7, #0x26]
	strh r0, [r7, #0x24]
	movs r5, #0
	str r5, [sp, #0x144]
	movs r6, #0
	str r6, [sp, #0x130]
	movs r0, #0
	str r0, [sp, #0x134]
	strh r0, [r7, #0x20]
	ldr r0, [r7, #0x30]
	ldr r1, _0800F0F0
	bl _0800FEC4
	.2byte 0x0000
_0800F0F0: .4byte 0xFFDFFFFF
_0800F0F4:
	cmp r6, #0
	bne _0800F0FC
	movs r0, #3
	b _0800EE5C
_0800F0FC:
	bl sub_0801E538
	cmp r0, #0
	bne _0800F11E
	strh r0, [r7, #0x20]
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	adds r4, r7, #0
	adds r4, #0xd8
	subs r6, #1
	mov sl, r6
	movs r2, #0x40
	adds r2, r2, r7
	mov r9, r2
	b _0800F2AA
_0800F11A:
	adds r0, r5, #0
	b _0800F178
_0800F11E:
	ldrh r0, [r7, #0x10]
	cmp r0, #9
	beq _0800F1A2
	bl sub_0801D34C
	str r0, [sp, #0x128]
	adds r0, r7, #0
	adds r0, #0x6c
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	movs r5, #7
	adds r4, r7, #0
	adds r4, #0xd8
	subs r6, #1
	mov sl, r6
	movs r3, #0x40
	adds r3, r3, r7
	mov r9, r3
	ldr r0, _0800F190
	lsls r1, r1, #1
	mov r8, r1
	adds r3, r0, #0
	adds r3, #0xe
	ldr r6, [sp, #0x1b8]
_0800F154:
	ldrh r0, [r3, #0]
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r0, #0
	bge _0800F162
	movs r2, #0
_0800F162:
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0800F11A
	subs r3, #2
	subs r5, #1
	cmp r5, #0
	bge _0800F154
	movs r0, #0
_0800F178:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [sp, #0x128]
	cmp r1, r5
	bls _0800F194
	str r5, [sp, #0x128]
	ldrh r2, [r7, #0x26]
	cmp r5, r2
	bls _0800F1F2
	movs r3, #0
	str r3, [sp, #0x128]
	b _0800F1F8
_0800F190: .4byte gUnk_0847ACE8
_0800F194:
	ldr r5, [sp, #0x128]
	ldrh r6, [r7, #0x26]
	cmp r5, r6
	bls _0800F1F2
	movs r0, #0
	str r0, [sp, #0x128]
	b _0800F1F8
_0800F1A2:
	bl sub_0801D34C
	str r0, [sp, #0x128]
	bl sub_0801DEB8
	bl sub_08079FD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	subs r5, r0, #1
	ldr r1, [sp, #0x128]
	cmp r1, r5
	bls _0800F1D8
	str r5, [sp, #0x128]
	adds r4, r7, #0
	adds r4, #0xd8
	subs r6, #1
	mov sl, r6
	movs r2, #0x40
	adds r2, r2, r7
	mov r9, r2
	ldrh r3, [r7, #0x26]
	cmp r5, r3
	bls _0800F1F2
	movs r5, #0
	str r5, [sp, #0x128]
	b _0800F1F8
_0800F1D8:
	adds r4, r7, #0
	adds r4, #0xd8
	subs r6, #1
	mov sl, r6
	movs r6, #0x40
	adds r6, r6, r7
	mov r9, r6
	ldr r0, [sp, #0x128]
	ldrh r1, [r7, #0x26]
	cmp r0, r1
	bls _0800F1F2
	movs r2, #0
	str r2, [sp, #0x128]
_0800F1F2:
	ldr r3, [sp, #0x128]
	cmp r3, #0
	bne _0800F206
_0800F1F8:
	ldr r5, [sp, #0x130]
	ldr r6, [sp, #0x134]
	adds r0, r5, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x130]
	b _0800F210
_0800F206:
	movs r0, #0
	add r1, sp, #0x128
	ldrh r1, [r1, #0]
	strh r1, [r7, #0x26]
	strh r0, [r7, #0x24]
_0800F210:
	ldr r2, [sp, #0x130]
	cmp r2, #0xff
	bls _0800F2AA
	lsrs r0, r2, #8
	ldrh r3, [r7, #0x24]
	adds r0, r0, r3
	movs r2, #0
	strh r0, [r7, #0x24]
	movs r1, #0xff
	ldr r5, [sp, #0x130]
	ands r5, r1
	str r5, [sp, #0x130]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _0800F2AA
	ldr r0, [sp, #0x134]
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x134]
	ldrh r0, [r7, #0x26]
	adds r0, #1
	strh r0, [r7, #0x26]
	strh r2, [r7, #0x24]
	ldrh r0, [r7, #0x26]
	subs r0, #1
	cmp r0, #6
	bhi _0800F2AA
	lsls r0, r0, #2
	ldr r1, _0800F254
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800F254: .4byte _0800F258
_0800F258:
	.4byte _0800F274
_0800F25C: .4byte _0800F27C
_0800F260: .4byte _0800F284
_0800F264: .4byte _0800F28C
_0800F268: .4byte _0800F294
_0800F26C: .4byte _0800F29C
_0800F270: .4byte _0800F2A4
_0800F274:
	movs r0, #0x90
	bl sub_0805865C
	b _0800F2AA
_0800F27C:
	movs r0, #0x96
	bl sub_0805865C
	b _0800F2AA
_0800F284:
	movs r0, #0x97
	bl sub_0805865C
	b _0800F2AA
_0800F28C:
	movs r0, #0x98
	bl sub_0805865C
	b _0800F2AA
_0800F294:
	movs r0, #0x99
	bl sub_0805865C
	b _0800F2AA
_0800F29C:
	movs r0, #0x9a
	bl sub_0805865C
	b _0800F2AA
_0800F2A4:
	movs r0, #0x9b
	bl sub_0805865C
_0800F2AA:
	mov r6, sl
	strh r6, [r7, #0x1c]
	adds r3, r4, #0
	mov r0, r9
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r1, [r4, #0]
	subs r0, r2, r1
	asrs r0, r0, #1
	cmp r0, #0
	ble _0800F2C4
	adds r0, r1, r0
	b _0800F2C6
_0800F2C4:
	adds r0, r1, #1
_0800F2C6:
	str r0, [r4, #0]
	ldr r0, [r3, #0]
	cmp r2, r0
	ble _0800F2D2
	bl _0800FF38
_0800F2D2:
	str r2, [r3, #0]
	bl _0800FF38
_0800F2D8:
	movs r6, #0
	ldrh r1, [r7, #0x12]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800F2E8
	movs r6, #5
	b _0800F2F2
_0800F2E8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800F2F2
	movs r6, #1
_0800F2F2:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800F30E
	cmp r6, #5
	bne _0800F302
	movs r6, #4
	b _0800F328
_0800F302:
	cmp r6, #1
	bne _0800F30A
	movs r6, #2
	b _0800F328
_0800F30A:
	movs r6, #3
	b _0800F328
_0800F30E:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800F328
	cmp r6, #5
	bne _0800F31E
	movs r6, #6
	b _0800F328
_0800F31E:
	cmp r6, #1
	bne _0800F326
	movs r6, #8
	b _0800F328
_0800F326:
	movs r6, #7
_0800F328:
	bl sub_0801DE60
	cmp r0, #5
	beq _0800F348
	cmp r0, #5
	bgt _0800F33A
	cmp r0, #0
	beq _0800F340
	b _0800F3CC
_0800F33A:
	cmp r0, #7
	beq _0800F37E
	b _0800F3CC
_0800F340:
	ldrh r0, [r7, #0x10]
	cmp r0, #3
	bne _0800F3C0
	b _0800F384
_0800F348:
	ldrh r0, [r7, #0x10]
	cmp r0, #8
	bne _0800F3C0
	cmp r6, #0
	beq _0800F3C0
	subs r0, r6, #1
	strh r0, [r7, #0x1c]
	adds r2, r7, #0
	adds r2, #0x94
	adds r5, r7, #0
	adds r5, #0x8c
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_0800CCCC
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r7, #0
	adds r0, #0x40
	ldrh r0, [r0, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldrh r2, [r7, #0x1c]
	b _0800F3B2
_0800F37E:
	ldrh r0, [r7, #0x10]
	cmp r0, #1
	bne _0800F3C0
_0800F384:
	cmp r6, #0
	beq _0800F3C0
	adds r2, r7, #0
	adds r2, #0x94
	adds r5, r7, #0
	adds r5, #0x8c
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_0800CCCC
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r7, #0
	adds r0, #0x40
	ldrh r0, [r0, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	subs r2, r6, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
_0800F3B2:
	ldr r1, [r7, #0x30]
	movs r4, #0x20
	ands r1, r4
	str r1, [sp, #0]
	adds r1, r5, #0
	bl sub_08013E90
_0800F3C0:
	adds r1, r7, #0
	adds r1, #0xd8
	movs r0, #0
	str r0, [r1, #0]
	bl _0800FF38
_0800F3CC:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	ble _0800F3DC
	bl _0800FF32
_0800F3DC:
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	ble _0800F3EA
	bl _0800FF38
_0800F3EA:
	movs r0, #0
	bl _0800FF36
_0800F3F0:
	movs r2, #0
	str r2, [sp, #0x158]
	movs r6, #0
	ldrh r1, [r7, #0x12]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800F404
	movs r6, #5
	b _0800F40E
_0800F404:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800F40E
	movs r6, #1
_0800F40E:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800F42A
	cmp r6, #5
	bne _0800F41E
	movs r6, #4
	b _0800F444
_0800F41E:
	cmp r6, #1
	bne _0800F426
	movs r6, #2
	b _0800F444
_0800F426:
	movs r6, #3
	b _0800F444
_0800F42A:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800F444
	cmp r6, #5
	bne _0800F43A
	movs r6, #6
	b _0800F444
_0800F43A:
	cmp r6, #1
	bne _0800F442
	movs r6, #8
	b _0800F444
_0800F442:
	movs r6, #7
_0800F444:
	ldr r4, _0800F47C
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0x54
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r1, #0x56
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	subs r0, #1
	bl sub_0805D548
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	bne _0800F484
	movs r0, #0
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	movs r3, #0
	str r3, [sp, #0x130]
	movs r4, #0
	str r4, [sp, #0x134]
	strh r4, [r7, #0x20]
	ldr r6, _0800F480
	str r6, [sp, #0x190]
	bl _0800FF38
_0800F47C: .4byte gUnk_030034E0
_0800F480: .4byte 0x0000FFFF
_0800F484:
	ldrh r0, [r7, #0x12]
	ldrh r2, [r7, #0x1a]
	ands r2, r0
	cmp r2, #0
	bne _0800F4E4
	ldrh r0, [r7, #0x26]
	cmp r0, #0
	beq _0800F4CA
	ldr r0, [r4, #0]
	adds r1, r0, #0
	adds r1, #0x54
	ldr r3, [sp, #0x194]
	ldrh r4, [r1, #0]
	cmp r3, r4
	bne _0800F4CA
	ldrh r1, [r1, #0]
	lsls r1, r1, #1
	adds r0, #0x56
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x190]
	movs r0, #8
	strh r0, [r7, #0x20]
	adds r0, r7, #0
	adds r0, #0xb4
	strh r2, [r0, #0]
	subs r0, #2
	strh r2, [r0, #0]
	movs r5, #0
	str r5, [sp, #0x144]
	bl _0800FF38
_0800F4CA:
	ldr r6, _0800F4E0
	str r6, [sp, #0x190]
	movs r0, #0
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	str r0, [sp, #0x130]
	movs r1, #0
	str r1, [sp, #0x134]
	strh r1, [r7, #0x20]
	bl _0800FF38
_0800F4E0: .4byte 0x0000FFFE
_0800F4E4:
	ldr r3, [sp, #0x130]
	ldr r4, [sp, #0x134]
	adds r0, r3, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	str r5, [sp, #0x130]
	cmp r5, #0xff
	bhi _0800F4F6
	b _0800F5EE
_0800F4F6:
	lsrs r0, r0, #0x18
	ldrh r1, [r7, #0x24]
	adds r0, r0, r1
	movs r3, #0
	strh r0, [r7, #0x24]
	movs r1, #0xff
	ands r5, r1
	str r5, [sp, #0x130]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0800F5EE
	ldrh r0, [r7, #0x26]
	adds r1, r0, #1
	strh r1, [r7, #0x26]
	adds r0, r4, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x134]
	adds r0, r7, #0
	adds r0, #0x67
	ldrb r2, [r0, #0]
	cmp r2, #0
	beq _0800F570
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x10
	bls _0800F534
	movs r0, #0x10
	b _0800F57A
_0800F534:
	strh r3, [r7, #0x24]
	lsrs r0, r1, #0x11
	subs r0, #1
	cmp r0, #6
	bhi _0800F5EE
	lsls r0, r0, #2
	ldr r1, _0800F548
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800F548: .4byte _0800F54C
_0800F54C:
	.4byte _0800F5B8
_0800F550: .4byte _0800F5C0
_0800F554: .4byte _0800F5C8
_0800F558: .4byte _0800F5D0
_0800F55C: .4byte _0800F5D8
_0800F560: .4byte _0800F5E0
_0800F564: .4byte _0800F568
_0800F568:
	movs r0, #0x9b
	bl sub_0805865C
	b _0800F5EE
_0800F570:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0800F582
	movs r0, #8
_0800F57A:
	strh r0, [r7, #0x26]
	movs r0, #0x11
	strh r0, [r7, #0x24]
	b _0800F5EE
_0800F582:
	strh r2, [r7, #0x24]
	ldrh r0, [r7, #0x26]
	subs r0, #1
	cmp r0, #6
	bhi _0800F5EE
	lsls r0, r0, #2
	ldr r1, _0800F598
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0800F598: .4byte _0800F59C
_0800F59C:
	.4byte _0800F5B8
_0800F5A0: .4byte _0800F5C0
_0800F5A4: .4byte _0800F5C8
_0800F5A8: .4byte _0800F5D0
_0800F5AC: .4byte _0800F5D8
_0800F5B0: .4byte _0800F5E0
_0800F5B4: .4byte _0800F5E8
_0800F5B8:
	movs r0, #0x90
	bl sub_0805865C
	b _0800F5EE
_0800F5C0:
	movs r0, #0x96
	bl sub_0805865C
	b _0800F5EE
_0800F5C8:
	movs r0, #0x97
	bl sub_0805865C
	b _0800F5EE
_0800F5D0:
	movs r0, #0x98
	bl sub_0805865C
	b _0800F5EE
_0800F5D8:
	movs r0, #0x99
	bl sub_0805865C
	b _0800F5EE
_0800F5E0:
	movs r0, #0x9a
	bl sub_0805865C
	b _0800F5EE
_0800F5E8:
	movs r0, #0x9b
	bl sub_0805865C
_0800F5EE:
	cmp r6, #0
	beq _0800F5F6
	movs r0, #7
	b _0800EE5C
_0800F5F6:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	ble _0800F606
	bl _0800FF32
_0800F606:
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	ble _0800F614
	bl _0800FF38
_0800F614:
	str r6, [r4, #0]
	bl _0800FF38
_0800F61A:
	movs r2, #0
	str r2, [sp, #0x158]
	movs r6, #0
	ldrh r1, [r7, #0x12]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800F62E
	movs r6, #5
	b _0800F638
_0800F62E:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800F638
	movs r6, #1
_0800F638:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800F654
	cmp r6, #5
	bne _0800F648
	movs r6, #4
	b _0800F66E
_0800F648:
	cmp r6, #1
	bne _0800F650
	movs r6, #2
	b _0800F66E
_0800F650:
	movs r6, #3
	b _0800F66E
_0800F654:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800F66E
	cmp r6, #5
	bne _0800F664
	movs r6, #6
	b _0800F66E
_0800F664:
	cmp r6, #1
	bne _0800F66C
	movs r6, #8
	b _0800F66E
_0800F66C:
	movs r6, #7
_0800F66E:
	ldr r4, _0800F6A4
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0x54
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r1, #0x56
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	subs r0, #1
	bl sub_0805D548
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	bne _0800F6A8
	movs r0, #0
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	movs r3, #0
	str r3, [sp, #0x130]
	movs r4, #0
	str r4, [sp, #0x134]
	strh r4, [r7, #0x20]
	bl _0800FF38
	.2byte 0x0000
_0800F6A4: .4byte gUnk_030034E0
_0800F6A8:
	ldrh r0, [r7, #0x12]
	ldrh r2, [r7, #0x1a]
	ands r2, r0
	cmp r2, #0
	bne _0800F710
	ldrh r0, [r7, #0x26]
	cmp r0, #0
	beq _0800F6F2
	ldr r0, [r4, #0]
	adds r1, r0, #0
	adds r1, #0x54
	ldr r6, [sp, #0x194]
	ldrh r3, [r1, #0]
	cmp r6, r3
	bne _0800F6F2
	ldrh r1, [r1, #0]
	lsls r1, r1, #1
	adds r0, #0x56
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x190]
	movs r0, #8
	strh r0, [r7, #0x20]
	adds r0, r7, #0
	adds r0, #0xb4
	strh r2, [r0, #0]
	subs r0, #2
	strh r2, [r0, #0]
	movs r4, #0
	str r4, [sp, #0x144]
	movs r5, #0
	str r5, [sp, #0x158]
	bl _0800FF38
_0800F6F2:
	ldr r6, _0800F70C
	str r6, [sp, #0x194]
	movs r0, #0
	strh r0, [r7, #0x26]
	strh r0, [r7, #0x24]
	str r0, [sp, #0x144]
	movs r1, #0
	str r1, [sp, #0x130]
	movs r2, #0
	str r2, [sp, #0x134]
	strh r2, [r7, #0x20]
	bl _0800FF38
_0800F70C: .4byte 0x0000FFFE
_0800F710:
	cmp r6, #0
	bne _0800F71A
	movs r0, #6
	bl _0800EE5C
_0800F71A:
	ldr r4, [sp, #0x130]
	ldr r5, [sp, #0x134]
	adds r0, r4, r5
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	str r1, [sp, #0x130]
	cmp r1, #0xff
	bhi _0800F72C
	b _0800F826
_0800F72C:
	lsrs r0, r0, #0x18
	ldrh r2, [r7, #0x24]
	adds r0, r0, r2
	movs r3, #0
	strh r0, [r7, #0x24]
	movs r1, #0xff
	ldr r4, [sp, #0x130]
	ands r4, r1
	str r4, [sp, #0x130]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _0800F826
	ldrh r0, [r7, #0x26]
	adds r1, r0, #1
	strh r1, [r7, #0x26]
	adds r0, r5, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x134]
	adds r0, r7, #0
	adds r0, #0x67
	ldrb r2, [r0, #0]
	cmp r2, #0
	beq _0800F7A8
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x10
	bls _0800F76C
	movs r0, #0x10
	b _0800F7B2
_0800F76C:
	strh r3, [r7, #0x24]
	lsrs r0, r1, #0x11
	subs r0, #1
	cmp r0, #6
	bhi _0800F826
	lsls r0, r0, #2
	ldr r1, _0800F780
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800F780: .4byte _0800F784
_0800F784:
	.4byte _0800F7F0
_0800F788: .4byte _0800F7F8
_0800F78C: .4byte _0800F800
_0800F790: .4byte _0800F808
_0800F794: .4byte _0800F810
_0800F798: .4byte _0800F818
_0800F79C: .4byte _0800F7A0
_0800F7A0:
	movs r0, #0x9b
	bl sub_0805865C
	b _0800F826
_0800F7A8:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0800F7BA
	movs r0, #8
_0800F7B2:
	strh r0, [r7, #0x26]
	movs r0, #0x11
	strh r0, [r7, #0x24]
	b _0800F826
_0800F7BA:
	strh r2, [r7, #0x24]
	ldrh r0, [r7, #0x26]
	subs r0, #1
	cmp r0, #6
	bhi _0800F826
	lsls r0, r0, #2
	ldr r1, _0800F7D0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0800F7D0: .4byte _0800F7D4
_0800F7D4:
	.4byte _0800F7F0
_0800F7D8: .4byte _0800F7F8
_0800F7DC: .4byte _0800F800
_0800F7E0: .4byte _0800F808
_0800F7E4: .4byte _0800F810
_0800F7E8: .4byte _0800F818
_0800F7EC: .4byte _0800F820
_0800F7F0:
	movs r0, #0x90
	bl sub_0805865C
	b _0800F826
_0800F7F8:
	movs r0, #0x96
	bl sub_0805865C
	b _0800F826
_0800F800:
	movs r0, #0x97
	bl sub_0805865C
	b _0800F826
_0800F808:
	movs r0, #0x98
	bl sub_0805865C
	b _0800F826
_0800F810:
	movs r0, #0x99
	bl sub_0805865C
	b _0800F826
_0800F818:
	movs r0, #0x9a
	bl sub_0805865C
	b _0800F826
_0800F820:
	movs r0, #0x9b
	bl sub_0805865C
_0800F826:
	subs r0, r6, #1
	strh r0, [r7, #0x1c]
	adds r0, r7, #0
	adds r0, #0x40
	adds r2, r7, #0
	adds r2, #0xd8
	movs r5, #0
	ldrsh r3, [r0, r5]
	ldr r1, [r2, #0]
	subs r0, r3, r1
	asrs r0, r0, #1
	adds r4, r2, #0
	cmp r0, #0
	ble _0800F846
	adds r0, r1, r0
	b _0800F848
_0800F846:
	adds r0, r1, #1
_0800F848:
	str r0, [r4, #0]
	ldr r0, [r2, #0]
	cmp r3, r0
	ble _0800F852
	b _0800FF38
_0800F852:
	str r3, [r2, #0]
	b _0800FF38
_0800F856:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	bgt _0800F870
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800F876
	movs r0, #0
	b _0800F874
_0800F870:
	asrs r0, r1, #1
	subs r0, r1, r0
_0800F874:
	str r0, [r4, #0]
_0800F876:
	adds r0, r7, #0
	adds r0, #0xb0
	adds r1, r7, #0
	adds r1, #0xb8
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	beq _0800F888
	b _0800FF38
_0800F888:
	adds r0, r7, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0800F894
	b _0800FF38
_0800F894:
	movs r0, #0
	strh r0, [r7, #0x20]
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	movs r6, #0
	str r6, [sp, #0x144]
	ldr r0, _0800F8A8
	str r0, [sp, #0x190]
	b _0800FF38
	.2byte 0x0000
_0800F8A8: .4byte 0x0000FFFF
_0800F8AC:
	bl sub_0801DE60
	cmp r0, #3
	beq _0800F8D4
	cmp r0, #4
	beq _0800F93E
	adds r2, r7, #0
	adds r2, #0xd8
	ldr r1, [r2, #0]
	adds r4, r2, #0
	cmp r1, #0x17
	bgt _0800F9AA
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800F9B0
	movs r0, #0
	str r0, [r2, #0]
	b _0800F9B0
_0800F8D4:
	ldrh r0, [r7, #0x10]
	cmp r0, #4
	bne _0800F924
	adds r0, r7, #0
	adds r0, #0xb2
	ldrh r2, [r0, #0]
	cmp r2, #0
	beq _0800F90A
	adds r0, #2
	ldrh r0, [r0, #0]
	adds r4, r7, #0
	adds r4, #0xd8
	cmp r0, #1
	bne _0800F8F6
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0]
_0800F8F6:
	ldr r1, [r4, #0]
	cmp r1, #0x17
	bgt _0800F9AA
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800F9B0
	movs r0, #0
	b _0800F9AE
_0800F90A:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	bgt _0800F9AA
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800F9B0
	str r2, [r4, #0]
	b _0800F9B0
_0800F924:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	bgt _0800F9AA
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800F9B0
	movs r0, #0
	b _0800F9AE
_0800F93E:
	ldrh r0, [r7, #0x10]
	cmp r0, #4
	bne _0800F990
	adds r0, r7, #0
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #1
	bls _0800F976
	adds r0, r7, #0
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	adds r4, r7, #0
	adds r4, #0xd8
	cmp r0, #1
	bne _0800F962
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r4, #0]
_0800F962:
	ldr r1, [r4, #0]
	cmp r1, #0x17
	bgt _0800F9AA
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800F9B0
	movs r0, #0
	b _0800F9AE
_0800F976:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	bgt _0800F9AA
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800F9B0
	movs r0, #0
	b _0800F9AE
_0800F990:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	bgt _0800F9AA
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800F9B0
	movs r0, #0
	b _0800F9AE
_0800F9AA:
	asrs r0, r1, #1
	subs r0, r1, r0
_0800F9AE:
	str r0, [r4, #0]
_0800F9B0:
	adds r0, r7, #0
	adds r0, #0xb0
	adds r1, r7, #0
	adds r1, #0xb8
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	beq _0800F9C2
	b _0800FF38
_0800F9C2:
	adds r0, r7, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0800F9CE
	b _0800FF38
_0800F9CE:
	ldr r0, [r7, #0x30]
	ldr r1, _0800F9E4
	ands r0, r1
	str r0, [r7, #0x30]
	movs r0, #0
	strh r0, [r7, #0x20]
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	movs r1, #0
	str r1, [sp, #0x144]
	b _0800FF38
_0800F9E4: .4byte 0xFFDFFFFF
_0800F9E8:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	bgt _0800FA02
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800FA08
	movs r0, #0
	b _0800FA06
_0800FA02:
	asrs r0, r1, #1
	subs r0, r1, r0
_0800FA06:
	str r0, [r4, #0]
_0800FA08:
	adds r0, r7, #0
	adds r0, #0xb0
	adds r1, r7, #0
	adds r1, #0xb8
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	beq _0800FA1A
	b _0800FF38
_0800FA1A:
	adds r0, r7, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0800FA26
	b _0800FF38
_0800FA26:
	ldr r0, [r7, #0x30]
	ldr r1, _0800FA3C
	ands r0, r1
	str r0, [r7, #0x30]
	movs r0, #0
	strh r0, [r7, #0x20]
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	movs r2, #0
	str r2, [sp, #0x144]
	b _0800FF38
_0800FA3C: .4byte 0xFFDFFFFF
_0800FA40:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	bgt _0800FA5A
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800FA60
	movs r0, #0
	b _0800FA5E
_0800FA5A:
	asrs r0, r1, #1
	subs r0, r1, r0
_0800FA5E:
	str r0, [r4, #0]
_0800FA60:
	adds r0, r7, #0
	adds r0, #0xb0
	adds r1, r7, #0
	adds r1, #0xb8
	ldrh r0, [r0, #0]
	mov r8, r1
	ldrh r3, [r1, #0]
	cmp r0, r3
	beq _0800FA74
	b _0800FD66
_0800FA74:
	adds r0, r7, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0800FA80
	b _0800FD66
_0800FA80:
	ldr r4, _0800FAD0
	str r4, [sp, #0x194]
	adds r0, r7, #0
	bl sub_08013BC0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _0800FA94
	b _0800FCEC
_0800FA94:
	movs r1, #0
	ldr r0, _0800FAD4
	mov r5, r8
	strh r0, [r5, #0]
	adds r0, r7, #0
	adds r0, #0xb4
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	movs r0, #0xb
	strh r0, [r7, #0x20]
	ldrh r1, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x64
	strh r1, [r0, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0800FADE
	bl sub_0800CD34
	cmp r0, #0
	bne _0800FADE
	ldrh r0, [r7, #0xc]
	cmp r0, #8
	bne _0800FAD8
	movs r0, #0x53
	bl sub_0805865C
	b _0800FADE
_0800FAD0: .4byte 0x0000FFFE
_0800FAD4: .4byte 0x0000FFFD
_0800FAD8:
	adds r0, #0x4d
	bl sub_0805865C
_0800FADE:
	bl sub_0800CB9C
	cmp r0, #0
	beq _0800FAF2
	movs r1, #0x96
	lsls r1, r1, #1
	movs r0, #0x44
	bl sub_08058B08
	b _0800FAF8
_0800FAF2:
	movs r0, #0x44
	bl sub_08058688
_0800FAF8:
	movs r6, #0
	str r6, [sp, #0x148]
	bl sub_0800CF80
	movs r1, #0x68
	adds r1, r1, r7
	mov r9, r1
	adds r6, r7, #0
	adds r6, #0xe0
	cmp r0, #0
	bne _0800FBE6
	bl sub_0800CDC0
	cmp r0, #0
	bne _0800FBE6
	movs r5, #0
	add r4, sp, #0xe0
	b _0800FB22
_0800FB1C:
	ldr r2, [sp, #0x128]
	cmp r2, #3
	bne _0800FBA8
_0800FB22:
	bl sub_080008C8
	movs r1, #3
	bl __umodsi3
	str r0, [sp, #0x128]
	cmp r0, #1
	beq _0800FB58
	cmp r0, #1
	blo _0800FB3C
	cmp r0, #2
	beq _0800FB74
	b _0800FBA4
_0800FB3C:
	ldr r0, _0800FB54
	ldr r0, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _0800FB84
	movs r0, #3
	str r0, [sp, #0x128]
	movs r0, #1
	b _0800FBA2
_0800FB54: .4byte gUnk_030034E0
_0800FB58:
	ldr r0, _0800FB70
	ldr r0, [r0, #0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r2, r0, r1
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _0800FB84
	movs r2, #3
	str r2, [sp, #0x128]
	movs r0, #2
	b _0800FBA2
_0800FB70: .4byte gUnk_030034E0
_0800FB74:
	ldr r0, _0800FB98
	ldr r0, [r0, #0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrh r0, [r2, #0]
	cmp r0, #0
	beq _0800FB9C
_0800FB84:
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	adds r1, r7, #0
	adds r1, #0x90
	ldr r1, [r1, #0]
	bl sub_08066490
	b _0800FBA4
	.2byte 0x0000
_0800FB98: .4byte gUnk_030034E0
_0800FB9C:
	movs r0, #3
	str r0, [sp, #0x128]
	movs r0, #4
_0800FBA2:
	orrs r5, r0
_0800FBA4:
	cmp r5, #7
	bne _0800FB1C
_0800FBA8:
	cmp r5, #7
	beq _0800FBB2
	ldr r0, [sp, #0x128]
	bl sub_080137A0
_0800FBB2:
	bl sub_0805D094
	bl sub_0805D0E8
	bl sub_0805D13C
	bl sub_0805D190
	bl sub_0805D1E0
	bl sub_0805D5A0
	str r0, [r4, #4]
	movs r1, #0xa
	strh r1, [r4, #0]
	cmp r0, #0
	beq _0800FBE6
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	adds r1, r7, #0
	adds r1, #0x90
	ldr r1, [r1, #0]
	adds r2, r4, #0
	bl sub_08066490
_0800FBE6:
	adds r0, r7, #0
	movs r1, #6
	bl sub_0801E278
	adds r0, r7, #0
	movs r1, #7
	bl sub_0801E278
	adds r0, r7, #0
	movs r1, #3
	bl sub_0801E278
	adds r0, r7, #0
	movs r1, #3
	bl sub_0801E278
	adds r0, r7, #0
	movs r1, #5
	bl sub_0801E278
	ldr r0, _0800FC38
	bl sub_0805867C
	movs r0, #0
	mov r1, r9
	strb r0, [r1, #0]
	bl sub_0806617C
	ldrh r0, [r7, #0]
	ldr r1, [r6, #0]
	bl sub_08022284
	ldr r0, [r6, #0]
	subs r0, #1
	cmp r0, #5
	bhi _0800FCE2
	lsls r0, r0, #2
	ldr r1, _0800FC3C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800FC38: .4byte 0x00000183
_0800FC3C: .4byte _0800FC40
_0800FC40:
	.4byte _0800FC58
_0800FC44: .4byte _0800FC70
_0800FC48: .4byte _0800FC88
_0800FC4C: .4byte _0800FCA0
_0800FC50: .4byte _0800FCB8
_0800FC54: .4byte _0800FCD0
_0800FC58:
	ldr r0, _0800FC6C
	ldr r1, [r0, #0]
	ldrh r2, [r1, #0x24]
	movs r3, #0x24
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0800FCE2
	subs r0, r2, #1
	strh r0, [r1, #0x24]
	b _0800FCE2
_0800FC6C: .4byte gUnk_030034E0
_0800FC70:
	ldr r0, _0800FC84
	ldr r1, [r0, #0]
	ldrh r2, [r1, #0x26]
	movs r4, #0x26
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0800FCE2
	subs r0, r2, #1
	strh r0, [r1, #0x26]
	b _0800FCE2
_0800FC84: .4byte gUnk_030034E0
_0800FC88:
	ldr r0, _0800FC9C
	ldr r1, [r0, #0]
	ldrh r2, [r1, #0x28]
	movs r5, #0x28
	ldrsh r0, [r1, r5]
	cmp r0, #0
	ble _0800FCE2
	subs r0, r2, #1
	strh r0, [r1, #0x28]
	b _0800FCE2
_0800FC9C: .4byte gUnk_030034E0
_0800FCA0:
	ldr r0, _0800FCB4
	ldr r1, [r0, #0]
	ldrh r2, [r1, #0x2a]
	movs r3, #0x2a
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0800FCE2
	subs r0, r2, #1
	strh r0, [r1, #0x2a]
	b _0800FCE2
_0800FCB4: .4byte gUnk_030034E0
_0800FCB8:
	ldr r0, _0800FCCC
	ldr r1, [r0, #0]
	ldrh r2, [r1, #0x2c]
	movs r4, #0x2c
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0800FCE2
	subs r0, r2, #1
	strh r0, [r1, #0x2c]
	b _0800FCE2
_0800FCCC: .4byte gUnk_030034E0
_0800FCD0:
	ldr r0, _0800FCE8
	ldr r1, [r0, #0]
	ldrh r2, [r1, #0x2e]
	movs r5, #0x2e
	ldrsh r0, [r1, r5]
	cmp r0, #0
	ble _0800FCE2
	subs r0, r2, #1
	strh r0, [r1, #0x2e]
_0800FCE2:
	movs r0, #0
	str r0, [r6, #0]
	b _0800FD66
_0800FCE8: .4byte gUnk_030034E0
_0800FCEC:
	strh r0, [r7, #0x20]
	movs r6, #0x8a
	lsls r6, r6, #1
	adds r1, r7, r6
	movs r0, #0x14
	strh r0, [r1, #0]
	bl sub_0801DE60
	adds r4, r0, #0
	cmp r4, #5
	bne _0800FD66
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xa
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	bne _0800FD66
	ldr r5, _0800FD84
	ldr r0, [r5, #0]
	adds r0, #0x30
	movs r1, #5
	bl sub_0801E0AC
	cmp r0, #0
	beq _0800FD66
	ldr r2, [sp, #0x1b4]
	ldrh r0, [r2, #0]
	lsls r0, r0, #0x10
	ldr r3, [sp, #0x1bc]
	movs r6, #0
	ldrsh r1, [r3, r6]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _0800FD66
	adds r0, r7, #0
	movs r1, #5
	bl sub_0801E164
	adds r6, r0, #0
	cmp r6, #0
	beq _0800FD66
	ldrh r0, [r7, #0]
	strh r0, [r6, #2]
	strh r4, [r6, #4]
	ldr r0, [r5, #0]
	adds r0, #0x30
	movs r1, #5
	bl sub_0801E0AC
	strh r0, [r6, #6]
	movs r0, #0xe1
	lsls r0, r0, #3
	strh r0, [r6, #0]
	ldr r0, [r7, #0x30]
	mov r1, r8
	orrs r0, r1
	str r0, [r7, #0x30]
	ldr r0, _0800FD88
	bl sub_0805867C
_0800FD66:
	ldr r0, [r7, #0x30]
	ldr r1, _0800FD8C
	ands r0, r1
	str r0, [r7, #0x30]
	movs r2, #0
	str r2, [sp, #0x144]
	strh r2, [r7, #0x24]
	add r4, sp, #0x144
	ldrh r4, [r4, #0]
	strh r4, [r7, #0x26]
	movs r5, #0
	str r5, [sp, #0x130]
	movs r6, #0
	str r6, [sp, #0x134]
	b _0800FF38
_0800FD84: .4byte gUnk_030034E0
_0800FD88: .4byte 0x0000016F
_0800FD8C: .4byte 0xFFDFFFFF
_0800FD90:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	bgt _0800FDAA
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800FDB0
	movs r0, #0
	b _0800FDAE
_0800FDAA:
	asrs r0, r1, #1
	subs r0, r1, r0
_0800FDAE:
	str r0, [r4, #0]
_0800FDB0:
	adds r0, r7, #0
	adds r0, #0xb0
	adds r1, r7, #0
	adds r1, #0xb8
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bne _0800FE0A
	adds r0, r7, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0800FE0A
	ldr r1, [sp, #0x148]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x148]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x78
	ble _0800FE0A
	movs r0, #0x73
	bl sub_0805867C
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #0x30]
	bl sub_0800CB9C
	adds r1, r0, #0
	cmp r1, #0
	beq _0800FE00
	movs r0, #0
	strh r0, [r7, #0x20]
	b _0800FE06
_0800FE00:
	movs r0, #0xc
	strh r0, [r7, #0x20]
	strh r1, [r7, #0x22]
_0800FE06:
	bl sub_08067D74
_0800FE0A:
	movs r0, #0
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	movs r3, #0
	str r3, [sp, #0x130]
	movs r4, #0
	str r4, [sp, #0x134]
	ldr r0, [r7, #0x30]
	ldr r1, _0800FE20
	b _0800FEC4
	.2byte 0x0000
_0800FE20: .4byte 0xFFDFFFFF
_0800FE24:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	bgt _0800FE3E
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800FE44
	movs r0, #0
	b _0800FE42
_0800FE3E:
	asrs r0, r1, #1
	subs r0, r1, r0
_0800FE42:
	str r0, [r4, #0]
_0800FE44:
	movs r0, #0
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	movs r5, #0
	str r5, [sp, #0x130]
	movs r6, #0
	str r6, [sp, #0x134]
	ldr r0, [r7, #0x30]
	ldr r1, _0800FE6C
	ands r0, r1
	str r0, [r7, #0x30]
	ldrh r0, [r7, #0x22]
	cmp r0, #7
	bhi _0800FF38
	lsls r0, r0, #2
	ldr r1, _0800FE70
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0800FE6C: .4byte 0xFFDFFFFF
_0800FE70: .4byte _0800FE74
_0800FE74:
	.4byte _0800FE94
_0800FE78: .4byte _0800FF38
_0800FE7C: .4byte _0800FEAA
_0800FE80: .4byte _0800FEB8
_0800FE84: .4byte _0800FEBE
_0800FE88: .4byte _0800FF38
_0800FE8C: .4byte _0800FF38
_0800FE90: .4byte _0800FECA
_0800FE94:
	bl sub_0800CC98
	cmp r0, #0
	bne _0800FF38
	movs r0, #0
	movs r1, #1
	strh r1, [r7, #0x22]
	adds r1, r7, #0
	adds r1, #0x68
	strb r0, [r1, #0]
	b _0800FF38
_0800FEAA:
	bl sub_0801AC78
	cmp r0, #0
	beq _0800FF38
	movs r0, #3
	strh r0, [r7, #0x22]
	b _0800FF38
_0800FEB8:
	movs r0, #0
	bl _0800EE5C
_0800FEBE:
	ldr r0, [r7, #0x30]
	movs r1, #4
	negs r1, r1
_0800FEC4:
	ands r0, r1
	str r0, [r7, #0x30]
	b _0800FF38
_0800FECA:
	ldr r0, [sp, #0x17c]
	bl sub_0805EEFC
	cmp r0, #0
	beq _0800FEEC
	ldr r0, [sp, #0x17c]
	bl sub_0805EF14
	cmp r0, #0
	bne _0800FEE2
	bl _0800EE5C
_0800FEE2:
	movs r1, #0
	movs r0, #0xc
	strh r0, [r7, #0x20]
	strh r1, [r7, #0x22]
	b _0800FF38
_0800FEEC:
	bl sub_08058DB0
	cmp r0, #0
	bne _0800FF08
	bl sub_0800D11C
	cmp r0, #0
	bne _0800FF08
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0800FF38
_0800FF08:
	ldr r0, [sp, #0x17c]
	movs r1, #1
	bl sub_0805EF84
	ldr r0, [sp, #0x17c]
	bl sub_0805EE6C
	b _0800FF38
_0800FF18:
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0x17
	bgt _0800FF32
	adds r0, r1, #0
	subs r0, #8
	str r0, [r4, #0]
	cmp r0, #0
	bgt _0800FF38
	movs r0, #0
	b _0800FF36
_0800FF32:
	asrs r0, r1, #1
	subs r0, r1, r0
_0800FF36:
	str r0, [r4, #0]
_0800FF38:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	bne _0800FF40
	b _08010322
_0800FF40:
	adds r4, r7, #0
	adds r4, #0xd8
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0800FF76
	adds r2, r7, #0
	adds r2, #0x94
	adds r5, r7, #0
	adds r5, #0x8c
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_0800CCCC
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, [r4, #0]
	ldrh r2, [r7, #0x1c]
	ldr r1, [r7, #0x30]
	movs r4, #0x20
	ands r1, r4
	str r1, [sp, #0]
	adds r1, r5, #0
	bl sub_08013E90
_0800FF76:
	bl sub_0800CD8C
	cmp r0, #0
	bne _0800FF84
	adds r0, r7, #0
	bl sub_08013CEC
_0800FF84:
	adds r0, r7, #0
	bl sub_080140AC
	bl sub_0800CC98
	cmp r0, #0
	bne _0800FFA8
	adds r4, r7, #0
	adds r4, #0x8c
	adds r5, r7, #0
	adds r5, #0x90
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
_0800FFA8:
	ldr r0, [sp, #0x13c]
	cmp r0, #0
	bne _0800FFD0
	adds r1, r7, #0
	adds r1, #0x88
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _0800FFD0
	movs r2, #0x14
	str r2, [sp, #0x14c]
	adds r0, r7, #0
	adds r0, #0x8a
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x13c]
	movs r3, #0
	str r3, [sp, #0x140]
_0800FFD0:
	ldr r0, [sp, #0x14c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14c]
	movs r0, #0x80
	lsls r0, r0, #8
	ldr r4, [sp, #0x14c]
	ands r0, r4
	cmp r0, #0
	bne _08010094
	ldr r5, [sp, #0x13c]
	cmp r5, #0
	bne _0800FFF8
	ldr r6, _0800FFF4
	str r6, [sp, #0x14c]
	b _0801009C
	.2byte 0x0000
_0800FFF4: .4byte 0x0000FFFF
_0800FFF8:
	ldr r0, [r7, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0801009C
	ldr r1, [sp, #0x1c0]
	movs r2, #0
	ldrsh r0, [r1, r2]
	subs r0, #8
	strh r0, [r1, #0]
	bl sub_0800CC98
	cmp r0, #0
	beq _08010052
	ldr r0, _08010028
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _0801002C
	cmp r0, #2
	bhs _0801003E
	cmp r0, #1
	beq _08010032
	b _08010076
_08010028: .4byte gUnk_03006440
_0801002C:
	cmp r0, #6
	beq _0801003E
	b _08010076
_08010032:
	ldr r3, [sp, #0x140]
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x48
	movs r0, #0x5c
	b _08010048
_0801003E:
	ldr r4, [sp, #0x140]
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x54
	movs r0, #0x24
_08010048:
	ldr r2, [sp, #0x13c]
	movs r3, #1
	bl sub_0805FAC0
	b _08010076
_08010052:
	bl sub_0800CD8C
	cmp r0, #0
	bne _08010076
	ldr r5, [sp, #0x1c0]
	movs r6, #0
	ldrsh r0, [r5, r6]
	ldr r2, [sp, #0x1c4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x140]
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	adds r1, r1, r2
	ldr r2, [sp, #0x13c]
	movs r3, #1
	bl sub_0805FAC0
_08010076:
	movs r0, #2
	ldr r5, [sp, #0x14c]
	ands r0, r5
	cmp r0, #0
	beq _0801009C
	ldr r6, [sp, #0x140]
	lsls r0, r6, #0x10
	ldr r1, _08010090
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x140]
	b _0801009C
	.2byte 0x0000
_08010090: .4byte 0xFFFF0000
_08010094:
	movs r2, #0
	str r2, [sp, #0x13c]
	ldr r3, _08010118
	str r3, [sp, #0x14c]
_0801009C:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xa
	bne _080100A4
	b _08010322
_080100A4:
	adds r0, r7, #0
	bl sub_08013BC0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080100B2
	b _08010322
_080100B2:
	ldrh r1, [r7, #0x20]
	cmp r1, #0xb
	bne _080100BA
	b _08010322
_080100BA:
	ldr r2, [r7, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r2, r0
	cmp r2, #0
	beq _080100C8
	b _08010322
_080100C8:
	cmp r1, #0xc
	bne _080100CE
	b _08010322
_080100CE:
	adds r1, r7, #0
	adds r1, #0xb8
	ldr r0, _0801011C
	strh r0, [r1, #0]
	adds r0, r7, #0
	adds r0, #0xb4
	strh r2, [r0, #0]
	subs r0, #2
	strh r2, [r0, #0]
	ldrh r1, [r7, #0xc]
	subs r0, #0x4e
	strh r1, [r0, #0]
	movs r0, #0xb
	strh r0, [r7, #0x20]
	bl sub_0800CCCC
	cmp r0, #0
	bne _08010102
	bl sub_0800CD34
	cmp r0, #0
	bne _08010102
	ldrh r0, [r7, #0xc]
	adds r0, #0x4d
	bl sub_0805865C
_08010102:
	bl sub_0800CB9C
	cmp r0, #0
	beq _08010120
	movs r1, #0x96
	lsls r1, r1, #1
	movs r0, #0x44
	bl sub_08058B08
	b _08010126
	.2byte 0x0000
_08010118: .4byte 0x0000FFFF
_0801011C: .4byte 0x0000FFFD
_08010120:
	movs r0, #0x44
	bl sub_08058688
_08010126:
	adds r0, r7, #0
	movs r1, #6
	bl sub_0801E278
	adds r0, r7, #0
	movs r1, #7
	bl sub_0801E278
	adds r0, r7, #0
	movs r1, #3
	bl sub_0801E278
	adds r0, r7, #0
	movs r1, #3
	bl sub_0801E278
	adds r0, r7, #0
	movs r1, #5
	bl sub_0801E278
	movs r0, #0x73
	bl sub_0805867C
	movs r0, #0
	ldr r4, [sp, #0x1bc]
	strh r0, [r4, #0]
	bl sub_0800CF80
	movs r5, #0x68
	adds r5, r5, r7
	mov r9, r5
	adds r6, r7, #0
	adds r6, #0xe0
	cmp r0, #0
	bne _08010252
	bl sub_0800CDC0
	cmp r0, #0
	bne _08010252
	movs r5, #0
	add r4, sp, #0xe0
	ldr r0, [sp, #0x12c]
	adds r0, #0x68
	mov r8, r0
	b _08010186
_08010180:
	ldr r1, [sp, #0x128]
	cmp r1, #3
	bne _0801020C
_08010186:
	bl sub_080008C8
	movs r1, #3
	bl __umodsi3
	str r0, [sp, #0x128]
	cmp r0, #1
	beq _080101BC
	cmp r0, #1
	blo _080101A0
	cmp r0, #2
	beq _080101D8
	b _08010208
_080101A0:
	ldr r0, _080101B8
	ldr r0, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrh r0, [r2, #0]
	cmp r0, #4
	beq _080101E8
	movs r0, #3
	str r0, [sp, #0x128]
	movs r0, #1
	b _08010206
_080101B8: .4byte gUnk_030034E0
_080101BC:
	ldr r0, _080101D4
	ldr r0, [r0, #0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r2, r0, r1
	ldrh r0, [r2, #0]
	cmp r0, #3
	beq _080101E8
	movs r2, #3
	str r2, [sp, #0x128]
	movs r0, #2
	b _08010206
_080101D4: .4byte gUnk_030034E0
_080101D8:
	ldr r0, _080101FC
	ldr r0, [r0, #0]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r2, r0, r3
	ldrh r0, [r2, #0]
	cmp r0, #5
	bne _08010200
_080101E8:
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	adds r1, r7, #0
	adds r1, #0x90
	ldr r1, [r1, #0]
	bl sub_08066490
	b _08010208
	.2byte 0x0000
_080101FC: .4byte gUnk_030034E0
_08010200:
	movs r0, #3
	str r0, [sp, #0x128]
	movs r0, #4
_08010206:
	orrs r5, r0
_08010208:
	cmp r5, #7
	bne _08010180
_0801020C:
	cmp r5, #7
	beq _08010216
	ldr r0, [sp, #0x128]
	bl sub_080137A0
_08010216:
	mov r1, r8
	ldrh r0, [r1, #0]
	bl sub_0805AD78
	bl sub_0805D094
	bl sub_0805D0E8
	bl sub_0805D13C
	bl sub_0805D190
	bl sub_0805D1E0
	bl sub_0805D5A0
	str r0, [r4, #4]
	movs r1, #0xa
	strh r1, [r4, #0]
	cmp r0, #0
	beq _08010252
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	adds r1, r7, #0
	adds r1, #0x90
	ldr r1, [r1, #0]
	adds r2, r4, #0
	bl sub_08066490
_08010252:
	movs r0, #0
	mov r2, r9
	strb r0, [r2, #0]
	bl sub_0806617C
	ldrh r0, [r7, #0]
	ldr r1, [r6, #0]
	bl sub_08022284
	ldr r0, [r6, #0]
	subs r0, #1
	cmp r0, #5
	bhi _0801031E
	lsls r0, r0, #2
	ldr r1, _08010278
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08010278: .4byte _0801027C
_0801027C:
	.4byte _08010294
_08010280: .4byte _080102AC
_08010284: .4byte _080102C4
_08010288: .4byte _080102DC
_0801028C: .4byte _080102F4
_08010290: .4byte _0801030C
_08010294:
	ldr r0, _080102A8
	ldr r1, [r0, #0]
	ldrh r2, [r1, #0x24]
	movs r3, #0x24
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0801031E
	subs r0, r2, #1
	strh r0, [r1, #0x24]
	b _0801031E
_080102A8: .4byte gUnk_030034E0
_080102AC:
	ldr r0, _080102C0
	ldr r1, [r0, #0]
	ldrh r2, [r1, #0x26]
	movs r4, #0x26
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0801031E
	subs r0, r2, #1
	strh r0, [r1, #0x26]
	b _0801031E
_080102C0: .4byte gUnk_030034E0
_080102C4:
	ldr r0, _080102D8
	ldr r1, [r0, #0]
	ldrh r2, [r1, #0x28]
	movs r5, #0x28
	ldrsh r0, [r1, r5]
	cmp r0, #0
	ble _0801031E
	subs r0, r2, #1
	strh r0, [r1, #0x28]
	b _0801031E
_080102D8: .4byte gUnk_030034E0
_080102DC:
	ldr r0, _080102F0
	ldr r1, [r0, #0]
	ldrh r2, [r1, #0x2a]
	movs r3, #0x2a
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble _0801031E
	subs r0, r2, #1
	strh r0, [r1, #0x2a]
	b _0801031E
_080102F0: .4byte gUnk_030034E0
_080102F4:
	ldr r0, _08010308
	ldr r1, [r0, #0]
	ldrh r2, [r1, #0x2c]
	movs r4, #0x2c
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble _0801031E
	subs r0, r2, #1
	strh r0, [r1, #0x2c]
	b _0801031E
_08010308: .4byte gUnk_030034E0
_0801030C:
	ldr r0, _08010338
	ldr r1, [r0, #0]
	ldrh r2, [r1, #0x2e]
	movs r5, #0x2e
	ldrsh r0, [r1, r5]
	cmp r0, #0
	ble _0801031E
	subs r0, r2, #1
	strh r0, [r1, #0x2e]
_0801031E:
	movs r0, #0
	str r0, [r6, #0]
_08010322:
	ldrh r3, [r7, #0x20]
	cmp r3, #0xe
	bls _0801032C
	bl _080115EA
_0801032C:
	lsls r0, r3, #2
	ldr r1, _0801033C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08010338: .4byte gUnk_030034E0
_0801033C: .4byte _08010340
_08010340:
	.4byte _0801037C
_08010344: .4byte _08010516
_08010348: .4byte _080107F0
_0801034C: .4byte _0801069A
_08010350: .4byte _08010748
_08010354: .4byte _08010A2E
_08010358: .4byte _0801037C
_0801035C: .4byte _08010516
_08010360: .4byte _08010CF4
_08010364: .4byte _08010D9C
_08010368: .4byte _08010EB0
_0801036C: .4byte _080113AE
_08010370: .4byte _08011434
_08010374: .4byte _080115EA
_08010378: .4byte _08011538
_0801037C:
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r6, r7, r0
	ldr r2, [r6, #0]
	movs r0, #0xf
	ands r3, r0
	ldrb r1, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	ldr r4, [r6, #0]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	lsls r1, r1, #4
	ldrh r2, [r4, #0]
	movs r5, #0xf
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r4, [r6, #0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _08010458
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r2, [r6, #0]
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	ldr r4, [r6, #0]
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x20
	ands r1, r0
	ldrb r2, [r4, #4]
	subs r0, #0x60
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldr r3, [r6, #0]
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r1, [r0, #0]
	ands r1, r5
	lsls r1, r1, #6
	ldrh r2, [r3, #4]
	ldr r0, _0801045C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r3, [r6, #0]
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrh r1, [r0, #0]
	movs r4, #1
	ands r1, r4
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #5
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r6, #0]
	ldr r2, [r7, #0x48]
	movs r0, #0xff
	ands r2, r0
	lsls r2, r2, #0xb
	ldr r0, [r3, #4]
	ldr r1, _08010460
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	ldrh r0, [r7, #0x20]
	cmp r0, #0
	bne _08010464
	ldr r3, [r6, #0]
	ldr r1, [r7, #0x30]
	lsrs r1, r1, #0xa
	movs r0, #1
	ands r1, r0
	ands r1, r4
	lsls r1, r1, #4
	ldrb r2, [r3, #7]
	subs r0, #0x12
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #7]
	b _08010470
	.2byte 0x0000
_08010458: .4byte 0xFFFFF000
_0801045C: .4byte 0xFFFFFC3F
_08010460: .4byte 0xFFF807FF
_08010464:
	ldr r2, [r6, #0]
	ldrb r1, [r2, #7]
	movs r0, #0x11
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #7]
_08010470:
	bl sub_0800CD34
	cmp r0, #0
	beq _0801047C
	bl _080115EA
_0801047C:
	ldr r0, [r7, #0x30]
	ldr r1, _08010504
	ands r0, r1
	cmp r0, #0
	beq _0801048A
	bl _080115EA
_0801048A:
	bl sub_0801DF8C
	cmp r0, #0
	bne _08010508
	bl sub_0800CC98
	movs r5, #0xa2
	lsls r5, r5, #1
	adds r4, r7, r5
	ldr r3, [r4, #0]
	negs r1, r0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	lsls r1, r1, #3
	ldrb r2, [r3, #6]
	movs r5, #7
	adds r0, r5, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
	ldr r6, [sp, #0x1b0]
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r1, #0xa
	bl __divsi3
	ldr r2, [sp, #0x1b8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _080104DA
	ldr r2, [r4, #0]
	ldrb r1, [r2, #6]
	adds r0, r5, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2, #6]
_080104DA:
	ldr r6, [sp, #0x1b4]
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r1, #3
	bl __divsi3
	ldr r2, [sp, #0x1bc]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _080104F8
	bl _080115EA
_080104F8:
	ldr r2, [r4, #0]
	ldrb r1, [r2, #6]
	adds r0, r5, #0
	ands r0, r1
	movs r1, #0x10
	b _0801067E
_08010504: .4byte 0x00080002
_08010508:
	ldrh r1, [r7, #0x14]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08010514
	b _0801066E
_08010514:
	b _08010686
_08010516:
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r6, r7, r0
	ldr r2, [r6, #0]
	movs r0, #0xf
	ands r3, r0
	ldrb r1, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	ldr r4, [r6, #0]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	lsls r1, r1, #4
	ldrh r2, [r4, #0]
	movs r5, #0xf
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r4, [r6, #0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _08010648
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r2, [r6, #0]
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	ldr r4, [r6, #0]
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x20
	ands r1, r0
	ldrb r2, [r4, #4]
	subs r0, #0x60
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldr r3, [r6, #0]
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r1, [r0, #0]
	ands r1, r5
	lsls r1, r1, #6
	ldrh r2, [r3, #4]
	ldr r0, _0801064C
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r3, [r6, #0]
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r3, #5]
	movs r0, #5
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #5]
	ldr r3, [r6, #0]
	ldr r2, [r7, #0x48]
	movs r0, #0xff
	ands r2, r0
	lsls r2, r2, #0xb
	ldr r0, [r3, #4]
	ldr r1, _08010650
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	bl sub_0801DF8C
	cmp r0, #0
	bne _08010658
	bl sub_0800CD34
	cmp r0, #0
	bne _08010658
	ldr r0, [r7, #0x30]
	ldr r1, _08010654
	ands r0, r1
	cmp r0, #0
	bne _08010658
	ldr r2, [r6, #0]
	ldrb r1, [r2, #6]
	movs r4, #7
	adds r0, r4, #0
	ands r0, r1
	strb r0, [r2, #6]
	ldr r5, [sp, #0x1b0]
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r1, #0xa
	bl __divsi3
	ldr r2, [sp, #0x1b8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0801061E
	ldr r2, [r6, #0]
	ldrb r1, [r2, #6]
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	strb r0, [r2, #6]
_0801061E:
	ldr r5, [sp, #0x1b4]
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r1, #3
	bl __divsi3
	ldr r2, [sp, #0x1bc]
	movs r3, #0
	ldrsh r1, [r2, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt _0801063C
	bl _080115EA
_0801063C:
	ldr r2, [r6, #0]
	ldrb r1, [r2, #6]
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x10
	b _0801067E
_08010648: .4byte 0xFFFFF000
_0801064C: .4byte 0xFFFFFC3F
_08010650: .4byte 0xFFF807FF
_08010654: .4byte 0x00080002
_08010658:
	bl sub_0801DF8C
	cmp r0, #0
	bne _08010664
	bl _080115EA
_08010664:
	ldrh r1, [r7, #0x14]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08010686
_0801066E:
	movs r4, #0xa2
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r2, [r0, #0]
	ldrb r1, [r2, #6]
	movs r0, #7
	ands r0, r1
	movs r1, #0x20
_0801067E:
	orrs r0, r1
	strb r0, [r2, #6]
	bl _080115EA
_08010686:
	movs r5, #0xa2
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r2, [r0, #0]
	ldrb r1, [r2, #6]
	movs r0, #7
	ands r0, r1
	strb r0, [r2, #6]
	bl _080115EA
_0801069A:
	movs r6, #0xa2
	lsls r6, r6, #1
	adds r5, r7, r6
	ldr r2, [r5, #0]
	movs r0, #0xf
	ands r3, r0
	ldrb r1, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	lsls r1, r1, #4
	ldrh r2, [r4, #0]
	movs r6, #0xf
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _0801073C
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r2, [r5, #0]
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	ldr r4, [r5, #0]
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x20
	ands r1, r0
	ldrb r2, [r4, #4]
	subs r0, #0x60
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldr r3, [r5, #0]
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r1, [r0, #0]
	ands r1, r6
	lsls r1, r1, #6
	ldrh r2, [r3, #4]
	ldr r0, _08010740
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r3, [r5, #0]
	ldrh r2, [r7, #0x26]
	movs r0, #0xff
	ands r2, r0
	lsls r2, r2, #0xb
	ldr r0, [r3, #4]
	ldr r1, _08010744
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	b _080107D2
	.2byte 0x0000
_0801073C: .4byte 0xFFFFF000
_08010740: .4byte 0xFFFFFC3F
_08010744: .4byte 0xFFF807FF
_08010748:
	movs r4, #0xa2
	lsls r4, r4, #1
	adds r5, r7, r4
	ldr r2, [r5, #0]
	movs r0, #0xf
	ands r3, r0
	ldrb r1, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	lsls r1, r1, #4
	ldrh r2, [r4, #0]
	movs r6, #0xf
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _080107E8
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r2, [r5, #0]
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	ldr r4, [r5, #0]
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x20
	ands r1, r0
	ldrb r2, [r4, #4]
	subs r0, #0x60
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldr r3, [r5, #0]
	movs r2, #0x99
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r1, [r0, #0]
	ands r1, r6
	lsls r1, r1, #6
	ldrh r2, [r3, #4]
	ldr r0, _080107EC
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
_080107D2:
	bl sub_0801DEB8
	ldr r3, [r5, #0]
	lsls r0, r0, #3
	ldrb r2, [r3, #6]
	movs r1, #7
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #6]
	bl _080115EA
_080107E8: .4byte 0xFFFFF000
_080107EC: .4byte 0xFFFFFC3F
_080107F0:
	adds r0, r7, #0
	bl sub_0801FDD0
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r6, r7, r3
	ldr r3, [r6, #0]
	ldrh r1, [r7, #0x20]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldr r4, [r6, #0]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	lsls r1, r1, #4
	ldrh r2, [r4, #0]
	movs r5, #0xf
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r4, [r6, #0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _08010880
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r2, [r6, #0]
	movs r4, #0x1c
	ldrsh r0, [r7, r4]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	ldr r3, [r6, #0]
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r1, [r0, #0]
	ands r1, r5
	lsls r1, r1, #6
	ldrh r2, [r3, #4]
	ldr r0, _08010884
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	adds r0, r7, #0
	adds r0, #0x64
	ldrh r0, [r0, #0]
	cmp r0, #9
	bls _08010874
	b _08010A2A
_08010874:
	lsls r0, r0, #2
	ldr r1, _08010888
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08010880: .4byte 0xFFFFF000
_08010884: .4byte 0xFFFFFC3F
_08010888: .4byte _0801088C
_0801088C:
	.4byte _080108B4
_08010890: .4byte _080108BE
_08010894: .4byte _080108D2
_08010898: .4byte _08010954
_0801089C: .4byte _0801095E
_080108A0: .4byte _08010972
_080108A4: .4byte _0801097C
_080108A8: .4byte _08010990
_080108AC: .4byte _0801097C
_080108B0: .4byte _08010A20
_080108B4:
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0, #0]
	b _08010CD0
_080108BE:
	ldrh r0, [r7, #0x10]
	cmp r0, #5
	beq _080108C8
	bl _080115EA
_080108C8:
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0, #0]
	b _08010CD0
_080108D2:
	ldrh r0, [r7, #0x10]
	cmp r0, #3
	beq _080108E0
	cmp r0, #7
	beq _080108E0
	bl _080115EA
_080108E0:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _0801090C
	movs r4, #0xa2
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r3, [r0, #0]
	ldrh r1, [r7, #0x28]
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #6]
	ldr r0, _08010908
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #6]
	b _0801091C
_08010908: .4byte 0xFFFFFE0F
_0801090C:
	movs r5, #0xa2
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r2, [r0, #0]
	ldrh r1, [r2, #6]
	ldr r0, _08010948
	ands r0, r1
	strh r0, [r2, #6]
_0801091C:
	movs r6, #0xa2
	lsls r6, r6, #1
	adds r5, r7, r6
	ldr r2, [r5, #0]
	ldr r0, [r2, #4]
	ldr r1, _0801094C
	ands r0, r1
	str r0, [r2, #4]
	ldr r3, [r5, #0]
	ldr r0, _08010950
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x3c]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #6]
	movs r0, #0xf
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
	b _08010E6C
_08010948: .4byte 0xFFFFFE0F
_0801094C: .4byte 0xFFFE3FFF
_08010950: .4byte gUnk_030034E0
_08010954:
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r4, [r0, #0]
	b _08010CD0
_0801095E:
	ldrh r0, [r7, #0x10]
	cmp r0, #5
	beq _08010968
	bl _080115EA
_08010968:
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0, #0]
	b _08010CD0
_08010972:
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0, #0]
	b _08010CD0
_0801097C:
	ldrh r0, [r7, #0x10]
	cmp r0, #5
	beq _08010986
	bl _080115EA
_08010986:
	movs r4, #0xa2
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r4, [r0, #0]
	b _08010CD0
_08010990:
	ldrh r0, [r7, #0x10]
	cmp r0, #1
	beq _0801099E
	cmp r0, #8
	beq _080109A8
	bl _080115EA
_0801099E:
	movs r5, #0xa2
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r4, [r0, #0]
	b _08010CD0
_080109A8:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	ands r0, r1
	cmp r0, #0
	beq _080109D4
	movs r6, #0xa2
	lsls r6, r6, #1
	adds r0, r7, r6
	ldr r3, [r0, #0]
	ldrh r1, [r7, #0x28]
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #6]
	ldr r0, _080109D0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #6]
	b _080109E4
_080109D0: .4byte 0xFFFFFE0F
_080109D4:
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [r0, #0]
	ldrh r1, [r2, #6]
	ldr r0, _08010A18
	ands r0, r1
	strh r0, [r2, #6]
_080109E4:
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r2, [r4, #0]
	ldr r0, [r2, #4]
	ldr r1, _08010A1C
	ands r0, r1
	str r0, [r2, #4]
	ldr r5, [r4, #0]
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x20
	ands r1, r0
	ldrb r2, [r5, #4]
	subs r0, #0x60
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #4]
	movs r0, #1
	bl sub_0807A028
	ldr r3, [r4, #0]
	b _08010E8E
_08010A18: .4byte 0xFFFFFE0F
_08010A1C: .4byte 0xFFFE3FFF
_08010A20:
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0, #0]
	b _08010CD0
_08010A2A:
	ldr r4, [r6, #0]
	b _08010CD0
_08010A2E:
	adds r0, r7, #0
	bl sub_0801FDD0
	movs r4, #0xa2
	lsls r4, r4, #1
	adds r5, r7, r4
	ldr r3, [r5, #0]
	ldrh r1, [r7, #0x20]
	movs r0, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	lsls r1, r1, #4
	ldrh r2, [r4, #0]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _08010AA4
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r2, [r5, #0]
	movs r5, #0x1c
	ldrsh r0, [r7, r5]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	bl sub_0801DE60
	cmp r0, #7
	bls _08010A98
	bl _080115EA
_08010A98:
	lsls r0, r0, #2
	ldr r1, _08010AA8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08010AA4: .4byte 0xFFFFF000
_08010AA8: .4byte _08010AAC
_08010AAC:
	.4byte _08010ACC
_08010AB0: .4byte _08010C54
_08010AB4: .4byte _08010C08
_08010AB8: .4byte _08010BC8
_08010ABC: .4byte _080115EA
_08010AC0: .4byte _08010B48
_08010AC4: .4byte _080115EA
_08010AC8: .4byte _08010C94
_08010ACC:
	movs r6, #0xa2
	lsls r6, r6, #1
	adds r4, r7, r6
	ldr r3, [r4, #0]
	ldrh r2, [r7, #0x26]
	movs r0, #7
	ands r2, r0
	lsls r2, r2, #0xe
	ldr r0, [r3, #4]
	ldr r1, _08010AF8
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	ldrh r0, [r7, #0x10]
	cmp r0, #2
	beq _08010B10
	cmp r0, #2
	bgt _08010AFC
	cmp r0, #1
	beq _08010B02
	b _08010B3A
	.2byte 0x0000
_08010AF8: .4byte 0xFFFE3FFF
_08010AFC:
	cmp r0, #3
	beq _08010B20
	b _08010B3A
_08010B02:
	ldr r3, [r4, #0]
	ldr r0, _08010B0C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x3c]
	b _08010B28
_08010B0C: .4byte gUnk_030034E0
_08010B10:
	ldr r3, [r4, #0]
	ldr r0, _08010B1C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x38]
	b _08010B28
	.2byte 0x0000
_08010B1C: .4byte gUnk_030034E0
_08010B20:
	ldr r3, [r4, #0]
	ldr r0, _08010B44
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x34]
_08010B28:
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #6]
	movs r0, #0xf
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
_08010B3A:
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r4, [r0, #0]
	b _08010CD0
_08010B44: .4byte gUnk_030034E0
_08010B48:
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r3, [r5, #0]
	ldrh r2, [r7, #0x26]
	movs r0, #7
	ands r2, r0
	lsls r2, r2, #0xe
	ldr r0, [r3, #4]
	ldr r1, _08010B8C
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	ldr r4, [r5, #0]
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x20
	ands r1, r0
	ldrb r2, [r4, #4]
	subs r0, #0x60
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldrh r0, [r7, #0x10]
	cmp r0, #6
	beq _08010B90
	cmp r0, #8
	beq _08010BAC
	bl _080115EA
	.2byte 0x0000
_08010B8C: .4byte 0xFFFE3FFF
_08010B90:
	ldr r3, [r5, #0]
	ldr r0, _08010BA8
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x34]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #6]
	movs r0, #0xf
	negs r0, r0
	bl _080115E4
_08010BA8: .4byte gUnk_030034E0
_08010BAC:
	ldr r3, [r5, #0]
	ldr r0, _08010BC4
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x38]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #6]
	movs r0, #0xf
	negs r0, r0
	bl _080115E4
_08010BC4: .4byte gUnk_030034E0
_08010BC8:
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r5, r7, r3
	ldr r3, [r5, #0]
	ldrh r2, [r7, #0x26]
	movs r0, #7
	ands r2, r0
	lsls r2, r2, #0xe
	ldr r0, [r3, #4]
	ldr r1, _08010C00
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	ldr r3, [r5, #0]
	ldr r0, _08010C04
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x38]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #6]
	movs r0, #0xf
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
	b _08010E6C
	.2byte 0x0000
_08010C00: .4byte 0xFFFE3FFF
_08010C04: .4byte gUnk_030034E0
_08010C08:
	movs r4, #0xa2
	lsls r4, r4, #1
	adds r5, r7, r4
	ldr r3, [r5, #0]
	ldrh r2, [r7, #0x26]
	movs r0, #7
	ands r2, r0
	lsls r2, r2, #0xe
	ldr r0, [r3, #4]
	ldr r1, _08010C48
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	ldr r3, [r5, #0]
	ldr r0, _08010C4C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x3c]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #6]
	movs r0, #0xf
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
	ldr r2, [r5, #0]
	ldrh r1, [r2, #6]
	ldr r0, _08010C50
	ands r0, r1
	strh r0, [r2, #6]
	b _08010E6C
_08010C48: .4byte 0xFFFE3FFF
_08010C4C: .4byte gUnk_030034E0
_08010C50: .4byte 0xFFFFFE0F
_08010C54:
	movs r6, #0xa2
	lsls r6, r6, #1
	adds r5, r7, r6
	ldr r3, [r5, #0]
	ldrh r2, [r7, #0x26]
	movs r0, #7
	ands r2, r0
	lsls r2, r2, #0xe
	ldr r0, [r3, #4]
	ldr r1, _08010C8C
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	ldr r3, [r5, #0]
	ldr r0, _08010C90
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x3c]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #6]
	movs r0, #0xf
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
	b _08010E6C
	.2byte 0x0000
_08010C8C: .4byte 0xFFFE3FFF
_08010C90: .4byte gUnk_030034E0
_08010C94:
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r3, [r4, #0]
	ldrh r2, [r7, #0x26]
	movs r0, #7
	ands r2, r0
	lsls r2, r2, #0xe
	ldr r0, [r3, #4]
	ldr r1, _08010CEC
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	ldrh r0, [r7, #0x10]
	cmp r0, #1
	bne _08010CCE
	ldr r3, [r4, #0]
	ldr r0, _08010CF0
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x3c]
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	ldrb r2, [r3, #6]
	movs r0, #0xf
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
_08010CCE:
	ldr r4, [r4, #0]
_08010CD0:
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x20
	ands r1, r0
	ldrb r2, [r4, #4]
	subs r0, #0x60
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	bl _080115EA
_08010CEC: .4byte 0xFFFE3FFF
_08010CF0: .4byte gUnk_030034E0
_08010CF4:
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r2, [r5, #0]
	movs r0, #0xf
	ands r3, r0
	ldrb r1, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	lsls r1, r1, #4
	ldrh r2, [r4, #0]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _08010D90
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r2, [r5, #0]
	movs r4, #0x1c
	ldrsh r0, [r7, r4]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	ldr r4, [r5, #0]
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x20
	ands r1, r0
	ldrb r2, [r4, #4]
	subs r0, #0x60
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldr r3, [r5, #0]
	movs r0, #0xff
	ldr r1, [sp, #0x190]
	ands r1, r0
	lsls r1, r1, #6
	ldrh r2, [r3, #4]
	ldr r0, _08010D94
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r3, [r5, #0]
	ldrh r1, [r7, #0x26]
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #4
	ldrh r2, [r3, #6]
	ldr r0, _08010D98
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #6]
	bl _080115EA
_08010D90: .4byte 0xFFFFF000
_08010D94: .4byte 0xFFFFC03F
_08010D98: .4byte 0xFFFFFE0F
_08010D9C:
	movs r6, #0xa2
	lsls r6, r6, #1
	adds r5, r7, r6
	ldr r2, [r5, #0]
	movs r0, #0xf
	ands r3, r0
	ldrb r1, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	lsls r1, r1, #4
	ldrh r2, [r4, #0]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _08010E14
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r2, [r5, #0]
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	bl sub_0801DE60
	cmp r0, #7
	bne _08010E18
	bl sub_0801DEB8
	cmp r0, #0x13
	bne _08010E18
	ldr r2, [r5, #0]
	ldr r4, [sp, #0x170]
	lsls r3, r4, #1
	ldrb r1, [r2, #7]
	movs r0, #0xf
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	b _08010E22
_08010E14: .4byte 0xFFFFF000
_08010E18:
	ldr r2, [r5, #0]
	ldrb r1, [r2, #7]
	movs r0, #0xf
	negs r0, r0
	ands r0, r1
_08010E22:
	strb r0, [r2, #7]
	movs r6, #0xa2
	lsls r6, r6, #1
	adds r5, r7, r6
	ldr r3, [r5, #0]
	ldrh r2, [r7, #0x26]
	movs r0, #7
	ands r2, r0
	lsls r2, r2, #0xe
	ldr r0, [r3, #4]
	ldr r1, _08010EA4
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	bl sub_0801CCC8
	ldr r3, [r5, #0]
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #1
	ldrb r2, [r3, #6]
	movs r1, #0xf
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #6]
	bl sub_0801DEB8
	ldr r3, [r5, #0]
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #4
	ldrh r2, [r3, #6]
	ldr r1, _08010EA8
	ands r1, r2
	orrs r1, r0
	strh r1, [r3, #6]
_08010E6C:
	ldr r4, [r5, #0]
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x20
	ands r1, r0
	ldrb r2, [r4, #4]
	subs r0, #0x60
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	movs r0, #1
	bl sub_0807A028
	ldr r3, [r5, #0]
_08010E8E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #6
	ldrh r2, [r3, #4]
	ldr r1, _08010EAC
	ands r1, r2
	orrs r1, r0
	strh r1, [r3, #4]
	b _080115EA
_08010EA4: .4byte 0xFFFE3FFF
_08010EA8: .4byte 0xFFFFFE0F
_08010EAC: .4byte 0xFFFFC03F
_08010EB0:
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldr r2, [r0, #0]
	movs r0, #0xf
	ands r3, r0
	ldrb r1, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	mov r1, r8
	ldr r3, [r1, #0]
	adds r6, r7, #0
	adds r6, #0x8c
	ldr r1, [r6, #0]
	asrs r1, r1, #8
	lsls r1, r1, #4
	ldrh r2, [r3, #0]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0]
	mov r2, r8
	ldr r3, [r2, #0]
	adds r5, r7, #0
	adds r5, #0x90
	ldr r1, [r5, #0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _08010F50
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	mov r4, r8
	ldr r3, [r4, #0]
	movs r0, #0x1c
	ldrsh r1, [r7, r0]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r4, [r4, #0]
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r2, #0x20
	ands r1, r2
	ldrb r2, [r4, #4]
	movs r0, #0x40
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	mov r3, r8
	ldr r2, [r3, #0]
	ldrb r1, [r2, #4]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #4]
	bl sub_0801DE60
	mov r9, r6
	mov sl, r5
	cmp r0, #5
	bne _08010F46
	b _08011040
_08010F46:
	cmp r0, #5
	bgt _08010F54
	cmp r0, #3
	beq _08010F5C
	b _080115EA
_08010F50: .4byte 0xFFFFF000
_08010F54:
	cmp r0, #7
	bne _08010F5A
	b _080112E6
_08010F5A:
	b _080115EA
_08010F5C:
	bl sub_0800CDC0
	cmp r0, #0
	beq _08010F66
	b _080115EA
_08010F66:
	ldr r0, [sp, #0x12c]
	adds r0, #0x48
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08010F72
	b _080115EA
_08010F72:
	ldr r4, [sp, #0x19c]
	cmp r4, #0
	beq _08010F7A
	b _080115EA
_08010F7A:
	bl sub_0800CB9C
	cmp r0, #0
	beq _08010F8E
	ldr r0, _08011004
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xb
	bne _08010F8E
	b _080115EA
_08010F8E:
	movs r5, #1
	str r5, [sp, #0x19c]
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	adds r4, r0, #0
	ldr r0, _08011008
	ldr r0, [r0, #0]
	adds r0, #0x30
	movs r1, #5
	bl sub_0801E0AC
	lsls r1, r0, #2
	adds r1, r1, r0
	adds r1, #0xa
	cmp r4, r1
	blo _08010FB6
	b _080115EA
_08010FB6:
	ldr r6, [sp, #0x1bc]
	movs r1, #0
	ldrsh r0, [r6, r1]
	adds r1, r7, #0
	adds r1, #0x88
	ldrh r1, [r1, #0]
	subs r0, r0, r1
	cmp r0, #0
	ble _08011026
	movs r2, #0x88
	lsls r2, r2, #1
	adds r3, r7, r2
	ldr r0, [r3, #0]
	cmp r0, #0
	beq _08011026
	subs r0, #1
	str r0, [r3, #0]
	mov r4, r8
	ldr r2, [r4, #0]
	ldrb r0, [r2, #4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #4]
	ldr r1, [r3, #0]
	cmp r1, #3
	bls _08011010
	ldr r3, [r4, #0]
	ldr r2, _0801100C
	subs r1, #4
	lsls r1, r1, #1
	movs r5, #0x93
	lsls r5, r5, #1
	adds r0, r7, r5
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	adds r0, r0, r2
	ldrb r1, [r0, #0]
	strh r1, [r7, #0x1c]
	b _08011018
_08011004: .4byte gUnk_03003170
_08011008: .4byte gUnk_030034E0
_0801100C: .4byte gUnk_084790B4
_08011010:
	mov r6, r8
	ldr r3, [r6, #0]
	movs r0, #0x1c
	ldrsh r1, [r7, r0]
_08011018:
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	b _08011038
_08011026:
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [r0, #0]
	ldrb r1, [r2, #4]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #4]
_08011038:
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r7, r2
	b _080113A8
_08011040:
	bl sub_0800CDC0
	str r0, [sp, #0x1a8]
	cmp r0, #0
	beq _0801104C
	b _080115EA
_0801104C:
	ldr r0, [sp, #0x12c]
	adds r0, #0x44
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08011058
	b _080115EA
_08011058:
	bl sub_0800CB9C
	cmp r0, #0
	beq _0801106C
	ldr r0, _08011180
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xb
	bne _0801106C
	b _080115EA
_0801106C:
	ldr r3, [sp, #0x19c]
	cmp r3, #0
	bne _08011074
	b _0801123C
_08011074:
	adds r0, r7, #0
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _08011080
	b _080115EA
_08011080:
	adds r0, r7, #0
	adds r0, #0xb4
	ldrh r5, [r0, #0]
	cmp r5, #1
	beq _0801108C
	b _080115EA
_0801108C:
	movs r4, #0x88
	lsls r4, r4, #1
	adds r6, r7, r4
	ldr r2, [r6, #0]
	cmp r2, #3
	bhi _0801109A
	b _080111A4
_0801109A:
	ldr r1, _08011184
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r2, _08011188
	adds r0, r0, r2
	ldr r1, [r1, #0]
	adds r1, r1, r0
	mov r8, r1
	movs r0, #0xee
	lsls r0, r0, #1
	add r0, r8
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08011178
	movs r0, #0xa
	strh r0, [r1, #0xc]
	movs r3, #0x38
	ldrsh r1, [r7, r3]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x10
	ldr r2, _0801118C
	add r4, sp, #0x108
	ldr r0, [r4, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #4]
	ldr r1, _08011190
	ldr r0, [r4, #0]
	ands r0, r1
	ldr r1, _08011194
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #0]
	mov r1, r8
	ldr r0, [r1, #0x14]
	mov r2, r9
	ldr r1, [r2, #0]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r3, r8
	ldr r1, [r3, #0x18]
	mov r3, sl
	ldr r2, [r3, #0]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	ldr r1, _08011198
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	lsls r1, r1, #0x18
	ldr r2, _0801119C
	ldr r0, [r4, #0]
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #0]
	ldr r1, [sp, #0x1c8]
	ldr r0, [r1, #0]
	mov r2, r8
	str r0, [r2, #0x54]
	ldrb r1, [r2, #0]
	adds r1, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r2, _080111A0
	ldr r0, [r4, #0]
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #0]
	mov r1, r8
	adds r1, #0x4a
	ldrh r0, [r4, #4]
	ldrh r3, [r1, #0]
	adds r0, r0, r3
	strh r0, [r1, #0]
	ldrh r0, [r4, #4]
	mov r1, r8
	str r0, [r1, #0x4c]
	ldr r0, [r4, #0]
	lsrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0x62
	strh r0, [r1, #0]
	ldrh r1, [r7, #0]
	mov r0, r8
	adds r0, #0x58
	strh r1, [r0, #0]
	mov r1, r8
	adds r1, #0x5a
	ldrh r2, [r7, #0]
	lsls r5, r2
	ldrh r0, [r1, #0]
	orrs r5, r0
	strh r5, [r1, #0]
	mov r0, r8
	adds r1, r4, #0
	bl sub_0801F2CC
	adds r0, r4, #0
	bl sub_080660EC
_08011178:
	ldr r3, [sp, #0x1a8]
	str r3, [r6, #0]
	b _080115EA
	.2byte 0x0000
_08011180: .4byte gUnk_03003170
_08011184: .4byte gUnk_030056F4
_08011188: .4byte 0xFFFFF480
_0801118C: .4byte 0xFFFF0000
_08011190: .4byte 0xFFFF00FF
_08011194: .4byte 0xFF00FFFF
_08011198: .4byte gUnk_084790B4
_0801119C: .4byte 0x00FFFFFF
_080111A0: .4byte 0xFFFFFF00
_080111A4:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08011234
	adds r1, r1, r0
	mov r8, r1
	mov r0, r8
	adds r0, #0x68
	ldrb r1, [r0, #0]
	cmp r1, #0
	beq _0801122A
	adds r0, r7, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r1, r0
	bne _0801122A
	ldrh r1, [r7, #0x38]
	add r4, sp, #0x108
	movs r0, #0
	strh r1, [r4, #4]
	strb r0, [r4, #1]
	movs r5, #0x20
	strb r5, [r4, #2]
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r6, r9
	ldr r1, [r6, #0]
	asrs r1, r1, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	mov r3, sl
	ldr r2, [r3, #0]
	asrs r2, r2, #8
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	ldr r1, _08011238
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	strb r0, [r4, #3]
	ldrh r0, [r7, #0]
	lsls r0, r0, #2
	mov r1, r8
	adds r1, #0xf8
	adds r1, r1, r0
	ldr r5, [sp, #0x1c8]
	ldr r0, [r5, #0]
	str r0, [r1, #0]
	mov r6, r8
	ldrh r0, [r6, #0]
	strb r0, [r4, #0]
	adds r0, r4, #0
	bl sub_080660EC
_0801122A:
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r7, r0
	b _080113A8
	.2byte 0x0000
_08011234: .4byte gUnk_03003CE0
_08011238: .4byte gUnk_084790B4
_0801123C:
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	adds r4, r0, #0
	ldr r0, _080112B0
	ldr r0, [r0, #0]
	adds r0, #0x30
	movs r1, #4
	bl sub_0801E0AC
	lsls r1, r0, #3
	subs r1, r1, r0
	cmp r4, r1
	blo _0801125E
	b _080115EA
_0801125E:
	ldr r1, [sp, #0x1bc]
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r1, r7, #0
	adds r1, #0x88
	ldrh r1, [r1, #0]
	subs r0, r0, r1
	cmp r0, #0
	ble _080112CE
	movs r4, #0x88
	lsls r4, r4, #1
	adds r3, r7, r4
	ldr r0, [r3, #0]
	cmp r0, #0
	beq _080112CE
	movs r5, #1
	str r5, [sp, #0x19c]
	subs r0, #1
	str r0, [r3, #0]
	mov r6, r8
	ldr r2, [r6, #0]
	ldrb r0, [r2, #4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #4]
	ldr r1, [r3, #0]
	cmp r1, #3
	bls _080112B8
	ldr r3, [r6, #0]
	ldr r2, _080112B4
	subs r1, #4
	lsls r1, r1, #1
	adds r4, #0x16
	adds r0, r7, r4
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	adds r0, r0, r2
	ldrb r1, [r0, #0]
	strh r1, [r7, #0x1c]
	b _080112C0
	.2byte 0x0000
_080112B0: .4byte gUnk_030034E0
_080112B4: .4byte gUnk_084790B4
_080112B8:
	mov r5, r8
	ldr r3, [r5, #0]
	movs r6, #0x1c
	ldrsh r1, [r7, r6]
_080112C0:
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	b _080115EA
_080112CE:
	movs r0, #0
	str r0, [sp, #0x19c]
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [r0, #0]
	ldrb r1, [r2, #4]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #4]
	b _080115EA
_080112E6:
	bl sub_0800CDC0
	cmp r0, #0
	beq _080112F0
	b _080115EA
_080112F0:
	ldr r0, [sp, #0x12c]
	adds r0, #0x4c
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080112FC
	b _080115EA
_080112FC:
	ldr r2, [sp, #0x19c]
	cmp r2, #0
	beq _08011304
	b _080115EA
_08011304:
	movs r3, #1
	str r3, [sp, #0x19c]
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x64
	bl __modsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, _08011388
	ldr r0, [r0, #0]
	adds r0, #0x30
	movs r1, #6
	bl sub_0801E0AC
	lsls r0, r0, #3
	cmp r4, r0
	blt _08011330
	b _080115EA
_08011330:
	ldr r4, [sp, #0x1bc]
	movs r5, #0
	ldrsh r0, [r4, r5]
	adds r1, r7, #0
	adds r1, #0x88
	ldrh r1, [r1, #0]
	subs r0, r0, r1
	cmp r0, #0
	ble _08011390
	movs r6, #0x88
	lsls r6, r6, #1
	adds r5, r7, r6
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _08011390
	subs r0, #1
	str r0, [r5, #0]
	mov r0, r8
	ldr r2, [r0, #0]
	ldrb r0, [r2, #4]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2, #4]
	mov r1, r8
	ldr r3, [r1, #0]
	ldr r2, _0801138C
	ldr r1, [r5, #0]
	lsls r1, r1, #1
	movs r4, #0x93
	lsls r4, r4, #1
	adds r0, r7, r4
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	adds r0, r0, r2
	ldrb r1, [r0, #0]
	strh r1, [r7, #0x1c]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	b _080113A2
	.2byte 0x0000
_08011388: .4byte gUnk_030034E0
_0801138C: .4byte gUnk_084790B4
_08011390:
	movs r5, #0xa2
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r2, [r0, #0]
	ldrb r1, [r2, #4]
	movs r0, #0x41
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #4]
_080113A2:
	movs r6, #0x88
	lsls r6, r6, #1
	adds r1, r7, r6
_080113A8:
	movs r0, #0
	str r0, [r1, #0]
	b _080115EA
_080113AE:
	movs r0, #0xa2
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r2, [r5, #0]
	movs r0, #0xf
	ands r3, r0
	ldrb r1, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	lsls r1, r1, #4
	ldrh r2, [r4, #0]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _0801142C
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r2, [r5, #0]
	movs r1, #0x1c
	ldrsh r0, [r7, r1]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	ldr r4, [r5, #0]
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x20
	ands r1, r0
	ldrb r2, [r4, #4]
	subs r0, #0x60
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldr r2, [r5, #0]
	ldrh r1, [r2, #4]
	ldr r0, _08011430
	ands r0, r1
	strh r0, [r2, #4]
	b _080115EA
	.2byte 0x0000
_0801142C: .4byte 0xFFFFF000
_08011430: .4byte 0xFFFFFC3F
_08011434:
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r2, [r5, #0]
	movs r6, #0xf
	ands r3, r6
	ldrb r1, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	lsls r1, r1, #4
	ldrh r2, [r4, #0]
	movs r3, #0xf
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r4, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	ldrh r2, [r4, #2]
	ldr r0, _0801152C
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #2]
	ldr r2, [r5, #0]
	movs r4, #0x1c
	ldrsh r0, [r7, r4]
	lsls r0, r0, #4
	ldrb r1, [r2, #3]
	ands r3, r1
	orrs r3, r0
	strb r3, [r2, #3]
	ldr r4, [r5, #0]
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x20
	ands r1, r0
	ldrb r2, [r4, #4]
	subs r0, #0x60
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldr r3, [r5, #0]
	ldrh r1, [r7, #0x22]
	movs r0, #0x3f
	ands r1, r0
	lsls r1, r1, #6
	ldrh r2, [r3, #4]
	ldr r0, _08011530
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrh r0, [r7, #0x22]
	cmp r0, #1
	bne _080114C0
	b _080115EA
_080114C0:
	cmp r0, #5
	beq _080114C6
	b _080115EA
_080114C6:
	ldr r3, [r5, #0]
	adds r0, r7, #0
	adds r0, #0xba
	ldrh r2, [r0, #0]
	movs r0, #0x3f
	ands r2, r0
	lsls r2, r2, #0xc
	ldr r0, [r3, #4]
	ldr r1, _08011534
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	ldr r3, [r5, #0]
	adds r0, r7, #0
	adds r0, #0xbc
	ldrh r1, [r0, #0]
	ands r1, r6
	lsls r1, r1, #2
	ldrb r2, [r3, #6]
	movs r0, #0x3d
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
	ldr r3, [r5, #0]
	adds r0, r7, #0
	adds r0, #0xbe
	ldrh r1, [r0, #0]
	lsls r1, r1, #7
	ldrb r2, [r3, #6]
	movs r0, #0x7f
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
	ldr r3, [r5, #0]
	adds r0, r7, #0
	adds r0, #0xc0
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r3, #6]
	movs r0, #0x41
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
	movs r0, #6
	strh r0, [r7, #0x22]
	b _080115EA
	.2byte 0x0000
_0801152C: .4byte 0xFFFFF000
_08011530: .4byte 0xFFFFF03F
_08011534: .4byte 0xFFFC0FFF
_08011538:
	movs r6, #0xa2
	lsls r6, r6, #1
	adds r5, r7, r6
	ldr r2, [r5, #0]
	movs r0, #0xf
	ands r3, r0
	ldrb r1, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	ldr r3, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	lsls r1, r1, #4
	ldrh r2, [r3, #0]
	movs r6, #0xf
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0]
	ldr r3, [r5, #0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x14
	ldrh r2, [r3, #2]
	ldr r0, _080116D0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldr r3, [r5, #0]
	movs r0, #0x1c
	ldrsh r1, [r7, r0]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r4, [r5, #0]
	bl sub_0800CCCC
	negs r1, r0
	orrs r1, r0
	asrs r1, r1, #0x1f
	movs r0, #0x20
	ands r1, r0
	ldrb r2, [r4, #4]
	subs r0, #0x60
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #4]
	ldr r0, _080116D4
	ldr r0, [r0, #0]
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	mov r8, r0
	ldr r3, [r5, #0]
	mov r4, r8
	adds r4, #0xa4
	ldr r2, [r4, #0]
	ands r2, r6
	lsls r2, r2, #0xb
	ldr r0, [r3, #4]
	ldr r1, _080116D8
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #4]
	ldr r3, [r5, #0]
	ldr r1, [r4, #0]
	lsrs r1, r1, #4
	lsls r1, r1, #3
	ldrb r2, [r3, #6]
	movs r0, #7
_080115E4:
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #6]
_080115EA:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	beq _080116AE
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r3, [r0, #0]
	ldrb r2, [r3, #4]
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1a
	ldr r0, _080116DC
	adds r0, #0x90
	ldrh r0, [r0, #0]
	orrs r1, r0
	movs r0, #0x3f
	ands r1, r0
	movs r0, #0x40
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	bl sub_0800CFF0
	cmp r0, #0
	bne _080116AE
	bl sub_08002164
	adds r2, r0, #0
	movs r3, #0
	mov ip, r3
	ldrh r3, [r7, #0]
	movs r5, #0
	movs r4, #0
	str r4, [sp, #0x128]
	cmp r4, r2
	bhs _0801169E
	adds r0, r7, #0
	adds r0, #0x68
	ldr r6, _080116E0
	mov sl, r6
	ldrb r0, [r0, #0]
	str r0, [sp, #0x1ac]
	movs r0, #0x68
	add r0, sl
	mov r9, r0
	mov r4, sl
	movs r1, #0
	mov r8, r1
_0801164A:
	ldr r0, [sp, #0x1ac]
	mov r6, r9
	ldrb r6, [r6, #0]
	cmp r0, r6
	bne _0801168A
	movs r0, #1
	add ip, r0
	ldr r0, _080116E4
	add r0, r8
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _0801168A
	cmp r0, #0
	blt _0801168A
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _0801168A
	adds r5, #1
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r3, #0
	muls r0, r1, r0
	add r0, sl
	ldrh r1, [r4, #0]
	ldrh r0, [r0, #0]
	cmp r1, r0
	bhs _0801168A
	ldr r3, [sp, #0x128]
_0801168A:
	movs r6, #0xa6
	lsls r6, r6, #1
	add r9, r6
	adds r4, r4, r6
	add r8, r6
	ldr r0, [sp, #0x128]
	adds r0, #1
	str r0, [sp, #0x128]
	cmp r0, r2
	blo _0801164A
_0801169E:
	cmp r5, ip
	bne _080116AE
	ldrh r1, [r7, #0]
	cmp r3, r1
	bne _080116AE
	movs r0, #1
	bl sub_080680F8
_080116AE:
	ldr r3, [sp, #0x180]
	ldrb r2, [r3, #3]
	lsrs r4, r2, #4
	str r4, [sp, #0x16c]
	ldrb r1, [r3, #0]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1c
	adds r3, r1, #0
	cmp r0, #0xf
	bls _080116C6
	bl _080125AA
_080116C6:
	lsls r0, r0, #2
	ldr r1, _080116E8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080116D0: .4byte 0xFFFFF000
_080116D4: .4byte gUnk_030034E0
_080116D8: .4byte 0xFFF807FF
_080116DC: .4byte gUnk_03003170
_080116E0: .4byte gUnk_03003CE0
_080116E4: .4byte gUnk_03003E28
_080116E8: .4byte _080116EC
_080116EC:
	.4byte _0801172C
_080116F0: .4byte _0801199C
_080116F4: .4byte _080119F0
_080116F8: .4byte _0801187A
_080116FC: .4byte _0801199C
_08011700: .4byte _08011D7A
_08011704: .4byte _080117A2
_08011708: .4byte _0801199C
_0801170C: .4byte _08011F4A
_08011710: .4byte _0801200C
_08011714: .4byte _080120E6
_08011718: .4byte _080121F8
_0801171C: .4byte _08012274
_08011720: .4byte _080125AA
_08011724: .4byte _08012406
_08011728: .4byte _08012570
_0801172C:
	ldr r5, [sp, #0x180]
	ldrb r0, [r5, #6]
	lsrs r0, r0, #3
	cmp r0, #1
	bne _08011740
	movs r6, #0x8f
	lsls r6, r6, #1
	adds r1, r7, r6
	movs r0, #7
	b _080117A0
_08011740:
	cmp r0, #2
	bne _0801175C
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	bne _08011754
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #9
	b _080117A0
_08011754:
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r1, r7, r2
	b _0801179E
_0801175C:
	cmp r0, #3
	bne _08011778
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	bne _08011770
	movs r3, #0x8f
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #0xa
	b _080117A0
_08011770:
	movs r4, #0x8f
	lsls r4, r4, #1
	adds r1, r7, r4
	b _0801179E
_08011778:
	cmp r0, #4
	bne _08011786
	movs r5, #0x8f
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #0x14
	b _080117A0
_08011786:
	movs r6, #0x8f
	lsls r6, r6, #1
	adds r1, r7, r6
	ldrh r0, [r1, #0]
	cmp r0, #7
	beq _0801179E
	cmp r0, #7
	blt _080117A2
	cmp r0, #0xa
	bgt _080117A2
	cmp r0, #9
	blt _080117A2
_0801179E:
	movs r0, #0
_080117A0:
	strh r0, [r1, #0]
_080117A2:
	ldr r3, _08011804
	ldrh r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x64
	ldrh r2, [r1, #0]
	movs r1, #0x58
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldr r1, [sp, #0x180]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x114]
	ldrb r1, [r1, #3]
	lsrs r1, r1, #4
	adds r0, r7, #0
	adds r0, #0xb0
	strh r1, [r0, #0]
	adds r0, #8
	strh r1, [r0, #0]
	ldr r2, [sp, #0x180]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x1a4]
	movs r3, #1
	str r3, [sp, #0x124]
	ldrb r0, [r2, #6]
	lsrs r0, r0, #3
	cmp r0, #1
	bne _08011808
	movs r4, #0x8f
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #7
	strh r0, [r1, #0]
	bl _080125AA
_08011804: .4byte gUnk_08479140
_08011808:
	cmp r0, #2
	bne _0801182C
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	bne _08011820
	movs r5, #0x8f
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #9
	strh r0, [r1, #0]
	bl _080125AA
_08011820:
	movs r6, #0x8f
	lsls r6, r6, #1
	adds r0, r7, r6
	strh r4, [r0, #0]
	bl _080125AA
_0801182C:
	cmp r0, #3
	bne _08011850
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	bne _08011844
	movs r0, #0x8f
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #0xa
	strh r0, [r1, #0]
	bl _080125AA
_08011844:
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r7, r1
	strh r4, [r0, #0]
	bl _080125AA
_08011850:
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r1, r7, r2
	ldrh r0, [r1, #0]
	cmp r0, #7
	beq _08011874
	cmp r0, #7
	bge _08011864
	bl _080125AA
_08011864:
	cmp r0, #0xa
	ble _0801186C
	bl _080125AA
_0801186C:
	cmp r0, #9
	bge _08011874
	bl _080125AA
_08011874:
	strh r4, [r1, #0]
	bl _080125AA
_0801187A:
	ldrh r0, [r7, #0xc]
	subs r0, #1
	cmp r0, #7
	bhi _08011948
	lsls r0, r0, #2
	ldr r1, _0801188C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801188C: .4byte _08011890
_08011890:
	.4byte _080118B0
_08011894: .4byte _080118D0
_08011898: .4byte _08011948
_0801189C: .4byte _08011948
_080118A0: .4byte _08011948
_080118A4: .4byte _080118C0
_080118A8: .4byte _080118E0
_080118AC: .4byte _0801190C
_080118B0:
	ldrh r0, [r7, #0x10]
	cmp r0, #9
	bne _0801191C
	ldr r1, _080118BC
	b _08011932
	.2byte 0x0000
_080118BC: .4byte 0x00050029
_080118C0:
	ldrh r0, [r7, #0x10]
	cmp r0, #9
	bne _0801191C
	ldr r1, _080118CC
	b _08011932
	.2byte 0x0000
_080118CC: .4byte 0x0005001B
_080118D0:
	ldrh r0, [r7, #0x10]
	cmp r0, #9
	bne _0801191C
	ldr r1, _080118DC
	b _08011932
	.2byte 0x0000
_080118DC: .4byte 0x0005009D
_080118E0:
	ldrh r1, [r7, #0x10]
	cmp r1, #9
	bne _080118F0
	ldr r1, _080118EC
	b _08011932
	.2byte 0x0000
_080118EC: .4byte 0x0005009C
_080118F0:
	ldr r3, _08011908
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #0x64
	ldrh r2, [r0, #0]
	movs r0, #0x58
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r3
	ldr r1, [r1, #0]
	b _08011932
	.2byte 0x0000
_08011908: .4byte gUnk_08479140
_0801190C:
	ldrh r0, [r7, #0x10]
	cmp r0, #9
	bne _0801191C
	ldr r1, _08011918
	b _08011932
	.2byte 0x0000
_08011918: .4byte 0x00050088
_0801191C:
	ldr r3, _08011944
	ldrh r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x64
	ldrh r2, [r1, #0]
	movs r1, #0x58
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldr r1, [r0, #0]
_08011932:
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	b _0801196E
_08011944: .4byte gUnk_08479140
_08011948:
	ldr r3, _08011998
	ldrh r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x64
	ldrh r2, [r1, #0]
	movs r1, #0x58
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
_0801196E:
	ldr r3, [sp, #0x180]
	ldrb r0, [r3, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x114]
	ldrb r1, [r3, #3]
	lsrs r1, r1, #4
	adds r0, r7, #0
	adds r0, #0xb0
	strh r1, [r0, #0]
	adds r0, #8
	strh r1, [r0, #0]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x1a4]
	movs r4, #1
	str r4, [sp, #0x124]
	bl _080125AA
	.2byte 0x0000
_08011998: .4byte gUnk_08479140
_0801199C:
	ldr r3, _080119EC
	ldrh r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x64
	ldrh r2, [r1, #0]
	movs r1, #0x58
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldr r5, [sp, #0x180]
	ldrb r0, [r5, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x114]
	ldrb r1, [r5, #3]
	lsrs r1, r1, #4
	adds r1, #8
	adds r0, r7, #0
	adds r0, #0xb0
	strh r1, [r0, #0]
	adds r0, #8
	strh r1, [r0, #0]
	movs r6, #1
	str r6, [sp, #0x124]
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x1a4]
	bl _080125AA
_080119EC: .4byte gUnk_08479140
_080119F0:
	adds r0, r7, #0
	adds r0, #0xb0
	adds r1, r7, #0
	adds r1, #0xb8
	ldrh r2, [r0, #0]
	adds r6, r0, #0
	mov r8, r1
	ldrh r0, [r1, #0]
	cmp r2, r0
	bne _08011A14
	ldr r1, [sp, #0x180]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r2, [sp, #0x114]
	cmp r0, r2
	bne _08011A14
	b _08011D12
_08011A14:
	ldr r3, _08011A88
	ldrh r1, [r7, #0x10]
	lsls r1, r1, #2
	adds r5, r7, #0
	adds r5, #0x64
	ldrh r2, [r5, #0]
	movs r0, #0x58
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, #0x2c
	adds r1, r1, r3
	ldr r1, [r1, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	adds r0, r7, #0
	adds r0, #0xb4
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	ldr r3, [sp, #0x180]
	ldrb r0, [r3, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x114]
	ldrb r0, [r3, #3]
	lsrs r0, r0, #4
	strh r0, [r6, #0]
	mov r4, r8
	strh r0, [r4, #0]
	movs r6, #0
	str r6, [sp, #0x124]
	bl sub_0800CCCC
	cmp r0, #0
	bne _08011AFE
	bl sub_0800CD34
	cmp r0, #0
	bne _08011AFE
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	beq _08011AFE
	ldrh r0, [r7, #0x10]
	subs r0, #1
	cmp r0, #8
	bhi _08011AFE
	lsls r0, r0, #2
	ldr r1, _08011A8C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08011A88: .4byte gUnk_08479140
_08011A8C: .4byte _08011A90
_08011A90:
	.4byte _08011AD8
_08011A94: .4byte _08011AB4
_08011A98: .4byte _08011ABC
_08011A9C: .4byte _08011AD8
_08011AA0: .4byte _08011AD8
_08011AA4: .4byte _08011AF8
_08011AA8: .4byte _08011AD8
_08011AAC: .4byte _08011AE0
_08011AB0: .4byte _08011AD8
_08011AB4:
	movs r0, #0x14
	bl sub_0805865C
	b _08011AFE
_08011ABC:
	ldrh r0, [r7, #0xc]
	cmp r0, #0
	beq _08011AC8
	cmp r0, #2
	beq _08011AD0
	b _08011AFE
_08011AC8:
	movs r0, #0x15
	bl sub_0805865C
	b _08011AFE
_08011AD0:
	movs r0, #0x18
	bl sub_0805865C
	b _08011AFE
_08011AD8:
	movs r0, #0x13
	bl sub_0805865C
	b _08011AFE
_08011AE0:
	ldrh r0, [r7, #0xc]
	cmp r0, #5
	beq _08011AF2
	cmp r0, #7
	bne _08011AF8
	movs r0, #0x1d
	bl sub_0805865C
	b _08011AF8
_08011AF2:
	movs r0, #0x1c
	bl sub_0805865C
_08011AF8:
	movs r0, #0x1b
	bl sub_0805865C
_08011AFE:
	ldrh r0, [r5, #0]
	cmp r0, #9
	bls _08011B06
	b _08011D12
_08011B06:
	lsls r0, r0, #2
	ldr r1, _08011B10
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08011B10: .4byte _08011B14
_08011B14:
	.4byte _08011B3C
_08011B18: .4byte _08011B42
_08011B1C: .4byte _08011B68
_08011B20: .4byte _08011C0C
_08011B24: .4byte _08011C12
_08011B28: .4byte _08011C38
_08011B2C: .4byte _08011C3E
_08011B30: .4byte _08011C60
_08011B34: .4byte _08011CE0
_08011B38: .4byte _08011D08
_08011B3C:
	ldr r1, [sp, #0x180]
	ldrh r0, [r1, #4]
	b _08011D0C
_08011B42:
	ldrh r0, [r7, #0x10]
	cmp r0, #5
	bne _08011B4A
	b _08011D08
_08011B4A:
	cmp r0, #9
	beq _08011B50
	b _08011D08
_08011B50:
	ldr r1, _08011B64
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	b _08011D08
_08011B64: .4byte 0x0005011A
_08011B68:
	ldrh r0, [r7, #0x10]
	cmp r0, #7
	beq _08011B7E
	cmp r0, #7
	bgt _08011B78
	cmp r0, #3
	beq _08011BC0
	b _08011D12
_08011B78:
	cmp r0, #9
	beq _08011C02
	b _08011D12
_08011B7E:
	ldr r3, [sp, #0x180]
	ldrh r0, [r3, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _08011BA4
	ldrh r0, [r7, #0]
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x18
	ldr r2, [r3, #4]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1d
	movs r3, #0x80
	lsls r3, r3, #8
	orrs r2, r3
	ldr r4, [sp, #0x180]
	ldrb r3, [r4, #6]
	b _08011BB6
_08011BA4:
	ldrh r0, [r7, #0]
	ldr r5, [sp, #0x180]
	ldrh r1, [r5, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x18
	ldr r2, [r5, #4]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1d
	ldrb r3, [r5, #6]
_08011BB6:
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1d
	bl sub_080760E8
	b _08011D12
_08011BC0:
	ldr r6, [sp, #0x180]
	ldrh r0, [r6, #6]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1b
	cmp r0, #0
	beq _08011BE4
	ldrh r0, [r7, #0]
	ldrh r1, [r6, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x18
	ldr r2, [r6, #4]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1d
	movs r3, #0x80
	lsls r3, r3, #8
	orrs r2, r3
	ldrb r3, [r6, #6]
	b _08011BF8
_08011BE4:
	ldrh r0, [r7, #0]
	ldr r2, [sp, #0x180]
	ldrh r1, [r2, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x18
	ldr r2, [r2, #4]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1d
	ldr r4, [sp, #0x180]
	ldrb r3, [r4, #6]
_08011BF8:
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1d
	bl sub_08076A88
	b _08011D12
_08011C02:
	ldr r1, _08011C08
	b _08011CC8
	.2byte 0x0000
_08011C08: .4byte 0x0005011D
_08011C0C:
	ldr r5, [sp, #0x180]
	ldrh r0, [r5, #4]
	b _08011D0C
_08011C12:
	ldrh r0, [r7, #0x10]
	cmp r0, #5
	beq _08011C2E
	cmp r0, #9
	bne _08011C2E
	ldr r1, _08011C34
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
_08011C2E:
	ldr r6, [sp, #0x180]
	ldrh r0, [r6, #4]
	b _08011D0C
_08011C34: .4byte 0x000500E9
_08011C38:
	ldr r1, [sp, #0x180]
	ldrh r0, [r1, #4]
	b _08011D0C
_08011C3E:
	ldrh r0, [r7, #0x10]
	cmp r0, #5
	beq _08011D08
	cmp r0, #9
	bne _08011D08
	ldr r1, _08011C5C
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	b _08011D08
_08011C5C: .4byte 0x000500F5
_08011C60:
	ldrh r0, [r7, #0x10]
	cmp r0, #8
	beq _08011C7C
	cmp r0, #8
	bgt _08011C70
	cmp r0, #1
	beq _08011C76
	b _08011D12
_08011C70:
	cmp r0, #9
	beq _08011CC6
	b _08011D12
_08011C76:
	ldr r3, [sp, #0x180]
	ldrh r0, [r3, #4]
	b _08011D0C
_08011C7C:
	ldr r4, [sp, #0x180]
	ldrh r0, [r4, #6]
	lsls r0, r0, #0x17
	lsrs r4, r0, #0x1b
	cmp r4, #0
	beq _08011CA8
	ldrh r0, [r7, #0]
	ldr r5, [sp, #0x180]
	ldrh r1, [r5, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x18
	ldr r2, [r5, #4]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1d
	movs r3, #0x80
	lsls r3, r3, #8
	orrs r2, r3
	ldrb r3, [r5, #6]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1d
	movs r4, #0
	b _08011CBE
_08011CA8:
	ldrh r0, [r7, #0]
	ldr r6, [sp, #0x180]
	ldrh r1, [r6, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x18
	ldr r2, [r6, #4]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1d
	ldrb r3, [r6, #6]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1d
_08011CBE:
	str r4, [sp, #0]
	bl sub_08077444
	b _08011D12
_08011CC6:
	ldr r1, _08011CDC
_08011CC8:
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	b _08011D12
	.2byte 0x0000
_08011CDC: .4byte 0x0005012C
_08011CE0:
	ldrh r0, [r7, #0x10]
	cmp r0, #5
	beq _08011CFC
	cmp r0, #9
	bne _08011CFC
	ldr r1, _08011D04
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
_08011CFC:
	ldr r1, [sp, #0x180]
	ldrh r0, [r1, #4]
	b _08011D0C
	.2byte 0x0000
_08011D04: .4byte 0x00050128
_08011D08:
	ldr r2, [sp, #0x180]
	ldrh r0, [r2, #4]
_08011D0C:
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x1a4]
_08011D12:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08011D1E
	bl _080125AA
_08011D1E:
	bl sub_0800CD34
	cmp r0, #0
	beq _08011D2A
	bl _080125AA
_08011D2A:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	bne _08011D34
	bl _080125AA
_08011D34:
	ldrh r0, [r7, #0x10]
	cmp r0, #4
	beq _08011D3E
	bl _080125AA
_08011D3E:
	ldrh r0, [r7, #0xc]
	cmp r0, #3
	bne _08011D54
	adds r0, r7, #0
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _08011D52
	bl _080125AA
_08011D52:
	b _08011D62
_08011D54:
	adds r0, r7, #0
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #2
	beq _08011D62
	bl _080125AA
_08011D62:
	adds r0, r7, #0
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08011D70
	bl _080125AA
_08011D70:
	movs r0, #0x19
	bl sub_0805865C
	bl _080125AA
_08011D7A:
	adds r0, r7, #0
	adds r0, #0xb0
	adds r1, r7, #0
	adds r1, #0xb8
	ldrh r2, [r0, #0]
	adds r6, r0, #0
	mov r8, r1
	ldrh r3, [r1, #0]
	cmp r2, r3
	bne _08011D9E
	ldr r4, [sp, #0x180]
	ldrb r0, [r4, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r5, [sp, #0x114]
	cmp r0, r5
	bne _08011D9E
	b _08011F44
_08011D9E:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	beq _08011DBA
	bl sub_0800CCCC
	cmp r0, #0
	bne _08011DBA
	bl sub_0800CD34
	cmp r0, #0
	bne _08011DBA
	movs r0, #0x31
	bl sub_0805865C
_08011DBA:
	ldr r3, _08011E10
	ldrh r1, [r7, #0x10]
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #0x64
	ldrh r2, [r0, #0]
	movs r0, #0x58
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, #0x2c
	adds r1, r1, r3
	ldr r1, [r1, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	adds r0, r7, #0
	adds r0, #0xb4
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	ldr r1, [sp, #0x180]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x114]
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	strh r0, [r6, #0]
	ldrh r0, [r7, #0xc]
	cmp r0, #8
	bls _08011E04
	b _08011F3E
_08011E04:
	lsls r0, r0, #2
	ldr r1, _08011E14
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08011E10: .4byte gUnk_08479140
_08011E14: .4byte _08011E18
_08011E18:
	.4byte _08011E3C
_08011E1C: .4byte _08011F32
_08011E20: .4byte _08011EA8
_08011E24: .4byte _08011EE6
_08011E28: .4byte _08011F2A
_08011E2C: .4byte _08011EF2
_08011E30: .4byte _08011F32
_08011E34: .4byte _08011F0E
_08011E38: .4byte _08011F32
_08011E3C:
	ldrh r0, [r7, #0x10]
	cmp r0, #2
	beq _08011F38
	cmp r0, #2
	bgt _08011E4C
	cmp r0, #1
	beq _08011E52
	b _08011F3E
_08011E4C:
	cmp r0, #3
	beq _08011E98
	b _08011F3E
_08011E52:
	ldr r2, [sp, #0x180]
	ldr r0, [r2, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1d
	subs r0, #1
	cmp r0, #6
	bhi _08011F3E
	lsls r0, r0, #2
	ldr r1, _08011E6C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08011E6C: .4byte _08011E70
_08011E70:
	.4byte _08011F38
_08011E74: .4byte _08011F38
_08011E78: .4byte _08011E8C
_08011E7C: .4byte _08011E8C
_08011E80: .4byte _08011E92
_08011E84: .4byte _08011E92
_08011E88: .4byte _08011E92
_08011E8C:
	ldrh r0, [r6, #0]
	adds r0, #0x10
	b _08011F3C
_08011E92:
	ldrh r0, [r6, #0]
	adds r0, #0x18
	b _08011F3C
_08011E98:
	ldr r3, [sp, #0x180]
	ldr r0, [r3, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1d
	lsls r0, r0, #3
	ldrh r4, [r6, #0]
	adds r0, r0, r4
	b _08011F3C
_08011EA8:
	ldrh r0, [r7, #0x10]
	cmp r0, #3
	beq _08011EC8
	cmp r0, #7
	bne _08011F3E
	ldrh r0, [r7, #0]
	bl sub_0801500C
	ldr r5, [sp, #0x180]
	ldr r0, [r5, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1d
	lsls r0, r0, #3
	ldrh r1, [r6, #0]
	adds r0, r0, r1
	b _08011F3C
_08011EC8:
	ldrh r0, [r7, #0]
	ldr r2, [sp, #0x180]
	ldrh r1, [r2, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x18
	ldr r2, [r2, #4]
	lsls r2, r2, #0xf
	lsrs r2, r2, #0x1d
	ldr r4, [sp, #0x180]
	ldrb r3, [r4, #6]
	lsls r3, r3, #0x1c
	lsrs r3, r3, #0x1d
	bl sub_08076A88
	b _08011F38
_08011EE6:
	ldrh r0, [r7, #0x10]
	cmp r0, #2
	beq _08011F38
	cmp r0, #4
	bne _08011F3E
	b _08011F38
_08011EF2:
	ldrh r0, [r7, #0x10]
	cmp r0, #6
	beq _08011EFE
	cmp r0, #8
	beq _08011F06
	b _08011F3E
_08011EFE:
	ldrh r0, [r7, #0]
	bl sub_08015B20
	b _08011F38
_08011F06:
	ldrh r0, [r7, #0]
	bl sub_08015B20
	b _08011F38
_08011F0E:
	ldrh r0, [r7, #0x10]
	cmp r0, #1
	beq _08011F1A
	cmp r0, #8
	beq _08011F22
	b _08011F3E
_08011F1A:
	ldrh r0, [r7, #0]
	bl sub_08015820
	b _08011F38
_08011F22:
	ldrh r0, [r7, #0]
	bl sub_08015820
	b _08011F38
_08011F2A:
	ldrh r0, [r7, #0x10]
	cmp r0, #4
	bne _08011F34
	b _08011F38
_08011F32:
	ldrh r0, [r7, #0x10]
_08011F34:
	cmp r0, #5
	bne _08011F3E
_08011F38:
	ldrh r0, [r6, #0]
	adds r0, #8
_08011F3C:
	strh r0, [r6, #0]
_08011F3E:
	ldrh r0, [r6, #0]
	mov r5, r8
	strh r0, [r5, #0]
_08011F44:
	movs r6, #0
	str r6, [sp, #0x124]
	b _080125AA
_08011F4A:
	adds r0, r7, #0
	adds r0, #0xb0
	adds r1, r7, #0
	adds r1, #0xb8
	ldrh r2, [r0, #0]
	adds r6, r0, #0
	mov r8, r1
	ldrh r0, [r1, #0]
	cmp r2, r0
	bne _08011F6E
	ldr r1, [sp, #0x180]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r2, [sp, #0x114]
	cmp r0, r2
	bne _08011F6E
	b _080125AA
_08011F6E:
	ldr r3, _08011FC8
	ldrh r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x64
	ldrh r2, [r1, #0]
	movs r1, #0x58
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	adds r0, r7, #0
	adds r0, #0xb4
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	ldr r3, [sp, #0x180]
	ldrb r0, [r3, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x114]
	ldrb r0, [r3, #3]
	lsrs r0, r0, #4
	strh r0, [r6, #0]
	mov r4, r8
	strh r0, [r4, #0]
	movs r5, #0
	str r5, [sp, #0x124]
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	bne _08011FCC
	ldrh r0, [r7, #0]
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x18
	ldrb r2, [r3, #3]
	b _08012000
_08011FC8: .4byte gUnk_08479140
_08011FCC:
	cmp r0, #8
	beq _08011FD2
	b _080125AA
_08011FD2:
	ldr r0, _08012008
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x54
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r1, #0x56
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	subs r0, #1
	bl sub_0805D548
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x190]
	bl sub_0805D580
	ldrh r0, [r7, #0]
	ldr r6, [sp, #0x180]
	ldrh r1, [r6, #4]
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x18
	ldrb r2, [r6, #3]
_08012000:
	lsrs r2, r2, #4
	bl sub_0805D6B8
	b _080125AA
_08012008: .4byte gUnk_030034E0
_0801200C:
	adds r0, r7, #0
	adds r0, #0xb0
	adds r1, r7, #0
	adds r1, #0xb8
	ldrh r2, [r0, #0]
	adds r6, r0, #0
	mov r8, r1
	ldrh r0, [r1, #0]
	cmp r2, r0
	bne _08012030
	ldr r1, [sp, #0x180]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r2, [sp, #0x114]
	cmp r0, r2
	bne _08012030
	b _080125AA
_08012030:
	ldr r3, _080120AC
	ldrh r1, [r7, #0x10]
	lsls r1, r1, #2
	adds r0, r7, #0
	adds r0, #0x64
	ldrh r2, [r0, #0]
	movs r0, #0x58
	muls r0, r2, r0
	adds r1, r1, r0
	adds r3, #0x2c
	adds r1, r1, r3
	ldr r1, [r1, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	adds r0, r7, #0
	adds r0, #0xb4
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	ldr r3, [sp, #0x180]
	ldrb r0, [r3, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x114]
	ldrb r0, [r3, #3]
	lsrs r0, r0, #4
	adds r0, #8
	strh r0, [r6, #0]
	mov r4, r8
	strh r0, [r4, #0]
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	bne _080120B0
	ldrh r0, [r7, #0]
	ldrh r1, [r3, #6]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1b
	ldrh r2, [r3, #4]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x18
	ldr r3, [r3, #4]
	lsls r3, r3, #0xf
	lsrs r3, r3, #0x1d
	ldr r5, [sp, #0x180]
	ldrb r4, [r5, #7]
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0x1d
	lsls r4, r4, #0x10
	orrs r3, r4
	ldrb r4, [r5, #6]
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0x1d
	str r4, [sp, #0]
	bl sub_0807386C
	b _080120E0
_080120AC: .4byte gUnk_08479140
_080120B0:
	cmp r0, #9
	bne _080120E0
	ldrh r0, [r7, #0]
	ldr r6, [sp, #0x180]
	ldrh r1, [r6, #6]
	lsls r1, r1, #0x17
	lsrs r1, r1, #0x1b
	ldrh r2, [r6, #4]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0x18
	ldr r3, [r6, #4]
	lsls r3, r3, #0xf
	lsrs r3, r3, #0x1d
	ldrb r4, [r6, #7]
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0x1d
	lsls r4, r4, #0x10
	orrs r3, r4
	ldrb r4, [r6, #6]
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0x1d
	str r4, [sp, #0]
	bl sub_0807386C
_080120E0:
	movs r0, #0
	str r0, [sp, #0x124]
	b _080125AA
_080120E6:
	adds r0, r7, #0
	adds r0, #0xb0
	adds r1, r7, #0
	adds r1, #0xb8
	ldrh r2, [r0, #0]
	adds r6, r0, #0
	mov r8, r1
	ldrh r1, [r1, #0]
	cmp r2, r1
	bne _0801210A
	ldr r2, [sp, #0x180]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r3, [sp, #0x114]
	cmp r0, r3
	bne _0801210A
	b _080125AA
_0801210A:
	ldr r3, _08012168
	ldrh r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x64
	ldrh r2, [r1, #0]
	movs r1, #0x58
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldr r1, [r0, #0]
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	adds r3, r5, #0
	bl sub_08065158
	adds r0, r7, #0
	adds r0, #0xb4
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	ldr r4, [sp, #0x180]
	ldrb r0, [r4, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x114]
	ldrb r0, [r4, #3]
	lsrs r0, r0, #4
	adds r0, #0x10
	strh r0, [r6, #0]
	mov r1, r8
	strh r0, [r1, #0]
	movs r2, #0
	str r2, [sp, #0x124]
	ldrh r0, [r7, #0xc]
	cmp r0, #5
	beq _08012186
	cmp r0, #5
	bgt _0801216C
	cmp r0, #3
	beq _08012172
	b _080125AA
	.2byte 0x0000
_08012168: .4byte gUnk_08479140
_0801216C:
	cmp r0, #7
	beq _080121E4
	b _080125AA
_08012172:
	ldr r3, [sp, #0x180]
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _0801217E
	b _080125AA
_0801217E:
	ldrh r0, [r7, #0]
	bl sub_08075494
	b _080125AA
_08012186:
	ldr r4, [sp, #0x180]
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _08012192
	b _080125AA
_08012192:
	ldrh r0, [r7, #0x10]
	cmp r0, #6
	beq _080121C0
	cmp r0, #6
	bgt _080121A2
	cmp r0, #0
	beq _080121A6
	b _080121D0
_080121A2:
	cmp r0, #8
	bne _080121D0
_080121A6:
	ldr r1, _080121BC
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	b _080121D0
	.2byte 0x0000
_080121BC: .4byte 0x000500DA
_080121C0:
	ldr r1, _080121E0
	ldr r0, [sp, #0x124]
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	adds r3, r5, #0
	bl sub_08065158
_080121D0:
	ldr r1, [sp, #0x180]
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	strh r0, [r6, #0]
	mov r2, r8
	strh r0, [r2, #0]
	b _080125AA
	.2byte 0x0000
_080121E0: .4byte 0x000500D9
_080121E4:
	ldr r3, [sp, #0x180]
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt _080121F0
	b _080125AA
_080121F0:
	ldrh r0, [r7, #0]
	bl sub_080756EC
	b _080125AA
_080121F8:
	adds r0, r7, #0
	adds r0, #0xb0
	adds r1, r7, #0
	adds r1, #0xb8
	ldrh r2, [r0, #0]
	adds r6, r0, #0
	mov r8, r1
	ldrh r4, [r1, #0]
	cmp r2, r4
	bne _0801221A
	ldr r5, [sp, #0x180]
	ldrb r0, [r5, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r1, [sp, #0x114]
	cmp r0, r1
	beq _0801226A
_0801221A:
	ldr r3, _08012270
	ldrh r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x64
	ldrh r2, [r1, #0]
	movs r1, #0x58
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	adds r0, r7, #0
	adds r0, #0xb4
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	ldr r2, [sp, #0x180]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x114]
	ldrb r0, [r2, #3]
	lsrs r0, r0, #4
	adds r0, #0x18
	strh r0, [r6, #0]
	mov r3, r8
	strh r0, [r3, #0]
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #0x30]
_0801226A:
	movs r4, #0
	str r4, [sp, #0x124]
	b _080125AA
_08012270: .4byte gUnk_08479140
_08012274:
	ldr r5, [sp, #0x180]
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1a
	subs r0, #1
	cmp r0, #5
	bls _08012284
	b _080125AA
_08012284:
	lsls r0, r0, #2
	ldr r1, _08012290
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08012290: .4byte _08012294
_08012294:
	.4byte _080122AC
_08012298: .4byte _0801232A
_0801229C: .4byte _0801232A
_080122A0: .4byte _08012388
_080122A4: .4byte _08012394
_080122A8: .4byte _080123F0
_080122AC:
	ldr r6, [sp, #0x180]
	ldrb r0, [r6, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldr r1, [sp, #0x114]
	cmp r0, r1
	beq _0801230E
	str r0, [sp, #0x114]
	bl sub_0800CCCC
	cmp r0, #0
	bne _08012306
	bl sub_0800CF80
	cmp r0, #0
	bne _080122EC
	adds r2, r7, #0
	adds r2, #0xa4
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	str r1, [r2, #4]
	ldr r1, _0801231C
	adds r0, r1, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	strh r0, [r7, #0x2c]
	adds r1, #0x8c
	ldrh r0, [r1, #0]
	strh r0, [r7, #0x2e]
_080122EC:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08012306
	adds r0, r7, #0
	adds r0, #0xa4
	movs r1, #1
	negs r1, r1
	str r1, [r0, #0]
	adds r0, #4
	str r1, [r0, #0]
_08012306:
	ldrh r0, [r7, #0]
	movs r1, #0
	bl sub_080657C4
_0801230E:
	bl sub_0800CF80
	cmp r0, #0
	bne _08012320
	ldr r0, [r7, #0x30]
	movs r1, #3
	b _08012324
_0801231C: .4byte gUnk_03003170
_08012320:
	ldr r0, [r7, #0x30]
	movs r1, #1
_08012324:
	orrs r0, r1
	str r0, [r7, #0x30]
	b _080125AA
_0801232A:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08012378
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r4, #0
	strh r4, [r0, #0]
	ldr r3, _08012374
	ldrh r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0x64
	ldrh r2, [r1, #0]
	movs r1, #0x58
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldr r3, [sp, #0x180]
	ldrb r0, [r3, #3]
	lsrs r0, r0, #4
	adds r1, r7, #0
	adds r1, #0xb0
	strh r0, [r1, #0]
	str r4, [sp, #0x118]
	movs r5, #3
	str r5, [sp, #0x120]
	b _08012382
_08012374: .4byte gUnk_08479140
_08012378:
	movs r6, #0xa0
	lsls r6, r6, #8
	str r6, [sp, #0x118]
	movs r0, #0
	str r0, [sp, #0x120]
_08012382:
	movs r1, #0
	str r1, [sp, #0x11c]
	b _080125AA
_08012388:
	ldr r0, [r7, #0x30]
	movs r1, #4
	negs r1, r1
	ands r0, r1
	str r0, [r7, #0x30]
	b _080125AA
_08012394:
	ldr r3, _080123EC
	ldr r2, [sp, #0x180]
	ldrb r1, [r2, #6]
	movs r2, #0x3c
	ands r2, r1
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	movs r0, #0x2c
	muls r0, r1, r0
	adds r2, r2, r0
	adds r0, r7, #0
	adds r0, #0x64
	ldrh r1, [r0, #0]
	movs r0, #0x58
	muls r0, r1, r0
	adds r2, r2, r0
	adds r2, r2, r3
	ldr r1, [r2, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldr r3, [sp, #0x180]
	ldrb r1, [r3, #3]
	lsrs r1, r1, #4
	ldr r0, [r3, #4]
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x1a
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0xb0
	strh r1, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	ldrb r0, [r3, #6]
	lsrs r0, r0, #7
	str r0, [sp, #0x124]
	b _080125AA
_080123EC: .4byte gUnk_08479140
_080123F0:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x1c
	ldr r4, [sp, #0x180]
	ldr r1, [r4, #4]
	lsls r1, r1, #0xe
	lsrs r1, r1, #0x1a
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0xb0
	strh r0, [r1, #0]
	b _080125AA
_08012406:
	lsls r0, r3, #0x1c
	lsrs r0, r0, #0x1c
	adds r6, r7, #0
	adds r6, #0xb0
	movs r5, #0xb8
	adds r5, r5, r7
	mov r8, r5
	ldr r1, [sp, #0x114]
	cmp r0, r1
	beq _0801248E
	ldr r2, _080124E4
	adds r0, r7, #0
	adds r0, #0x64
	ldrh r1, [r0, #0]
	movs r0, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	adds r0, r7, #0
	adds r0, #0xb4
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	adds r0, #4
	strh r4, [r0, #0]
	ldr r2, [sp, #0x180]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x114]
	movs r0, #0x20
	strh r0, [r6, #0]
	strh r0, [r5, #0]
	movs r3, #0
	str r3, [sp, #0x124]
	bl sub_0800CBBC
	ldrh r4, [r7, #0]
	bl sub_080020F4
	cmp r4, r0
	bne _08012470
	bl sub_0800CBCC
	str r0, [sp, #0x15c]
_08012470:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0801248E
	bl sub_0800CC98
	cmp r0, #0
	bne _0801248E
	movs r0, #0x6b
	bl sub_08058688
	movs r4, #0x92
	lsls r4, r4, #1
	adds r1, r7, r4
	strh r0, [r1, #0]
_0801248E:
	ldrh r0, [r6, #0]
	mov r5, r8
	ldrh r5, [r5, #0]
	cmp r0, r5
	beq _0801249A
	b _080125AA
_0801249A:
	adds r0, r7, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080124A6
	b _080125AA
_080124A6:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080124B0
	b _080125AA
_080124B0:
	ldr r6, [sp, #0x15c]
	cmp r6, #1
	bne _080125AA
	ldr r0, _080124E8
	ldr r0, [r0, #0]
	movs r1, #0x99
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	mov r8, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r1, [r0, #0]
	ldrb r0, [r1, #6]
	lsrs r0, r0, #3
	cmp r0, #6
	bne _080124EC
	movs r5, #1
	movs r6, #0
	b _080124F4
_080124E4: .4byte gUnk_08479140
_080124E8: .4byte gUnk_030034E0
_080124EC:
	movs r5, #0
	ldr r0, [r1, #4]
	lsls r0, r0, #0xd
	lsrs r6, r0, #0x18
_080124F4:
	movs r4, #0
	movs r3, #0
	b _08012546
_080124FA:
	ldr r3, _0801253C
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0x128]
	adds r1, r2, #0
	muls r1, r0, r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r3, r2
	adds r0, r1, r0
	ldr r2, [r0, #0]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _08012542
	adds r0, r1, r3
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08012542
	ldrb r0, [r2, #6]
	lsrs r0, r0, #3
	cmp r0, #6
	bne _08012540
	adds r4, #1
	cmp r5, #0
	beq _08012542
	ldr r0, [r2, #4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x18
	adds r6, r6, r0
	b _08012542
_0801253C: .4byte gUnk_03003CE0
_08012540:
	adds r4, #1
_08012542:
	ldr r3, [sp, #0x128]
	adds r3, #1
_08012546:
	str r3, [sp, #0x128]
	bl sub_08002164
	ldr r1, [sp, #0x128]
	cmp r1, r0
	blo _080124FA
	bl sub_0800CBCC
	cmp r4, r0
	bne _080125AA
	mov r0, r8
	adds r0, #0xa4
	ldr r0, [r0, #0]
	lsrs r0, r0, #4
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_08067F94
	bl sub_0800CBEC
	b _080125AA
_08012570:
	ldr r2, _080126A0
	adds r0, r7, #0
	adds r0, #0x64
	ldrh r1, [r0, #0]
	movs r0, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldr r2, [sp, #0x180]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x114]
	adds r0, r7, #0
	adds r0, #0xb0
	movs r1, #0x21
	strh r1, [r0, #0]
	adds r0, #8
	strh r1, [r0, #0]
	movs r3, #1
	str r3, [sp, #0x124]
_080125AA:
	ldr r4, [sp, #0x180]
	ldrb r0, [r4, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	beq _080125F4
	ldr r5, [sp, #0x118]
	ldr r6, [sp, #0x11c]
	subs r5, r5, r6
	str r5, [sp, #0x118]
	adds r6, #0x20
	str r6, [sp, #0x11c]
	asrs r0, r5, #8
	cmp r0, #0
	bgt _080125E6
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldr r2, [sp, #0x120]
	asrs r0, r2
	negs r0, r0
	str r0, [sp, #0x11c]
	adds r2, #1
	str r2, [sp, #0x120]
	str r1, [sp, #0x118]
	ldr r0, [r7, #0x30]
	movs r1, #0x41
	negs r1, r1
	ands r0, r1
	str r0, [r7, #0x30]
_080125E6:
	ldr r3, [sp, #0x120]
	cmp r3, #2
	ble _080125F4
	movs r4, #3
	str r4, [sp, #0x120]
	movs r5, #0
	str r5, [sp, #0x118]
_080125F4:
	ldr r6, [sp, #0x180]
	ldrh r0, [r6, #0]
	lsrs r0, r0, #4
	ldrh r1, [r6, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r5, #0x30
	str r5, [sp, #0]
	ldrb r2, [r6, #4]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	str r2, [sp, #4]
	ldr r2, [sp, #0x1c0]
	ldr r3, [sp, #0x1c4]
	bl sub_0800BC08
	ldr r4, [r7, #0x30]
	movs r0, #2
	ands r4, r0
	cmp r4, #0
	beq _08012622
	bl _08013556
_08012622:
	add r1, sp, #0x10
	ldrh r0, [r7, #0]
	strb r0, [r1, #0x1c]
	ldr r0, _080126A4
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08012656
	adds r0, r7, #0
	adds r0, #0xb0
	ldrh r1, [r0, #0]
	adds r2, r7, #0
	adds r2, #0xb2
	adds r3, r7, #0
	adds r3, #0xb4
	ldr r0, [sp, #0x124]
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0xb6
	strh r0, [r1, #0]
_08012656:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	bne _0801265E
	b _08012BFC
_0801265E:
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _080126D4
	ldr r2, [sp, #0x1a0]
	cmp r2, #0
	beq _08012676
	movs r3, #0
	str r3, [sp, #0x1a0]
_08012676:
	mov r5, r8
	ldrh r1, [r5, #0]
	add r5, sp, #0xf4
	mov r6, sp
	adds r6, #0xf6
	str r4, [sp, #0]
	add r0, sp, #0x78
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08065370
	cmp r0, #0
	beq _080126A8
	mov r0, r8
	strh r4, [r0, #0]
	strh r4, [r5, #0]
	strh r4, [r6, #0]
	movs r1, #1
	str r1, [sp, #0x1a0]
	b _080126D4
	.2byte 0x0000
_080126A0: .4byte gUnk_08479140
_080126A4: .4byte gUnk_03005CF4
_080126A8:
	bl sub_0800CC98
	cmp r0, #0
	bne _080126D4
	bl sub_0800CD8C
	cmp r0, #0
	bne _080126D4
	ldr r2, [sp, #0x1c0]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x1c4]
	movs r6, #0
	ldrsh r2, [r4, r6]
	subs r2, #0x2a
	mov r0, r8
	ldrh r3, [r0, #0]
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	add r0, sp, #0x78
	bl sub_08065230
_080126D4:
	bl sub_0800CC98
	cmp r0, #0
	bne _080127B0
	ldr r1, [sp, #0x180]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldr r3, [sp, #0x180]
	ldrb r2, [r3, #4]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x160]
	bl sub_0800CC38
	cmp r0, #0
	beq _08012708
	ldr r0, _08012750
	ldrb r0, [r0, #0]
	str r0, [sp, #0x160]
_08012708:
	ldr r1, [r7, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	bne _0801276C
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08012720
	b _08012814
_08012720:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08012754
	ldr r4, [sp, #0x1c0]
	movs r5, #0
	ldrsh r0, [r4, r5]
	ldr r6, [sp, #0x1c4]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [sp, #0x118]
	asrs r2, r3, #8
	subs r1, r1, r2
	adds r2, r7, #0
	adds r2, #0xb0
	ldrh r2, [r2, #0]
	adds r3, r7, #0
	adds r3, #0xb2
	ldrh r3, [r3, #0]
	ldr r4, [sp, #0x160]
	str r4, [sp, #0]
	b _0801279A
	.2byte 0x0000
_08012750: .4byte gUnk_030034D8
_08012754:
	ldr r0, _08012768
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012814
	ldr r5, [sp, #0x1c0]
	movs r6, #0
	ldrsh r0, [r5, r6]
	b _0801277E
_08012768: .4byte gUnk_03002344
_0801276C:
	ldr r0, _080127AC
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08012814
	ldr r6, [sp, #0x1c0]
	movs r1, #0
	ldrsh r0, [r6, r1]
_0801277E:
	ldr r2, [sp, #0x1c4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x118]
	asrs r2, r4, #8
	subs r1, r1, r2
	adds r2, r7, #0
	adds r2, #0xb0
	ldrh r2, [r2, #0]
	adds r3, r7, #0
	adds r3, #0xb2
	ldrh r3, [r3, #0]
	ldr r5, [sp, #0x160]
	str r5, [sp, #0]
_0801279A:
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _08012814
_080127AC: .4byte gUnk_03002344
_080127B0:
	ldr r0, _080127C4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _080127C8
	cmp r0, #2
	bhs _080127F2
	cmp r0, #1
	beq _080127CE
	b _08012814
_080127C4: .4byte gUnk_03006440
_080127C8:
	cmp r0, #6
	beq _080127F2
	b _08012814
_080127CE:
	adds r0, r7, #0
	adds r0, #0xb0
	ldrh r2, [r0, #0]
	adds r0, #2
	ldrh r3, [r0, #0]
	movs r0, #3
	str r0, [sp, #0]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0x5c
	movs r1, #0x48
	bl sub_08007870
	b _08012814
_080127F2:
	adds r0, r7, #0
	adds r0, #0xb0
	ldrh r2, [r0, #0]
	adds r0, #2
	ldrh r3, [r0, #0]
	movs r0, #3
	str r0, [sp, #0]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #0x24
	movs r1, #0x54
	bl sub_08007870
_08012814:
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08012850
	ldr r0, _0801284C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012834
	bl _080131B0
_08012834:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r6, #0xe0
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r2, #1
	bl sub_08000AF0
	bl _080131B0
	.2byte 0x0000
_0801284C: .4byte gUnk_03005CF4
_08012850:
	ldr r0, _08012890
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08012862
	b _0801295C
_08012862:
	adds r0, r7, #0
	adds r0, #0x64
	ldrh r1, [r0, #0]
	ldr r2, [sp, #0x1a4]
	str r2, [sp, #0x128]
	adds r5, r0, #0
	cmp r1, #9
	bls _08012876
	movs r3, #0
	str r3, [sp, #0x128]
_08012876:
	bl sub_0800CC98
	cmp r0, #0
	bne _080128DE
	ldr r4, [sp, #0x128]
	cmp r4, #0xc
	beq _0801289C
	cmp r4, #0xc
	bhi _08012894
	cmp r4, #0xa
	beq _080128B8
	b _080128C6
	.2byte 0x0000
_08012890: .4byte gUnk_03005CF4
_08012894:
	ldr r6, [sp, #0x128]
	cmp r6, #0xd
	beq _080128AA
	b _080128C6
_0801289C:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	b _0801293E
_080128AA:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r1, r1, r3
	b _0801293E
_080128B8:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	b _0801293E
_080128C6:
	ldrh r0, [r5, #0]
	cmp r0, #9
	beq _08012938
	ldrh r0, [r7, #0]
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x66
	ldrb r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	b _0801293E
_080128DE:
	ldr r0, _080128FC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x28]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801295C
	ldr r6, [sp, #0x128]
	cmp r6, #0xc
	beq _08012908
	cmp r6, #0xc
	bhi _08012900
	cmp r6, #0xa
	beq _08012924
	b _08012932
_080128FC: .4byte gUnk_03006440
_08012900:
	ldr r0, [sp, #0x128]
	cmp r0, #0xd
	beq _08012916
	b _08012932
_08012908:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	b _0801293E
_08012916:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r1, r1, r3
	b _0801293E
_08012924:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r4, #0xc0
	lsls r4, r4, #1
	adds r1, r1, r4
	b _0801293E
_08012932:
	ldrh r0, [r5, #0]
	cmp r0, #9
	bne _08012946
_08012938:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
_0801293E:
	movs r2, #1
	bl sub_08000AF0
	b _0801295C
_08012946:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x66
	ldrb r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
_0801295C:
	ldr r1, [sp, #0x164]
	adds r1, #2
	lsls r1, r1, #0x18
	movs r0, #0xfe
	lsls r0, r0, #0x17
	ands r0, r1
	lsrs r0, r0, #0x18
	str r0, [sp, #0x164]
	ldr r2, _08012998
	ldrh r0, [r7, #0]
	adds r0, #0x10
	lsls r0, r0, #5
	adds r1, r2, #0
	adds r1, #0x1e
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [sp, #0x128]
	subs r0, #1
	mov r8, r2
	cmp r0, #0xd
	bls _0801298C
	bl _080131A4
_0801298C:
	lsls r0, r0, #2
	ldr r1, _0801299C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08012998: .4byte gUnk_03001F40
_0801299C: .4byte _080129A0
_080129A0:
	.4byte _080129D8
_080129A4: .4byte _08012A34
_080129A8: .4byte _08012A90
_080129AC: .4byte _08013020
_080129B0: .4byte _08012AD4
_080129B4: .4byte _08012B24
_080129B8: .4byte _08012B7C
_080129BC: .4byte _080131A4
_080129C0: .4byte _08012BB8
_080129C4: .4byte _080131A4
_080129C8: .4byte _08013184
_080129CC: .4byte _08012BC4
_080129D0: .4byte _08012B38
_080129D4: .4byte _08013194
_080129D8:
	ldr r1, _08012A28
	ldr r5, [sp, #0x164]
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r3, [r0, r6]
	lsls r0, r3, #0xc
	lsrs r0, r0, #0x10
	movs r4, #0x1f
	ands r0, r4
	movs r1, #0x20
	negs r1, r1
	add r5, sp, #0x110
	ldr r2, [r5, #0]
	ands r2, r1
	orrs r2, r0
	lsls r0, r3, #5
	subs r0, r0, r3
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r3, r0, #5
	ldr r1, _08012A2C
	ands r2, r1
	orrs r2, r3
	lsls r0, r0, #0xa
	ldr r1, _08012A30
	ands r2, r1
	orrs r2, r0
	str r2, [r5, #0]
	ldrh r0, [r7, #0]
	adds r0, #0x10
	lsls r0, r0, #5
	mov r1, r8
	adds r1, #0x1e
	adds r0, r0, r1
	ldrh r1, [r5, #0]
	strh r1, [r0, #0]
	b _080131B0
	.2byte 0x0000
_08012A28: .4byte gUnk_080B9704
_08012A2C: .4byte 0xFFFFFC1F
_08012A30: .4byte 0xFFFF83FF
_08012A34:
	ldr r1, _08012A80
	ldr r2, [sp, #0x164]
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r5, [r0, r3]
	lsls r3, r5, #2
	adds r3, r3, r5
	asrs r3, r3, #8
	movs r6, #0x1f
	ands r3, r6
	add r4, sp, #0x110
	ldrb r1, [r4, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r3
	ldr r2, _08012A84
	ldr r1, [r4, #0]
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #0]
	lsls r3, r3, #5
	ldrh r0, [r4, #0]
	ldr r2, _08012A88
	ands r2, r0
	orrs r2, r3
	ldr r0, _08012A8C
	ands r1, r0
	orrs r1, r2
	str r1, [r4, #0]
	lsls r1, r5, #5
	subs r1, r1, r5
	asrs r1, r1, #8
	adds r3, r4, #0
	ands r1, r6
	b _08013052
	.2byte 0x0000
_08012A80: .4byte gUnk_080B9704
_08012A84: .4byte 0xFFFFFF00
_08012A88: .4byte 0xFFFFFC1F
_08012A8C: .4byte 0xFFFF0000
_08012A90:
	ldr r1, _08012ACC
	ldr r4, [sp, #0x164]
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r5, #0
	ldrsh r3, [r0, r5]
	lsls r1, r3, #5
	subs r1, r1, r3
	asrs r1, r1, #8
	movs r5, #0x1f
	ands r1, r5
	add r4, sp, #0x110
	ldrb r2, [r4, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0]
	lsls r1, r1, #5
	ldrh r2, [r4, #0]
	ldr r0, _08012AD0
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	asrs r1, r1, #7
	adds r3, r4, #0
	ands r1, r5
	b _08013052
_08012ACC: .4byte gUnk_080B9704
_08012AD0: .4byte 0xFFFFFC1F
_08012AD4:
	ldr r1, _08012B1C
	ldr r2, [sp, #0x164]
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r3, [r0, r4]
	movs r0, #0x16
	adds r1, r3, #0
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r5, #0x1f
	ands r1, r5
	add r4, sp, #0x110
	ldrb r2, [r4, #0]
	subs r0, #0x36
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0]
	lsls r1, r3, #5
	subs r1, r1, r3
	asrs r1, r1, #8
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r4, #0]
	ldr r0, _08012B20
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	asrs r1, r1, #7
	adds r3, r4, #0
	ands r1, r5
	b _08013052
	.2byte 0x0000
_08012B1C: .4byte gUnk_080B9704
_08012B20: .4byte 0xFFFFFC1F
_08012B24:
	ldr r1, _08012B34
	ldr r5, [sp, #0x164]
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r0, [r0, r6]
	b _0801302C
	.2byte 0x0000
_08012B34: .4byte gUnk_080B9704
_08012B38:
	bl sub_0800CC98
	cmp r0, #0
	beq _08012B42
	b _080131B0
_08012B42:
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x44
	movs r1, #0xd
	add r2, sp, #0xf8
	mov r3, sp
	adds r3, #0xfa
	bl sub_08065370
	ldr r0, _08012B78
	ldr r0, [r0, #0]
	ands r0, r4
	ldrh r1, [r7, #0]
	ands r4, r1
	cmp r0, r4
	beq _08012B64
	b _080131B0
_08012B64:
	ldr r0, [sp, #0x1c0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0x1c4]
	movs r4, #0
	ldrsh r2, [r3, r4]
	add r5, sp, #0xf8
	ldrh r0, [r5, #0]
	b _080130AE
	.2byte 0x0000
_08012B78: .4byte gUnk_03002344
_08012B7C:
	bl sub_0800CC98
	cmp r0, #0
	beq _08012B86
	b _080131B0
_08012B86:
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x44
	movs r1, #0xf
	add r2, sp, #0xf8
	mov r3, sp
	adds r3, #0xfa
	bl sub_08065370
	ldr r0, _08012BB4
	ldr r1, [r0, #0]
	ands r1, r4
	ldrh r2, [r7, #0]
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	beq _08012BAA
	b _080131B0
_08012BAA:
	ldr r6, [sp, #0x1c0]
	movs r0, #0
	ldrsh r1, [r6, r0]
	b _080130E2
	.2byte 0x0000
_08012BB4: .4byte gUnk_03002344
_08012BB8:
	bl sub_0800CC98
	cmp r0, #0
	beq _08012BC2
	b _080131B0
_08012BC2:
	b _08013100
_08012BC4:
	bl sub_0800CC98
	cmp r0, #0
	beq _08012BCE
	b _080131B0
_08012BCE:
	str r0, [sp, #0]
	add r0, sp, #0x44
	movs r1, #0xc
	add r2, sp, #0xf8
	mov r3, sp
	adds r3, #0xfa
	bl sub_08065370
	cmp r0, #0
	beq _08012BE4
	b _080131B0
_08012BE4:
	ldr r0, _08012BF8
	ldr r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	ldrh r2, [r7, #0]
	ands r0, r2
	cmp r1, r0
	beq _08012BF6
	b _080131B0
_08012BF6:
	b _08013162
_08012BF8: .4byte gUnk_03002344
_08012BFC:
	ldr r2, [sp, #0x180]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldrb r2, [r2, #4]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1f
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x160]
	ldr r3, [sp, #0x180]
	ldrh r0, [r3, #0]
	lsrs r0, r0, #4
	ldrh r1, [r3, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	str r5, [sp, #0]
	ldrb r2, [r3, #4]
	lsls r2, r2, #0x1a
	lsrs r2, r2, #0x1a
	str r2, [sp, #4]
	ldr r2, [sp, #0x1c0]
	ldr r3, [sp, #0x1c4]
	bl sub_0800BC08
	ldr r4, [sp, #0x180]
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08012C7A
	bl sub_0800CCCC
	cmp r0, #0
	beq _08012C74
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	ldr r1, _08012C70
	adds r1, #0x90
	movs r5, #0
	str r5, [sp, #0x128]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bne _08012CA0
	movs r6, #1
	str r6, [sp, #0x128]
	b _08012CA8
	.2byte 0x0000
_08012C70: .4byte gUnk_03003170
_08012C74:
	movs r0, #0
	str r0, [sp, #0x128]
	b _080131B0
_08012C7A:
	bl sub_0800CCCC
	movs r1, #0
	str r1, [sp, #0x128]
	cmp r0, #0
	bne _08012CA0
	ldr r2, [sp, #0x180]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	subs r1, #0x21
	ands r0, r1
	ldr r1, _08012CEC
	adds r1, #0x90
	ldrh r1, [r1, #0]
	cmp r0, r1
	bne _08012CA0
	movs r3, #1
	str r3, [sp, #0x128]
_08012CA0:
	ldr r4, [sp, #0x128]
	cmp r4, #0
	bne _08012CA8
	b _080131B0
_08012CA8:
	movs r5, #0x8f
	lsls r5, r5, #1
	adds r5, r5, r7
	mov r8, r5
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq _08012D1C
	ldr r6, [sp, #0x1a0]
	cmp r6, #0
	beq _08012CC0
	movs r0, #0
	str r0, [sp, #0x1a0]
_08012CC0:
	add r0, sp, #0x78
	mov r2, r8
	ldrh r1, [r2, #0]
	add r5, sp, #0xf4
	mov r6, sp
	adds r6, #0xf6
	movs r4, #0
	str r4, [sp, #0]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_08065370
	cmp r0, #0
	beq _08012CF0
	mov r3, r8
	strh r4, [r3, #0]
	strh r4, [r5, #0]
	strh r4, [r6, #0]
	movs r4, #1
	str r4, [sp, #0x1a0]
	b _08012D1C
	.2byte 0x0000
_08012CEC: .4byte gUnk_03003170
_08012CF0:
	bl sub_0800CC98
	cmp r0, #0
	bne _08012D1C
	bl sub_0800CD8C
	cmp r0, #0
	bne _08012D1C
	ldr r6, [sp, #0x1c0]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r3, [sp, #0x1c4]
	movs r4, #0
	ldrsh r2, [r3, r4]
	subs r2, #0x2a
	mov r6, r8
	ldrh r3, [r6, #0]
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	add r0, sp, #0x78
	bl sub_08065230
_08012D1C:
	bl sub_0800CC38
	cmp r0, #0
	beq _08012D2A
	ldr r0, _08012DB0
	ldrb r0, [r0, #0]
	str r0, [sp, #0x160]
_08012D2A:
	bl sub_0800CC98
	cmp r0, #0
	beq _08012D34
	b _080131B0
_08012D34:
	bl sub_0800CD8C
	cmp r0, #0
	beq _08012D3E
	b _080131B0
_08012D3E:
	ldr r1, [r7, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08012DBC
	ldr r0, _08012DB4
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08012D6C
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
_08012D6C:
	ldr r0, _08012DB8
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08012D7A
	b _080131B0
_08012D7A:
	ldr r3, [sp, #0x1c0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	ldr r5, [sp, #0x1c4]
	movs r6, #0
	ldrsh r1, [r5, r6]
	ldr r3, [sp, #0x118]
	asrs r2, r3, #8
	subs r1, r1, r2
	adds r2, r7, #0
	adds r2, #0xb0
	ldrh r2, [r2, #0]
	adds r3, r7, #0
	adds r3, #0xb2
	ldrh r3, [r3, #0]
	ldr r4, [sp, #0x160]
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080131B0
	.2byte 0x0000
_08012DB0: .4byte gUnk_030034D8
_08012DB4: .4byte gUnk_03005CF4
_08012DB8: .4byte gUnk_03002344
_08012DBC:
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r1, r0
	cmp r1, #0
	bne _08012E8C
	ldr r5, [sp, #0x1c0]
	movs r6, #0
	ldrsh r0, [r5, r6]
	ldr r2, [sp, #0x1c4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x118]
	asrs r2, r4, #8
	subs r1, r1, r2
	adds r2, r7, #0
	adds r2, #0xb0
	ldrh r2, [r2, #0]
	adds r3, r7, #0
	adds r3, #0xb2
	ldrh r3, [r3, #0]
	ldr r5, [sp, #0x160]
	str r5, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, _08012E2C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08012E8C
	adds r0, r7, #0
	adds r0, #0x64
	ldrh r1, [r0, #0]
	ldr r6, [sp, #0x1a4]
	str r6, [sp, #0x128]
	adds r5, r0, #0
	cmp r1, #9
	bls _08012E1C
	movs r0, #0
	str r0, [sp, #0x128]
_08012E1C:
	ldr r1, [sp, #0x128]
	cmp r1, #0xc
	beq _08012E38
	cmp r1, #0xc
	bhi _08012E30
	cmp r1, #0xa
	beq _08012E54
	b _08012E62
_08012E2C: .4byte gUnk_03005CF4
_08012E30:
	ldr r2, [sp, #0x128]
	cmp r2, #0xd
	beq _08012E46
	b _08012E62
_08012E38:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r1, r1, r3
	b _08012E6E
_08012E46:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r4, #0xd0
	lsls r4, r4, #1
	adds r1, r1, r4
	b _08012E6E
_08012E54:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r1, r1, r5
	b _08012E6E
_08012E62:
	ldrh r0, [r5, #0]
	cmp r0, #9
	bne _08012E76
	ldrh r0, [r7, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
_08012E6E:
	movs r2, #1
	bl sub_08000AF0
	b _08012E8C
_08012E76:
	ldrh r0, [r7, #0]
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x66
	ldrb r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
_08012E8C:
	ldr r1, [sp, #0x164]
	adds r1, #2
	lsls r1, r1, #0x18
	movs r0, #0xfe
	lsls r0, r0, #0x17
	ands r0, r1
	lsrs r0, r0, #0x18
	str r0, [sp, #0x164]
	ldr r2, _08012EC4
	ldrh r0, [r7, #0]
	adds r0, #0x10
	lsls r0, r0, #5
	adds r1, r2, #0
	adds r1, #0x1e
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [sp, #0x128]
	subs r0, #1
	mov r8, r2
	cmp r0, #0xd
	bls _08012EBA
	b _080131A4
_08012EBA:
	lsls r0, r0, #2
	ldr r1, _08012EC8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08012EC4: .4byte gUnk_03001F40
_08012EC8: .4byte _08012ECC
_08012ECC:
	.4byte _08012F04
_08012ED0: .4byte _08012F34
_08012ED4: .4byte _08012F78
_08012ED8: .4byte _08012FBC
_08012EDC: .4byte _08012FD0
_08012EE0: .4byte _08013020
_08012EE4: .4byte _080130C0
_08012EE8: .4byte _080131A4
_08012EEC: .4byte _08013100
_08012EF0: .4byte _080131A4
_08012EF4: .4byte _08013184
_08012EF8: .4byte _08013140
_08012EFC: .4byte _0801307C
_08012F00: .4byte _08013194
_08012F04:
	ldr r1, _08012F30
	ldr r6, [sp, #0x164]
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	asrs r2, r3, #4
	movs r0, #0x1f
	ands r2, r0
	add r4, sp, #0x110
	ldrb r1, [r4, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0]
	lsls r1, r3, #5
	subs r1, r1, r3
	asrs r1, r1, #8
	movs r0, #0x1f
	ands r1, r0
	b _08013044
_08012F30: .4byte gUnk_080B9704
_08012F34:
	ldr r1, _08012F70
	ldr r2, [sp, #0x164]
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r3, [r0, r4]
	lsls r1, r3, #2
	adds r1, r1, r3
	asrs r1, r1, #8
	movs r5, #0x1f
	ands r1, r5
	add r4, sp, #0x110
	ldrb r2, [r4, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0]
	lsls r1, r1, #5
	ldrh r2, [r4, #0]
	ldr r0, _08012F74
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	lsls r1, r3, #5
	subs r1, r1, r3
	asrs r1, r1, #8
	adds r3, r4, #0
	ands r1, r5
	b _08013052
_08012F70: .4byte gUnk_080B9704
_08012F74: .4byte 0xFFFFFC1F
_08012F78:
	ldr r1, _08012FB4
	ldr r5, [sp, #0x164]
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r6, #0
	ldrsh r3, [r0, r6]
	lsls r1, r3, #5
	subs r1, r1, r3
	asrs r1, r1, #8
	movs r5, #0x1f
	ands r1, r5
	add r4, sp, #0x110
	ldrb r2, [r4, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0]
	lsls r1, r1, #5
	ldrh r2, [r4, #0]
	ldr r0, _08012FB8
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	asrs r1, r1, #7
	adds r3, r4, #0
	ands r1, r5
	b _08013052
_08012FB4: .4byte gUnk_080B9704
_08012FB8: .4byte 0xFFFFFC1F
_08012FBC:
	ldr r1, _08012FCC
	ldr r2, [sp, #0x164]
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	b _0801302C
	.2byte 0x0000
_08012FCC: .4byte gUnk_080B9704
_08012FD0:
	ldr r1, _08013018
	ldr r4, [sp, #0x164]
	lsls r0, r4, #1
	adds r0, r0, r1
	movs r5, #0
	ldrsh r3, [r0, r5]
	movs r0, #0x16
	adds r1, r3, #0
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r5, #0x1f
	ands r1, r5
	add r4, sp, #0x110
	ldrb r2, [r4, #0]
	subs r0, #0x36
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0]
	lsls r1, r3, #5
	subs r1, r1, r3
	asrs r1, r1, #8
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r4, #0]
	ldr r0, _0801301C
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	lsls r1, r3, #2
	adds r1, r1, r3
	asrs r1, r1, #7
	adds r3, r4, #0
	ands r1, r5
	b _08013052
	.2byte 0x0000
_08013018: .4byte gUnk_080B9704
_0801301C: .4byte 0xFFFFFC1F
_08013020:
	ldr r1, _08013074
	ldr r6, [sp, #0x164]
	lsls r0, r6, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
_0801302C:
	lsls r1, r0, #5
	subs r1, r1, r0
	asrs r1, r1, #8
	movs r0, #0x1f
	ands r1, r0
	add r4, sp, #0x110
	ldrb r2, [r4, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0]
_08013044:
	lsls r3, r1, #5
	ldrh r2, [r4, #0]
	ldr r0, _08013078
	ands r0, r2
	orrs r0, r3
	strh r0, [r4, #0]
	adds r3, r4, #0
_08013052:
	lsls r1, r1, #2
	ldrb r2, [r3, #1]
	movs r0, #0x7d
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #1]
	ldrh r0, [r7, #0]
	adds r0, #0x10
	lsls r0, r0, #5
	mov r1, r8
	adds r1, #0x1e
	adds r0, r0, r1
	ldrh r1, [r4, #0]
	strh r1, [r0, #0]
	b _080131B0
	.2byte 0x0000
_08013074: .4byte gUnk_080B9704
_08013078: .4byte 0xFFFFFC1F
_0801307C:
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x44
	movs r1, #0xd
	add r2, sp, #0xf8
	mov r3, sp
	adds r3, #0xfa
	bl sub_08065370
	ldr r0, _080130BC
	ldr r0, [r0, #0]
	ands r0, r4
	ldrh r1, [r7, #0]
	ands r4, r1
	cmp r0, r4
	beq _0801309E
	b _080131B0
_0801309E:
	ldr r2, [sp, #0x1c0]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x1c4]
	movs r5, #0
	ldrsh r2, [r4, r5]
	add r6, sp, #0xf8
	ldrh r0, [r6, #0]
_080130AE:
	str r0, [sp, #0]
	add r0, sp, #0x44
	movs r3, #0xd
	bl sub_08065230
	b _080131B0
	.2byte 0x0000
_080130BC: .4byte gUnk_03002344
_080130C0:
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x44
	movs r1, #0xf
	add r2, sp, #0xf8
	mov r3, sp
	adds r3, #0xfa
	bl sub_08065370
	ldr r0, _080130FC
	ldr r0, [r0, #0]
	ands r0, r4
	cmp r0, #0
	beq _080131B0
	ldr r0, [sp, #0x1c0]
	movs r2, #0
	ldrsh r1, [r0, r2]
_080130E2:
	ldr r3, [sp, #0x1c4]
	movs r5, #0
	ldrsh r2, [r3, r5]
	add r6, sp, #0xf8
	ldrh r0, [r6, #0]
	str r0, [sp, #0]
	str r4, [sp, #4]
	add r0, sp, #0x44
	movs r3, #0xf
	bl sub_080659BC
	b _080131B0
	.2byte 0x0000
_080130FC: .4byte gUnk_03002344
_08013100:
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x44
	movs r1, #0xa
	add r2, sp, #0xf8
	mov r3, sp
	adds r3, #0xfa
	bl sub_08065370
	ldr r0, _0801313C
	ldr r0, [r0, #0]
	ands r0, r4
	ldrh r1, [r7, #0]
	ands r4, r1
	cmp r0, r4
	bne _080131B0
	ldr r0, [sp, #0x1c0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, [sp, #0x1c4]
	movs r4, #0
	ldrsh r2, [r3, r4]
	add r5, sp, #0xf8
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	add r0, sp, #0x44
	movs r3, #0xa
	bl sub_08065230
	b _080131B0
_0801313C: .4byte gUnk_03002344
_08013140:
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x44
	movs r1, #0xc
	add r2, sp, #0xf8
	mov r3, sp
	adds r3, #0xfa
	bl sub_08065370
	cmp r0, #0
	bne _080131B0
	ldr r0, _08013180
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080131B0
_08013162:
	ldr r6, [sp, #0x1c0]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r3, [sp, #0x1c4]
	movs r4, #0
	ldrsh r2, [r3, r4]
	add r5, sp, #0xf8
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	add r0, sp, #0x44
	movs r3, #0xc
	bl sub_08065230
	b _080131B0
	.2byte 0x0000
_08013180: .4byte gUnk_03002344
_08013184:
	bl sub_0800CC98
	cmp r0, #0
	bne _080131B0
	ldrh r0, [r7, #0]
	bl sub_08022180
	b _080131B0
_08013194:
	bl sub_0800CC98
	cmp r0, #0
	bne _080131B0
	ldrh r0, [r7, #0]
	bl sub_08021DC4
	b _080131B0
_080131A4:
	movs r0, #0
	add r6, sp, #0xf8
	strh r0, [r6, #0]
	movs r1, #0xfa
	add r1, sp
	strh r0, [r1, #0]
_080131B0:
	ldrh r0, [r7, #0xc]
	cmp r0, #6
	beq _080131C6
	cmp r0, #6
	bgt _080131C0
	cmp r0, #1
	beq _080131C6
	b _080133EE
_080131C0:
	cmp r0, #8
	beq _080131C6
	b _080133EE
_080131C6:
	ldrh r0, [r7, #0x10]
	cmp r0, #9
	beq _080131CE
	b _080133EE
_080131CE:
	ldr r2, [sp, #0x180]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	subs r0, #3
	cmp r0, #1
	bls _080131DE
	b _080133EE
_080131DE:
	ldr r0, [r2, #4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x18
	cmp r0, #0
	bgt _080131EA
	b _080133EE
_080131EA:
	ldrb r0, [r2, #6]
	lsrs r0, r0, #3
	subs r0, #1
	cmp r0, #0x14
	bhi _080132B8
	lsls r0, r0, #2
	ldr r1, _08013200
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08013200: .4byte _08013204
_08013204:
	.4byte _08013258
_08013208: .4byte _08013264
_0801320C: .4byte _0801329C
_08013210: .4byte _080132AE
_08013214: .4byte _080132B4
_08013218: .4byte _0801326E
_0801321C: .4byte _08013268
_08013220: .4byte _08013274
_08013224: .4byte _0801327A
_08013228: .4byte _08013280
_0801322C: .4byte _08013286
_08013230: .4byte _0801328C
_08013234: .4byte _0801325E
_08013238: .4byte _0801325E
_0801323C: .4byte _080132A2
_08013240: .4byte _08013258
_08013244: .4byte _08013290
_08013248: .4byte _080132A8
_0801324C: .4byte _08013258
_08013250: .4byte _08013258
_08013254: .4byte _08013296
_08013258:
	movs r3, #0x16
	str r3, [sp, #0x138]
	b _080132B8
_0801325E:
	movs r4, #0x1b
	str r4, [sp, #0x138]
	b _080132B8
_08013264:
	movs r5, #0x17
	b _080132B6
_08013268:
	movs r6, #0x19
	str r6, [sp, #0x138]
	b _080132B8
_0801326E:
	movs r0, #0x1a
	str r0, [sp, #0x138]
	b _080132B8
_08013274:
	movs r1, #0x1a
	str r1, [sp, #0x138]
	b _080132B8
_0801327A:
	movs r2, #0x1a
	str r2, [sp, #0x138]
	b _080132B8
_08013280:
	movs r3, #0x1a
	str r3, [sp, #0x138]
	b _080132B8
_08013286:
	movs r4, #0x1a
	str r4, [sp, #0x138]
	b _080132B8
_0801328C:
	movs r5, #0x1a
	b _080132B6
_08013290:
	movs r6, #0x1b
	str r6, [sp, #0x138]
	b _080132B8
_08013296:
	movs r0, #0x19
	str r0, [sp, #0x138]
	b _080132B8
_0801329C:
	movs r1, #0x18
	str r1, [sp, #0x138]
	b _080132B8
_080132A2:
	movs r2, #0x1b
	str r2, [sp, #0x138]
	b _080132B8
_080132A8:
	movs r3, #0x1b
	str r3, [sp, #0x138]
	b _080132B8
_080132AE:
	movs r4, #0x19
	str r4, [sp, #0x138]
	b _080132B8
_080132B4:
	movs r5, #0x16
_080132B6:
	str r5, [sp, #0x138]
_080132B8:
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x44
	ldr r1, [sp, #0x138]
	add r2, sp, #0xfc
	mov r3, sp
	adds r3, #0xfe
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	beq _080132D4
	b _080133EE
_080132D4:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080132DE
	b _080133EE
_080132DE:
	bl sub_0800CD34
	cmp r0, #0
	beq _080132E8
	b _080133EE
_080132E8:
	ldr r6, [sp, #0x180]
	ldrb r0, [r6, #3]
	lsrs r0, r0, #4
	cmp r0, #7
	bhi _0801339C
	lsls r0, r0, #2
	ldr r1, _080132FC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080132FC: .4byte _08013300
_08013300:
	.4byte _08013320
_08013304: .4byte _0801332A
_08013308: .4byte _0801333C
_0801330C: .4byte _0801334E
_08013310: .4byte _08013360
_08013314: .4byte _08013368
_08013318: .4byte _0801337A
_0801331C: .4byte _0801338C
_08013320:
	ldr r1, [sp, #0x1c4]
	ldrh r0, [r1, #0]
	adds r0, #2
	strh r0, [r1, #0]
	b _0801339C
_0801332A:
	ldr r2, [sp, #0x1c4]
	ldrh r0, [r2, #0]
	adds r0, #2
	strh r0, [r2, #0]
	ldr r3, [sp, #0x1c0]
	ldrh r0, [r3, #0]
	subs r0, #2
	strh r0, [r3, #0]
	b _0801339C
_0801333C:
	ldr r4, [sp, #0x1c0]
	ldrh r0, [r4, #0]
	subs r0, #0xa
	strh r0, [r4, #0]
	ldr r5, [sp, #0x1c4]
	ldrh r0, [r5, #0]
	adds r0, #2
	strh r0, [r5, #0]
	b _0801339C
_0801334E:
	ldr r6, [sp, #0x1c4]
	ldrh r0, [r6, #0]
	subs r0, #2
	strh r0, [r6, #0]
	ldr r1, [sp, #0x1c0]
	ldrh r0, [r1, #0]
	subs r0, #2
	strh r0, [r1, #0]
	b _0801339C
_08013360:
	ldr r2, [sp, #0x1c4]
	ldrh r0, [r2, #0]
	subs r0, #0xa
	b _0801339A
_08013368:
	ldr r3, [sp, #0x1c4]
	ldrh r0, [r3, #0]
	subs r0, #2
	strh r0, [r3, #0]
	ldr r4, [sp, #0x1c0]
	ldrh r0, [r4, #0]
	adds r0, #2
	strh r0, [r4, #0]
	b _0801339C
_0801337A:
	ldr r5, [sp, #0x1c0]
	ldrh r0, [r5, #0]
	adds r0, #0xa
	strh r0, [r5, #0]
	ldr r6, [sp, #0x1c4]
	ldrh r0, [r6, #0]
	adds r0, #2
	strh r0, [r6, #0]
	b _0801339C
_0801338C:
	ldr r1, [sp, #0x1c0]
	ldrh r0, [r1, #0]
	adds r0, #2
	strh r0, [r1, #0]
	ldr r2, [sp, #0x1c4]
	ldrh r0, [r2, #0]
	adds r0, #2
_0801339A:
	strh r0, [r2, #0]
_0801339C:
	ldr r0, _08013460
	ldr r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	ldrh r2, [r7, #0]
	ands r0, r2
	cmp r1, r0
	bne _080133D2
	ldr r3, [sp, #0x1c0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	ldr r5, [sp, #0x1c4]
	movs r6, #0
	ldrsh r1, [r5, r6]
	add r2, sp, #0xfc
	ldrh r3, [r2, #0]
	ldr r4, [sp, #0x160]
	str r4, [sp, #0]
	add r2, sp, #0x60
	str r2, [sp, #4]
	ldr r2, [sp, #0x4c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x138]
	bl sub_08007870
_080133D2:
	add r5, sp, #0xfc
	ldrh r0, [r5, #0]
	cmp r0, #0
	bne _080133EE
	movs r6, #0xfe
	add r6, sp
	ldrh r0, [r6, #0]
	cmp r0, #1
	bne _080133EE
	ldr r1, [sp, #0x50]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_080133EE:
	ldr r1, [sp, #0x180]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	ble _080133FC
	b _08013556
_080133FC:
	cmp r0, #0
	bge _08013402
	b _08013556
_08013402:
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt _0801340C
	b _08013556
_0801340C:
	bl sub_0800CFF0
	cmp r0, #0
	beq _08013416
	b _08013556
_08013416:
	movs r2, #0x1a
	str r2, [sp, #0x138]
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x44
	movs r1, #0x1a
	add r2, sp, #0xfc
	mov r3, sp
	adds r3, #0xfe
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	beq _08013436
	b _08013556
_08013436:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08013440
	b _08013556
_08013440:
	bl sub_0800CD34
	cmp r0, #0
	beq _0801344A
	b _08013556
_0801344A:
	ldr r3, [sp, #0x180]
	ldrb r0, [r3, #3]
	lsrs r0, r0, #4
	cmp r0, #7
	bhi _08013504
	lsls r0, r0, #2
	ldr r1, _08013464
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08013460: .4byte gUnk_03002344
_08013464: .4byte _08013468
_08013468:
	.4byte _08013488
_0801346C: .4byte _08013492
_08013470: .4byte _080134A4
_08013474: .4byte _080134B6
_08013478: .4byte _080134C8
_0801347C: .4byte _080134D0
_08013480: .4byte _080134E2
_08013484: .4byte _080134F4
_08013488:
	ldr r4, [sp, #0x1c4]
	ldrh r0, [r4, #0]
	adds r0, #2
	strh r0, [r4, #0]
	b _08013504
_08013492:
	ldr r5, [sp, #0x1c4]
	ldrh r0, [r5, #0]
	adds r0, #2
	strh r0, [r5, #0]
	ldr r6, [sp, #0x1c0]
	ldrh r0, [r6, #0]
	subs r0, #2
	strh r0, [r6, #0]
	b _08013504
_080134A4:
	ldr r1, [sp, #0x1c0]
	ldrh r0, [r1, #0]
	subs r0, #0xa
	strh r0, [r1, #0]
	ldr r2, [sp, #0x1c4]
	ldrh r0, [r2, #0]
	subs r0, #6
	strh r0, [r2, #0]
	b _08013504
_080134B6:
	ldr r3, [sp, #0x1c4]
	ldrh r0, [r3, #0]
	subs r0, #2
	strh r0, [r3, #0]
	ldr r4, [sp, #0x1c0]
	ldrh r0, [r4, #0]
	subs r0, #2
	strh r0, [r4, #0]
	b _08013504
_080134C8:
	ldr r5, [sp, #0x1c4]
	ldrh r0, [r5, #0]
	subs r0, #0xa
	b _08013502
_080134D0:
	ldr r6, [sp, #0x1c4]
	ldrh r0, [r6, #0]
	subs r0, #2
	strh r0, [r6, #0]
	ldr r1, [sp, #0x1c0]
	ldrh r0, [r1, #0]
	adds r0, #2
	strh r0, [r1, #0]
	b _08013504
_080134E2:
	ldr r2, [sp, #0x1c0]
	ldrh r0, [r2, #0]
	adds r0, #0xa
	strh r0, [r2, #0]
	ldr r3, [sp, #0x1c4]
	ldrh r0, [r3, #0]
	subs r0, #6
	strh r0, [r3, #0]
	b _08013504
_080134F4:
	ldr r4, [sp, #0x1c0]
	ldrh r0, [r4, #0]
	adds r0, #2
	strh r0, [r4, #0]
	ldr r5, [sp, #0x1c4]
	ldrh r0, [r5, #0]
	adds r0, #2
_08013502:
	strh r0, [r5, #0]
_08013504:
	ldr r0, _080135B8
	ldr r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	ldrh r2, [r7, #0]
	ands r0, r2
	cmp r1, r0
	bne _0801353A
	ldr r6, [sp, #0x1c0]
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, [sp, #0x1c4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r4, sp, #0xfc
	ldrh r3, [r4, #0]
	ldr r5, [sp, #0x160]
	str r5, [sp, #0]
	add r2, sp, #0x60
	str r2, [sp, #4]
	ldr r2, [sp, #0x4c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x44]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x138]
	bl sub_08007870
_0801353A:
	add r6, sp, #0xfc
	ldrh r0, [r6, #0]
	cmp r0, #0
	bne _08013556
	movs r1, #0xfe
	add r1, sp
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _08013556
	ldr r1, [sp, #0x50]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08013556:
	bl sub_080003F0
_0801355A:
	bl sub_0800CB78
	cmp r0, #0
	bne _08013566
	bl _0800D54C
_08013566:
	ldrh r0, [r7, #0]
	bl sub_080688F8
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	beq _08013586
	ldr r0, [r7, #0x34]
	bl sub_08001538
	movs r0, #0
	str r0, [r7, #0x34]
	adds r0, r7, #0
	adds r0, #0xac
	ldr r0, [r0, #0]
	bl sub_08001538
_08013586:
	movs r2, #0x9e
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	ldr r0, _080135BC
	bl sub_08000420
	ldr r0, _080135C0
	bl sub_08000420
	bl sub_0800035C
	add sp, #0x1d8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080135B8: .4byte gUnk_03002344
_080135BC: .4byte 0x00018A92
_080135C0: .4byte 0x00018A93
	thumb_func_end sub_0800D368
