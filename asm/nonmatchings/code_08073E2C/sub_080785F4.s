	thumb_func_start sub_080785F4
sub_080785F4: @ 0x080785F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	str r0, [sp, #0x4c]
	adds r5, r1, #0
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	ldr r1, _0807865C
	ldr r2, [sp, #0x4c]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r7, r1, r0
	ldr r1, _08078660
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #8
	movs r2, #0
	bl sub_08065158
	movs r3, #0xb6
	lsls r3, r3, #2
	adds r0, r7, r3
	ldrh r0, [r0, #0]
	ldr r2, _08078664
	adds r1, r7, r2
	ldrh r1, [r1, #0]
	bl sub_08019D7C
	add r1, sp, #8
	strb r0, [r1, #0x1c]
	ldr r3, _08078668
	adds r0, r7, r3
	ldrb r0, [r0, #0]
	cmp r0, #0x14
	bne _0807866C
	movs r0, #0
	str r0, [sp, #0x70]
	movs r1, #0xe
	str r1, [sp, #0x58]
	b _08078674
_0807865C: .4byte gUnk_030056F4
_08078660: .4byte 0x000500AF
_08078664: .4byte 0x000002DA
_08078668: .4byte 0x000001FD
_0807866C:
	movs r2, #1
	str r2, [sp, #0x70]
	movs r3, #0xf
	str r3, [sp, #0x58]
_08078674:
	movs r0, #3
	str r0, [sp, #0x5c]
	movs r0, #0xf
	adds r1, r5, #0
	ands r1, r0
	str r1, [sp, #0x54]
	lsrs r5, r5, #0x10
	cmp r5, #3
	bls _080786A8
	ldr r0, _080786A0
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #3
	subs r1, r1, r5
	lsls r1, r1, #5
	ldr r2, _080786A4
	adds r1, r1, r2
	ldr r0, [r0, #0]
	adds r4, r0, r1
	str r5, [sp, #0x50]
	b _080786BA
	.2byte 0x0000
_080786A0: .4byte gUnk_030056F4
_080786A4: .4byte 0xFFFFF480
_080786A8:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080786E8
	adds r6, r1, r0
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x50]
_080786BA:
	ldr r3, [r7, #0x14]
	mov r8, r3
	ldr r5, [r7, #0x18]
	mov r9, r5
	ldr r0, [sp, #0x50]
	cmp r0, #3
	bhi _080786EC
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	subs r0, r0, r3
	lsrs r0, r0, #8
	add r2, sp, #0x3c
	strh r0, [r2, #0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	subs r0, r0, r5
	b _080786FE
_080786E8: .4byte gUnk_03003CE0
_080786EC:
	ldr r0, [r4, #0x14]
	mov r2, r8
	subs r0, r0, r2
	lsrs r0, r0, #8
	add r2, sp, #0x3c
	strh r0, [r2, #0]
	ldr r0, [r4, #0x18]
	mov r3, r9
	subs r0, r0, r3
_080786FE:
	lsrs r0, r0, #8
	mov r1, sp
	adds r1, #0x3e
	strh r0, [r1, #0]
	mov r4, sp
	movs r5, #0x3c
	ldrsh r0, [r4, r5]
	movs r6, #0x3e
	ldrsh r1, [r4, r6]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r1, #0x80
	ble _08078728
	ldr r2, _080787FC
	adds r0, r2, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_08078728:
	str r0, [sp, #0x60]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0807873E
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
_0807873E:
	ldr r4, [sp, #0x60]
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _08078756
	ldr r5, _080787FC
	adds r0, r1, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x60]
_08078756:
	ldr r6, [sp, #0x60]
	lsls r1, r6, #0x10
	asrs r1, r1, #0x14
	ldr r2, _08078800
	movs r3, #8
	ldrsh r0, [r7, r3]
	lsls r0, r0, #1
	adds r2, r0, r2
	ldrh r0, [r2, #0]
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #8
	ble _0807877C
	adds r0, r1, #0
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0807877C:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08078786
	negs r0, r0
_08078786:
	cmp r0, #3
	ble _0807878E
	ldrh r2, [r2, #0]
	str r2, [sp, #0x60]
_0807878E:
	movs r4, #0x8b
	lsls r4, r4, #2
	adds r0, r7, r4
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	ldrh r5, [r7, #8]
	str r5, [sp, #0x68]
	adds r0, r7, #0
	adds r0, #0x6a
	ldr r6, _08078804
	adds r2, r7, r6
	ldrh r1, [r0, #0]
	mov sl, r0
	ldr r0, [sp, #0x4c]
	adds r0, #4
	str r0, [sp, #0x74]
	ldrb r2, [r2, #0]
	cmp r1, r2
	bhs _0807881E
	movs r5, #1
	ldr r1, _08078808
	lsls r0, r0, #2
	adds r4, r0, r1
	adds r0, r5, #0
	ldr r1, [sp, #0x54]
	lsls r0, r1
	mvns r6, r0
_080787CC:
	adds r0, r7, #0
	adds r0, #0x7a
	ldrh r1, [r0, #0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080787E2
	bl sub_08056E90
	cmp r0, #0
	bne _080787F4
_080787E2:
	bl sub_0800BA6C
	cmp r0, #0
	beq _080787F4
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _080787F4
	cmp r0, #0xb
	bne _0807880C
_080787F4:
	ldr r0, [r4, #0]
	ands r0, r6
	str r0, [r4, #0]
	b _08078B0E
_080787FC: .4byte 0xFFFFFF00
_08078800: .4byte gUnk_0847AD0A
_08078804: .4byte 0x0000022B
_08078808: .4byte gUnk_030063E0
_0807880C:
	bl sub_080003F0
	ldr r2, _080788F0
	adds r1, r7, r2
	mov r3, sl
	ldrh r0, [r3, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _080787CC
_0807881E:
	ldr r4, [sp, #0x5c]
	lsls r0, r4, #3
	adds r0, #0xa
	str r0, [sp, #0x5c]
	bl sub_0800CD34
	cmp r0, #0
	bne _08078844
	bl sub_0800CCCC
	cmp r0, #0
	bne _08078844
	bl sub_0800CD8C
	cmp r0, #0
	bne _08078844
	movs r0, #0x17
	bl sub_0805865C
_08078844:
	ldr r0, [sp, #0x5c]
	adds r5, r0, #0
	subs r5, #1
	str r5, [sp, #0x5c]
	cmp r0, #0
	bne _08078852
	b _08078ADE
_08078852:
	add r6, sp, #0x3c
	mov sl, r6
_08078856:
	movs r0, #0
	str r0, [sp, #0x64]
	ldr r1, [sp, #0x50]
	cmp r1, #3
	bhi _08078912
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0x6c]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _080788F4
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	mov r3, r8
	subs r0, r0, r3
	lsrs r0, r0, #8
	mov r4, sl
	strh r0, [r4, #0]
	adds r0, r6, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	mov r5, r9
	subs r0, r0, r5
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r1, sp
	strh r0, [r1, #0x3e]
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _0807889A
	negs r1, r1
_0807889A:
	cmp r1, #7
	bgt _08078984
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080788A8
	negs r0, r0
_080788A8:
	cmp r0, #7
	bgt _08078984
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r6, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _080788C0
	b _08078AD0
_080788C0:
	adds r0, r6, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080788CC
	b _08078AD0
_080788CC:
	ldr r0, [r6, #0x30]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08078984
	ldrh r0, [r7, #0]
	adds r0, #4
	ldr r4, [sp, #0x64]
	str r4, [sp, #0]
	mov r1, r8
	mov r2, r9
	ldr r3, [sp, #0x70]
	adds r3, #4
	bl sub_08079888
	movs r5, #1
	str r5, [sp, #0x64]
	b _08078ADE
_080788F0: .4byte 0x0000022B
_080788F4: .4byte gUnk_03003CE0
_080788F8:
	ldrh r0, [r7, #0]
	adds r0, #4
	movs r1, #0
	str r1, [sp, #0]
	mov r1, r8
	mov r2, r9
	ldr r3, [sp, #0x70]
	adds r3, #4
	bl sub_08079888
	movs r6, #1
	str r6, [sp, #0x64]
	b _08078984
_08078912:
	movs r3, #0
	ldr r0, _08078ABC
	mov ip, r0
	ldr r6, _08078AC0
	add r5, sp, #0x3c
_0807891C:
	movs r1, #1
	lsls r1, r3
	mov r2, ip
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _0807897A
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	subs r0, r0, r3
	lsls r0, r0, #5
	ldr r1, [r6, #0]
	adds r4, r1, r0
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0807897A
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	mov r2, r8
	subs r0, r0, r2
	strh r0, [r5, #0]
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	mov r4, r9
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, sp
	strh r0, [r1, #0x3e]
	movs r4, #0
	ldrsh r2, [r5, r4]
	cmp r2, #0
	bge _08078968
	negs r2, r2
_08078968:
	cmp r2, #7
	bgt _0807897A
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08078976
	negs r0, r0
_08078976:
	cmp r0, #7
	ble _080788F8
_0807897A:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #4
	bls _0807891C
_08078984:
	ldr r5, [sp, #0x64]
	lsls r0, r5, #0x10
	cmp r0, #0
	beq _0807898E
	b _08078AFA
_0807898E:
	mov r6, r8
	str r6, [sp, #0x40]
	add r0, sp, #0x40
	mov r1, r9
	str r1, [r0, #4]
	ldr r1, _08078AC4
	str r1, [sp, #0x48]
	add r1, sp, #0x48
	movs r2, #0
	bl sub_0801FB14
	cmp r0, #0
	beq _080789AA
	b _08078ADE
_080789AA:
	mov r0, r8
	mov r1, r9
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _080789CA
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _080789CA
	b _08078ADE
_080789CA:
	ldr r2, [sp, #0x60]
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _08078AC8
	adds r0, r0, r3
	movs r5, #0
	ldrsh r0, [r0, r5]
	movs r6, #0x14
	muls r0, r6, r0
	movs r1, #0xa
	bl __divsi3
	add r8, r0
	lsls r4, r4, #1
	ldr r0, _08078AC8
	adds r4, r4, r0
	movs r1, #0
	ldrsh r0, [r4, r1]
	muls r0, r6, r0
	movs r1, #0xa
	bl __divsi3
	add r9, r0
	bl sub_0800CC98
	cmp r0, #0
	bne _08078A7A
	bl sub_0800CD8C
	cmp r0, #0
	bne _08078A7A
	bl sub_0800CCCC
	adds r3, r0, #0
	cmp r3, #0
	bne _08078A7A
	mov r2, r8
	asrs r5, r2, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r6, r9
	asrs r4, r6, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	mov r2, sl
	mov r3, sp
	adds r3, #0x3e
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, _08078ACC
	ldr r5, [sp, #0x68]
	lsls r3, r5, #0x10
	asrs r3, r3, #0xe
	adds r2, r3, r4
	movs r6, #0
	ldrsh r2, [r2, r6]
	adds r1, r1, r2
	mov r5, sp
	movs r6, #0x3e
	ldrsh r2, [r5, r6]
	adds r4, #2
	adds r3, r3, r4
	movs r4, #0
	ldrsh r3, [r3, r4]
	adds r2, r2, r3
	ldr r5, [sp, #0x58]
	str r5, [sp, #0]
	str r0, [sp, #4]
	add r0, sp, #8
	movs r3, #0
	bl sub_080659BC
_08078A7A:
	bl sub_080003F0
	bl sub_0800CB78
	cmp r0, #0
	bne _08078ADE
	bl sub_0800CD00
	cmp r0, #0
	bne _08078ADE
	adds r0, r7, #0
	adds r0, #0x7a
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08078AA4
	bl sub_08056E90
	cmp r0, #0
	bne _08078AB6
_08078AA4:
	bl sub_0800BA6C
	cmp r0, #0
	beq _08078AB6
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	beq _08078AB6
	cmp r0, #0xb
	bne _08078AD0
_08078AB6:
	movs r6, #1
	str r6, [sp, #0x64]
	b _08078ADE
_08078ABC: .4byte gUnk_030056FC
_08078AC0: .4byte gUnk_030056F4
_08078AC4: .4byte 0x00080008
_08078AC8: .4byte gUnk_080B9704
_08078ACC: .4byte gUnk_084EBEBC
_08078AD0:
	ldr r0, [sp, #0x5c]
	adds r1, r0, #0
	subs r1, #1
	str r1, [sp, #0x5c]
	cmp r0, #0
	beq _08078ADE
	b _08078856
_08078ADE:
	ldr r2, [sp, #0x64]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _08078AFA
	ldrh r0, [r7, #0]
	adds r0, #4
	ldr r1, [sp, #0x70]
	adds r1, #2
	str r2, [sp, #0]
	mov r2, r8
	mov r3, r9
	bl sub_0806818C
_08078AFA:
	ldr r0, _08078B20
	ldr r3, [sp, #0x74]
	lsls r2, r3, #2
	adds r2, r2, r0
	movs r1, #1
	ldr r4, [sp, #0x54]
	lsls r1, r4
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_08078B0E:
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08078B20: .4byte gUnk_030063E0
	thumb_func_end sub_080785F4
