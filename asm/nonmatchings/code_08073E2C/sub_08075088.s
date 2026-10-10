	thumb_func_start sub_08075088
sub_08075088: @ 0x08075088
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd0
	str r0, [sp, #0x80]
	str r1, [sp, #0x84]
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	ldr r1, _0807541C
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
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0x80]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08075420
	adds r1, r1, r0
	str r1, [sp, #0x88]
	movs r3, #0
	str r3, [sp, #0x8c]
	mov r5, sp
	adds r5, #0x44
	str r5, [sp, #0xc0]
	mov r7, sp
	adds r7, #0x50
	str r7, [sp, #0xc4]
	mov r0, sp
	adds r0, #0x5c
	str r0, [sp, #0xc8]
	mov r1, sp
	adds r1, #0x64
	str r1, [sp, #0xcc]
	mov r2, sp
	adds r2, #0x6c
	str r2, [sp, #0xac]
	mov r3, sp
	adds r3, #0x74
	str r3, [sp, #0xb0]
	adds r6, r5, #0
	ldr r5, [sp, #0x88]
	movs r7, #0xa4
	lsls r7, r7, #1
	adds r3, r5, r7
	movs r4, #0
	adds r5, r0, #0
_08075104:
	ldr r0, [sp, #0x8c]
	lsls r1, r0, #2
	adds r2, r6, r1
	ldr r0, [r3, #0]
	ldrh r0, [r0, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [r2, #0]
	ldr r2, [sp, #0xc4]
	adds r1, r2, r1
	ldr r0, [r3, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [r1, #0]
	ldr r7, [sp, #0x8c]
	lsls r1, r7, #1
	adds r0, r5, r1
	strh r4, [r0, #0]
	ldr r2, [sp, #0xcc]
	adds r0, r2, r1
	strh r4, [r0, #0]
	ldr r7, [sp, #0xac]
	adds r0, r7, r1
	strh r4, [r0, #0]
	ldr r0, [sp, #0xb0]
	adds r1, r0, r1
	ldr r2, [sp, #0x8c]
	lsls r0, r2, #3
	adds r0, #1
	strh r0, [r1, #0]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	cmp r0, #2
	bls _08075104
	ldr r2, _08075424
	ldr r3, [sp, #0x88]
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r3, r5
	ldr r0, [r0, #0]
	ldrb r1, [r0, #3]
	lsrs r1, r1, #4
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r5, [r0, #0]
	str r1, [sp, #0x98]
	ldr r7, [sp, #0xa0]
	ldr r0, [sp, #0x80]
	cmp r7, r0
	bne _080751B4
	ldr r0, [r3, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0x30]
	adds r1, r3, #0
	adds r1, #0xdc
	ldr r0, [r1, #0]
	ldrh r2, [r1, #0]
	str r2, [sp, #0x90]
	adds r0, #1
	str r0, [r1, #0]
	bl sub_080008C8
	movs r4, #0x32
	movs r1, #0x32
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	ldr r0, _08075428
	ldr r0, [r0, #0]
	adds r0, #0x30
	movs r1, #5
	bl sub_0801E0AC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r4, r0
	ldr r3, [sp, #0x9c]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
_080751B4:
	ldr r7, [sp, #0x80]
	lsls r7, r7, #2
	str r7, [sp, #0xb4]
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	lsls r0, r0, #1
	ldr r1, _0807542C
	adds r0, r0, r1
	str r0, [sp, #0xa8]
_080751C8:
	movs r2, #0
	str r2, [sp, #0x94]
	movs r3, #0
	str r3, [sp, #0x8c]
_080751D0:
	ldr r5, [sp, #0x8c]
	lsls r1, r5, #1
	ldr r7, [sp, #0xb0]
	adds r2, r7, r1
	ldrh r0, [r2, #0]
	subs r0, #1
	strh r0, [r2, #0]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	str r1, [sp, #0xb8]
	cmp r7, #0
	beq _080751EA
	b _08075400
_080751EA:
	movs r0, #1
	strh r0, [r2, #0]
	lsls r6, r5, #2
	ldr r1, [sp, #0xc0]
	adds r1, r1, r6
	mov r8, r1
	ldr r0, [sp, #0xa4]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _0807542C
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r5, #2
	adds r1, r0, #0
	muls r1, r5, r1
	mov r2, r8
	ldr r0, [r2, #0]
	adds r0, r0, r1
	str r0, [r2, #0]
	ldr r3, [sp, #0xc4]
	adds r3, r3, r6
	mov r9, r3
	ldr r5, [sp, #0xa8]
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #2
	muls r0, r2, r0
	ldr r1, [r3, #0]
	adds r1, r1, r0
	str r1, [r3, #0]
	mov r3, r8
	ldr r0, [r3, #0]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	lsls r1, r1, #8
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
	ldr r0, [sp, #0xc8]
	ldr r1, [sp, #0xb8]
	adds r0, r0, r1
	mov sl, r0
	ldr r2, [sp, #0xcc]
	adds r3, r2, r1
	str r7, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0xe
	mov r2, sl
	bl sub_08065370
	ldr r3, [sp, #0xac]
	ldr r7, [sp, #0xb8]
	adds r1, r3, r7
	strh r0, [r1, #0]
	lsls r0, r0, #0x10
	str r6, [sp, #0xbc]
	adds r6, r4, #0
	cmp r0, #0
	bne _080752FC
	bl sub_0800CC98
	cmp r0, #0
	bne _080752FC
	bl sub_0800CD8C
	cmp r0, #0
	bne _080752FC
	bl sub_0800CCCC
	cmp r0, #0
	bne _080752FC
	ldr r0, _08075430
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080752A0
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_080752A0:
	mov r2, r8
	ldr r5, [r2, #0]
	asrs r5, r5, #8
	mov r3, r9
	ldr r4, [r3, #0]
	asrs r4, r4, #8
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800BC44
	movs r5, #0
	ldrsh r4, [r6, r5]
	ldr r2, _08075434
	ldr r7, [sp, #0x98]
	lsls r3, r7, #2
	adds r1, r3, r2
	movs r5, #0
	ldrsh r1, [r1, r5]
	adds r4, r4, r1
	movs r5, #0x7e
	add r5, sp
	movs r7, #0
	ldrsh r1, [r5, r7]
	adds r2, #2
	adds r3, r3, r2
	movs r7, #0
	ldrsh r2, [r3, r7]
	adds r1, r1, r2
	mov r2, sl
	ldrh r3, [r2, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r2, #0xe
	bl sub_08007870
_080752FC:
	ldr r3, [sp, #0xa0]
	ldr r5, [sp, #0x80]
	cmp r3, r5
	bne _080753EE
	ldr r7, [sp, #0xac]
	ldr r1, [sp, #0xb8]
	adds r0, r7, r1
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _080753EE
	bl sub_080020F4
	ldr r2, [sp, #0xa0]
	cmp r2, r0
	bne _08075330
	ldr r3, [sp, #0x88]
	ldrh r0, [r3, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08075410
	bl sub_0800D11C
	cmp r0, #0
	bne _08075410
_08075330:
	movs r4, #0
	movs r5, #1
	mov r9, r5
	adds r7, r6, #0
	ldr r0, [sp, #0xbc]
	mov r8, r0
	ldr r1, [sp, #0xc4]
	add r1, r8
	mov sl, r1
	mov r6, r9
	ldr r2, [sp, #0xa0]
	lsls r6, r2
_08075348:
	ldr r0, _08075438
	mov r1, r9
	lsls r1, r4
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _080753E4
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	subs r0, r0, r4
	lsls r0, r0, #5
	ldr r3, _0807543C
	ldr r1, [r3, #0]
	adds r5, r1, r0
	ldr r1, [sp, #0xc0]
	add r1, r8
	ldr r0, [r5, #0x14]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r7, #0]
	ldr r0, [r5, #0x18]
	mov r2, sl
	ldr r1, [r2, #0]
	subs r0, r0, r1
	asrs r0, r0, #8
	movs r3, #0x7e
	add r3, sp
	strh r0, [r3, #0]
	movs r1, #0
	ldrsh r0, [r7, r1]
	cmp r0, #0
	bge _0807538E
	negs r0, r0
_0807538E:
	cmp r0, #0x1b
	bgt _080753E4
	movs r3, #0x7e
	add r3, sp
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bge _080753A0
	negs r0, r0
_080753A0:
	cmp r0, #0x1b
	bgt _080753E4
	ldrh r0, [r5, #0xc]
	cmp r0, #0xb
	beq _080753E4
	ldr r0, [r5, #0x54]
	ldr r1, [sp, #0x90]
	cmp r0, r1
	beq _080753E4
	ldr r2, [sp, #0x9c]
	str r2, [r5, #0x4c]
	ldrh r0, [r5, #0]
	movs r1, #0x20
	str r1, [sp, #0]
	ldr r3, [sp, #0x98]
	str r3, [sp, #4]
	movs r1, #1
	ldr r2, [sp, #0x9c]
	movs r3, #1
	bl sub_08029E0C
	adds r0, r5, #0
	adds r0, #0x58
	add r1, sp, #0x80
	ldrh r1, [r1, #0]
	strh r1, [r0, #0]
	ldr r2, [sp, #0x90]
	str r2, [r5, #0x54]
	adds r2, r5, #0
	adds r2, #0x5a
	ldrh r1, [r2, #0]
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r2, #0]
_080753E4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08075348
_080753EE:
	ldr r3, [sp, #0xac]
	ldr r5, [sp, #0xb8]
	adds r0, r3, r5
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08075400
	ldr r7, [sp, #0x94]
	adds r7, #1
	str r7, [sp, #0x94]
_08075400:
	ldr r0, [sp, #0x8c]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	cmp r0, #2
	bhi _08075410
	b _080751D0
_08075410:
	ldr r0, [sp, #0x94]
	cmp r0, #2
	bhi _08075440
	bl sub_080003F0
	b _080751C8
_0807541C: .4byte 0x0005008C
_08075420: .4byte gUnk_03003CE0
_08075424: .4byte gUnk_0847AD0A
_08075428: .4byte gUnk_030034E0
_0807542C: .4byte gUnk_080B9704
_08075430: .4byte gUnk_03002344
_08075434: .4byte gUnk_084EBEBC
_08075438: .4byte gUnk_030056FC
_0807543C: .4byte gUnk_030056F4
_08075440:
	ldr r1, [sp, #0xa0]
	ldr r2, [sp, #0x80]
	cmp r1, r2
	bne _0807546C
	bl sub_0800CC98
	cmp r0, #0
	bne _0807546C
	bl sub_0800CE68
	cmp r0, #0
	bne _0807546C
	bl sub_0800CD8C
	cmp r0, #0
	bne _0807546C
	ldr r3, [sp, #0x88]
	ldr r0, [r3, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r3, #0x30]
_0807546C:
	ldr r2, _08075490
	ldr r5, [sp, #0xb4]
	adds r2, r5, r2
	movs r1, #1
	ldr r7, [sp, #0x84]
	lsls r1, r7
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0xd0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08075490: .4byte gUnk_030063E0
	thumb_func_end sub_08075088
