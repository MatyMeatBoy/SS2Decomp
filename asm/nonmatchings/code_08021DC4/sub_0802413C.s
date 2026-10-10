	thumb_func_start sub_0802413C
sub_0802413C: @ 0x0802413C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r6, r0, #0
	adds r5, r1, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080241A4
	adds r1, r1, r0
	mov r8, r1
	bl sub_0800CCCC
	cmp r0, #0
	beq _08024166
	b _08024524
_08024166:
	ldrh r0, [r6, #6]
	str r0, [sp, #0x1c]
	movs r0, #4
	ldr r1, [sp, #0x1c]
	ands r0, r1
	negs r0, r0
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	movs r0, #3
	ands r1, r0
	str r1, [sp, #0x1c]
	ldr r0, _080241A8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	movs r7, #0x20
	cmp r0, #3
	bne _08024194
	ldr r0, _080241AC
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xc
	bne _08024194
	movs r7, #0x18
_08024194:
	bl sub_0800CF80
	cmp r0, #0
	beq _080241B0
	movs r2, #0xf0
	str r2, [sp, #0x10]
	b _080241B4
	.2byte 0x0000
_080241A4: .4byte gUnk_03003CE0
_080241A8: .4byte gUnk_03005CF4
_080241AC: .4byte gUnk_03003170
_080241B0:
	movs r0, #0x18
	str r0, [sp, #0x10]
_080241B4:
	ldrh r3, [r6, #0]
	lsls r3, r3, #0xb
	ldr r4, _08024228
	ldr r1, _0802422C
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #5
	adds r0, #0x80
	adds r0, r0, r4
	movs r2, #0
	ldrsh r5, [r0, r2]
	adds r0, r5, #0
	muls r0, r7, r0
	adds r0, r3, r0
	str r0, [sp, #4]
	ldrh r2, [r6, #2]
	lsls r2, r2, #0xb
	lsls r1, r1, #5
	adds r1, r1, r4
	movs r0, #0
	ldrsh r4, [r1, r0]
	adds r0, r4, #0
	muls r0, r7, r0
	adds r0, r2, r0
	str r0, [sp, #0]
	adds r0, r7, #0
	adds r0, #8
	negs r0, r0
	adds r1, r5, #0
	muls r1, r0, r1
	adds r3, r3, r1
	str r3, [sp, #0xc]
	muls r0, r4, r0
	adds r2, r2, r0
	str r2, [sp, #8]
	ldr r1, [sp, #4]
	cmp r1, #0
	bge _08024208
	movs r2, #0
	str r2, [sp, #4]
_08024208:
	ldr r0, [sp, #0]
	cmp r0, #0
	bge _08024212
	movs r1, #0
	str r1, [sp, #0]
_08024212:
	movs r1, #0
	movs r0, #0
	mov r2, r8
	strh r0, [r2, #0x26]
	strh r0, [r2, #0x24]
	mov r0, r8
	adds r0, #0x68
	strb r1, [r0, #0]
	str r0, [sp, #0x2c]
	b _08024240
	.2byte 0x0000
_08024228: .4byte gUnk_080B9704
_0802422C: .4byte gUnk_0849E730
_08024230:
	bl sub_0800CCCC
	cmp r0, #0
	beq _0802423A
	b _08024524
_0802423A:
	movs r0, #1
	bl sub_08057624
_08024240:
	mov r1, r8
	ldrh r0, [r1, #0x20]
	cmp r0, #0xe
	beq _08024230
	bl sub_0800CD8C
	cmp r0, #0
	bne _08024230
	mov r2, r8
	ldrh r0, [r2, #0x20]
	cmp r0, #5
	beq _08024230
	ldr r1, [sp, #4]
	asrs r0, r1, #8
	ldr r2, [sp, #0]
	asrs r1, r2, #8
	bl sub_08015C5C
	b _08024276
_08024266:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08024270
	b _08024524
_08024270:
	movs r0, #1
	bl sub_08057624
_08024276:
	bl sub_08015F20
	cmp r0, #0
	beq _0802428E
	ldr r0, _080242C8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08024266
_0802428E:
	mov r1, r8
	ldr r0, [r1, #0x30]
	ldr r1, _080242CC
	orrs r0, r1
	mov r2, r8
	str r0, [r2, #0x30]
	bl sub_08067D74
	ldr r0, _080242C8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080242B0
	b _08024524
_080242B0:
	ldr r0, _080242D0
	str r0, [sp, #0x28]
_080242B4:
	movs r1, #0
	mov sl, r1
	movs r2, #0
	str r2, [sp, #0x14]
	movs r3, #0
	movs r0, #0
	str r0, [sp, #0x20]
	mov r9, r0
	ldr r7, [sp, #0x28]
	b _0802440C
_080242C8: .4byte gUnk_03005CF4
_080242CC: .4byte 0x00000403
_080242D0: .4byte gUnk_03003E28
_080242D4:
	ldr r6, _08024314
	ldr r1, [r7, #0]
	ldrh r0, [r1, #0]
	lsrs r4, r0, #4
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r5, r0, #0x14
	str r3, [sp, #0x30]
	bl sub_0800CB9C
	ldr r3, [sp, #0x30]
	cmp r0, #0
	beq _0802437C
	bl sub_0800CF80
	ldr r3, [sp, #0x30]
	cmp r0, #0
	beq _08024318
	ldr r1, [r7, #0]
	ldrb r0, [r1, #7]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _0802430C
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x1a
	adds r4, r6, #0
	cmp r0, #0
	bne _080243B8
_0802430C:
	adds r3, #1
	adds r4, r6, #0
	b _080243B8
	.2byte 0x0000
_08024314: .4byte gUnk_03003CE0
_08024318:
	ldr r2, [sp, #4]
	subs r1, r4, r2
	cmp r1, #0
	bge _08024322
	negs r1, r1
_08024322:
	ldr r0, [sp, #0x10]
	adds r0, #0x20
	cmp r1, r0
	bge _0802433E
	ldr r0, [sp, #0]
	subs r1, r5, r0
	cmp r1, #0
	bge _08024334
	negs r1, r1
_08024334:
	movs r0, #0x10
	adds r0, #0x20
	adds r4, r6, #0
	cmp r1, r0
	blt _08024350
_0802433E:
	ldr r0, [r7, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	ldr r4, _08024378
	cmp r0, #0
	beq _080243D8
_08024350:
	ldr r2, [r7, #0]
	ldrb r0, [r2, #7]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _08024372
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080243D8
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	beq _080243B8
_08024372:
	adds r3, #1
	b _080243B8
	.2byte 0x0000
_08024378: .4byte gUnk_03003CE0
_0802437C:
	ldr r2, [sp, #4]
	subs r1, r4, r2
	cmp r1, #0
	bge _08024386
	negs r1, r1
_08024386:
	ldr r0, [sp, #0x10]
	adds r0, #0x20
	adds r4, r6, #0
	cmp r1, r0
	bge _080243B8
	ldr r0, [sp, #0]
	subs r1, r5, r0
	cmp r1, #0
	bge _0802439A
	negs r1, r1
_0802439A:
	movs r0, #0x10
	adds r0, #0x20
	adds r4, r6, #0
	cmp r1, r0
	bge _080243B8
	adds r0, r6, #0
	adds r0, #0x30
	add r0, r9
	ldr r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _080243B8
	adds r3, #1
_080243B8:
	ldr r2, [r7, #0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080243D8
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	beq _080243D8
	ldr r1, [sp, #0x14]
	adds r1, #1
	str r1, [sp, #0x14]
_080243D8:
	adds r0, r4, #0
	adds r0, #0x30
	add r0, r9
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080243EE
	movs r2, #1
	add sl, r2
_080243EE:
	str r3, [sp, #0x30]
	bl sub_0800CF80
	ldr r3, [sp, #0x30]
	cmp r0, #0
	beq _080243FE
	movs r0, #0
	mov sl, r0
_080243FE:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r7, r7, r1
	add r9, r1
	ldr r2, [sp, #0x20]
	adds r2, #1
	str r2, [sp, #0x20]
_0802440C:
	str r3, [sp, #0x30]
	bl sub_08002164
	ldr r3, [sp, #0x30]
	ldr r1, [sp, #0x20]
	cmp r1, r0
	bhs _0802441C
	b _080242D4
_0802441C:
	bl sub_08002164
	ldr r3, [sp, #0x30]
	cmp r3, r0
	bne _0802445A
	bl sub_08002164
	ldr r2, [sp, #0x14]
	cmp r2, r0
	beq _0802445A
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0802443C
	ldr r1, [sp, #0x24]
	cmp r1, #0
	beq _08024452
_0802443C:
	ldr r2, [sp, #0x14]
	cmp r2, #0
	bne _0802445E
	bl sub_08002164
	cmp sl, r0
	beq _0802445E
	ldr r0, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x18]
	b _0802445E
_08024452:
	ldr r1, [sp, #0x18]
	adds r1, #1
	str r1, [sp, #0x18]
	b _0802445E
_0802445A:
	movs r2, #0
	str r2, [sp, #0x18]
_0802445E:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0802450C
	bl sub_08058DB0
	cmp r0, #0
	bne _0802450C
	ldr r0, _080244AC
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802450C
	mov r1, r8
	ldr r0, [r1, #0x30]
	ldr r1, _080244B0
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x30]
	bl sub_08067D74
	movs r0, #0x3c
	bl sub_08057624
	mov r1, r8
	ldr r0, [r1, #0x30]
	ldr r1, _080244B4
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x30]
	bl sub_08067D74
	ldr r1, [sp, #0xc]
	asrs r0, r1, #8
	ldr r2, [sp, #8]
	asrs r1, r2, #8
	bl sub_08015C5C
	b _080244BE
_080244AC: .4byte gUnk_03001324
_080244B0: .4byte 0xFFFFFBFF
_080244B4: .4byte 0xFFFFFBFC
_080244B8:
	movs r0, #1
	bl sub_08057624
_080244BE:
	bl sub_08015F20
	cmp r0, #0
	beq _080244D6
	ldr r0, _08024500
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080244B8
_080244D6:
	bl sub_0800CF80
	cmp r0, #0
	bne _080244E4
	movs r0, #1
	ldr r1, [sp, #0x2c]
	strb r0, [r1, #0]
_080244E4:
	mov r2, r8
	ldr r0, [r2, #0x30]
	ldr r1, _08024504
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0806617C
	bl sub_08067D74
	ldr r1, _08024508
	movs r0, #0
	str r0, [r1, #0]
	b _08024524
	.2byte 0x0000
_08024500: .4byte gUnk_03005CF4
_08024504: .4byte 0xFFFFFBDA
_08024508: .4byte gUnk_03005CF0
_0802450C:
	movs r0, #1
	bl sub_08057624
	ldr r0, _08024534
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08024524
	b _080242B4
_08024524:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08024534: .4byte gUnk_03005CF4
	thumb_func_end sub_0802413C
