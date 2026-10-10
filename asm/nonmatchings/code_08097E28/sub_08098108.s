	thumb_func_start sub_08098108
sub_08098108: @ 0x08098108
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd8
	adds r7, r0, #0
	ldr r0, _08098180
	str r7, [r0, #0]
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x7c]
	ldr r1, _08098184
	adds r0, r7, #0
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0x7c]
	bl sub_08019F60
	adds r0, r7, #0
	bl sub_0801A0A4
	ldr r4, _08098188
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0, #0]
	ldr r2, _0809818C
	adds r1, r7, r2
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08098190
	cmp r1, r0
	bne _080981A4
	ldr r4, _08098194
	adds r5, r1, #0
_0809815C:
	movs r0, #0xb
	strh r0, [r7, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _08098170
	bl sub_08056E90
	cmp r0, #0
	beq _08098198
_08098170:
	movs r1, #1
	ldrh r7, [r7, #0]
	lsls r1, r7
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	bl _08098F1C
_08098180: .4byte gUnk_030002D0
_08098184: .4byte gUnk_0849F878
_08098188: .4byte gUnk_030002D4
_0809818C: .4byte 0x000002DA
_08098190: .4byte 0x0000FFFF
_08098194: .4byte gUnk_030056FC
_08098198:
	bl sub_080003F0
	ldr r0, _080982A8
	ldrh r0, [r0, #0]
	cmp r0, r5
	beq _0809815C
_080981A4:
	movs r1, #0xa0
	lsls r1, r1, #0xb
	ldr r4, _080982A8
	ldrh r2, [r4, #0]
	movs r5, #1
	negs r5, r5
	movs r6, #1
	str r6, [sp, #0]
	add r0, sp, #0x10
	adds r3, r5, #0
	bl sub_08065158
	add r3, sp, #0x44
	mov r9, r3
	ldr r1, _080982AC
	ldrh r2, [r4, #0]
	str r6, [sp, #0]
	mov r0, r9
	adds r3, r5, #0
	bl sub_08065158
	movs r4, #0x6c
	adds r4, r4, r7
	mov r8, r4
	movs r2, #0
	strh r2, [r4, #0]
	adds r5, r7, #0
	adds r5, #0x6a
	strh r2, [r5, #0]
	adds r4, r7, #0
	adds r4, #0x68
	strh r2, [r4, #0]
	ldr r0, [sp, #0x7c]
	movs r3, #6
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r3, #0xeb
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5c
	strh r0, [r1, #0]
	ldr r1, [sp, #0x7c]
	movs r3, #4
	ldrsh r0, [r1, r3]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0xea
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	strh r2, [r7, #0xc]
	movs r0, #0
	str r0, [sp, #0x84]
	ldr r1, _080982B0
	str r1, [sp, #0x88]
	str r2, [sp, #0x90]
	adds r3, #0x29
	adds r0, r7, r3
	movs r1, #2
	strb r1, [r0, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0, #0]
	movs r0, #1
	bl sub_080656B8
	bl sub_0809975C
	movs r3, #0
	str r3, [sp, #0xb8]
	movs r0, #0
	str r0, [sp, #0x98]
	movs r1, #0
	str r1, [sp, #0x94]
	str r6, [r7, #0x50]
	mov r2, r8
	str r2, [sp, #0xd0]
	str r5, [sp, #0xcc]
	str r4, [sp, #0xc8]
	ldr r4, [sp, #0x7c]
	adds r4, #0xd6
	str r4, [sp, #0xd4]
	movs r5, #0xa6
	lsls r5, r5, #1
	mov r8, r5
	ldr r5, _080982B4
	movs r6, #0
_08098264:
	movs r2, #0
	lsls r4, r3, #0x10
	asrs r0, r4, #0x10
	mov r3, r8
	muls r3, r0, r3
_0809826E:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r3
	adds r0, r0, r5
	str r6, [r0, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _0809826E
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _08098264
	bl sub_0800CE30
	cmp r0, #1
	bne _080982B8
	movs r2, #0x78
	str r2, [sp, #0x9c]
	movs r3, #0xb4
	lsls r3, r3, #1
	str r3, [sp, #0xa0]
	b _080982C0
_080982A8: .4byte gUnk_030002D4
_080982AC: .4byte 0x00050001
_080982B0: .4byte 0x0000FFFF
_080982B4: .4byte gUnk_03003DC4
_080982B8:
	movs r4, #0xf0
	str r4, [sp, #0x9c]
	movs r5, #0xf0
	str r5, [sp, #0xa0]
_080982C0:
	ldrb r0, [r7, #0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r3, r7, r1
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldrh r1, [r7, #2]
	ldr r2, _080982FC
	adds r0, r7, r2
	strh r1, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1, #0]
	bl sub_08097FE4
	bl sub_08097A4C
	movs r4, #0
	str r4, [sp, #0xbc]
	bl sub_08067C18
	b _08098304
_080982FC: .4byte 0x00000202
_08098300:
	bl sub_080003F0
_08098304:
	bl sub_08067C08
	cmp r0, #0
	beq _08098300
	bl sub_08067BF8
	b _080989A2
_08098312:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _08098322
	ldr r5, [sp, #0x90]
	cmp r5, #0
	bne _08098322
	movs r0, #8
	str r0, [sp, #0x90]
_08098322:
	bl sub_08058DB0
	add r6, sp, #0x78
	mov r4, sp
	adds r4, #0x7a
	cmp r0, #0
	beq _08098332
	b _08098732
_08098332:
	adds r0, r7, #0
	bl sub_0801C8F0
	ldr r1, _08098350
	adds r0, r7, r1
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #7
	bls _08098346
	b _08098732
_08098346:
	lsls r0, r0, #2
	ldr r1, _08098354
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08098350: .4byte 0x000001FD
_08098354: .4byte _08098358
_08098358:
	.4byte _08098378
_0809835C: .4byte _080983A4
_08098360: .4byte _080983D4
_08098364: .4byte _08098544
_08098368: .4byte _08098580
_0809836C: .4byte _0809849A
_08098370: .4byte _080986B4
_08098374: .4byte _080986EC
_08098378:
	movs r0, #0
	strh r0, [r7, #0xc]
	bl sub_08067C08
	add r6, sp, #0x78
	mov r4, sp
	adds r4, #0x7a
	cmp r0, #0
	bne _0809838C
	b _08098732
_0809838C:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrb r1, [r0, #0]
	ldr r3, _080983A0
	adds r0, r7, r3
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _08098732
_080983A0: .4byte 0x000001FD
_080983A4:
	movs r4, #0
	str r4, [sp, #0x84]
	bl sub_08056F78
	add r6, sp, #0x78
	mov r4, sp
	adds r4, #0x7a
	cmp r0, #0
	bne _080983B8
	b _08098732
_080983B8:
	movs r5, #0xff
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #3
	strb r0, [r1, #0]
	ldr r0, _080983D0
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _08098732
_080983D0: .4byte 0x000001FD
_080983D4:
	movs r1, #1
	str r1, [sp, #0x84]
	movs r5, #1
	strh r1, [r7, #0xc]
	movs r0, #0
	bl sub_08096594
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08098438
	adds r1, r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, #0
	movs r3, #0x20
	bl sub_08097A74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0809845E
	ldr r1, [sp, #0x98]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x98]
	add r6, sp, #0x78
	mov r4, sp
	adds r4, #0x7a
	ldr r3, [sp, #0x9c]
	cmp r3, r1
	blt _08098416
	b _08098732
_08098416:
	ldr r4, _0809843C
	adds r0, r7, r4
	strb r5, [r0, #0]
	movs r5, #0
	str r5, [sp, #0xa4]
	ldr r0, [sp, #0xb8]
	cmp r0, #0
	bne _08098440
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #6
	strb r0, [r1, #0]
	movs r0, #0
	bl sub_08097A38
	b _08098454
_08098438: .4byte gUnk_03003CE0
_0809843C: .4byte 0x000001FD
_08098440:
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #4
	strb r0, [r1, #0]
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	movs r4, #0
	str r4, [sp, #0xa8]
_08098454:
	bl sub_08067C18
	movs r5, #0
	str r5, [sp, #0x98]
	b _08098574
_0809845E:
	ldr r1, _08098480
	adds r0, r7, r1
	strb r5, [r0, #0]
	movs r2, #0
	str r2, [sp, #0xa4]
	ldr r3, [sp, #0xb8]
	cmp r3, #0
	bne _08098484
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #6
	strb r0, [r1, #0]
	movs r0, #0
	bl sub_08097A38
	b _08098570
_08098480: .4byte 0x000001FD
_08098484:
	movs r5, #0xff
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #4
	strb r0, [r1, #0]
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	movs r0, #0
	str r0, [sp, #0xa8]
	b _08098570
_0809849A:
	movs r1, #2
	str r1, [sp, #0x84]
	strh r1, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	add r6, sp, #0x78
	mov r4, sp
	adds r4, #0x7a
	cmp r0, #0
	bne _080984B2
	b _08098732
_080984B2:
	ldr r1, [sp, #0xa4]
	lsls r0, r1, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	mov r8, r0
	cmp r1, #7
	bgt _08098522
	movs r0, #0xa6
	bl sub_0805865C
	bl sub_0800CE30
	cmp r0, #1
	bne _080984E6
	ldrh r0, [r7, #8]
	mov r4, r8
	lsrs r1, r4, #0x10
	bl sub_080997C0
	b _08098506
_080984E6:
	ldrh r0, [r7, #8]
	movs r1, #0
	bl sub_080997C0
	ldrh r0, [r7, #8]
	movs r1, #2
	bl sub_080997C0
	ldrh r0, [r7, #8]
	movs r1, #4
	bl sub_080997C0
	ldrh r0, [r7, #8]
	movs r1, #6
	bl sub_080997C0
_08098506:
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	movs r0, #0
	ldr r5, [sp, #0xd0]
	strh r0, [r5, #0]
	ldr r1, [sp, #0xcc]
	strh r0, [r1, #0]
	ldrh r0, [r7, #8]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strh r0, [r7, #8]
	b _08098574
_08098522:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #7
	strb r0, [r1, #0]
	ldr r3, _08098540
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	movs r5, #0
	str r5, [sp, #0xb4]
	b _08098732
	.2byte 0x0000
_08098540: .4byte 0x000001FD
_08098544:
	movs r0, #0
	str r0, [sp, #0x84]
	strh r0, [r7, #0xc]
	bl sub_08096594
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xb0]
	movs r0, #0
	bl sub_08097A38
	movs r2, #0
	str r2, [sp, #0xc0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #5
	strb r0, [r1, #0]
	ldr r4, _0809857C
	adds r1, r7, r4
	movs r0, #1
	strb r0, [r1, #0]
_08098570:
	bl sub_08067C18
_08098574:
	add r6, sp, #0x78
	mov r4, sp
	adds r4, #0x7a
	b _08098732
_0809857C: .4byte 0x000001FD
_08098580:
	movs r5, #2
	str r5, [sp, #0x84]
	strh r5, [r7, #0xc]
	ldr r1, [sp, #0xcc]
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0809859C
	ldr r2, [sp, #0xd0]
	ldrh r0, [r2, #0]
	cmp r0, #0
	beq _0809859C
	movs r0, #0xa7
	bl sub_0805865C
_0809859C:
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r3, [sp, #0xb0]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, _080985C0
	adds r1, r1, r0
	adds r0, r7, #0
	movs r2, #0x60
	movs r3, #0x20
	bl sub_08097A74
	ldr r4, [sp, #0xc0]
	cmp r4, #0
	bne _080985C4
	bl sub_08098F2C
	b _080985C8
_080985C0: .4byte gUnk_03003CE0
_080985C4:
	ldr r0, [sp, #0xc0]
	subs r0, #1
_080985C8:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc0]
	bl sub_0800CE30
	ldr r5, [sp, #0xa4]
	lsls r5, r5, #0x10
	mov r8, r5
	ldr r1, [sp, #0xa0]
	lsls r1, r1, #0x10
	str r1, [sp, #0xc4]
	add r6, sp, #0x78
	mov r4, sp
	adds r4, #0x7a
	cmp r0, #0
	bne _08098670
	ldr r1, [sp, #0xa8]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa8]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x3c
	ble _08098670
	bl sub_08002164
	adds r5, r0, #0
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1, #0]
	movs r3, #0
	cmp r3, r5
	bhs _08098644
	adds r2, r1, #0
	adds r0, #0x4d
	mov ip, r0
	mov r9, r3
_0809861C:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	mov r0, ip
	muls r0, r1, r0
	ldr r3, _080986AC
	adds r0, r0, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xa
	bne _08098638
	mov r0, r9
	strb r0, [r2, #0]
_08098638:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	blo _0809861C
_08098644:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08098670
	movs r0, #0xa8
	bl sub_0805865C
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #8
	strb r0, [r1, #0]
	ldr r3, _080986B0
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	movs r5, #0
	str r5, [sp, #0xb4]
_08098670:
	ldr r0, [sp, #0xa4]
	movs r1, #0x80
	lsls r1, r1, #9
	add r1, r8
	lsrs r1, r1, #0x10
	str r1, [sp, #0xa4]
	ldr r2, [sp, #0xc4]
	asrs r1, r2, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _08098732
	movs r0, #0xa8
	bl sub_0805865C
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #8
	strb r0, [r1, #0]
	ldr r5, _080986B0
	adds r1, r7, r5
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	movs r0, #0
	str r0, [sp, #0xb4]
	b _08098732
	.2byte 0x0000
_080986AC: .4byte gUnk_03003E28
_080986B0: .4byte 0x000001FD
_080986B4:
	movs r1, #0
	str r1, [sp, #0x84]
	strh r1, [r7, #0xc]
	ldr r1, [sp, #0xb4]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xb4]
	add r6, sp, #0x78
	mov r4, sp
	adds r4, #0x7a
	cmp r1, #0x78
	bls _08098732
	movs r3, #1
	str r3, [sp, #0xb8]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r0, r7, r5
	movs r1, #3
	strb r1, [r0, #0]
	ldr r1, _080986E8
	adds r0, r7, r1
	strb r3, [r0, #0]
	bl sub_08067C18
	b _08098732
_080986E8: .4byte 0x000001FD
_080986EC:
	movs r3, #0
	str r3, [sp, #0x84]
	strh r3, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x14
	ldrh r2, [r7, #8]
	ldr r5, [sp, #0x84]
	str r5, [sp, #0]
	movs r0, #0x40
	bl sub_08013E90
	strh r0, [r7, #8]
	ldr r1, [sp, #0xb4]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xb4]
	add r6, sp, #0x78
	mov r4, sp
	adds r4, #0x7a
	cmp r1, #0x78
	bls _08098732
	movs r0, #0
	str r0, [sp, #0xb8]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #3
	strb r0, [r1, #0]
	ldr r3, _08098744
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
_08098732:
	ldr r5, [sp, #0x84]
	cmp r5, #1
	beq _080987A0
	cmp r5, #1
	bgt _08098748
	cmp r5, #0
	beq _08098750
	b _080987D4
	.2byte 0x0000
_08098744: .4byte 0x000001FD
_08098748:
	ldr r0, [sp, #0x84]
	cmp r0, #2
	beq _080987B2
	b _080987D4
_08098750:
	add r1, sp, #0x10
	mov sl, r1
	ldr r2, _08098780
	adds r0, r7, r2
	ldrb r0, [r0, #0]
	cmp r0, #7
	beq _08098784
	cmp r0, #8
	beq _08098788
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r0, [r0, #0]
	cmp r0, #7
	beq _08098792
	cmp r0, #8
	beq _08098796
	ldrh r0, [r7, #8]
	ldr r5, [sp, #0xc8]
	strh r0, [r5, #0]
	movs r0, #1
	str r0, [sp, #0x8c]
	b _080987D4
	.2byte 0x0000
_08098780: .4byte 0x000001FD
_08098784:
	movs r0, #0x10
	b _080987A8
_08098788:
	movs r0, #0x11
	ldr r3, [sp, #0xc8]
	strh r0, [r3, #0]
	movs r5, #0
	b _080987D2
_08098792:
	movs r0, #0x10
	b _080987A8
_08098796:
	movs r0, #0x11
	ldr r3, [sp, #0xc8]
	strh r0, [r3, #0]
	movs r5, #0
	b _080987D2
_080987A0:
	add r0, sp, #0x10
	mov sl, r0
	ldrh r0, [r7, #8]
	adds r0, #8
_080987A8:
	ldr r1, [sp, #0xc8]
	strh r0, [r1, #0]
	movs r2, #1
	str r2, [sp, #0x8c]
	b _080987D4
_080987B2:
	add r3, sp, #0x44
	mov sl, r3
	ldr r5, [sp, #0xb8]
	cmp r5, #0
	bne _080987CA
	ldrh r0, [r7, #8]
	adds r0, #2
	ldr r1, [sp, #0xc8]
	strh r0, [r1, #0]
	movs r2, #0
	str r2, [sp, #0x8c]
	b _080987D4
_080987CA:
	movs r0, #0
	ldr r3, [sp, #0xc8]
	strh r0, [r3, #0]
	movs r5, #1
_080987D2:
	str r5, [sp, #0x8c]
_080987D4:
	ldr r0, _08098824
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r1, [sp, #0x88]
	ldrh r3, [r0, #0]
	cmp r1, r3
	beq _080987F4
	ldrh r0, [r0, #0]
	str r0, [sp, #0x88]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_080987F4:
	ldr r1, _08098828
	ldrh r0, [r1, #0]
	mov r5, sl
	strb r0, [r5, #0x1c]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r1, [sp, #0xd4]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [r5, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0809882C
	bl sub_08097FF8
	b _0809883A
	.2byte 0x0000
_08098824: .4byte gUnk_030002D0
_08098828: .4byte gUnk_030002D4
_0809882C:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_0809883A:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _08098860
	ldr r2, [sp, #0xc8]
	ldrh r1, [r2, #0]
	ldr r3, [sp, #0x8c]
	str r3, [sp, #0]
	mov r0, sl
	ldr r2, [sp, #0xcc]
	ldr r3, [sp, #0xd0]
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_08098860:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	adds r5, r6, #0
	mov r9, r4
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r5, #0
	mov r3, r9
	bl sub_0800BC08
	ldr r0, [sp, #0x90]
	cmp r0, #0
	beq _080988D8
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x90]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08098918
	bl sub_0800CCCC
	cmp r0, #0
	bne _08098918
	bl sub_0800CC98
	cmp r0, #0
	bne _08098918
	bl sub_0800CD34
	cmp r0, #0
	bne _08098918
	movs r1, #0
	ldrsh r0, [r5, r1]
	mov r2, r9
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xc8]
	ldrh r2, [r4, #0]
	ldr r5, [sp, #0xcc]
	ldrh r3, [r5, #0]
	mov r4, r8
	str r4, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _08098918
_080988D8:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08098918
	bl sub_0800CC98
	cmp r0, #0
	bne _08098918
	bl sub_0800CD34
	cmp r0, #0
	bne _08098918
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [sp, #0xc8]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0xcc]
	ldrh r3, [r4, #0]
	mov r5, r8
	str r5, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_08098918:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _0809892E
	ldr r1, [sp, #0x80]
	cmp r1, r0
	beq _0809892E
	str r0, [sp, #0x80]
	movs r2, #0xa
	str r2, [sp, #0x94]
	movs r3, #0
	str r3, [sp, #0xac]
_0809892E:
	ldr r4, [sp, #0x94]
	cmp r4, #0
	beq _08098980
	bl sub_0800CC98
	cmp r0, #0
	bne _0809895A
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809895A
	bl sub_0800CD34
	cmp r0, #0
	bne _0809895A
	ldr r5, [sp, #0xac]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x80]
	bl sub_0801A120
_0809895A:
	movs r0, #2
	ldr r1, [sp, #0x94]
	ands r0, r1
	cmp r0, #0
	beq _08098970
	ldr r2, [sp, #0xac]
	lsls r0, r2, #0x10
	ldr r3, _0809897C
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
_08098970:
	ldr r0, [sp, #0x94]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x94]
	b _08098988
_0809897C: .4byte 0xFFFF0000
_08098980:
	movs r4, #0
	str r4, [sp, #0x80]
	ldr r5, [sp, #0x94]
	str r5, [r7, #0x4c]
_08098988:
	adds r0, r7, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08098998
	movs r0, #1
	str r0, [sp, #0xbc]
_08098998:
	bl sub_080003F0
	ldr r1, [sp, #0xbc]
	cmp r1, #0
	bne _080989B4
_080989A2:
	bl sub_0800CB78
	cmp r0, #0
	bne _080989B4
	bl sub_08056E90
	cmp r0, #0
	bne _080989B4
	b _08098312
_080989B4:
	ldr r0, _08098B24
	movs r4, #0
	str r4, [r0, #0]
	bl sub_080020F4
	ldr r1, _08098B28
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_08099788
	bl sub_080656EC
	add r2, sp, #0x10
	mov sl, r2
	ldr r0, _08098B2C
	ldrh r0, [r0, #0]
	strb r0, [r2, #0x1c]
	ldr r2, _08098B30
	ldr r5, [r2, #0]
	adds r1, r5, #0
	adds r1, #0x68
	movs r0, #0x10
	strh r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #0x6c
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	movs r3, #0
	str r3, [sp, #0xac]
	movs r4, #0xa
	str r4, [sp, #0x94]
	mov r9, r2
_08098A04:
	bl sub_080020F4
	ldr r2, _08098B28
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r5, #1
	orrs r0, r5
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _08098ADE
	bl sub_0800CC98
	cmp r0, #0
	bne _08098ADE
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	bne _08098ADE
	ldr r0, _08098B2C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0xd4]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, sl
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r4, r9
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r4, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r5, [sp, #0]
	mov r0, sl
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	str r6, [sp, #0]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r4, r9
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r5, r8
	str r5, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, [sp, #0xac]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x80]
	bl sub_0801A120
_08098ADE:
	movs r0, #2
	ldr r1, [sp, #0x94]
	ands r0, r1
	cmp r0, #0
	beq _08098AF4
	ldr r2, [sp, #0xac]
	lsls r0, r2, #0x10
	ldr r3, _08098B34
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
_08098AF4:
	bl sub_080003F0
	ldr r0, [sp, #0x94]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x94]
	ldr r0, _08098B38
	ldr r4, [sp, #0x94]
	cmp r4, r0
	beq _08098B0C
	b _08098A04
_08098B0C:
	bl sub_080683CC
	ldrh r0, [r7, #2]
	bl sub_08067CA8
	ldr r0, _08098B3C
	bl sub_08068330
	ldr r6, _08098B30
	add r7, sp, #0x78
	b _08098C0A
	.2byte 0x0000
_08098B24: .4byte gUnk_030056FC
_08098B28: .4byte gUnk_03003CE0
_08098B2C: .4byte gUnk_030002D4
_08098B30: .4byte gUnk_030002D0
_08098B34: .4byte 0xFFFF0000
_08098B38: .4byte 0x0000FFFF
_08098B3C: .4byte 0xDEADFACE
_08098B40:
	bl sub_080020F4
	ldr r2, _08098C20
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _08098C06
	bl sub_0800CC98
	cmp r0, #0
	bne _08098C06
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _08098C06
	ldr r0, _08098C24
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0xd4]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, sl
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, sl
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x7a
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r5, #0
	ldrsh r0, [r7, r5]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_08098C06:
	bl sub_080003F0
_08098C0A:
	ldr r0, _08098C28
	bl sub_080682B8
	cmp r0, #0
	beq _08098B40
	ldr r0, _08098C28
	bl sub_08065E38
	ldr r6, _08098C2C
	add r7, sp, #0x78
	b _08098CFA
_08098C20: .4byte gUnk_03003CE0
_08098C24: .4byte gUnk_030002D4
_08098C28: .4byte 0xDEADFACE
_08098C2C: .4byte gUnk_030002D0
_08098C30:
	bl sub_080020F4
	ldr r2, _08098D48
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _08098CF6
	bl sub_0800CC98
	cmp r0, #0
	bne _08098CF6
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _08098CF6
	ldr r0, _08098D4C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0xd4]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, sl
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, sl
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x7a
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r5, #0
	ldrsh r0, [r7, r5]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_08098CF6:
	bl sub_080003F0
_08098CFA:
	bl sub_08058DB0
	cmp r0, #0
	bne _08098C30
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _08098D48
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _08098D50
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _08098D54
	ldr r1, [r1, #0]
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r1, r1, r2
	str r0, [r1, #0]
	ldr r6, _08098D58
	add r7, sp, #0x78
	b _08098E26
	.2byte 0x0000
_08098D48: .4byte gUnk_03003CE0
_08098D4C: .4byte gUnk_030002D4
_08098D50: .4byte 0x00140032
_08098D54: .4byte gUnk_03005CF4
_08098D58: .4byte gUnk_030002D0
_08098D5C:
	bl sub_080020F4
	ldr r2, _08098EF0
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _08098E22
	bl sub_0800CC98
	cmp r0, #0
	bne _08098E22
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _08098E22
	ldr r0, _08098EF4
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0xd4]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	mov r3, sl
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, sl
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x7a
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r5, #0
	ldrsh r0, [r7, r5]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	mov r4, sl
	adds r4, #0x1c
	str r4, [sp, #4]
	mov r5, sl
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_08098E22:
	bl sub_080003F0
_08098E26:
	ldr r0, _08098EF8
	ldr r0, [r0, #0]
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	beq _08098D5C
	bl sub_080020F4
	ldr r4, _08098EF0
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	movs r0, #0xd
	bl sub_08058688
	ldr r6, _08098EFC
	ldr r0, [r6, #0]
	ldr r3, [sp, #0xd4]
	ldrh r2, [r3, #0]
	ldr r1, _08098EF4
	ldrh r3, [r1, #0]
	mov r1, sl
	bl sub_080970CC
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08098ECE
	ldr r0, [r6, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08098ECE
	ldr r0, _08098F00
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x7c]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r5, #0x1d
	str r5, [sp, #0xac]
	subs r5, #0x1e
_08098E9E:
	ldr r0, _08098EFC
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r1, [sp, #0xac]
	lsls r0, r1, #0x10
	ldr r2, _08098F04
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0xac]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _08098E9E
	ldr r0, _08098F00
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_08098ECE:
	movs r4, #0x6f
	str r4, [sp, #0xac]
	subs r4, #0x70
_08098ED4:
	bl sub_080003F0
	ldr r5, [sp, #0xac]
	lsls r0, r5, #0x10
	ldr r1, _08098F04
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0xac]
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _08098ED4
	bl sub_08067C18
	b _08098F0C
_08098EF0: .4byte gUnk_03003CE0
_08098EF4: .4byte gUnk_030002D4
_08098EF8: .4byte gUnk_03005CF4
_08098EFC: .4byte gUnk_030002D0
_08098F00: .4byte gUnk_030034E0
_08098F04: .4byte 0xFFFF0000
_08098F08:
	bl sub_080003F0
_08098F0C:
	bl sub_08067C08
	cmp r0, #0
	beq _08098F08
	bl sub_08067BF8
	bl sub_08056E24
_08098F1C:
	add sp, #0xd8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08098108
