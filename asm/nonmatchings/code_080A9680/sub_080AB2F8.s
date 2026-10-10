	thumb_func_start sub_080AB2F8
sub_080AB2F8: @ 0x080AB2F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd0
	mov sl, r0
	ldr r5, _080AB378
	str r0, [r5, #0]
	movs r0, #0x81
	lsls r0, r0, #2
	add r0, sl
	str r0, [sp, #0x7c]
	ldr r1, _080AB37C
	mov r0, sl
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0x7c]
	bl sub_08019F60
	ldr r0, [r5, #0]
	bl sub_0801A0A4
	ldr r4, _080AB380
	movs r0, #0xb6
	lsls r0, r0, #2
	add r0, sl
	ldrh r0, [r0, #0]
	ldr r1, _080AB384
	add r1, sl
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080AB388
	cmp r1, r0
	bne _080AB39C
	adds r4, r5, #0
	ldr r5, _080AB38C
	adds r6, r1, #0
_080AB34E:
	ldr r0, [r4, #0]
	movs r1, #0xb
	strh r1, [r0, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _080AB364
	bl sub_08056E90
	cmp r0, #0
	beq _080AB390
_080AB364:
	ldr r0, [r4, #0]
	movs r1, #1
	ldrh r0, [r0, #0]
	lsls r1, r0
	ldr r0, [r5, #0]
	bics r0, r1
	str r0, [r5, #0]
	bl _080AC1E8
	.2byte 0x0000
_080AB378: .4byte gUnk_03000434
_080AB37C: .4byte gUnk_084A3E40
_080AB380: .4byte gUnk_03000438
_080AB384: .4byte 0x000002DA
_080AB388: .4byte 0x0000FFFF
_080AB38C: .4byte gUnk_030056FC
_080AB390:
	bl sub_080003F0
	ldr r0, _080AB43C
	ldrh r0, [r0, #0]
	cmp r0, r6
	beq _080AB34E
_080AB39C:
	ldr r1, _080AB440
	ldr r5, _080AB43C
	ldrh r2, [r5, #0]
	movs r6, #1
	negs r6, r6
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x10
	adds r3, r6, #0
	bl sub_08065158
	add r1, sp, #0x44
	mov r8, r1
	ldr r1, _080AB444
	ldrh r2, [r5, #0]
	str r4, [sp, #0]
	mov r0, r8
	adds r3, r6, #0
	bl sub_08065158
	ldr r0, _080AB448
	ldr r3, [r0, #0]
	ldr r2, [sp, #0x7c]
	movs r4, #6
	ldrsh r0, [r2, r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r2, #0xeb
	lsls r2, r2, #1
	adds r0, r3, r2
	movs r2, #0
	strh r1, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x5c
	strh r1, [r0, #0]
	ldr r4, [sp, #0x7c]
	movs r1, #4
	ldrsh r0, [r4, r1]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r4, #0xea
	lsls r4, r4, #1
	adds r1, r3, r4
	strh r0, [r1, #0]
	adds r1, r3, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	adds r0, r3, #0
	adds r0, #0x6c
	strh r2, [r0, #0]
	subs r0, #2
	strh r2, [r0, #0]
	subs r0, #2
	strh r2, [r0, #0]
	strh r2, [r3, #0xc]
	movs r0, #0
	str r0, [sp, #0x90]
	ldr r1, _080AB44C
	str r1, [sp, #0x94]
	str r2, [sp, #0x9c]
	movs r3, #0
	str r3, [sp, #0xa0]
	movs r4, #0
	str r4, [sp, #0xc4]
	str r0, [sp, #0xbc]
	movs r1, #0
	str r1, [sp, #0xc0]
	str r2, [sp, #0xa8]
	bl sub_0800CE30
	cmp r0, #1
	bne _080AB450
	movs r3, #0x80
	lsls r3, r3, #1
	str r3, [sp, #0x8c]
	movs r4, #0x78
	str r4, [sp, #0xa4]
	b _080AB458
_080AB43C: .4byte gUnk_03000438
_080AB440: .4byte 0x0005001D
_080AB444: .4byte 0x0005001E
_080AB448: .4byte gUnk_03000434
_080AB44C: .4byte 0x0000FFFF
_080AB450:
	movs r0, #0x80
	str r0, [sp, #0x8c]
	movs r1, #0xb4
	str r1, [sp, #0xa4]
_080AB458:
	ldr r1, _080AB4C0
	ldr r0, [r1, #0]
	ldr r2, _080AB4C4
	adds r0, r0, r2
	movs r2, #2
	strb r2, [r0, #0]
	ldr r0, [r1, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r0, r3
	strb r2, [r0, #0]
	ldr r1, [r1, #0]
	movs r0, #1
	str r0, [r1, #0x50]
	movs r1, #0
	movs r7, #0xa6
	lsls r7, r7, #1
	ldr r6, _080AB4C8
	movs r5, #0
_080AB47E:
	movs r2, #0
	lsls r4, r1, #0x10
	asrs r0, r4, #0x10
	adds r3, r0, #0
	muls r3, r7, r3
_080AB488:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r3
	adds r0, r0, r6
	str r5, [r0, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _080AB488
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080AB47E
	bl sub_08097FE4
	bl sub_08097A4C
	movs r2, #0
	str r2, [sp, #0xc8]
	bl sub_08067C18
	b _080AB4D0
_080AB4C0: .4byte gUnk_03000434
_080AB4C4: .4byte 0x000001FD
_080AB4C8: .4byte gUnk_03003DC4
_080AB4CC:
	bl sub_080003F0
_080AB4D0:
	bl sub_08067C08
	cmp r0, #0
	beq _080AB4CC
	bl sub_08067BF8
	b _080ABB9C
_080AB4DE:
	mov r3, sl
	ldrh r0, [r3, #0xc]
	cmp r0, #0xa
	bne _080AB4F0
	ldr r4, [sp, #0x9c]
	cmp r4, #0
	bne _080AB4F0
	movs r0, #8
	str r0, [sp, #0x9c]
_080AB4F0:
	bl sub_08058DB0
	cmp r0, #0
	beq _080AB4FA
	b _080AB8D4
_080AB4FA:
	ldr r4, _080AB51C
	ldr r0, [r4, #0]
	bl sub_0801C8F0
	ldr r0, [r4, #0]
	ldr r1, _080AB520
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #7
	bls _080AB512
	b _080AB8D4
_080AB512:
	lsls r0, r0, #2
	ldr r1, _080AB524
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080AB51C: .4byte gUnk_03000434
_080AB520: .4byte 0x000001FD
_080AB524: .4byte _080AB528
_080AB528:
	.4byte _080AB548
_080AB52C: .4byte _080AB578
_080AB530: .4byte _080AB5AC
_080AB534: .4byte _080AB674
_080AB538: .4byte _080AB71C
_080AB53C: .4byte _080AB7D0
_080AB540: .4byte _080AB820
_080AB544: .4byte _080AB894
_080AB548:
	movs r0, #0
	mov r2, sl
	strh r0, [r2, #0xc]
	bl sub_08067C08
	cmp r0, #0
	bne _080AB558
	b _080AB8D4
_080AB558:
	ldr r0, _080AB570
	ldr r1, [r0, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r1, r3
	ldrb r0, [r0, #0]
	ldr r4, _080AB574
	adds r1, r1, r4
	strb r0, [r1, #0]
	bl sub_08067BF8
	b _080AB8D4
_080AB570: .4byte gUnk_03000434
_080AB574: .4byte 0x000001FD
_080AB578:
	movs r0, #0
	str r0, [sp, #0x90]
	bl sub_08056F78
	cmp r0, #0
	bne _080AB586
	b _080AB8D4
_080AB586:
	ldr r2, _080AB5A4
	ldr r0, [r2, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #3
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldr r2, _080AB5A8
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	b _080AB8D4
_080AB5A4: .4byte gUnk_03000434
_080AB5A8: .4byte 0x000001FD
_080AB5AC:
	movs r3, #1
	str r3, [sp, #0x90]
	ldr r5, _080AB614
	ldr r0, [r5, #0]
	movs r6, #1
	strh r3, [r0, #0xc]
	movs r0, #0
	bl sub_08096594
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080AB618
	adds r4, r1, r0
	ldr r0, [r5, #0]
	adds r1, r4, #0
	ldr r2, [sp, #0x8c]
	movs r3, #0x40
	bl sub_08097A74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AB644
	ldr r1, [sp, #0xa8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa8]
	ldr r0, [sp, #0xa4]
	cmp r0, r1
	blo _080AB5EC
	b _080AB8D4
_080AB5EC:
	movs r1, #0
	str r1, [sp, #0xa8]
	ldr r2, [sp, #0xc0]
	cmp r2, #0
	beq _080AB620
	movs r3, #0
	str r3, [sp, #0xb0]
	movs r0, #0xb9
	bl sub_0805865C
	ldr r0, [r5, #0]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r0, r0, r4
	movs r1, #4
	strb r1, [r0, #0]
	ldr r0, [r5, #0]
	ldr r1, _080AB61C
	adds r0, r0, r1
	b _080AB660
_080AB614: .4byte gUnk_03000434
_080AB618: .4byte gUnk_03003CE0
_080AB61C: .4byte 0x000001FD
_080AB620:
	movs r2, #0
	str r2, [sp, #0xb0]
	movs r0, #0xb9
	bl sub_0805865C
	ldr r0, [r5, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #6
	strb r1, [r0, #0]
	ldr r0, [r5, #0]
	ldr r4, _080AB640
	adds r0, r0, r4
	b _080AB660
	.2byte 0x0000
_080AB640: .4byte 0x000001FD
_080AB644:
	movs r0, #0
	str r0, [sp, #0xb0]
	movs r0, #0xb9
	bl sub_0805865C
	ldr r0, [r5, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #6
	strb r1, [r0, #0]
	ldr r0, [r5, #0]
	ldr r2, _080AB670
	adds r0, r0, r2
_080AB660:
	strb r6, [r0, #0]
	bl sub_08067C18
	movs r0, #0
	bl sub_08097A38
	b _080AB8D4
	.2byte 0x0000
_080AB670: .4byte 0x000001FD
_080AB674:
	movs r3, #2
	str r3, [sp, #0x90]
	ldr r5, _080AB710
	ldr r0, [r5, #0]
	strh r3, [r0, #0xc]
	movs r0, #0
	bl sub_08096594
	ldr r3, [r5, #0]
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r3, r3, r4
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	ldr r0, [r5, #0]
	adds r4, r0, r4
	ldrb r1, [r4, #0]
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x1c
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r3, r2, r3
	ldr r2, _080AB714
	adds r4, r3, r2
	lsrs r1, r1, #0x1c
	bl sub_08095F10
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #0x80]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x84]
	ldr r0, [r5, #0]
	ldrh r1, [r0, #8]
	adds r0, #0x68
	strh r1, [r0, #0]
	movs r2, #0
	str r2, [sp, #0x98]
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0x1e
	bhi _080AB6E4
	b _080AB8D4
_080AB6E4:
	movs r3, #0
	str r3, [sp, #0xb0]
	movs r0, #0
	bl sub_08097A38
	ldr r0, [r5, #0]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r0, r0, r4
	movs r1, #5
	strb r1, [r0, #0]
	ldr r0, [r5, #0]
	ldr r1, _080AB718
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	movs r0, #0xba
	bl sub_0805865C
	b _080AB8D4
_080AB710: .4byte gUnk_03000434
_080AB714: .4byte gUnk_03003CE0
_080AB718: .4byte 0x000001FD
_080AB71C:
	movs r2, #2
	str r2, [sp, #0x90]
	ldr r4, _080AB760
	ldr r2, [r4, #0]
	add r3, sp, #0x90
	ldrh r3, [r3, #0]
	strh r3, [r2, #0xc]
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0xb4
	bls _080AB768
	movs r0, #0
	str r0, [sp, #0xc4]
	movs r1, #0
	str r1, [sp, #0xb0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r2, r3
	movs r0, #8
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r4, _080AB764
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	movs r0, #0
	str r0, [sp, #0xac]
	b _080AB7B6
	.2byte 0x0000
_080AB760: .4byte gUnk_03000434
_080AB764: .4byte 0x000001FD
_080AB768:
	ldr r1, [sp, #0xc4]
	cmp r1, #0
	bne _080AB778
	bl sub_080AC5B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc4]
_080AB778:
	ldr r0, [r4, #0]
	movs r3, #0x90
	lsls r3, r3, #3
	movs r5, #8
	str r5, [sp, #0]
	movs r6, #1
	str r6, [sp, #4]
	ldr r1, [sp, #0x80]
	ldr r2, [sp, #0x84]
	bl sub_08097AC0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AB7B6
	movs r2, #0
	str r2, [sp, #0xc4]
	movs r3, #0
	str r3, [sp, #0xb0]
	ldr r0, [r4, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r5, [r0, #0]
	ldr r0, [r4, #0]
	ldr r2, _080AB7C8
	adds r0, r0, r2
	strb r6, [r0, #0]
	bl sub_08067C18
	movs r3, #0
	str r3, [sp, #0xac]
_080AB7B6:
	ldr r0, _080AB7CC
	ldr r0, [r0, #0]
	ldrh r1, [r0, #8]
	adds r0, #0x68
	strh r1, [r0, #0]
	movs r4, #0
	str r4, [sp, #0x98]
	b _080AB8D4
	.2byte 0x0000
_080AB7C8: .4byte 0x000001FD
_080AB7CC: .4byte gUnk_03000434
_080AB7D0:
	movs r0, #2
	str r0, [sp, #0x90]
	ldr r3, _080AB818
	ldr r2, [r3, #0]
	strh r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x68
	movs r0, #9
	strh r0, [r1, #0]
	movs r4, #0
	str r4, [sp, #0x98]
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0x28
	bls _080AB8D4
	movs r0, #0
	str r0, [sp, #0xb0]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r0, #7
	strb r0, [r1, #0]
	ldr r0, [r3, #0]
	ldr r1, _080AB81C
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	movs r0, #0xc2
	bl sub_0805865C
	b _080AB8D4
_080AB818: .4byte gUnk_03000434
_080AB81C: .4byte 0x000001FD
_080AB820:
	movs r2, #2
	str r2, [sp, #0x90]
	ldr r4, _080AB88C
	ldr r1, [r4, #0]
	strh r2, [r1, #0xc]
	adds r1, #0x68
	movs r0, #0xa
	strh r0, [r1, #0]
	movs r0, #1
	str r0, [sp, #0x98]
	ldr r0, [sp, #0xc4]
	bl sub_080AC214
	ldr r0, [sp, #0xc4]
	bl sub_080AC2E8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc4]
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	cmp r1, #0xb4
	bls _080AB8D4
	movs r1, #0
	str r1, [sp, #0xc4]
	movs r2, #0
	str r2, [sp, #0xb0]
	ldr r1, [r4, #0]
	adds r2, r1, #0
	adds r2, #0x68
	movs r0, #0xb
	strh r0, [r2, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #8
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r4, _080AB890
	adds r0, r0, r4
	add r1, sp, #0x98
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	bl sub_08067C18
	movs r2, #0
	str r2, [sp, #0xac]
	movs r0, #0xc2
	bl sub_0805867C
	b _080AB8D4
_080AB88C: .4byte gUnk_03000434
_080AB890: .4byte 0x000001FD
_080AB894:
	movs r3, #0
	str r3, [sp, #0x90]
	ldr r3, _080AB8E4
	ldr r2, [r3, #0]
	add r4, sp, #0x90
	ldrh r4, [r4, #0]
	strh r4, [r2, #0xc]
	ldr r1, [sp, #0xac]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
	movs r0, #0x78
	cmp r0, r1
	bhs _080AB8D4
	ldr r0, [sp, #0xc0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc0]
	ldr r4, _080AB8E8
	adds r1, r2, r4
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [r3, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #3
	strb r1, [r0, #0]
	bl sub_08067C18
_080AB8D4:
	ldr r2, [sp, #0x90]
	cmp r2, #1
	beq _080AB910
	cmp r2, #1
	bgt _080AB8EC
	cmp r2, #0
	beq _080AB8F4
	b _080AB938
_080AB8E4: .4byte gUnk_03000434
_080AB8E8: .4byte 0x000001FD
_080AB8EC:
	ldr r3, [sp, #0x90]
	cmp r3, #2
	beq _080AB930
	b _080AB938
_080AB8F4:
	add r4, sp, #0x10
	mov r9, r4
	ldr r0, _080AB90C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #8]
	adds r0, #0x68
	strh r1, [r0, #0]
	movs r0, #1
	str r0, [sp, #0x98]
	movs r1, #0x18
	b _080AB936
	.2byte 0x0000
_080AB90C: .4byte gUnk_03000434
_080AB910:
	add r2, sp, #0x10
	mov r9, r2
	ldr r0, _080AB92C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #8]
	adds r0, #8
	adds r1, #0x68
	strh r0, [r1, #0]
	movs r3, #1
	str r3, [sp, #0x98]
	movs r4, #0x18
	str r4, [sp, #0xb4]
	b _080AB938
	.2byte 0x0000
_080AB92C: .4byte gUnk_03000434
_080AB930:
	add r0, sp, #0x44
	mov r9, r0
	movs r1, #8
_080AB936:
	str r1, [sp, #0xb4]
_080AB938:
	ldr r4, _080AB974
	ldr r2, [r4, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r3, [sp, #0x94]
	ldrh r1, [r0, #0]
	cmp r3, r1
	beq _080AB958
	ldrh r0, [r0, #0]
	str r0, [sp, #0x94]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_080AB958:
	ldr r0, _080AB978
	ldrh r0, [r0, #0]
	mov r2, r9
	strb r0, [r2, #0x1c]
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080AB97C
	bl sub_08097FF8
	b _080AB98C
	.2byte 0x0000
_080AB974: .4byte gUnk_03000434
_080AB978: .4byte gUnk_03000438
_080AB97C:
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080AB98C:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AB9B8
	ldr r4, _080ABA7C
	ldr r3, [r4, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	ldr r0, [sp, #0x98]
	str r0, [sp, #0]
	mov r0, r9
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080AB9B8:
	ldr r4, _080ABA7C
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r6, sp, #0x78
	movs r2, #0x7a
	add r2, sp
	mov r8, r2
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r6, #0
	mov r3, r8
	bl sub_0800BC08
	ldr r0, _080ABA80
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x7c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, r9
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r0, [sp, #0x9c]
	cmp r0, #0
	beq _080ABA84
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x9c]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080ABB02
	bl sub_0800CCCC
	cmp r0, #0
	bne _080ABB02
	bl sub_0800CC98
	cmp r0, #0
	bne _080ABB02
	bl sub_0800CD34
	cmp r0, #0
	bne _080ABB02
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r3, [sp, #0xcc]
	str r7, [sp, #0]
	mov r5, r9
	adds r5, #0x1c
	str r5, [sp, #4]
	mov r4, r9
	ldr r4, [r4, #8]
	str r4, [sp, #8]
	mov r3, r9
	ldr r3, [r3, #0]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0xcc]
	bl sub_08007870
	movs r4, #0
	ldrsh r0, [r6, r4]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r1, #1
	str r7, [sp, #0]
	str r5, [sp, #4]
	mov r4, r9
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4, #0]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xb4]
	movs r3, #0
	bl sub_08007870
	b _080ABB02
_080ABA7C: .4byte gUnk_03000434
_080ABA80: .4byte gUnk_03000438
_080ABA84:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080ABB02
	bl sub_0800CC98
	cmp r0, #0
	bne _080ABB02
	bl sub_0800CD34
	cmp r0, #0
	bne _080ABB02
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r3, [sp, #0xcc]
	str r7, [sp, #0]
	mov r5, r9
	adds r5, #0x1c
	str r5, [sp, #4]
	mov r4, r9
	ldr r4, [r4, #8]
	str r4, [sp, #8]
	mov r3, r9
	ldr r3, [r3, #0]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0xcc]
	bl sub_08007870
	ldr r1, [sp, #0xbc]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xbc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080ABB02
	movs r4, #0
	ldrsh r0, [r6, r4]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r1, #1
	str r7, [sp, #0]
	str r5, [sp, #4]
	mov r4, r9
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4, #0]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0xb4]
	movs r3, #0
	bl sub_08007870
_080ABB02:
	ldr r0, _080ABB70
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _080ABB20
	ldr r1, [sp, #0x88]
	cmp r1, r0
	beq _080ABB20
	mov r2, sl
	ldr r2, [r2, #0x4c]
	str r2, [sp, #0x88]
	movs r3, #0xa
	str r3, [sp, #0xa0]
	movs r4, #0
	str r4, [sp, #0xb8]
_080ABB20:
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	beq _080ABB78
	bl sub_0800CC98
	cmp r0, #0
	bne _080ABB4C
	bl sub_0800CCCC
	cmp r0, #0
	bne _080ABB4C
	bl sub_0800CD34
	cmp r0, #0
	bne _080ABB4C
	ldr r1, [sp, #0xb8]
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	ldr r1, [sp, #0x88]
	bl sub_0801A120
_080ABB4C:
	movs r0, #2
	ldr r2, [sp, #0xa0]
	ands r0, r2
	cmp r0, #0
	beq _080ABB62
	ldr r3, [sp, #0xb8]
	lsls r0, r3, #0x10
	ldr r4, _080ABB74
	adds r0, r0, r4
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb8]
_080ABB62:
	ldr r0, [sp, #0xa0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	b _080ABB82
	.2byte 0x0000
_080ABB70: .4byte gUnk_03000434
_080ABB74: .4byte 0xFFFF0000
_080ABB78:
	movs r0, #0
	str r0, [sp, #0x88]
	ldr r1, [sp, #0xa0]
	mov r2, sl
	str r1, [r2, #0x4c]
_080ABB82:
	mov r0, sl
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080ABB92
	movs r3, #1
	str r3, [sp, #0xc8]
_080ABB92:
	bl sub_080003F0
	ldr r4, [sp, #0xc8]
	cmp r4, #0
	bne _080ABBAE
_080ABB9C:
	bl sub_0800CB78
	cmp r0, #0
	bne _080ABBAE
	bl sub_08056E90
	cmp r0, #0
	bne _080ABBAE
	b _080AB4DE
_080ABBAE:
	movs r0, #0xc2
	bl sub_0805867C
	bl sub_080020F4
	ldr r1, _080ABD14
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	add r0, sp, #0x10
	mov r9, r0
	ldr r0, _080ABD18
	ldrh r0, [r0, #0]
	movs r1, #0
	mov r2, r9
	strb r0, [r2, #0x1c]
	ldr r2, _080ABD1C
	ldr r4, [r2, #0]
	adds r0, r4, #0
	adds r0, #0x6c
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	movs r3, #0
	str r3, [sp, #0xb8]
	movs r4, #0xa
	str r4, [sp, #0xa0]
	mov r8, r2
_080ABBF6:
	bl sub_080020F4
	ldr r2, _080ABD14
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r2, #1
	orrs r0, r2
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080ABCC8
	bl sub_0800CC98
	cmp r0, #0
	bne _080ABCC8
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	bne _080ABCC8
	mov r4, r8
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r0, #1
	str r0, [sp, #0]
	mov r0, r9
	movs r1, #0
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r0, _080ABD18
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x7c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, r9
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, [r4, #0]
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
	mov r3, r8
	ldr r2, [r3, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	str r7, [sp, #0]
	mov r2, r9
	adds r2, #0x1c
	str r2, [sp, #4]
	mov r4, r9
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4, #0]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
	ldr r0, [sp, #0xb8]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	mov r0, sl
	ldr r1, [sp, #0x88]
	bl sub_0801A120
_080ABCC8:
	movs r0, #2
	ldr r1, [sp, #0xa0]
	ands r0, r1
	cmp r0, #0
	beq _080ABCDE
	ldr r2, [sp, #0xb8]
	lsls r0, r2, #0x10
	ldr r3, _080ABD20
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb8]
_080ABCDE:
	bl sub_080003F0
	ldr r0, [sp, #0xa0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	ldr r0, _080ABD24
	ldr r4, [sp, #0xa0]
	cmp r4, r0
	bne _080ABBF6
	bl sub_080683CC
	ldr r0, _080ABD1C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r0, _080ABD28
	bl sub_08068330
	add r0, sp, #0x78
	mov r8, r0
	ldr r1, _080ABD2C
	mov sl, r1
	b _080ABDF0
	.2byte 0x0000
_080ABD14: .4byte gUnk_03003CE0
_080ABD18: .4byte gUnk_03000438
_080ABD1C: .4byte gUnk_03000434
_080ABD20: .4byte 0xFFFF0000
_080ABD24: .4byte 0x0000FFFF
_080ABD28: .4byte 0xDEADFACE
_080ABD2C: .4byte gUnk_03003D10
_080ABD30:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	add r1, sl
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	ldr r6, _080ABE0C
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, r9
	movs r1, #0
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080ABDEC
	bl sub_0800CC98
	cmp r0, #0
	bne _080ABDEC
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080ABDEC
	ldr r0, _080ABE10
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x7c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, r9
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
	lsrs r7, r0, #0x18
	ldr r1, [r6, #0]
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
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r2, [r6, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	str r7, [sp, #0]
	mov r2, r9
	adds r2, #0x1c
	str r2, [sp, #4]
	mov r4, r9
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4, #0]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
_080ABDEC:
	bl sub_080003F0
_080ABDF0:
	ldr r0, _080ABE14
	bl sub_080682B8
	cmp r0, #0
	beq _080ABD30
	ldr r0, _080ABE14
	bl sub_08065E38
	ldr r0, _080ABE18
	mov sl, r0
	add r1, sp, #0x78
	mov r8, r1
	b _080ABEDC
	.2byte 0x0000
_080ABE0C: .4byte gUnk_03000434
_080ABE10: .4byte gUnk_03000438
_080ABE14: .4byte 0xDEADFACE
_080ABE18: .4byte gUnk_03003D10
_080ABE1C:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	add r1, sl
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	ldr r6, _080ABF38
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, r9
	movs r1, #0
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080ABED8
	bl sub_0800CC98
	cmp r0, #0
	bne _080ABED8
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080ABED8
	ldr r0, _080ABF3C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x7c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, r9
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
	lsrs r7, r0, #0x18
	ldr r1, [r6, #0]
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
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r2, [r6, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	str r7, [sp, #0]
	mov r2, r9
	adds r2, #0x1c
	str r2, [sp, #4]
	mov r4, r9
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4, #0]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
_080ABED8:
	bl sub_080003F0
_080ABEDC:
	bl sub_08058DB0
	cmp r0, #0
	bne _080ABE1C
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _080ABF40
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	movs r0, #6
	bl sub_08057C34
	cmp r0, #0
	beq _080ABF4C
	movs r0, #0x16
	bl sub_08057C34
	cmp r0, #0
	bne _080ABF4C
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080ABF44
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080ABF48
	ldr r1, [r1, #0]
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r1, r1, r2
	b _080ABF6A
	.2byte 0x0000
_080ABF38: .4byte gUnk_03000434
_080ABF3C: .4byte gUnk_03000438
_080ABF40: .4byte gUnk_03003CE0
_080ABF44: .4byte 0x00140060
_080ABF48: .4byte gUnk_03005CF4
_080ABF4C:
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080ABF74
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080ABF78
	ldr r1, [r1, #0]
	movs r3, #0xe4
	lsls r3, r3, #3
	adds r1, r1, r3
_080ABF6A:
	str r0, [r1, #0]
	ldr r6, _080ABF7C
	add r4, sp, #0x78
	mov r8, r4
	b _080AC04A
_080ABF74: .4byte 0x00140058
_080ABF78: .4byte gUnk_03005CF4
_080ABF7C: .4byte gUnk_03000434
_080ABF80:
	bl sub_080020F4
	ldr r2, _080AC1F8
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CD8C
	cmp r0, #0
	bne _080ABFB8
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	mov r0, r9
	movs r1, #0
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080ABFB8:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AC046
	bl sub_0800CC98
	cmp r0, #0
	bne _080AC046
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080AC046
	ldr r0, _080AC1FC
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x7c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, r9
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
	lsrs r7, r0, #0x18
	ldr r1, [r6, #0]
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
	mov r2, r8
	adds r3, r4, #0
	bl sub_0800BC08
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r2, [r6, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	str r7, [sp, #0]
	mov r2, r9
	adds r2, #0x1c
	str r2, [sp, #4]
	mov r4, r9
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4, #0]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
_080AC046:
	bl sub_080003F0
_080AC04A:
	ldr r0, _080AC200
	ldr r0, [r0, #0]
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	beq _080ABF80
	bl sub_080020F4
	ldr r1, _080AC1F8
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	movs r0, #6
	bl sub_08057C34
	cmp r0, #0
	beq _080AC098
	movs r0, #0x16
	bl sub_08057C34
	cmp r0, #0
	bne _080AC098
	movs r0, #0x16
	bl sub_08057C6C
	movs r0, #0x32
	bl m4aSongNumStart
_080AC098:
	movs r2, #0x14
	str r2, [sp, #0x9c]
	ldr r3, _080AC204
	mov sl, r3
_080AC0A0:
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AC0C4
	mov r4, sl
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r0, #1
	str r0, [sp, #0]
	mov r0, r9
	movs r1, #0
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080AC0C4:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AC162
	bl sub_0800CC98
	cmp r0, #0
	bne _080AC162
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	bne _080AC162
	ldr r0, _080AC1FC
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x7c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, r9
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r4, _080AC204
	mov r8, r4
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, [r4, #0]
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
	movs r0, #1
	ldr r1, [sp, #0x9c]
	ands r0, r1
	cmp r0, #0
	beq _080AC162
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r4, r8
	ldr r2, [r4, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	str r7, [sp, #0]
	mov r2, r9
	adds r2, #0x1c
	str r2, [sp, #4]
	mov r4, r9
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [r4, #0]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
_080AC162:
	bl sub_080003F0
	ldr r0, [sp, #0x9c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	ldr r0, _080AC208
	ldr r1, [sp, #0x9c]
	cmp r1, r0
	bne _080AC0A0
	bl sub_080020F4
	ldr r1, _080AC1F8
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080AC1E4
	ldr r0, _080AC204
	ldr r0, [r0, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080AC1E4
	ldr r0, _080AC20C
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x7c]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r2, #0x1d
	str r2, [sp, #0xb8]
	movs r5, #1
	negs r5, r5
_080AC1B4:
	ldr r0, _080AC204
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r3, [sp, #0xb8]
	lsls r0, r3, #0x10
	ldr r1, _080AC210
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0xb8]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080AC1B4
	ldr r0, _080AC20C
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080AC1E4:
	bl sub_08056E24
_080AC1E8:
	add sp, #0xd0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080AC1F8: .4byte gUnk_03003CE0
_080AC1FC: .4byte gUnk_03000438
_080AC200: .4byte gUnk_03005CF4
_080AC204: .4byte gUnk_03000434
_080AC208: .4byte 0x0000FFFF
_080AC20C: .4byte gUnk_030034E0
_080AC210: .4byte 0xFFFF0000
	thumb_func_end sub_080AB2F8
