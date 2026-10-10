	thumb_func_start sub_080AE420
sub_080AE420: @ 0x080AE420
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r1, _080AE600
	lsls r0, r0, #1
	ldr r2, [sp, #0x18]
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r7, r1, r0
	ldr r2, _080AE604
	movs r1, #1
	ldr r3, [sp, #0x18]
	lsls r1, r3
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
	ldr r4, _080AE608
	mov r8, r4
	movs r0, #0xac
	adds r5, r3, #0
	muls r5, r0, r5
	str r5, [sp, #0x58]
	add r5, r8
	str r7, [r5, #0]
	ldr r1, _080AE60C
	adds r0, r7, #0
	ldr r2, [sp, #0x18]
	bl sub_0801623C
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x1c]
	bl sub_08019F60
	movs r4, #0
	str r4, [r7, #0x54]
	str r4, [r7, #0x4c]
	adds r0, r7, #0
	adds r0, #0x4a
	strh r4, [r0, #0]
	movs r1, #0x6c
	adds r1, r1, r7
	mov r9, r1
	strh r4, [r1, #0]
	strh r4, [r7, #0x10]
	adds r2, r7, #0
	adds r2, #0x68
	str r2, [sp, #0x5c]
	strh r4, [r2, #0]
	add r0, sp, #0x10
	strh r4, [r0, #0]
	adds r3, r7, #0
	adds r3, #0x6a
	str r3, [sp, #0x60]
	strh r4, [r3, #0]
	strh r4, [r7, #8]
	mov r0, sp
	ldrh r0, [r0, #0x18]
	strh r0, [r7, #0]
	ldr r0, [sp, #0x18]
	adds r0, #4
	strh r0, [r7, #2]
	strh r4, [r7, #0xc]
	ldr r0, _080AE610
	adds r0, #0x90
	ldrh r1, [r0, #0]
	adds r0, r7, #0
	adds r0, #0x48
	strh r1, [r0, #0]
	ldr r2, _080AE614
	adds r1, r7, r2
	movs r0, #0x18
	strb r0, [r1, #0]
	ldr r3, _080AE618
	adds r1, r7, r3
	movs r0, #0x14
	strb r0, [r1, #0]
	ldr r0, _080AE61C
	mov sl, r0
	ldrh r1, [r0, #0xc]
	str r1, [sp, #0x38]
	adds r2, r5, #0
	adds r2, #0xa6
	str r2, [sp, #0x64]
	movs r6, #4
	movs r0, #4
	strh r0, [r2, #0]
	mov r3, sl
	ldrh r0, [r3, #0xe]
	adds r5, #0xa8
	strh r0, [r5, #0]
	mov r0, sl
	adds r0, #0x58
	movs r5, #0xe6
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r2, #0x18
	bl CpuSet
	mov r0, sl
	adds r0, #0x38
	ldr r1, [sp, #0x1c]
	movs r2, #0x10
	bl CpuSet
	adds r0, r7, #0
	bl sub_0801A0A4
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r7, r1
	strb r6, [r0, #0]
	movs r2, #0xea
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrh r0, [r0, #0]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	mov r0, sl
	adds r0, #0x5a
	ldrh r1, [r0, #0]
	ldr r3, _080AE620
	adds r0, r7, r3
	strh r1, [r0, #0]
	mov r0, sl
	adds r0, #0x64
	ldrh r1, [r0, #0]
	movs r5, #0xb6
	lsls r5, r5, #2
	adds r0, r7, r5
	strh r1, [r0, #0]
	ldr r0, [sp, #0x64]
	ldrh r1, [r0, #0]
	ldr r2, _080AE624
	adds r0, r7, r2
	strh r1, [r0, #0]
	movs r3, #1
	str r3, [r7, #0x50]
	subs r5, #0xdb
	adds r0, r7, r5
	movs r1, #3
	strb r1, [r0, #0]
	subs r2, #0xdc
	adds r0, r7, r2
	strb r1, [r0, #0]
	strh r4, [r7, #0xc]
	movs r3, #0
	str r3, [sp, #0x2c]
	ldr r4, _080AE628
	str r4, [sp, #0x30]
	movs r5, #0
	str r5, [sp, #0x3c]
	movs r0, #0
	str r0, [sp, #0x40]
	mov r1, r9
	strh r5, [r1, #0]
	add r0, sp, #0x10
	mov r2, sp
	ldrh r2, [r2, #0x3c]
	strh r2, [r0, #0]
	mov r3, sp
	ldrh r4, [r3, #0x3c]
	ldr r3, [sp, #0x60]
	strh r4, [r3, #0]
	mov r5, sp
	ldrh r0, [r5, #0x3c]
	ldr r5, [sp, #0x5c]
	strh r0, [r5, #0]
	movs r1, #0
	str r1, [sp, #0x48]
	movs r2, #0
	str r2, [sp, #0x44]
	movs r3, #0
	str r3, [sp, #0x50]
	movs r4, #0
	str r4, [sp, #0x54]
	movs r0, #0
	mov r5, sp
	adds r5, #0x12
	str r5, [sp, #0x70]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x74]
	ldr r5, [sp, #0x58]
	mov r3, r8
	adds r3, #0xa0
	mov r4, r8
_080AE5AC:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, r5
	adds r0, r0, r3
	strb r2, [r0, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _080AE5AC
	ldrb r0, [r7, #0]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r7, r2
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldrh r1, [r7, #2]
	ldr r3, _080AE62C
	adds r0, r7, r3
	strh r1, [r0, #0]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r7, r5
	movs r0, #0xff
	strb r0, [r1, #0]
	ldr r0, [sp, #0x38]
	cmp r0, #8
	bls _080AE5F4
	b _080AE814
_080AE5F4:
	lsls r0, r0, #2
	ldr r1, _080AE630
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080AE600: .4byte gUnk_030056F4
_080AE604: .4byte gUnk_030056FC
_080AE608: .4byte gUnk_030004D0
_080AE60C: .4byte gUnk_084A7CD0
_080AE610: .4byte gUnk_03003170
_080AE614: .4byte 0x0000022E
_080AE618: .4byte 0x0000022F
_080AE61C: .4byte gUnk_03003CE0
_080AE620: .4byte 0x0000020E
_080AE624: .4byte 0x000002DA
_080AE628: .4byte 0x0000FFFF
_080AE62C: .4byte 0x00000202
_080AE630: .4byte _080AE634
_080AE634:
	.4byte _080AE658
_080AE638: .4byte _080AE77C
_080AE63C: .4byte _080AE7AA
_080AE640: .4byte _080AE6EA
_080AE644: .4byte _080AE71C
_080AE648: .4byte _080AE68A
_080AE64C: .4byte _080AE74A
_080AE650: .4byte _080AE6BC
_080AE654: .4byte _080AE7DE
_080AE658:
	movs r0, #0xac
	ldr r1, [sp, #0x18]
	muls r0, r1, r0
	adds r4, r0, r4
	adds r0, r4, #0
	adds r0, #0xab
	movs r2, #0
	strb r2, [r0, #0]
	adds r1, r4, #0
	adds r1, #0xa4
	movs r3, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1, #0]
	movs r0, #2
	ldr r5, [sp, #0x1c]
	strh r0, [r5, #0x24]
	movs r0, #0x3c
	strh r0, [r5, #0x20]
	adds r0, r5, #0
	adds r0, #0x27
	strb r3, [r0, #0]
	strh r2, [r5, #0x28]
	adds r1, #6
	b _080AE810
_080AE68A:
	movs r0, #0xac
	ldr r1, [sp, #0x18]
	muls r0, r1, r0
	adds r3, r0, r4
	adds r1, r3, #0
	adds r1, #0xab
	movs r0, #0
	strb r0, [r1, #0]
	subs r1, #7
	movs r2, #0
	movs r0, #0xb0
	lsls r0, r0, #1
	strh r0, [r1, #0]
	movs r0, #1
	ldr r4, [sp, #0x1c]
	strh r0, [r4, #0x24]
	movs r0, #0x3c
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x27
	strb r2, [r0, #0]
	movs r0, #0xfa
	strh r0, [r4, #0x28]
	adds r1, #6
	b _080AE810
_080AE6BC:
	movs r0, #0xac
	ldr r5, [sp, #0x18]
	muls r0, r5, r0
	adds r3, r0, r4
	adds r1, r3, #0
	adds r1, #0xab
	movs r0, #0
	strb r0, [r1, #0]
	subs r1, #7
	movs r2, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0]
	movs r0, #1
	ldr r1, [sp, #0x1c]
	strh r0, [r1, #0x24]
	movs r0, #0x3c
	strh r0, [r1, #0x20]
	adds r0, r1, #0
	adds r0, #0x27
	strb r2, [r0, #0]
	movs r0, #0xd
	b _080AE80A
_080AE6EA:
	movs r0, #0xac
	ldr r2, [sp, #0x18]
	muls r0, r2, r0
	adds r3, r0, r4
	adds r1, r3, #0
	adds r1, #0xab
	movs r0, #0
	strb r0, [r1, #0]
	subs r1, #7
	movs r2, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1, #0]
	movs r0, #1
	ldr r4, [sp, #0x1c]
	strh r0, [r4, #0x24]
	movs r0, #0x3c
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x27
	strb r2, [r0, #0]
	movs r0, #0x30
	strh r0, [r4, #0x28]
	adds r1, #6
	b _080AE810
_080AE71C:
	movs r0, #0xac
	ldr r5, [sp, #0x18]
	muls r0, r5, r0
	adds r3, r0, r4
	adds r1, r3, #0
	adds r1, #0xab
	movs r0, #0
	strb r0, [r1, #0]
	subs r1, #7
	movs r2, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1, #0]
	movs r0, #2
	ldr r1, [sp, #0x1c]
	strh r0, [r1, #0x24]
	movs r0, #0x3c
	strh r0, [r1, #0x20]
	adds r0, r1, #0
	adds r0, #0x27
	strb r2, [r0, #0]
	movs r0, #0x96
	b _080AE80A
_080AE74A:
	movs r0, #0xac
	ldr r2, [sp, #0x18]
	muls r0, r2, r0
	adds r3, r0, r4
	adds r0, r3, #0
	adds r0, #0xab
	movs r2, #1
	strb r2, [r0, #0]
	adds r1, r3, #0
	adds r1, #0xa4
	movs r0, #0x98
	lsls r0, r0, #1
	strh r0, [r1, #0]
	movs r0, #2
	ldr r4, [sp, #0x1c]
	strh r0, [r4, #0x24]
	movs r0, #0x3c
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x27
	strb r2, [r0, #0]
	movs r0, #0xb3
	strh r0, [r4, #0x28]
	adds r1, #6
	b _080AE810
_080AE77C:
	movs r0, #0xac
	ldr r5, [sp, #0x18]
	muls r0, r5, r0
	adds r3, r0, r4
	adds r0, r3, #0
	adds r0, #0xab
	movs r2, #1
	strb r2, [r0, #0]
	adds r1, r3, #0
	adds r1, #0xa4
	movs r0, #0x98
	lsls r0, r0, #1
	strh r0, [r1, #0]
	movs r0, #2
	ldr r1, [sp, #0x1c]
	strh r0, [r1, #0x24]
	movs r0, #0x3c
	strh r0, [r1, #0x20]
	adds r0, r1, #0
	adds r0, #0x27
	strb r2, [r0, #0]
	movs r0, #0xb8
	b _080AE80A
_080AE7AA:
	movs r0, #0xac
	ldr r2, [sp, #0x18]
	muls r0, r2, r0
	adds r3, r0, r4
	adds r0, r3, #0
	adds r0, #0xab
	movs r2, #1
	strb r2, [r0, #0]
	adds r1, r3, #0
	adds r1, #0xa4
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1, #0]
	movs r0, #2
	ldr r4, [sp, #0x1c]
	strh r0, [r4, #0x24]
	movs r0, #0x3c
	strh r0, [r4, #0x20]
	adds r0, r4, #0
	adds r0, #0x27
	strb r2, [r0, #0]
	movs r0, #0x75
	strh r0, [r4, #0x28]
	adds r1, #6
	movs r0, #0x40
	b _080AE812
_080AE7DE:
	movs r0, #0xac
	ldr r5, [sp, #0x18]
	muls r0, r5, r0
	adds r3, r0, r4
	adds r0, r3, #0
	adds r0, #0xab
	movs r2, #1
	strb r2, [r0, #0]
	adds r1, r3, #0
	adds r1, #0xa4
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r1, #0]
	movs r0, #2
	ldr r1, [sp, #0x1c]
	strh r0, [r1, #0x24]
	movs r0, #0x3c
	strh r0, [r1, #0x20]
	adds r0, r1, #0
	adds r0, #0x27
	strb r2, [r0, #0]
	movs r0, #0xb3
_080AE80A:
	strh r0, [r1, #0x28]
	adds r1, r3, #0
	adds r1, #0xaa
_080AE810:
	movs r0, #0x1e
_080AE812:
	strb r0, [r1, #0]
_080AE814:
	ldr r2, [sp, #0x1c]
	ldrh r0, [r2, #0x28]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	str r0, [sp, #0x34]
	movs r0, #0xac
	ldr r4, [sp, #0x18]
	adds r3, r4, #0
	muls r3, r0, r3
	ldr r2, _080AE8FC
	adds r6, r3, r2
	ldr r5, _080AE900
	ldr r0, [sp, #0x34]
	lsls r4, r0, #2
	movs r0, #0x58
	ldr r1, [sp, #0x38]
	muls r0, r1, r0
	adds r4, r4, r0
	adds r0, r4, r5
	ldr r1, [r0, #0]
	subs r2, #4
	adds r3, r3, r2
	str r3, [sp, #0x68]
	adds r3, #0xa6
	mov sl, r3
	ldrh r2, [r3, #0]
	movs r3, #1
	negs r3, r3
	mov r9, r3
	movs r0, #0
	mov r8, r0
	str r0, [sp, #0]
	adds r0, r6, #0
	bl sub_08065158
	adds r6, #0x34
	adds r5, #0x2c
	adds r4, r4, r5
	ldr r1, [r4, #0]
	mov r3, sl
	ldrh r2, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	adds r0, r6, #0
	mov r3, r9
	bl sub_08065158
	mov r5, sl
	ldrh r1, [r5, #0]
	ldr r0, [sp, #0x68]
	adds r0, #0x20
	strb r1, [r0, #0]
	ldrh r1, [r5, #0]
	ldr r0, [sp, #0x68]
	adds r0, #0x54
	strb r1, [r0, #0]
	ldr r0, [sp, #0x38]
	cmp r0, #8
	beq _080AE89C
	cmp r0, #6
	beq _080AE89C
	cmp r0, #1
	bne _080AE8D4
_080AE89C:
	movs r0, #0xac
	ldr r1, [sp, #0x18]
	adds r5, r1, #0
	muls r5, r0, r5
	ldr r3, _080AE8FC
	adds r0, r5, r3
	adds r0, #0x68
	ldr r2, _080AE900
	movs r1, #0x58
	ldr r4, [sp, #0x38]
	muls r1, r4, r1
	adds r2, #0x50
	adds r1, r1, r2
	ldr r1, [r1, #0]
	subs r3, #4
	adds r5, r5, r3
	adds r6, r5, #0
	adds r6, #0xa6
	ldrh r2, [r6, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	bl sub_08065158
	ldrh r0, [r6, #0]
	adds r5, #0x88
	strb r0, [r5, #0]
_080AE8D4:
	bl sub_0800CE30
	cmp r0, #1
	bne _080AE904
	ldr r5, [sp, #0x1c]
	movs r1, #6
	ldrsh r0, [r5, r1]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r0, r2
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x5c
	strh r1, [r0, #0]
	movs r3, #5
	str r3, [sp, #0x28]
	movs r4, #5
	b _080AE920
	.2byte 0x0000
_080AE8FC: .4byte gUnk_030004D4
_080AE900: .4byte gUnk_08479140
_080AE904:
	ldr r5, [sp, #0x1c]
	movs r1, #6
	ldrsh r0, [r5, r1]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r1, r0, #1
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x5c
	strh r1, [r0, #0]
	movs r3, #3
	str r3, [sp, #0x28]
	movs r4, #3
_080AE920:
	str r4, [sp, #0x24]
	ldrh r0, [r7, #0]
	bl sub_08068330
	adds r5, r7, #0
	adds r5, #0x6c
	str r5, [sp, #0x80]
	adds r0, r7, #0
	adds r0, #0x68
	str r0, [sp, #0x78]
	adds r1, r7, #0
	adds r1, #0x6a
	str r1, [sp, #0x7c]
	b _080AE940
_080AE93C:
	bl sub_080003F0
_080AE940:
	ldrh r0, [r7, #0]
	bl sub_080682B8
	cmp r0, #0
	beq _080AE93C
	ldrh r0, [r7, #0]
	bl sub_08065E38
	b _080AE95C
_080AE952:
	adds r0, r7, #0
	bl sub_08020680
	bl sub_080003F0
_080AE95C:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _080AE988
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	bne _080AE988
	movs r3, #8
	str r3, [sp, #0x3c]
	ldr r2, _080AE9B0
	adds r3, r7, #0
	adds r3, #0x58
	movs r0, #0xac
	ldr r4, [sp, #0x18]
	adds r1, r4, #0
	muls r1, r0, r1
	ldrh r3, [r3, #0]
	adds r1, r1, r3
	adds r2, #0xa0
	adds r1, r1, r2
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
_080AE988:
	bl sub_08058DB0
	cmp r0, #0
	beq _080AE992
	b _080AEE2A
_080AE992:
	adds r0, r7, #0
	bl sub_0801C8F0
	ldr r5, _080AE9B4
	adds r0, r7, r5
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #0xa
	bls _080AE9A6
	b _080AEE2A
_080AE9A6:
	lsls r0, r0, #2
	ldr r1, _080AE9B8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080AE9B0: .4byte gUnk_030004D0
_080AE9B4: .4byte 0x000001FD
_080AE9B8: .4byte _080AE9BC
_080AE9BC:
	.4byte _080AE9E8
_080AE9C0: .4byte _080AE9F0
_080AE9C4: .4byte _080AEA1C
_080AE9C8: .4byte _080AEA60
_080AE9CC: .4byte _080AEAF4
_080AE9D0: .4byte _080AEBE4
_080AE9D4: .4byte _080AEC2C
_080AE9D8: .4byte _080AEC78
_080AE9DC: .4byte _080AED28
_080AE9E0: .4byte _080AECCC
_080AE9E4: .4byte _080AEDD4
_080AE9E8:
	adds r0, r7, #0
	bl sub_0801A0B0
	b _080AEE2A
_080AE9F0:
	movs r0, #0
	strh r0, [r7, #0xc]
	ldrh r0, [r7, #0]
	bl sub_080682B8
	cmp r0, #0
	bne _080AEA00
	b _080AEE2A
_080AEA00:
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r1, [r0, #0]
	ldr r2, _080AEA18
	adds r0, r7, r2
	strb r1, [r0, #0]
	ldrh r0, [r7, #0]
	bl sub_08065E38
	b _080AEE2A
	.2byte 0x0000
_080AEA18: .4byte 0x000001FD
_080AEA1C:
	bl sub_08056F78
	cmp r0, #0
	bne _080AEA26
	b _080AEE2A
_080AEA26:
	ldr r1, _080AEA44
	movs r0, #0xac
	ldr r3, [sp, #0x18]
	muls r0, r3, r0
	adds r0, r0, r1
	adds r0, #0xab
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080AEA48
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #5
	b _080AEA50
	.2byte 0x0000
_080AEA44: .4byte gUnk_030004D0
_080AEA48:
	movs r5, #0xff
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #4
_080AEA50:
	strb r0, [r1, #0]
	ldr r1, _080AEA5C
	adds r0, r7, r1
	movs r1, #2
	strb r1, [r0, #0]
	b _080AEDC6
_080AEA5C: .4byte 0x000001FD
_080AEA60:
	movs r2, #1
	str r2, [sp, #0x2c]
	strh r2, [r7, #0xc]
	ldr r0, [sp, #0x18]
	bl sub_08096594
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r3, r7, r4
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r1, r0, r1
	ldr r0, _080AEAD4
	adds r1, r1, r0
	mov sl, r1
	ldr r1, _080AEAD8
	movs r0, #0xac
	ldr r5, [sp, #0x18]
	muls r0, r5, r0
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0xa4
	ldrh r2, [r1, #0]
	adds r0, #0xaa
	ldrb r3, [r0, #0]
	adds r0, r7, #0
	mov r1, sl
	bl sub_08097A74
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0
	beq _080AEAB4
	b _080AEE2A
_080AEAB4:
	ldr r0, [sp, #0x18]
	bl sub_08097A38
	ldr r0, [sp, #0x80]
	strh r4, [r0, #0]
	ldr r1, [sp, #0x7c]
	strh r4, [r1, #0]
	ldr r2, [sp, #0x38]
	cmp r2, #4
	bne _080AEADC
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #8
	b _080AEAE4
	.2byte 0x0000
_080AEAD4: .4byte gUnk_03003CE0
_080AEAD8: .4byte gUnk_030004D0
_080AEADC:
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #6
_080AEAE4:
	strb r0, [r1, #0]
	ldr r5, _080AEAF0
	adds r0, r7, r5
	movs r1, #2
	strb r1, [r0, #0]
	b _080AEDC6
_080AEAF0: .4byte 0x000001FD
_080AEAF4:
	movs r0, #1
	str r0, [sp, #0x2c]
	strh r0, [r7, #0xc]
	ldr r0, [sp, #0x18]
	bl sub_08096594
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080AEB3C
	adds r1, r1, r0
	mov sl, r1
	ldr r2, [sp, #0x38]
	cmp r2, #2
	beq _080AEB9C
	ldr r0, [sp, #0x48]
	ldr r3, [sp, #0x2c]
	ands r0, r3
	cmp r0, #0
	beq _080AEB44
	ldr r0, [sp, #0x48]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x48]
	movs r4, #0
	str r4, [sp, #0x44]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #9
	strb r0, [r1, #0]
	ldr r0, _080AEB40
	adds r1, r7, r0
	movs r0, #2
	b _080AEDC4
_080AEB3C: .4byte gUnk_03003CE0
_080AEB40: .4byte 0x000001FD
_080AEB44:
	ldr r1, _080AEB94
	movs r0, #0xac
	ldr r2, [sp, #0x18]
	muls r0, r2, r0
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0xa4
	ldrh r2, [r1, #0]
	adds r0, #0xaa
	ldrb r3, [r0, #0]
	adds r0, r7, #0
	mov r1, sl
	bl sub_08097A74
	lsls r0, r0, #0x18
	asrs r4, r0, #0x18
	cmp r4, #0
	beq _080AEB6A
	b _080AEE2A
_080AEB6A:
	ldr r0, [sp, #0x48]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x18]
	bl sub_08097A38
	ldr r3, [sp, #0x80]
	strh r4, [r3, #0]
	ldr r5, [sp, #0x7c]
	strh r4, [r5, #0]
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #6
	strb r0, [r1, #0]
	ldr r2, _080AEB98
	adds r1, r7, r2
	movs r0, #2
	b _080AEDC4
_080AEB94: .4byte gUnk_030004D0
_080AEB98: .4byte 0x000001FD
_080AEB9C:
	ldr r1, _080AEBDC
	movs r0, #0xac
	ldr r3, [sp, #0x18]
	muls r0, r3, r0
	adds r0, r0, r1
	adds r1, r0, #0
	adds r1, #0xa4
	ldrh r2, [r1, #0]
	adds r0, #0xaa
	ldrb r3, [r0, #0]
	adds r0, r7, #0
	mov r1, sl
	bl sub_08097A74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AEBC0
	b _080AEE2A
_080AEBC0:
	ldr r0, [sp, #0x18]
	bl sub_08097A38
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #7
	strb r0, [r1, #0]
	ldr r5, _080AEBE0
	adds r0, r7, r5
	add r1, sp, #0x38
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	b _080AEDC6
_080AEBDC: .4byte gUnk_030004D0
_080AEBE0: .4byte 0x000001FD
_080AEBE4:
	movs r2, #2
	str r2, [sp, #0x2c]
	strh r2, [r7, #0xc]
	ldr r4, [sp, #0x1c]
	ldrh r0, [r4, #0x24]
	ldr r5, [sp, #0x7c]
	ldrh r5, [r5, #0]
	cmp r0, r5
	bne _080AEC04
	ldr r1, [sp, #0x80]
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _080AEC04
	ldr r0, [sp, #0x34]
	bl sub_08058CC4
_080AEC04:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080AEC10
	b _080AEE2A
_080AEC10:
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	ldr r2, _080AEC28
	adds r1, r7, r2
	movs r0, #2
	strb r0, [r1, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #0xa
	b _080AEDC4
_080AEC28: .4byte 0x000001FD
_080AEC2C:
	movs r4, #2
	str r4, [sp, #0x2c]
	movs r5, #2
	strh r4, [r7, #0xc]
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	ldr r0, [sp, #0x18]
	bl sub_08096594
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r4, r7, r1
	lsls r0, r0, #4
	ldrb r2, [r4, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0]
	ldr r0, [sp, #0x18]
	bl sub_08097A38
	ldrh r0, [r7, #0]
	ldrb r1, [r4, #0]
	lsrs r1, r1, #4
	bl sub_08077D04
	ldr r2, _080AEC74
	adds r0, r7, r2
	strb r5, [r0, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #0xa
	b _080AEDC4
	.2byte 0x0000
_080AEC74: .4byte 0x000001FD
_080AEC78:
	movs r4, #2
	str r4, [sp, #0x2c]
	strh r4, [r7, #0xc]
	ldr r1, [sp, #0x1c]
	ldrh r0, [r1, #0x24]
	ldr r2, [sp, #0x7c]
	ldrh r2, [r2, #0]
	cmp r0, r2
	bne _080AEC98
	ldr r3, [sp, #0x80]
	ldrh r0, [r3, #0]
	cmp r0, #0
	bne _080AEC98
	ldr r0, [sp, #0x34]
	bl sub_08058CC4
_080AEC98:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080AECA4
	b _080AEE2A
_080AECA4:
	ldr r0, [sp, #0x48]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x48]
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	ldr r4, _080AECC8
	adds r1, r7, r4
	movs r0, #2
	strb r0, [r1, #0]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #0xa
	b _080AEDC4
	.2byte 0x0000
_080AECC8: .4byte 0x000001FD
_080AECCC:
	movs r0, #0
	str r0, [sp, #0x2c]
	strh r0, [r7, #0xc]
	ldr r1, [sp, #0x44]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
	cmp r1, #0x3c
	bhi _080AECE2
	b _080AEE2A
_080AECE2:
	movs r2, #0
	str r2, [sp, #0x44]
	ldr r3, _080AED14
	adds r1, r7, r3
	movs r0, #2
	strb r0, [r1, #0]
	ldrh r0, [r7, #0]
	bl sub_08068330
	ldr r1, _080AED18
	movs r0, #0xac
	ldr r4, [sp, #0x18]
	muls r0, r4, r0
	adds r0, r0, r1
	adds r0, #0xab
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080AED1C
	movs r5, #0xff
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #5
	strb r0, [r1, #0]
	b _080AEE2A
	.2byte 0x0000
_080AED14: .4byte 0x000001FD
_080AED18: .4byte gUnk_030004D0
_080AED1C:
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #4
	strb r0, [r1, #0]
	b _080AEE2A
_080AED28:
	movs r1, #9
	str r1, [sp, #0x2c]
	movs r4, #0
	strh r1, [r7, #0xc]
	ldr r0, [sp, #0x18]
	bl sub_08096594
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl sub_08095F10
	ldrh r0, [r7, #8]
	ldr r3, [sp, #0x78]
	strh r0, [r3, #0]
	ldr r5, [sp, #0x7c]
	strh r4, [r5, #0]
	ldr r1, [sp, #0x44]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
	cmp r1, #0x28
	bls _080AEE2A
	movs r0, #0
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x38]
	cmp r1, #6
	beq _080AED74
	cmp r1, #6
	bgt _080AED6E
	cmp r1, #1
	beq _080AED90
	b _080AEDAE
_080AED6E:
	ldr r2, [sp, #0x38]
	cmp r2, #8
	bne _080AEDAE
_080AED74:
	ldrh r0, [r7, #0]
	adds r0, #4
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r1, r7, r3
	ldrb r2, [r1, #0]
	lsrs r2, r2, #4
	ldr r4, [sp, #0x28]
	str r4, [sp, #0]
	movs r1, #0xd
	ldr r3, [sp, #0x24]
	bl sub_0807386C
	b _080AEDAE
_080AED90:
	ldrh r0, [r7, #0]
	adds r0, #4
	movs r5, #0xfe
	lsls r5, r5, #1
	adds r1, r7, r5
	ldrb r2, [r1, #0]
	lsrs r2, r2, #4
	ldr r3, [sp, #0x24]
	subs r3, #1
	ldr r1, [sp, #0x28]
	subs r1, #1
	str r1, [sp, #0]
	movs r1, #4
	bl sub_0807386C
_080AEDAE:
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	ldr r0, _080AEDD0
	adds r1, r7, r0
	movs r0, #2
	strb r0, [r1, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0xb
_080AEDC4:
	strb r0, [r1, #0]
_080AEDC6:
	ldrh r0, [r7, #0]
	bl sub_08068330
	b _080AEE2A
	.2byte 0x0000
_080AEDD0: .4byte 0x000001FD
_080AEDD4:
	movs r3, #9
	str r3, [sp, #0x2c]
	strh r3, [r7, #0xc]
	ldr r0, [sp, #0x18]
	bl sub_08096594
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	bl sub_08095F10
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r5, [sp, #0x78]
	strh r0, [r5, #0]
	movs r0, #8
	ldr r1, [sp, #0x7c]
	strh r0, [r1, #0]
	ldr r1, [sp, #0x44]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x44]
	cmp r1, #0xb4
	bls _080AEE2A
	ldr r0, [sp, #0x18]
	bl sub_08097A38
	movs r2, #0
	str r2, [sp, #0x44]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #5
	strb r0, [r1, #0]
	ldr r4, _080AEE3C
	adds r1, r7, r4
	movs r0, #2
	strb r0, [r1, #0]
	ldrh r0, [r7, #0]
	bl sub_08068330
_080AEE2A:
	ldr r5, [sp, #0x2c]
	cmp r5, #1
	beq _080AEE5C
	cmp r5, #1
	bgt _080AEE40
	cmp r5, #0
	beq _080AEE4C
	b _080AEE86
	.2byte 0x0000
_080AEE3C: .4byte 0x000001FD
_080AEE40:
	ldr r0, [sp, #0x2c]
	cmp r0, #2
	beq _080AEE6E
	cmp r0, #9
	beq _080AEE7E
	b _080AEE86
_080AEE4C:
	movs r1, #0
	str r1, [sp, #0x54]
	ldrh r0, [r7, #8]
	ldr r2, [sp, #0x78]
	strh r0, [r2, #0]
	movs r3, #1
	str r3, [sp, #0x50]
	b _080AEE86
_080AEE5C:
	movs r4, #0
	str r4, [sp, #0x54]
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r5, [sp, #0x78]
	strh r0, [r5, #0]
	movs r0, #1
	str r0, [sp, #0x50]
	b _080AEE86
_080AEE6E:
	movs r1, #1
	str r1, [sp, #0x54]
	ldrh r0, [r7, #8]
	ldr r2, [sp, #0x78]
	strh r0, [r2, #0]
	movs r3, #0
	str r3, [sp, #0x50]
	b _080AEE86
_080AEE7E:
	movs r4, #2
	str r4, [sp, #0x54]
	movs r5, #0
	str r5, [sp, #0x50]
_080AEE86:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x78]
	ldrh r0, [r0, #0]
	cmp r1, r0
	beq _080AEEA0
	ldr r1, [sp, #0x78]
	ldrh r1, [r1, #0]
	str r1, [sp, #0x30]
	movs r0, #0
	ldr r2, [sp, #0x80]
	strh r0, [r2, #0]
	ldr r3, [sp, #0x7c]
	strh r0, [r3, #0]
_080AEEA0:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080AEEB2
	bl sub_08097FF8
	b _080AEEC0
_080AEEB2:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080AEEC0:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AEF2C
	ldr r4, _080AEEFC
	adds r0, r7, r4
	ldrb r0, [r0, #0]
	cmp r0, #0xb
	beq _080AEEDC
	cmp r0, #9
	bne _080AEF04
_080AEEDC:
	movs r0, #0xac
	ldr r5, [sp, #0x18]
	muls r0, r5, r0
	ldr r1, _080AEF00
	adds r0, r0, r1
	movs r1, #0x34
	ldr r2, [sp, #0x54]
	muls r1, r2, r1
	adds r0, r0, r1
	ldr r3, [sp, #0x78]
	ldrh r1, [r3, #0]
	ldr r4, [sp, #0x50]
	str r4, [sp, #0]
	add r2, sp, #0x10
	b _080AEF20
	.2byte 0x0000
_080AEEFC: .4byte 0x000001FD
_080AEF00: .4byte gUnk_030004D4
_080AEF04:
	movs r0, #0xac
	ldr r5, [sp, #0x18]
	muls r0, r5, r0
	ldr r1, _080AEFDC
	adds r0, r0, r1
	movs r1, #0x34
	ldr r2, [sp, #0x54]
	muls r1, r2, r1
	adds r0, r0, r1
	ldr r3, [sp, #0x78]
	ldrh r1, [r3, #0]
	ldr r4, [sp, #0x50]
	str r4, [sp, #0]
	ldr r2, [sp, #0x7c]
_080AEF20:
	ldr r3, [sp, #0x80]
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_080AEF2C:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	ldr r2, [sp, #0x70]
	ldr r3, [sp, #0x74]
	bl sub_0800BC08
	ldr r5, [sp, #0x3c]
	cmp r5, #0
	beq _080AEFE8
	adds r0, r5, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x3c]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080AEF60
	b _080AF0C4
_080AEF60:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080AEF6A
	b _080AF0C4
_080AEF6A:
	bl sub_0800CC98
	cmp r0, #0
	beq _080AEF74
	b _080AF0C4
_080AEF74:
	bl sub_0800CD34
	cmp r0, #0
	beq _080AEF7E
	b _080AF0C4
_080AEF7E:
	ldr r0, _080AEFE0
	mov r9, r0
	movs r0, #0xac
	ldr r1, [sp, #0x18]
	adds r4, r1, #0
	muls r4, r0, r4
	mov r3, r9
	adds r2, r4, r3
	adds r0, r2, #0
	adds r0, #0xa6
	ldrh r0, [r0, #0]
	adds r0, #0x10
	movs r1, #0x34
	ldr r3, [sp, #0x54]
	adds r5, r3, #0
	muls r5, r1, r5
	mov r8, r5
	adds r6, r5, r4
	mov r1, r9
	adds r1, #0x10
	adds r1, r6, r1
	adds r2, #0xa8
	ldrh r2, [r2, #0]
	lsls r2, r2, #5
	ldr r1, [r1, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r5, _080AEFE4
	adds r0, r7, r5
	ldrb r0, [r0, #0]
	cmp r0, #0xb
	beq _080AF048
	cmp r0, #9
	beq _080AF048
	ldr r1, [sp, #0x70]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x74]
	movs r5, #0
	ldrsh r1, [r3, r5]
	ldr r3, [sp, #0x78]
	ldrh r2, [r3, #0]
	ldr r5, [sp, #0x7c]
	ldrh r3, [r5, #0]
	b _080AF05C
_080AEFDC: .4byte gUnk_030004D4
_080AEFE0: .4byte gUnk_030004D0
_080AEFE4: .4byte 0x000001FD
_080AEFE8:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AF0C4
	bl sub_0800CC98
	cmp r0, #0
	bne _080AF0C4
	bl sub_0800CD34
	cmp r0, #0
	bne _080AF0C4
	ldr r0, _080AF084
	mov r9, r0
	movs r0, #0xac
	ldr r1, [sp, #0x18]
	adds r4, r1, #0
	muls r4, r0, r4
	mov r3, r9
	adds r2, r4, r3
	adds r0, r2, #0
	adds r0, #0xa6
	ldrh r0, [r0, #0]
	adds r0, #0x10
	movs r1, #0x34
	ldr r3, [sp, #0x54]
	adds r5, r3, #0
	muls r5, r1, r5
	mov r8, r5
	adds r6, r5, r4
	mov r1, r9
	adds r1, #0x10
	adds r1, r6, r1
	adds r2, #0xa8
	ldrh r2, [r2, #0]
	lsls r2, r2, #5
	ldr r1, [r1, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r5, _080AF088
	adds r0, r7, r5
	ldrb r0, [r0, #0]
	cmp r0, #0xb
	beq _080AF048
	cmp r0, #9
	bne _080AF08C
_080AF048:
	ldr r1, [sp, #0x70]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x74]
	movs r5, #0
	ldrsh r1, [r3, r5]
	ldr r3, [sp, #0x78]
	ldrh r2, [r3, #0]
	add r3, sp, #0x10
	ldrh r3, [r3, #0]
_080AF05C:
	mov r5, sl
	str r5, [sp, #0]
	mov r5, r9
	adds r5, #4
	adds r4, r4, r5
	add r4, r8
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r4, r9
	adds r4, #0xc
	adds r4, r6, r4
	ldr r4, [r4, #0]
	str r4, [sp, #8]
	adds r5, r6, r5
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080AF0C4
	.2byte 0x0000
_080AF084: .4byte gUnk_030004D0
_080AF088: .4byte 0x000001FD
_080AF08C:
	ldr r1, [sp, #0x70]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x74]
	movs r5, #0
	ldrsh r1, [r3, r5]
	ldr r3, [sp, #0x78]
	ldrh r2, [r3, #0]
	ldr r5, [sp, #0x7c]
	ldrh r3, [r5, #0]
	mov r5, sl
	str r5, [sp, #0]
	mov r5, r9
	adds r5, #4
	adds r4, r4, r5
	add r4, r8
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r4, r9
	adds r4, #0xc
	adds r4, r6, r4
	ldr r4, [r4, #0]
	str r4, [sp, #8]
	adds r5, r6, r5
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AF0C4:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _080AF0DA
	ldr r1, [sp, #0x20]
	cmp r1, r0
	beq _080AF0DA
	str r0, [sp, #0x20]
	movs r2, #0xa
	str r2, [sp, #0x40]
	movs r3, #0
	str r3, [sp, #0x4c]
_080AF0DA:
	ldr r4, [sp, #0x40]
	cmp r4, #0
	beq _080AF12C
	bl sub_0800CC98
	cmp r0, #0
	bne _080AF106
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AF106
	bl sub_0800CD34
	cmp r0, #0
	bne _080AF106
	ldr r5, [sp, #0x4c]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	bl sub_0801A120
_080AF106:
	movs r0, #2
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _080AF11C
	ldr r2, [sp, #0x4c]
	lsls r0, r2, #0x10
	ldr r3, _080AF128
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
_080AF11C:
	ldr r0, [sp, #0x40]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x40]
	b _080AF132
_080AF128: .4byte 0xFFFF0000
_080AF12C:
	movs r4, #0
	str r4, [sp, #0x20]
	str r4, [r7, #0x4c]
_080AF132:
	adds r0, r7, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080AF142
	bl _080AE952
_080AF142:
	bl sub_080003F0
	ldr r4, _080AF1BC
	movs r5, #0xac
	ldr r1, [sp, #0x18]
	adds r0, r1, #0
	muls r0, r5, r0
	mov r8, r0
	adds r6, r0, r4
	ldr r0, [r6, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	bl sub_0800048C
	ldr r1, [r0, #8]
	subs r1, #0x44
	str r1, [r0, #8]
	ldr r2, _080AF1C0
	adds r0, r1, #0
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #1
	ldrh r0, [r0, #0]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	movs r2, #0
	str r2, [sp, #0x54]
	ldr r0, [r6, #0]
	adds r0, #0x68
	movs r1, #0x18
	strh r1, [r0, #0]
	ldr r3, [sp, #0x80]
	strh r2, [r3, #0]
	add r5, sp, #0x54
	ldrh r0, [r5, #0]
	ldr r5, [sp, #0x7c]
	strh r0, [r5, #0]
	movs r0, #0
	str r0, [sp, #0x50]
	mov r6, r8
	ldr r1, _080AF1C4
	adds r1, r1, r6
	mov r9, r1
	ldr r2, [sp, #0x70]
	mov r8, r2
	adds r1, #0x1c
	str r1, [sp, #0x6c]
_080AF1A8:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080AF1C8
	bl sub_08097FF8
	b _080AF1D6
	.2byte 0x0000
_080AF1BC: .4byte gUnk_030004D0
_080AF1C0: .4byte gUnk_030056FC
_080AF1C4: .4byte gUnk_030004D4
_080AF1C8:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080AF1D6:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AF1FE
	ldr r3, [sp, #0x78]
	ldrh r1, [r3, #0]
	ldr r4, [sp, #0x50]
	str r4, [sp, #0]
	mov r0, r9
	adds r0, #0
	ldr r2, [sp, #0x7c]
	ldr r3, [sp, #0x80]
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_080AF1FE:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AF29A
	bl sub_0800CC98
	cmp r0, #0
	bne _080AF29A
	bl sub_0800CD34
	adds r2, r0, #0
	cmp r2, #0
	bne _080AF29A
	ldr r0, [sp, #0x3c]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x3c]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080AF29A
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r2, [sp, #0]
	str r2, [sp, #4]
	mov r2, r8
	ldr r3, [sp, #0x74]
	bl sub_0800BC08
	ldr r5, _080AF2A0
	adds r2, r6, r5
	adds r0, r2, #0
	adds r0, #0xa6
	ldrh r0, [r0, #0]
	adds r0, #0x10
	adds r5, r6, #0
	ldr r1, _080AF2A0
	adds r1, #0x10
	adds r1, r5, r1
	adds r2, #0xa8
	ldrh r2, [r2, #0]
	lsls r2, r2, #5
	ldr r1, [r1, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x74]
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r3, [sp, #0x78]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x7c]
	ldrh r4, [r4, #0]
	mov ip, r4
	mov r3, sl
	str r3, [sp, #0]
	ldr r4, [sp, #0x6c]
	str r4, [sp, #4]
	ldr r3, _080AF2A4
	adds r3, r3, r5
	ldr r4, [r3, #0]
	str r4, [sp, #8]
	ldr r3, _080AF2A8
	adds r5, r5, r3
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	mov r3, ip
	bl sub_08007870
_080AF29A:
	bl sub_080003F0
	b _080AF1A8
_080AF2A0: .4byte gUnk_030004D0
_080AF2A4: .4byte gUnk_030004DC
_080AF2A8: .4byte gUnk_030004D4
	thumb_func_end sub_080AE420
