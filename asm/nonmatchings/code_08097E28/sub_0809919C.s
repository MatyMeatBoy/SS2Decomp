	thumb_func_start sub_0809919C
sub_0809919C: @ 0x0809919C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r1, [sp, #0]
	cmp r0, #7
	bls _080991B0
	b _080992A0
_080991B0:
	lsls r0, r0, #2
	ldr r1, _080991BC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080991BC: .4byte _080991C0
_080991C0:
	.4byte _080991E0
_080991C4: .4byte _080991F4
_080991C8: .4byte _08099208
_080991CC: .4byte _08099224
_080991D0: .4byte _0809923C
_080991D4: .4byte _08099254
_080991D8: .4byte _08099270
_080991DC: .4byte _0809928C
_080991E0:
	ldr r0, _080991F0
	ldr r0, [r0, #0]
	ldr r6, [r0, #0x14]
	ldr r0, [r0, #0x18]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r5, r0, r1
	b _080992A0
_080991F0: .4byte gUnk_030002D0
_080991F4:
	ldr r0, _08099200
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	ldr r2, _08099204
	b _08099296
	.2byte 0x0000
_08099200: .4byte gUnk_030002D0
_08099204: .4byte 0xFFFFD800
_08099208:
	ldr r0, _08099218
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	ldr r2, _0809921C
	adds r6, r0, r2
	ldr r0, [r1, #0x18]
	ldr r3, _08099220
	b _0809929E
_08099218: .4byte gUnk_030002D0
_0809921C: .4byte 0xFFFFD000
_08099220: .4byte 0xFFFFF000
_08099224:
	ldr r0, _08099234
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x14]
	ldr r1, _08099238
	adds r6, r0, r1
	ldr r0, [r2, #0x18]
	adds r5, r0, r1
	b _080992A0
_08099234: .4byte gUnk_030002D0
_08099238: .4byte 0xFFFFE800
_0809923C:
	ldr r0, _0809924C
	ldr r0, [r0, #0]
	ldr r6, [r0, #0x14]
	ldr r0, [r0, #0x18]
	ldr r1, _08099250
	adds r5, r0, r1
	b _080992A0
	.2byte 0x0000
_0809924C: .4byte gUnk_030002D0
_08099250: .4byte 0xFFFFE400
_08099254:
	ldr r0, _08099268
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r6, r0, r2
	ldr r0, [r1, #0x18]
	ldr r3, _0809926C
	b _0809929E
	.2byte 0x0000
_08099268: .4byte gUnk_030002D0
_0809926C: .4byte 0xFFFFE800
_08099270:
	ldr r0, _08099284
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #6
	adds r6, r0, r2
	ldr r0, [r1, #0x18]
	ldr r3, _08099288
	b _0809929E
	.2byte 0x0000
_08099284: .4byte gUnk_030002D0
_08099288: .4byte 0xFFFFF000
_0809928C:
	ldr r0, _08099450
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	movs r2, #0xa0
	lsls r2, r2, #6
_08099296:
	adds r6, r0, r2
	ldr r0, [r1, #0x18]
	movs r3, #0x80
	lsls r3, r3, #5
_0809929E:
	adds r5, r0, r3
_080992A0:
	ldr r1, _08099454
	ldr r2, [sp, #0]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	movs r3, #9
	mov sl, r3
	ldr r0, _08099458
	mov r9, r0
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r8, r1
_080992BA:
	ldr r0, [sp, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r2, _0809945C
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r6, r6, r0
	ldr r1, [sp, #0]
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r5, r5, r0
	bl sub_080020F4
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	mov r1, r9
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	subs r0, r6, r0
	lsls r0, r0, #8
	lsrs r7, r0, #0x10
	bl sub_080020F4
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, r9
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	subs r0, r5, r0
	lsls r0, r0, #8
	lsrs r4, r0, #0x10
	mov r2, sl
	lsls r1, r2, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	mov sl, r1
	cmp r0, #0
	bne _08099320
	asrs r0, r6, #8
	asrs r1, r5, #8
	movs r2, #5
	bl sub_08065748
_08099320:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r3, r0, #0
	muls r3, r0, r3
	adds r0, r3, #0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bhi _0809941E
	bl sub_0800CDF8
	cmp r0, #0
	bne _0809941E
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809941E
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809941E
	ldr r7, _08099450
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _0809941E
	bl sub_080020F4
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	mov r1, r9
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0809941E
	bl sub_080020F4
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r9
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0809941E
	bl sub_080020F4
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, r9
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _0809941E
	bl sub_080020F4
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, r9
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _0809941E
	bl sub_080020F4
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r9
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _0809941E
	bl sub_080020F4
	ldr r2, [r7, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	mov r4, r9
	adds r4, #0xe4
	adds r1, r1, r4
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _0809941E
	movs r0, #1
	movs r1, #5
	movs r2, #1
	bl sub_08029CEC
	bl sub_080020F4
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, r9
	adds r0, #0xb0
	ldr r1, _08099460
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r2, [r7, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	adds r1, r1, r4
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
_0809941E:
	bl sub_080003F0
	ldr r1, _08099464
	add r1, sl
	lsrs r0, r1, #0x10
	mov sl, r0
	asrs r1, r1, #0x10
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq _08099436
	b _080992BA
_08099436:
	bl sub_0800048C
	movs r1, #0
	str r1, [r0, #8]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08099450: .4byte gUnk_030002D0
_08099454: .4byte gUnk_0847AD0A
_08099458: .4byte gUnk_03003CE0
_0809945C: .4byte gUnk_080B9704
_08099460: .4byte 0x0000FFFE
_08099464: .4byte 0xFFFF0000
	thumb_func_end sub_0809919C
