	thumb_func_start sub_0806C568
sub_0806C568: @ 0x0806C568
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa8
	str r0, [sp, #0x74]
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	ldr r0, [sp, #0x74]
	ldr r0, [r0, #0]
	str r0, [sp, #0x94]
	ldr r1, [sp, #0x74]
	ldr r1, [r1, #4]
	str r1, [sp, #0x98]
	ldr r2, [sp, #0x74]
	ldrh r2, [r2, #0x14]
	mov sl, r2
	mov r3, sl
	str r3, [sp, #0x7c]
	cmp r0, #3
	bhi _0806C5B4
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r4, [sp, #0x94]
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0806C5B0
	adds r1, r1, r0
	str r1, [sp, #0x78]
	lsls r0, r4, #2
	str r0, [sp, #0xa0]
	b _0806C634
_0806C5B0: .4byte gUnk_03003CE0
_0806C5B4:
	ldr r1, _0806C610
	ldr r2, [sp, #0x94]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r3, _0806C614
	adds r0, r0, r3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	mov r9, r1
	mov r0, r9
	adds r0, #0x6a
	ldr r1, _0806C618
	add r1, r9
	ldrh r0, [r0, #0]
	lsls r4, r2, #2
	str r4, [sp, #0xa0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bhs _0806C634
	ldr r0, _0806C61C
	adds r4, r4, r0
	movs r0, #1
	ldr r1, [sp, #0x98]
	lsls r0, r1
	mvns r5, r0
_0806C5EC:
	bl sub_08056E90
	cmp r0, #0
	bne _0806C608
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806C608
	mov r2, r9
	ldrh r0, [r2, #0xc]
	cmp r0, #0xa
	beq _0806C608
	cmp r0, #0xb
	bne _0806C620
_0806C608:
	ldr r0, [r4, #0]
	ands r0, r5
	str r0, [r4, #0]
	b _0806CDDC
_0806C610: .4byte gUnk_030056F4
_0806C614: .4byte 0xFFFFF480
_0806C618: .4byte 0x0000022B
_0806C61C: .4byte gUnk_030063E0
_0806C620:
	bl sub_080003F0
	mov r0, r9
	adds r0, #0x6a
	ldr r1, _0806C688
	add r1, r9
	ldrh r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _0806C5EC
_0806C634:
	ldr r3, [sp, #0x74]
	ldr r0, [r3, #0]
	ldr r4, [sp, #0x8c]
	cmp r4, r0
	beq _0806C694
	ldr r0, [sp, #0x94]
	cmp r0, #3
	bls _0806C6C6
	ldr r3, _0806C68C
	mov r1, sl
	lsls r2, r1, #1
	ldr r4, [sp, #0x74]
	ldr r1, [r4, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #6
	adds r2, r2, r3
	mov r3, r9
	adds r3, #0x5e
	ldrh r0, [r3, #0]
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806C6C6
	ldr r2, _0806C690
	ldr r0, [sp, #0xa0]
	adds r2, r0, r2
	movs r1, #1
	ldr r4, [sp, #0x98]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r3, #0]
	b _0806CDDC
	.2byte 0x0000
_0806C688: .4byte 0x0000022B
_0806C68C: .4byte gUnk_084EBF1C
_0806C690: .4byte gUnk_030063E0
_0806C694:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806C75C
	adds r4, r4, r0
	ldr r1, [sp, #0x74]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x14]
	bl sub_0806898C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc2
	ldrh r1, [r4, #0]
	subs r1, r1, r0
	strh r1, [r4, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0806C6C6
	movs r0, #0
	strh r0, [r4, #0]
_0806C6C6:
	add r3, sp, #0x4c
	movs r0, #0
	strh r0, [r3, #0]
	add r2, sp, #0x58
	strh r0, [r2, #0]
	add r1, sp, #0x64
	strh r0, [r1, #0]
	movs r7, #1
	mov r8, r0
	adds r6, r1, #0
_0806C6DA:
	lsls r5, r7, #1
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x4c
	mov r2, r8
	strh r2, [r0, #0]
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0x58
	strh r2, [r0, #0]
	bl sub_080008C8
	adds r5, r6, r5
	subs r4, r7, #1
	lsls r4, r4, #1
	adds r4, r6, r4
	movs r1, #0x14
	bl __umodsi3
	adds r0, #0xa
	ldrh r4, [r4, #0]
	adds r0, r0, r4
	adds r0, #1
	strh r0, [r5, #0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _0806C6DA
	ldr r3, [sp, #0x94]
	cmp r3, #3
	bhi _0806C78C
	ldr r5, [sp, #0x78]
	adds r5, #0xb2
	ldr r4, [sp, #0x7c]
	cmp r4, #0
	beq _0806C728
	movs r0, #2
	strh r0, [r5, #0]
_0806C728:
	ldrh r0, [r5, #0]
	cmp r0, #1
	bhi _0806C772
	ldr r0, _0806C760
	ldr r1, [sp, #0xa0]
	adds r4, r1, r0
	movs r0, #1
	ldr r2, [sp, #0x98]
	lsls r0, r2
	mvns r6, r0
_0806C73C:
	ldr r3, [sp, #0x78]
	ldrh r0, [r3, #0x20]
	cmp r0, #0xa
	beq _0806C752
	ldr r0, _0806C764
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0806C768
_0806C752:
	ldr r0, [r4, #0]
	ands r0, r6
	str r0, [r4, #0]
	b _0806CDDC
	.2byte 0x0000
_0806C75C: .4byte gUnk_03003CE0
_0806C760: .4byte gUnk_030063E0
_0806C764: .4byte gUnk_03005CF4
_0806C768:
	bl sub_080003F0
	ldrh r0, [r5, #0]
	cmp r0, #1
	bls _0806C73C
_0806C772:
	ldr r4, [sp, #0x78]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	mov r8, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r6, r0, #0xc
	b _0806C796
_0806C78C:
	mov r2, r9
	ldr r2, [r2, #0x14]
	mov r8, r2
	mov r3, r9
	ldr r6, [r3, #0x18]
_0806C796:
	movs r4, #0
	str r4, [sp, #0x84]
	movs r0, #0
	str r0, [sp, #0x88]
	bl sub_0800CDF8
	ldr r1, [sp, #0x78]
	adds r1, #0xb6
	str r1, [sp, #0xa4]
	cmp r0, #0
	beq _0806C7AE
	b _0806C95A
_0806C7AE:
	ldr r2, [sp, #0x74]
	ldr r0, [r2, #8]
	cmp r0, #3
	bls _0806C7B8
	b _0806C8B8
_0806C7B8:
	bl sub_08002164
	str r0, [sp, #0x90]
	movs r7, #0
	ldr r3, [sp, #0x88]
	cmp r3, r0
	blo _0806C7C8
	b _0806C95A
_0806C7C8:
	add r5, sp, #0x70
	add r4, sp, #0x44
	mov ip, r4
_0806C7CE:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _0806C834
	adds r2, r1, r0
	ldrh r0, [r2, #0x20]
	cmp r0, #0xb
	beq _0806C8A4
	ldr r0, [sp, #0x94]
	cmp r0, #3
	bhi _0806C838
	ldr r0, [sp, #0x78]
	adds r0, #0x68
	adds r1, r2, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	beq _0806C8A4
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r4, [r0, #0]
	ldrb r0, [r4, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xb
	beq _0806C8A4
	cmp r0, #0xa
	beq _0806C8A4
	cmp r0, #0xe
	beq _0806C8A4
	cmp r1, #0
	beq _0806C8A4
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0806C8A4
	ldrh r0, [r4, #0]
	lsrs r0, r0, #4
	mov r2, r8
	asrs r1, r2, #8
	subs r0, r0, r1
	strh r0, [r5, #0]
	ldrh r0, [r4, #2]
	b _0806C84E
	.2byte 0x0000
_0806C834: .4byte gUnk_03003CE0
_0806C838:
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r2, r4
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r3, r8
	asrs r1, r3, #8
	subs r0, r0, r1
	strh r0, [r5, #0]
	ldrh r0, [r2, #2]
_0806C84E:
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	asrs r1, r6, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, sp
	adds r0, #0x72
	strh r3, [r0, #0]
	movs r4, #0
	ldrsh r1, [r5, r4]
	cmp r1, #0
	bge _0806C86A
	negs r1, r1
_0806C86A:
	mov r2, sl
	lsls r0, r2, #2
	ldr r4, _0806C8B4
	adds r2, r0, r4
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	bge _0806C8A4
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0806C884
	negs r1, r1
_0806C884:
	movs r3, #2
	ldrsh r0, [r2, r3]
	cmp r1, r0
	bge _0806C8A4
	ldr r0, [sp, #0x88]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x88]
	add r0, ip
	strb r7, [r0, #0]
	ldr r0, [sp, #0x84]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
_0806C8A4:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r4, [sp, #0x90]
	cmp r7, r4
	blo _0806C7CE
	b _0806C95A
	.2byte 0x0000
_0806C8B4: .4byte gUnk_084EC12C
_0806C8B8:
	movs r7, #0
	ldr r0, _0806C9C4
	ldr r0, [r0, #0]
	str r0, [sp, #0x9c]
	add r5, sp, #0x70
	add r0, sp, #0x44
	mov ip, r0
_0806C8C6:
	movs r0, #1
	lsls r0, r7
	ldr r1, [sp, #0x9c]
	ands r0, r1
	cmp r0, #0
	beq _0806C950
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	subs r0, r0, r7
	lsls r0, r0, #5
	ldr r2, _0806C9C8
	ldr r1, [r2, #0]
	adds r4, r1, r0
	ldrh r0, [r4, #0xc]
	cmp r0, #0xb
	beq _0806C950
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r4, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0806C950
	ldr r0, [r4, #0x14]
	mov r1, r8
	subs r0, r0, r1
	lsrs r0, r0, #8
	strh r0, [r5, #0]
	ldr r0, [r4, #0x18]
	subs r0, r0, r6
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x72
	strh r1, [r0, #0]
	movs r3, #0
	ldrsh r2, [r5, r3]
	cmp r2, #0
	bge _0806C916
	negs r2, r2
_0806C916:
	mov r4, sl
	lsls r0, r4, #2
	ldr r4, _0806C9CC
	adds r3, r0, r4
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r2, r0
	bge _0806C950
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _0806C930
	negs r1, r1
_0806C930:
	movs r2, #2
	ldrsh r0, [r3, r2]
	cmp r1, r0
	bge _0806C950
	ldr r0, [sp, #0x88]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x88]
	add r0, ip
	strb r7, [r0, #0]
	ldr r0, [sp, #0x84]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x84]
_0806C950:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #4
	bls _0806C8C6
_0806C95A:
	mov r3, sl
	cmp r3, #7
	bne _0806C964
	movs r4, #6
	mov sl, r4
_0806C964:
	ldr r0, [sp, #0x8c]
	ldr r1, [sp, #0x94]
	cmp r0, r1
	bne _0806C984
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806C984
	bl sub_0800CD34
	cmp r0, #0
	bne _0806C984
	ldr r0, _0806C9D0
	add r0, sl
	bl sub_0805865C
_0806C984:
	ldr r1, _0806C9D4
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	ldr r2, [sp, #0x84]
	cmp r2, #0
	bne _0806CA34
	ldr r3, [sp, #0x94]
	cmp r3, #3
	bhi _0806C9DC
	ldr r1, _0806C9D8
	ldr r4, [sp, #0x78]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	b _0806C9EA
_0806C9C4: .4byte gUnk_030056FC
_0806C9C8: .4byte gUnk_030056F4
_0806C9CC: .4byte gUnk_084EC12C
_0806C9D0: .4byte 0x00000155
_0806C9D4: .4byte 0x0005009E
_0806C9D8: .4byte gUnk_0849E730
_0806C9DC:
	ldr r0, _0806CA2C
	mov r3, r9
	movs r4, #8
	ldrsh r1, [r3, r4]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
_0806C9EA:
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x10
	ldr r3, _0806CA30
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	add r8, r0
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r6, r6, r0
	mov r1, sl
	str r1, [sp, #0]
	mov r0, r8
	adds r1, r6, #0
	ldr r2, [sp, #0x94]
	movs r3, #5
	bl sub_08069A30
	b _0806CDB6
	.2byte 0x0000
_0806CA2C: .4byte gUnk_0849E730
_0806CA30: .4byte gUnk_080B9704
_0806CA34:
	movs r2, #0
	str r2, [sp, #0x80]
	b _0806CCAE
_0806CA3A:
	ldr r3, [sp, #0x74]
	ldr r0, [r3, #8]
	cmp r0, #3
	bls _0806CA44
	b _0806CB4E
_0806CA44:
	movs r7, #0
	ldr r4, [sp, #0x88]
	cmp r7, r4
	blo _0806CA4E
	b _0806CC7C
_0806CA4E:
	add r0, sp, #0x70
	mov r9, r0
	movs r1, #0x72
	add r1, sp
	mov r8, r1
_0806CA58:
	add r0, sp, #0x44
	adds r0, r0, r7
	ldrb r1, [r0, #0]
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _0806CADC
	adds r2, r1, r0
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r4, r2, r3
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, r9
	mov r3, r8
	bl sub_0800BC08
	ldr r1, [r4, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r2, r7, #1
	mov r4, sp
	adds r4, r4, r2
	adds r4, #0x64
	ldrh r0, [r4, #0]
	adds r1, r0, #0
	cmp r1, #0
	bne _0806CB38
	mov r5, sp
	adds r5, r5, r2
	adds r5, #0x4c
	mov r3, sp
	adds r3, r3, r2
	adds r3, #0x58
	str r1, [sp, #0]
	add r0, sp, #0x10
	mov r1, sl
	adds r2, r5, #0
	bl sub_08065370
	cmp r0, #0
	beq _0806CAE0
	ldr r0, [sp, #0x80]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	movs r0, #0xf0
	b _0806CB3E
	.2byte 0x0000
_0806CADC: .4byte gUnk_03003CE0
_0806CAE0:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806CB40
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806CB40
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806CB40
	ldr r0, _0806CB34
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0806CB0E
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806CB0E:
	mov r4, r9
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r3, [r5, #0]
	str r6, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08007870
	b _0806CB40
	.2byte 0x0000
_0806CB34: .4byte gUnk_03002344
_0806CB38:
	cmp r1, #0xf0
	beq _0806CB40
	subs r0, #1
_0806CB3E:
	strh r0, [r4, #0]
_0806CB40:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r4, [sp, #0x88]
	cmp r7, r4
	blo _0806CA58
	b _0806CC7C
_0806CB4E:
	movs r7, #0
	ldr r0, [sp, #0x88]
	cmp r7, r0
	blo _0806CB58
	b _0806CC7C
_0806CB58:
	add r1, sp, #0x70
	mov r9, r1
	movs r2, #0x72
	add r2, sp
	mov r8, r2
_0806CB62:
	ldr r2, _0806CBE4
	add r0, sp, #0x44
	adds r0, r0, r7
	ldrb r1, [r0, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	ldr r1, [r2, #0]
	adds r4, r1, r0
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x70
	mov r3, sp
	adds r3, #0x72
	bl sub_0800BC08
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	ldr r1, [r4, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r7, #1
	mov r4, sp
	adds r4, r4, r0
	adds r4, #0x64
	ldrh r2, [r4, #0]
	adds r1, r2, #0
	adds r5, r0, #0
	cmp r1, #0
	bne _0806CC66
	mov r2, sp
	adds r2, r2, r5
	adds r2, #0x4c
	mov r3, sp
	adds r3, r3, r5
	adds r3, #0x58
	str r1, [sp, #0]
	add r0, sp, #0x10
	mov r1, sl
	bl sub_08065370
	cmp r0, #0
	beq _0806CBE8
	ldr r0, [sp, #0x80]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x80]
	movs r0, #0xf0
	b _0806CC6C
	.2byte 0x0000
_0806CBE4: .4byte gUnk_030056F4
_0806CBE8:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806CC6E
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806CC6E
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806CC6E
	ldr r0, _0806CC34
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806CC14
	bl sub_0800CDC0
	cmp r0, #0
	beq _0806CC14
	movs r6, #0
_0806CC14:
	bl sub_0800CB9C
	cmp r0, #0
	beq _0806CC3C
	ldr r0, _0806CC38
	ldr r2, [r0, #0]
	movs r1, #1
	ands r2, r1
	adds r0, r7, #0
	ands r0, r1
	cmp r2, r0
	bne _0806CC6E
	mov r3, r9
	movs r4, #0
	ldrsh r0, [r3, r4]
	b _0806CC42
_0806CC34: .4byte gUnk_03003170
_0806CC38: .4byte gUnk_03002344
_0806CC3C:
	mov r4, r9
	movs r1, #0
	ldrsh r0, [r4, r1]
_0806CC42:
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r2, sp
	adds r2, r2, r5
	adds r2, #0x4c
	ldrh r3, [r2, #0]
	str r6, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08007870
	b _0806CC6E
_0806CC66:
	cmp r1, #0xf0
	beq _0806CC6E
	subs r0, r2, #1
_0806CC6C:
	strh r0, [r4, #0]
_0806CC6E:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r4, [sp, #0x88]
	cmp r7, r4
	bhs _0806CC7C
	b _0806CB62
_0806CC7C:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806CCAA
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806CCAA
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806CCAA
	ldr r0, _0806CD30
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0806CCAA
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806CCAA:
	bl sub_080003F0
_0806CCAE:
	ldr r0, [sp, #0x80]
	ldr r1, [sp, #0x88]
	cmp r0, r1
	bhs _0806CCDA
	bl sub_080020F4
	ldr r2, [sp, #0x94]
	cmp r2, r0
	beq _0806CCC2
	b _0806CA3A
_0806CCC2:
	ldr r3, [sp, #0x78]
	ldrh r0, [r3, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0806CCDA
	bl sub_0800D11C
	cmp r0, #0
	bne _0806CCDA
	b _0806CA3A
_0806CCDA:
	ldr r4, [sp, #0x74]
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _0806CD38
	movs r7, #0
	ldr r0, [sp, #0x88]
	cmp r7, r0
	bhs _0806CDB6
_0806CCEA:
	add r0, sp, #0x44
	adds r0, r0, r7
	ldrb r1, [r0, #0]
	ldr r2, [sp, #0x8c]
	cmp r2, r1
	bne _0806CD22
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _0806CD34
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	ldr r3, [sp, #0x74]
	str r0, [r3, #8]
	ldr r0, [sp, #0x74]
	bl sub_080694AC
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806CD22
	bl sub_0800CD34
	cmp r0, #0
	bne _0806CD22
	movs r0, #0x1a
	bl sub_0805865C
_0806CD22:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r4, [sp, #0x88]
	cmp r7, r4
	blo _0806CCEA
	b _0806CDB6
_0806CD30: .4byte gUnk_03002344
_0806CD34: .4byte gUnk_03003CE0
_0806CD38:
	movs r7, #0
	ldr r0, [sp, #0x88]
	cmp r7, r0
	bhs _0806CDB6
	ldr r5, _0806CD68
_0806CD42:
	add r0, sp, #0x44
	adds r0, r0, r7
	ldrb r1, [r0, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	ldr r1, [r5, #0]
	adds r4, r1, r0
	ldr r1, [sp, #0x8c]
	ldr r2, [sp, #0x94]
	cmp r1, r2
	bne _0806CD6C
	ldrh r0, [r4, #0]
	adds r0, #4
	ldr r3, [sp, #0x74]
	str r0, [r3, #8]
	b _0806CD82
_0806CD68: .4byte gUnk_030056F4
_0806CD6C:
	ldr r0, [sp, #0x94]
	cmp r0, #3
	bls _0806CDA0
	bl sub_08002204
	cmp r0, #0
	beq _0806CDA0
	ldrh r0, [r4, #0]
	adds r0, #4
	ldr r1, [sp, #0x74]
	str r0, [r1, #8]
_0806CD82:
	ldr r0, [sp, #0x74]
	bl sub_080694AC
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806CDAA
	bl sub_0800CD34
	cmp r0, #0
	bne _0806CDAA
	movs r0, #0x1a
	bl sub_0805865C
	b _0806CDAA
_0806CDA0:
	adds r0, r4, #0
	adds r0, #0x58
	add r2, sp, #0x94
	ldrh r2, [r2, #0]
	strh r2, [r0, #0]
_0806CDAA:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldr r3, [sp, #0x88]
	cmp r7, r3
	blo _0806CD42
_0806CDB6:
	ldr r4, [sp, #0xa4]
	ldrh r0, [r4, #0]
	cmp r0, #0
	bne _0806CDCA
_0806CDBE:
	bl sub_080003F0
	ldr r1, [sp, #0xa4]
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0806CDBE
_0806CDCA:
	ldr r2, _0806CDEC
	ldr r3, [sp, #0xa0]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x98]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_0806CDDC:
	add sp, #0xa8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0806CDEC: .4byte gUnk_030063E0
	thumb_func_end sub_0806C568
