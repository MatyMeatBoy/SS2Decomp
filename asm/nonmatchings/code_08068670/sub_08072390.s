	thumb_func_start sub_08072390
sub_08072390: @ 0x08072390
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd8
	str r0, [sp, #0x80]
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	ldr r0, [sp, #0x80]
	ldr r0, [r0, #0]
	str r0, [sp, #0xa4]
	ldr r1, [sp, #0x80]
	ldr r1, [r1, #4]
	str r1, [sp, #0xa8]
	ldr r2, [sp, #0x80]
	ldr r2, [r2, #0x14]
	mov r8, r2
	mov r0, r8
	lsrs r3, r0, #0x10
	str r3, [sp, #0xac]
	ldr r1, _080724B8
	adds r4, r0, #0
	ands r4, r1
	str r4, [sp, #0x88]
	mov r8, r4
	ands r0, r1
	ldr r5, [sp, #0x80]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0xa4]
	cmp r0, #3
	bhi _080723E6
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0xa4]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _080724BC
	adds r1, r1, r0
	str r1, [sp, #0x84]
_080723E6:
	ldr r3, [sp, #0xa0]
	ldr r4, [sp, #0xa4]
	cmp r3, r4
	bne _08072420
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _080724BC
	adds r4, r4, r0
	ldr r5, [sp, #0x80]
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
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
	bge _08072420
	movs r0, #0
	strh r0, [r4, #0]
_08072420:
	movs r0, #0
	mov r9, r0
	movs r0, #0xa0
	lsls r0, r0, #8
	str r0, [sp, #0x54]
	mov r1, r9
	str r1, [sp, #0x68]
	add r0, sp, #0x4c
	strb r1, [r0, #0]
	movs r2, #1
	mov r9, r2
	mov r3, sp
	adds r3, #0x54
	str r3, [sp, #0xc4]
	mov r4, sp
	adds r4, #0x68
	str r4, [sp, #0xc8]
	ldr r5, [sp, #0x84]
	adds r5, #0xb2
	ldr r0, [sp, #0xa4]
	lsls r0, r0, #2
	str r0, [sp, #0xc0]
	add r4, sp, #0x4c
	add r7, sp, #0x6c
	add r6, sp, #0x58
_08072452:
	movs r0, #0xa0
	lsls r0, r0, #8
	stm r6!, {r0}
	movs r0, #0
	stm r7!, {r0}
	bl sub_080008C8
	movs r1, #0x14
	bl sub_080B95E4
	adds r0, #0xa
	ldrb r1, [r4, #0]
	adds r0, r0, r1
	strb r0, [r4, #1]
	adds r4, #1
	movs r2, #1
	add r9, r2
	mov r3, r9
	cmp r3, #4
	bls _08072452
	mov r4, r8
	cmp r4, #0
	beq _08072484
	movs r0, #2
	strh r0, [r5, #0]
_08072484:
	ldrh r0, [r5, #0]
	cmp r0, #1
	bhi _080724D2
	ldr r0, _080724C0
	ldr r1, [sp, #0xc0]
	adds r4, r1, r0
	movs r0, #1
	ldr r2, [sp, #0xa8]
	lsls r0, r2
	mvns r6, r0
_08072498:
	ldr r3, [sp, #0x84]
	ldrh r0, [r3, #0x20]
	cmp r0, #0xa
	beq _080724AE
	ldr r0, _080724C4
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080724C8
_080724AE:
	ldr r0, [r4, #0]
	ands r0, r6
	str r0, [r4, #0]
	bl _08072D3E
_080724B8: .4byte 0x0000FFFF
_080724BC: .4byte gUnk_03003CE0
_080724C0: .4byte gUnk_030063E0
_080724C4: .4byte gUnk_03005CF4
_080724C8:
	bl sub_080003F0
	ldrh r0, [r5, #0]
	cmp r0, #1
	bls _08072498
_080724D2:
	ldr r4, [sp, #0x84]
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r4, r5
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x8c]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [sp, #0x90]
	movs r7, #0
	movs r0, #0
	str r0, [sp, #0x9c]
	bl sub_0800CDF8
	adds r4, #0xb6
	str r4, [sp, #0xd4]
	cmp r0, #0
	beq _08072500
	b _08072686
_08072500:
	ldr r1, [sp, #0x80]
	ldr r0, [r1, #8]
	cmp r0, #3
	bhi _080725DC
	bl sub_08002164
	adds r4, r0, #0
	movs r2, #0
	mov r9, r2
	b _080725C4
_08072514:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _080725D4
	adds r5, r1, r0
	ldr r3, [sp, #0xa4]
	cmp r3, #3
	bhi _08072536
	adds r0, r5, #0
	adds r0, #0x68
	ldr r1, [sp, #0x84]
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	beq _080725C0
_08072536:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r3, [r0, #0]
	ldrb r0, [r3, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _080725C0
	ldrh r0, [r5, #0x20]
	cmp r0, #0xb
	beq _080725C0
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080725C0
	ldrh r1, [r3, #0]
	lsrs r1, r1, #4
	ldr r2, [sp, #0x8c]
	asrs r0, r2, #8
	subs r1, r1, r0
	add r2, sp, #0x7c
	strh r1, [r2, #0]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r3, [sp, #0x90]
	asrs r1, r3, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, sp
	adds r0, #0x7e
	strh r3, [r0, #0]
	movs r5, #0
	ldrsh r2, [r2, r5]
	cmp r2, #0
	bge _08072586
	negs r2, r2
_08072586:
	ldr r0, _080725D8
	ldr r5, [sp, #0x88]
	lsls r1, r5, #2
	adds r1, r1, r0
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r2, r0
	bge _080725C0
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _080725A0
	negs r2, r2
_080725A0:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r2, r0
	bge _080725C0
	add r1, sp, #0x44
	ldr r2, [sp, #0x9c]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	adds r1, r1, r2
	mov r5, r9
	strb r5, [r1, #0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080725C0:
	movs r0, #1
	add r9, r0
_080725C4:
	cmp r9, r4
	bhs _08072686
	bl sub_0800CD8C
	cmp r0, #0
	beq _08072514
	b _08072686
	.2byte 0x0000
_080725D4: .4byte gUnk_03003CE0
_080725D8: .4byte gUnk_084EC12C
_080725DC:
	movs r1, #0
	mov r9, r1
	b _08072678
_080725E2:
	ldr r0, _08072840
	movs r1, #1
	mov r2, r9
	lsls r1, r2
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _08072674
	ldr r1, _08072844
	lsls r0, r2, #1
	add r0, r9
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r6, r1, r0
	ldrh r0, [r6, #0xc]
	cmp r0, #0xb
	beq _08072674
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08072674
	ldr r0, [r6, #0x14]
	ldr r4, [sp, #0x8c]
	subs r0, r0, r4
	lsrs r0, r0, #8
	add r1, sp, #0x7c
	strh r0, [r1, #0]
	ldr r0, [r6, #0x18]
	ldr r5, [sp, #0x90]
	subs r0, r0, r5
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	mov r0, sp
	adds r0, #0x7e
	strh r4, [r0, #0]
	movs r0, #0
	ldrsh r2, [r1, r0]
	cmp r2, #0
	bge _0807263A
	negs r2, r2
_0807263A:
	ldr r0, _08072848
	ldr r3, [sp, #0x88]
	lsls r1, r3, #2
	adds r3, r1, r0
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r2, r0
	bge _08072674
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bge _08072654
	negs r1, r1
_08072654:
	movs r2, #2
	ldrsh r0, [r3, r2]
	cmp r1, r0
	bge _08072674
	add r1, sp, #0x44
	ldr r2, [sp, #0x9c]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	adds r1, r1, r2
	mov r3, r9
	strb r3, [r1, #0]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08072674:
	movs r4, #1
	add r9, r4
_08072678:
	mov r5, r9
	cmp r5, #4
	bhi _08072686
	bl sub_0800CD8C
	cmp r0, #0
	beq _080725E2
_08072686:
	ldr r1, _0807284C
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
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0xa4]
	cmp r0, r1
	beq _080726AE
	cmp r1, #3
	bls _080726C6
_080726AE:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080726C6
	bl sub_0800CD34
	cmp r0, #0
	bne _080726C6
	movs r0, #0xb5
	lsls r0, r0, #1
	bl sub_0805865C
_080726C6:
	cmp r7, #0
	beq _080726CC
	b _08072860
_080726CC:
	ldr r1, _08072850
	ldr r2, [sp, #0x84]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ldr r3, _08072854
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #1
	ldr r5, [sp, #0x8c]
	adds r5, r5, r0
	str r5, [sp, #0x8c]
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r0, #0
	ldrsh r1, [r1, r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp, #0x90]
	adds r1, r1, r0
	str r1, [sp, #0x90]
	ldr r0, [sp, #0x54]
	cmp r0, #0
	ble _080727AE
	asrs r7, r5, #8
	asrs r6, r1, #8
	add r5, sp, #0x7c
	mov r4, sp
	adds r4, #0x7e
	lsls r2, r7, #0x10
	mov sl, r2
	lsls r3, r6, #0x10
	mov r9, r3
	ldr r1, [sp, #0xac]
	lsls r1, r1, #0x10
	mov r8, r1
_08072732:
	ldr r1, [sp, #0x68]
	subs r0, r0, r1
	str r0, [sp, #0x54]
	adds r1, #0x20
	str r1, [sp, #0x68]
	movs r0, #0x30
	str r0, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	mov r2, sl
	asrs r0, r2, #0x10
	mov r3, r9
	asrs r1, r3, #0x10
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0800BC08
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x98]
	bl sub_0800CC98
	cmp r0, #0
	bne _080727A4
	bl sub_0800CD8C
	cmp r0, #0
	bne _080727A4
	bl sub_0800CCCC
	cmp r0, #0
	bne _080727A4
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #0x54]
	asrs r2, r2, #8
	subs r1, r1, r2
	ldr r3, [sp, #0x98]
	str r3, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r3, r8
	lsrs r2, r3, #0x10
	movs r3, #0
	bl sub_08007870
_080727A4:
	bl sub_080003F0
	ldr r0, [sp, #0x54]
	cmp r0, #0
	bgt _08072732
_080727AE:
	movs r0, #0xa
	str r0, [sp, #0x54]
	ldr r5, [sp, #0xac]
	lsls r4, r5, #0x10
_080727B6:
	ldr r0, [sp, #0x54]
	subs r0, #1
	str r0, [sp, #0x54]
	bl sub_0800CC98
	cmp r0, #0
	bne _08072832
	bl sub_0800CD8C
	cmp r0, #0
	bne _08072832
	bl sub_0800CCCC
	cmp r0, #0
	bne _08072832
	ldr r0, [sp, #0x54]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08072832
	ldr r0, _08072858
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _080727F2
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_080727F2:
	ldr r0, _0807285C
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _08072808
	bl sub_0800CDC0
	cmp r0, #0
	beq _08072808
	movs r0, #0
	str r0, [sp, #0x98]
_08072808:
	add r0, sp, #0x7c
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, sp
	adds r1, #0x7e
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r3, [sp, #0x98]
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	lsrs r2, r4, #0x10
	movs r3, #0
	bl sub_08007870
_08072832:
	bl sub_080003F0
	ldr r0, [sp, #0x54]
	cmp r0, #0
	bgt _080727B6
	b _08072D18
	.2byte 0x0000
_08072840: .4byte gUnk_030056FC
_08072844: .4byte gUnk_030056F4
_08072848: .4byte gUnk_084EC12C
_0807284C: .4byte 0x0005008D
_08072850: .4byte gUnk_0849E730
_08072854: .4byte gUnk_080B9704
_08072858: .4byte gUnk_03002344
_0807285C: .4byte gUnk_03003170
_08072860:
	movs r4, #0
	str r4, [sp, #0x94]
	b _08072CEC
_08072866:
	ldr r5, [sp, #0x80]
	ldr r0, [r5, #8]
	cmp r0, #3
	bls _08072870
	b _08072A98
_08072870:
	movs r0, #0
	mov r9, r0
	ldr r1, [sp, #0x9c]
	cmp r9, r1
	blo _0807287C
	b _08072CE8
_0807287C:
	mov r2, sp
	adds r2, #0x7c
	str r2, [sp, #0xb0]
	mov r3, sp
	adds r3, #0x7e
	str r3, [sp, #0xb4]
	add r4, sp, #0x4c
	mov r8, r4
	ldr r6, [sp, #0xc4]
	ldr r7, [sp, #0xc8]
	mov sl, r6
	ldr r5, [sp, #0xac]
	lsls r5, r5, #0x10
	str r5, [sp, #0xb8]
_08072898:
	add r0, sp, #0x44
	mov r1, r9
	adds r4, r0, r1
	ldrb r1, [r4, #0]
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _08072958
	adds r5, r1, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	ldr r2, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	bl sub_0800BC08
	ldr r3, [sp, #0x8c]
	asrs r0, r3, #8
	ldr r2, [sp, #0x90]
	asrs r1, r2, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x98]
	mov r3, r8
	ldrb r0, [r3, #0]
	adds r1, r0, #0
	cmp r1, #0
	beq _080728EC
	b _08072A08
_080728EC:
	ldr r0, [r6, #0]
	ldr r1, [r7, #0]
	subs r0, r0, r1
	str r0, [r6, #0]
	ldr r0, [r7, #0]
	adds r0, #0x20
	str r0, [r7, #0]
	ldr r0, [r6, #0]
	cmp r0, #0
	bgt _080729A0
	ldr r0, [sp, #0x94]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x94]
	movs r0, #0xf0
	strb r0, [r3, #0]
	movs r0, #0xa
	str r0, [r6, #0]
	ldr r0, [sp, #0xa0]
	ldrb r4, [r4, #0]
	cmp r0, r4
	beq _0807291C
	b _08072A7A
_0807291C:
	ldrh r0, [r5, #0]
	ldr r1, [sp, #0x80]
	str r0, [r1, #8]
	ldr r1, _0807295C
	ldr r2, [sp, #0x80]
	ldr r0, [r2, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0, #0]
	bl sub_080008C8
	movs r1, #0x64
	bl sub_080B95E4
	cmp r4, r0
	blo _08072960
	adds r1, r5, #0
	adds r1, #0x4c
	ldr r0, [sp, #0x80]
	bl sub_08068F9C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #3
	movs r2, #0x64
	bl sub_08029A7C
	b _08072982
	.2byte 0x0000
_08072958: .4byte gUnk_03003CE0
_0807295C: .4byte gUnk_084EC16C
_08072960:
	ldr r0, _0807299C
	movs r3, #0xe5
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r4, [r0, #0]
	adds r1, r5, #0
	adds r1, #0x4c
	ldr r0, [sp, #0x80]
	bl sub_08068F9C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	ldr r2, [sp, #0x88]
	bl sub_08029A7C
_08072982:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08072A7A
	bl sub_0800CD34
	cmp r0, #0
	bne _08072A7A
	movs r0, #0x1a
	bl sub_0805865C
	b _08072A7A
	.2byte 0x0000
_0807299C: .4byte gUnk_084EBF1C
_080729A0:
	bl sub_0800CC98
	cmp r0, #0
	bne _08072A7A
	bl sub_0800CD8C
	cmp r0, #0
	bne _08072A7A
	bl sub_0800CCCC
	cmp r0, #0
	bne _08072A7A
	ldr r0, _08072A04
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080729CE
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_080729CE:
	ldr r4, [sp, #0xb0]
	movs r5, #0
	ldrsh r0, [r4, r5]
	ldr r2, [sp, #0xb4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r4, sl
	ldr r2, [r4, #0]
	asrs r2, r2, #8
	subs r1, r1, r2
	ldr r5, [sp, #0x98]
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r3, [sp, #0xb8]
	lsrs r2, r3, #0x10
	movs r3, #0
	bl sub_08007870
	b _08072A7A
	.2byte 0x0000
_08072A04: .4byte gUnk_03002344
_08072A08:
	cmp r1, #0xf0
	beq _08072A14
	subs r0, #1
	mov r4, r8
	strb r0, [r4, #0]
	b _08072A7A
_08072A14:
	ldr r0, [sp, #0x54]
	movs r4, #1
	adds r1, r0, #0
	ands r1, r4
	subs r0, #1
	str r0, [sp, #0x54]
	cmp r1, #0
	beq _08072A7A
	bl sub_0800CC98
	cmp r0, #0
	bne _08072A7A
	bl sub_0800CD8C
	cmp r0, #0
	bne _08072A7A
	bl sub_0800CCCC
	cmp r0, #0
	bne _08072A7A
	ldr r0, _08072A94
	ldr r0, [r0, #0]
	ands r0, r4
	cmp r0, #0
	bne _08072A50
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08072A50:
	ldr r5, [sp, #0xb0]
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0xb4]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x98]
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r5, [sp, #0xb8]
	lsrs r2, r5, #0x10
	movs r3, #0
	bl sub_08007870
_08072A7A:
	movs r0, #1
	add r8, r0
	adds r6, #4
	adds r7, #4
	movs r1, #4
	add sl, r1
	add r9, r0
	ldr r2, [sp, #0x9c]
	cmp r9, r2
	bhs _08072A90
	b _08072898
_08072A90:
	b _08072CE8
	.2byte 0x0000
_08072A94: .4byte gUnk_03002344
_08072A98:
	movs r3, #0
	mov r9, r3
	ldr r4, [sp, #0x9c]
	cmp r9, r4
	blo _08072AA4
	b _08072CE8
_08072AA4:
	mov r5, sp
	adds r5, #0x7c
	str r5, [sp, #0xcc]
	mov r0, sp
	adds r0, #0x7e
	str r0, [sp, #0xd0]
	add r1, sp, #0x4c
	mov sl, r1
	ldr r7, [sp, #0xc4]
	ldr r2, [sp, #0xc8]
	mov r8, r2
	ldr r3, [sp, #0xac]
	lsls r3, r3, #0x10
	str r3, [sp, #0xbc]
_08072AC0:
	ldr r2, _08072B80
	add r0, sp, #0x44
	add r0, r9
	ldrb r1, [r0, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	subs r0, r0, r1
	lsls r0, r0, #5
	ldr r1, [r2, #0]
	adds r6, r1, r0
	ldr r0, [r6, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r6, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x7c
	mov r3, sp
	adds r3, #0x7e
	bl sub_0800BC08
	ldr r4, [sp, #0x8c]
	asrs r0, r4, #8
	ldr r5, [sp, #0x90]
	asrs r1, r5, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x98]
	mov r1, sl
	ldrb r0, [r1, #0]
	adds r5, r0, #0
	cmp r5, #0
	beq _08072B14
	b _08072C4C
_08072B14:
	ldr r0, [r7, #0]
	mov r2, r8
	ldr r1, [r2, #0]
	subs r0, r0, r1
	str r0, [r7, #0]
	ldr r0, [r2, #0]
	adds r0, #0x20
	str r0, [r2, #0]
	ldr r0, [r7, #0]
	cmp r0, #0
	bgt _08072BC6
	ldr r0, [sp, #0x94]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x94]
	movs r0, #0xf0
	mov r3, sl
	strb r0, [r3, #0]
	str r5, [r7, #0]
	ldr r4, [sp, #0xa0]
	ldr r0, [sp, #0xa4]
	cmp r4, r0
	bne _08072BC6
	ldr r1, _08072B84
	ldr r2, [sp, #0x80]
	ldr r0, [r2, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0, #0]
	bl sub_080008C8
	movs r1, #0x64
	bl sub_080B95E4
	cmp r4, r0
	blo _08072B88
	movs r3, #0x86
	lsls r3, r3, #2
	adds r1, r6, r3
	ldr r0, [sp, #0x80]
	bl sub_08068F9C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r0, [r6, #0]
	str r5, [sp, #0]
	str r5, [sp, #4]
	movs r1, #3
	movs r3, #0x64
	bl sub_08029B98
	b _08072BB0
_08072B80: .4byte gUnk_030056F4
_08072B84: .4byte gUnk_084EC16C
_08072B88:
	movs r4, #0x86
	lsls r4, r4, #2
	adds r1, r6, r4
	ldr r0, [sp, #0x80]
	bl sub_08068F9C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r0, [r6, #0]
	ldr r1, _08072C40
	movs r3, #0xe5
	lsls r3, r3, #1
	adds r1, r1, r3
	ldrh r1, [r1, #0]
	str r5, [sp, #0]
	str r5, [sp, #4]
	ldr r3, [sp, #0xac]
	bl sub_08029B98
_08072BB0:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08072BC6
	bl sub_0800CD34
	cmp r0, #0
	bne _08072BC6
	movs r0, #0x1a
	bl sub_0805865C
_08072BC6:
	bl sub_0800CC98
	cmp r0, #0
	beq _08072BD0
	b _08072CD4
_08072BD0:
	bl sub_0800CD8C
	cmp r0, #0
	bne _08072CD4
	bl sub_0800CCCC
	cmp r0, #0
	bne _08072CD4
	ldr r0, _08072C44
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08072BF6
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08072BF6:
	ldr r0, _08072C48
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _08072C0C
	bl sub_0800CDC0
	cmp r0, #0
	beq _08072C0C
	movs r4, #0
	str r4, [sp, #0x98]
_08072C0C:
	ldr r5, [sp, #0xcc]
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0xd0]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r2, [r7, #0]
	asrs r2, r2, #8
	subs r1, r1, r2
	ldr r4, [sp, #0x98]
	lsls r2, r4, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r5, [sp, #0xbc]
	lsrs r2, r5, #0x10
	movs r3, #0
	bl sub_08007870
	b _08072CD4
	.2byte 0x0000
_08072C40: .4byte gUnk_084EBF1C
_08072C44: .4byte gUnk_03002344
_08072C48: .4byte gUnk_03003170
_08072C4C:
	cmp r5, #0xf0
	beq _08072C58
	subs r0, #1
	mov r1, sl
	strb r0, [r1, #0]
	b _08072CD4
_08072C58:
	ldr r0, [sp, #0x54]
	movs r4, #1
	adds r1, r0, #0
	ands r1, r4
	subs r0, #1
	str r0, [sp, #0x54]
	cmp r1, #0
	beq _08072CD4
	bl sub_0800CC98
	cmp r0, #0
	bne _08072CD4
	bl sub_0800CD8C
	cmp r0, #0
	bne _08072CD4
	bl sub_0800CCCC
	cmp r0, #0
	bne _08072CD4
	ldr r0, _08072D50
	ldr r0, [r0, #0]
	ands r0, r4
	cmp r0, #0
	bne _08072C94
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08072C94:
	ldr r0, _08072D54
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _08072CAA
	bl sub_0800CDC0
	cmp r0, #0
	beq _08072CAA
	movs r2, #0
	str r2, [sp, #0x98]
_08072CAA:
	ldr r3, [sp, #0xcc]
	movs r4, #0
	ldrsh r0, [r3, r4]
	ldr r5, [sp, #0xd0]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x98]
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r4, [sp, #0xbc]
	lsrs r2, r4, #0x10
	movs r3, #0
	bl sub_08007870
_08072CD4:
	movs r5, #1
	add sl, r5
	adds r7, #4
	movs r0, #4
	add r8, r0
	add r9, r5
	ldr r1, [sp, #0x9c]
	cmp r9, r1
	bhs _08072CE8
	b _08072AC0
_08072CE8:
	bl sub_080003F0
_08072CEC:
	ldr r2, [sp, #0x94]
	ldr r3, [sp, #0x9c]
	cmp r2, r3
	bhs _08072D18
	bl sub_080020F4
	ldr r4, [sp, #0xa4]
	cmp r4, r0
	beq _08072D00
	b _08072866
_08072D00:
	ldr r5, [sp, #0x84]
	ldrh r0, [r5, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08072D18
	bl sub_0800D11C
	cmp r0, #0
	bne _08072D18
	b _08072866
_08072D18:
	ldr r1, [sp, #0xd4]
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _08072D2C
_08072D20:
	bl sub_080003F0
	ldr r2, [sp, #0xd4]
	ldrh r0, [r2, #0]
	cmp r0, #0
	beq _08072D20
_08072D2C:
	ldr r2, _08072D58
	ldr r3, [sp, #0xc0]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0xa8]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_08072D3E:
	add sp, #0xd8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08072D50: .4byte gUnk_03002344
_08072D54: .4byte gUnk_03003170
_08072D58: .4byte gUnk_030063E0
	thumb_func_end sub_08072390
