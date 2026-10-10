	thumb_func_start sub_080B0FC4
sub_080B0FC4: @ 0x080B0FC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x110
	adds r7, r0, #0
	ldr r0, _080B1038
	str r7, [r0, #0]
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0xc4]
	ldr r1, _080B103C
	adds r0, r7, #0
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0xc4]
	bl sub_08019F60
	adds r0, r7, #0
	bl sub_0801A0A4
	ldr r4, _080B1040
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0, #0]
	movs r1, #0
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080B1044
	cmp r1, r0
	bne _080B1058
	ldr r4, _080B1048
	adds r5, r1, #0
_080B1014:
	movs r0, #0xb
	strh r0, [r7, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _080B1028
	bl sub_08056E90
	cmp r0, #0
	beq _080B104C
_080B1028:
	movs r1, #1
	ldrh r7, [r7, #0]
	lsls r1, r7
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	bl _080B1FC4
_080B1038: .4byte gUnk_030007A0
_080B103C: .4byte gUnk_084AA580
_080B1040: .4byte gUnk_030007A4
_080B1044: .4byte 0x0000FFFF
_080B1048: .4byte gUnk_030056FC
_080B104C:
	bl sub_080003F0
	ldr r0, _080B11CC
	ldrh r0, [r0, #0]
	cmp r0, r5
	beq _080B1014
_080B1058:
	ldr r1, _080B11D0
	ldr r4, _080B11CC
	ldrh r2, [r4, #0]
	movs r5, #1
	negs r5, r5
	movs r6, #0
	str r6, [sp, #0]
	add r0, sp, #0x18
	adds r3, r5, #0
	bl sub_08065158
	add r2, sp, #0x4c
	mov r9, r2
	ldr r1, _080B11D4
	ldrh r2, [r4, #0]
	str r6, [sp, #0]
	mov r0, r9
	adds r3, r5, #0
	bl sub_08065158
	add r3, sp, #0x80
	mov r8, r3
	ldr r1, _080B11D8
	ldrh r2, [r4, #0]
	str r6, [sp, #0]
	mov r0, r8
	adds r3, r5, #0
	bl sub_08065158
	ldr r4, [sp, #0xc4]
	movs r5, #6
	ldrsh r0, [r4, r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r2, #0xeb
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r4, #0
	strh r1, [r0, #0]
	adds r0, r7, #0
	adds r0, #0x5c
	strh r1, [r0, #0]
	ldr r3, [sp, #0xc4]
	movs r5, #4
	ldrsh r0, [r3, r5]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r2, #2
	adds r1, r7, r2
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	strh r6, [r7, #0xc]
	movs r3, #0
	str r3, [sp, #0xd0]
	ldr r5, _080B11DC
	str r5, [sp, #0xd4]
	movs r0, #0
	str r0, [sp, #0xdc]
	movs r1, #0
	str r1, [sp, #0xe0]
	adds r2, #0x29
	adds r0, r7, r2
	movs r1, #3
	strb r1, [r0, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r7, r3
	strb r1, [r0, #0]
	movs r1, #0xb3
	ldr r5, [sp, #0xc4]
	strh r1, [r5, #0x28]
	movs r0, #0xb0
	lsls r0, r0, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	str r0, [sp, #0xcc]
	movs r0, #2
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	adds r0, #0x27
	strb r4, [r0, #0]
	movs r0, #1
	str r0, [r7, #0x50]
	movs r1, #0
	adds r0, r7, #0
	adds r0, #0x6c
	str r0, [sp, #0x10c]
	adds r2, r7, #0
	adds r2, #0x6a
	str r2, [sp, #0x108]
	adds r3, r7, #0
	adds r3, #0x68
	str r3, [sp, #0x104]
	movs r4, #0xa6
	lsls r4, r4, #1
	mov r8, r4
	ldr r6, _080B11E0
	movs r5, #0
_080B112A:
	movs r2, #0
	lsls r4, r1, #0x10
	asrs r0, r4, #0x10
	mov r3, r8
	muls r3, r0, r3
_080B1134:
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
	ble _080B1134
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080B112A
	movs r0, #0
	ldr r2, [sp, #0x10c]
	strh r0, [r2, #0]
	ldr r3, [sp, #0x108]
	strh r0, [r3, #0]
	ldr r4, [sp, #0x104]
	strh r0, [r4, #0]
	movs r5, #0
	str r5, [sp, #0xfc]
	str r0, [sp, #0xf4]
	movs r1, #0
	str r1, [sp, #0xec]
	movs r2, #0
	str r2, [sp, #0xf8]
	movs r3, #0
	str r3, [sp, #0xf0]
	movs r4, #0
	str r4, [sp, #0xe4]
	bl sub_08098044
	bl sub_080B2330
	ldr r0, _080B11E4
	ldr r0, [r0, #0]
	ldr r5, [r0, #0x14]
	str r5, [sp, #0xb8]
	ldr r0, [r0, #0x18]
	str r0, [sp, #0xbc]
	bl sub_08097FE4
	bl sub_08097A4C
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
	ldr r2, _080B11E8
	adds r0, r7, r2
	strh r1, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1, #0]
	str r4, [sp, #0x100]
	bl sub_08067C18
	b _080B11F0
_080B11CC: .4byte gUnk_030007A4
_080B11D0: .4byte 0x00050089
_080B11D4: .4byte 0x00050087
_080B11D8: .4byte 0x00050088
_080B11DC: .4byte 0x0000FFFF
_080B11E0: .4byte gUnk_03003DC4
_080B11E4: .4byte gUnk_030007A0
_080B11E8: .4byte 0x00000202
_080B11EC:
	bl sub_080003F0
_080B11F0:
	bl sub_08067C08
	cmp r0, #0
	beq _080B11EC
	bl sub_08067BF8
	bl sub_0806849C
	bl _080B1A20
_080B1204:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _080B1214
	ldr r5, [sp, #0xdc]
	cmp r5, #0
	bne _080B1214
	movs r0, #8
	str r0, [sp, #0xdc]
_080B1214:
	bl sub_08058DB0
	add r5, sp, #0xb4
	mov r4, sp
	adds r4, #0xb6
	cmp r0, #0
	beq _080B1224
	b _080B17B4
_080B1224:
	ldr r0, _080B1244
	ldr r0, [r0, #0]
	bl sub_0801C8F0
	ldr r1, _080B1248
	adds r0, r7, r1
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #0xc
	bls _080B123A
	b _080B17B4
_080B123A:
	lsls r0, r0, #2
	ldr r1, _080B124C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080B1244: .4byte gUnk_030007A0
_080B1248: .4byte 0x000001FD
_080B124C: .4byte _080B1250
_080B1250:
	.4byte _080B1284
_080B1254: .4byte _080B12B0
_080B1258: .4byte _080B12EC
_080B125C: .4byte _080B130A
_080B1260: .4byte _080B13FC
_080B1264: .4byte _080B1464
_080B1268: .4byte _080B14D4
_080B126C: .4byte _080B1530
_080B1270: .4byte _080B15EC
_080B1274: .4byte _080B1620
_080B1278: .4byte _080B1644
_080B127C: .4byte _080B16B6
_080B1280: .4byte _080B177C
_080B1284:
	movs r0, #0
	strh r0, [r7, #0xc]
	bl sub_08067C08
	add r5, sp, #0xb4
	mov r4, sp
	adds r4, #0xb6
	cmp r0, #0
	bne _080B1298
	b _080B17B4
_080B1298:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	ldrb r1, [r0, #0]
	ldr r3, _080B12AC
	adds r0, r7, r3
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _080B17B4
_080B12AC: .4byte 0x000001FD
_080B12B0:
	movs r0, #0
	strh r0, [r7, #0xc]
	bl sub_08068490
	adds r1, r0, #0
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r7, r4
	strb r1, [r2, #0]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	add r5, sp, #0xb4
	mov r4, sp
	adds r4, #0xb6
	cmp r0, #0xff
	bne _080B12D2
	b _080B17B4
_080B12D2:
	ldr r0, _080B12E8
	strb r1, [r0, #0]
	movs r0, #0xff
	orrs r1, r0
	strb r1, [r2, #0]
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #9
	b _080B15D8
	.2byte 0x0000
_080B12E8: .4byte gUnk_0300079C
_080B12EC:
	movs r3, #0
	str r3, [sp, #0xd0]
	bl sub_08056F78
	add r5, sp, #0xb4
	mov r4, sp
	adds r4, #0xb6
	cmp r0, #0
	bne _080B1300
	b _080B17B4
_080B1300:
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #4
	b _080B15D8
_080B130A:
	movs r3, #1
	str r3, [sp, #0xd0]
	movs r6, #1
	strh r3, [r7, #0xc]
	ldr r5, [sp, #0xf4]
	cmp r5, #7
	bhi _080B13E0
	movs r0, #0
	bl sub_08096594
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r3, r7, r1
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
	ldr r0, _080B1394
	adds r1, r1, r0
	ldr r0, [sp, #0xfc]
	ldr r2, [sp, #0xd0]
	ands r0, r2
	cmp r0, #0
	beq _080B139C
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r7, #0
	movs r3, #0x1c
	bl sub_08097A74
	lsls r0, r0, #0x18
	add r5, sp, #0xb4
	mov r4, sp
	adds r4, #0xb6
	cmp r0, #0
	beq _080B1362
	b _080B17B4
_080B1362:
	ldr r0, [sp, #0xfc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xfc]
	ldr r0, [sp, #0xf4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xf4]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #5
	strb r0, [r1, #0]
	ldr r1, _080B1398
	adds r0, r7, r1
	strb r6, [r0, #0]
	bl sub_08067C18
	ldr r0, [sp, #0xcc]
	bl sub_08058CC4
	b _080B17B4
	.2byte 0x0000
_080B1394: .4byte gUnk_03003CE0
_080B1398: .4byte 0x000001FD
_080B139C:
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r7, #0
	movs r3, #0x50
	bl sub_08097A74
	lsls r0, r0, #0x18
	add r5, sp, #0xb4
	mov r4, sp
	adds r4, #0xb6
	cmp r0, #0
	beq _080B13B6
	b _080B17B4
_080B13B6:
	ldr r0, [sp, #0xfc]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xfc]
	movs r2, #0
	str r2, [sp, #0xe4]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #6
	strb r0, [r1, #0]
	ldr r1, _080B13DC
	adds r0, r7, r1
	strb r6, [r0, #0]
	bl sub_08067C18
	b _080B17B4
	.2byte 0x0000
_080B13DC: .4byte 0x000001FD
_080B13E0:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #0xa
	strb r1, [r0, #0]
	ldr r3, _080B13F8
	adds r0, r7, r3
	strb r6, [r0, #0]
	bl sub_08067C18
	b _080B1774
	.2byte 0x0000
_080B13F8: .4byte 0x000001FD
_080B13FC:
	movs r4, #2
	str r4, [sp, #0xd0]
	strh r4, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	add r5, sp, #0xb4
	mov r4, sp
	adds r4, #0xb6
	cmp r0, #0
	bne _080B1414
	b _080B17B4
_080B1414:
	ldr r0, [r7, #0x50]
	adds r0, #1
	str r0, [r7, #0x50]
	ldr r1, [sp, #0xf0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xf0]
	movs r0, #4
	bl sub_080B942C
	adds r2, r0, #0
	cmp r2, #0
	beq _080B1444
	movs r0, #0
	str r0, [sp, #0xf0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r1, #8
	strb r1, [r0, #0]
	movs r0, #9
	strh r0, [r7, #0xc]
	b _080B1450
_080B1444:
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #0xd
	strb r0, [r1, #0]
	strh r2, [r7, #0xc]
_080B1450:
	ldr r4, _080B1460
	adds r1, r7, r4
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080B1774
	.2byte 0x0000
_080B1460: .4byte 0x000001FD
_080B1464:
	movs r5, #9
	str r5, [sp, #0xd0]
	strh r5, [r7, #0xc]
	ldr r6, _080B14D0
	ldr r4, [r6, #0]
	movs r0, #0
	bl sub_08096594
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08095F10
	ldr r2, [r6, #0]
	ldrh r1, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x68
	strh r1, [r0, #0]
	ldr r1, [sp, #0xe4]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xe4]
	add r5, sp, #0xb4
	mov r4, sp
	adds r4, #0xb6
	cmp r1, #0x1e
	bhi _080B14A0
	b _080B17B4
_080B14A0:
	movs r1, #0
	str r1, [sp, #0xe4]
	ldrh r0, [r2, #0]
	adds r0, #4
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r1, r2, r3
	ldrb r2, [r1, #0]
	lsrs r2, r2, #4
	movs r1, #5
	str r1, [sp, #0]
	movs r1, #0xd
	movs r3, #5
	bl sub_0807386C
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x50]
	adds r0, #1
	str r0, [r1, #0x50]
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #7
	b _080B15D8
_080B14D0: .4byte gUnk_030007A0
_080B14D4:
	movs r3, #9
	str r3, [sp, #0xd0]
	strh r3, [r7, #0xc]
	ldr r5, _080B1528
	ldr r4, [r5, #0]
	movs r0, #0
	bl sub_08096594
	adds r1, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r4, #0
	bl sub_08095F10
	ldr r1, [r5, #0]
	ldrh r0, [r1, #8]
	adds r0, #8
	adds r1, #0x68
	strh r0, [r1, #0]
	ldr r1, [sp, #0xe4]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xe4]
	add r5, sp, #0xb4
	mov r4, sp
	adds r4, #0xb6
	cmp r1, #0x1e
	bhi _080B1510
	b _080B17B4
_080B1510:
	movs r0, #0
	str r0, [sp, #0xe4]
	bl sub_08097A38
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #4
	strb r0, [r1, #0]
	ldr r3, _080B152C
	adds r1, r7, r3
	b _080B15DE
_080B1528: .4byte gUnk_030007A0
_080B152C: .4byte 0x000001FD
_080B1530:
	movs r4, #9
	str r4, [sp, #0xd0]
	strh r4, [r7, #0xc]
	movs r2, #0
	movs r1, #1
	add r5, sp, #0xb4
	mov r4, sp
	adds r4, #0xb6
	ldr r0, _080B15B8
	movs r6, #1
	ldr r3, [r0, #0]
_080B1546:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r6, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _080B155E
	lsls r0, r2, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r2, r0, #0x10
_080B155E:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080B1546
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bgt _080B15D0
	bl sub_08002204
	cmp r0, #1
	bne _080B15BC
	bl sub_0800086C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #0
	cmp r1, #0
	bge _080B158A
	adds r0, r1, #3
_080B158A:
	asrs r0, r0, #2
	lsls r0, r0, #2
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080B159A
	negs r0, r0
_080B159A:
	adds r1, r0, #1
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r1, [r0, #0]
	ldrb r0, [r0, #0]
	bl sub_08068450
	cmp r0, #1
	bne _080B15DA
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #2
	b _080B15D8
_080B15B8: .4byte gUnk_030056FC
_080B15BC:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #0xff
	strb r0, [r1, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #2
	b _080B15D8
_080B15D0:
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #0xd
_080B15D8:
	strb r0, [r1, #0]
_080B15DA:
	ldr r2, _080B15E8
	adds r1, r7, r2
_080B15DE:
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080B17B4
_080B15E8: .4byte 0x000001FD
_080B15EC:
	movs r3, #9
	str r3, [sp, #0xd0]
	strh r3, [r7, #0xc]
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r5, [sp, #0x104]
	strh r0, [r5, #0]
	ldr r0, [sp, #0xb8]
	ldr r1, [sp, #0xbc]
	bl sub_080B236C
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #0xd
	strb r0, [r1, #0]
	ldr r2, _080B161C
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080B1774
	.2byte 0x0000
_080B161C: .4byte 0x000001FD
_080B1620:
	movs r3, #9
	str r3, [sp, #0xd0]
	strh r3, [r7, #0xc]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r0, #0xb
	strb r0, [r1, #0]
	ldr r0, _080B1640
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080B1774
	.2byte 0x0000
_080B1640: .4byte 0x000001FD
_080B1644:
	movs r1, #9
	str r1, [sp, #0xd0]
	strh r1, [r7, #0xc]
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r3, [sp, #0x104]
	strh r0, [r3, #0]
	ldr r4, [sp, #0xf8]
	cmp r4, #0
	bne _080B1672
	movs r5, #1
	str r5, [sp, #0xf8]
	movs r0, #0
	str r0, [sp, #0xf4]
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	movs r2, #1
	bl sub_08098088
	adds r0, r7, #0
	bl sub_0801A0B0
	b _080B1774
_080B1672:
	bl sub_080980F0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B169C
	movs r1, #0
	str r1, [sp, #0xf8]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0xc
	strb r0, [r1, #0]
	ldr r3, _080B1698
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080B1774
_080B1698: .4byte 0x000001FD
_080B169C:
	ldr r1, [sp, #0xec]
	adds r1, #1
	lsls r1, r1, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0xec]
	movs r0, #0
	movs r1, #0
	ldr r2, [sp, #0xec]
	movs r3, #0
	b _080B1770
_080B16B6:
	movs r4, #9
	str r4, [sp, #0xd0]
	strh r4, [r7, #0xc]
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r1, [sp, #0x104]
	strh r0, [r1, #0]
	ldr r2, [sp, #0xf8]
	cmp r2, #0
	bne _080B1712
	movs r3, #1
	str r3, [sp, #0xf8]
	ldr r4, _080B1704
	ldr r5, _080B1708
	ldrb r0, [r5, #0]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	movs r2, #1
	bl sub_08098088
	ldrb r0, [r5, #0]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r0, [r0, #0]
	str r0, [r7, #0x14]
	ldrb r0, [r5, #0]
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0, #0]
	str r0, [r7, #0x18]
	ldrb r0, [r5, #0]
	cmp r0, #8
	beq _080B170C
	adds r0, #1
	strb r0, [r5, #0]
	b _080B170E
_080B1704: .4byte gUnk_085188F0
_080B1708: .4byte gUnk_030007A6
_080B170C:
	movs r0, #0
_080B170E:
	strb r0, [r5, #0]
	b _080B1774
_080B1712:
	bl sub_080980F0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B1758
	movs r4, #0
	str r4, [sp, #0xf8]
	movs r5, #0
	str r5, [sp, #0xec]
	adds r0, r7, #0
	bl sub_0801A0A4
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08009088
	movs r0, #0
	str r0, [sp, #0xe4]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #6
	strb r0, [r1, #0]
	ldr r3, _080B1754
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _080B1774
	.2byte 0x0000
_080B1754: .4byte 0x000001FD
_080B1758:
	ldr r1, [sp, #0xec]
	subs r1, #1
	lsls r1, r1, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0xec]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	ldr r3, [sp, #0xec]
_080B1770:
	bl sub_08009088
_080B1774:
	add r5, sp, #0xb4
	mov r4, sp
	adds r4, #0xb6
	b _080B17B4
_080B177C:
	movs r4, #0
	str r4, [sp, #0xd0]
	strh r4, [r7, #0xc]
	ldr r1, [sp, #0xe4]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xe4]
	add r5, sp, #0xb4
	mov r4, sp
	adds r4, #0xb6
	cmp r1, #0x3c
	bls _080B17B4
	movs r0, #0
	str r0, [sp, #0xe4]
	bl sub_08097A38
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #4
	strb r0, [r1, #0]
	ldr r3, _080B17C4
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
_080B17B4:
	ldr r0, [sp, #0xd0]
	cmp r0, #1
	beq _080B17E4
	cmp r0, #1
	bgt _080B17C8
	cmp r0, #0
	beq _080B17D4
	b _080B1814
_080B17C4: .4byte 0x000001FD
_080B17C8:
	ldr r1, [sp, #0xd0]
	cmp r1, #2
	beq _080B17F8
	cmp r1, #9
	beq _080B180A
	b _080B1814
_080B17D4:
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0xc0]
	ldrh r0, [r7, #8]
	ldr r3, [sp, #0x104]
	strh r0, [r3, #0]
	movs r0, #1
	b _080B1812
_080B17E4:
	mov r1, sp
	adds r1, #0x18
	str r1, [sp, #0xc0]
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r2, [sp, #0x104]
	strh r0, [r2, #0]
	movs r3, #1
	str r3, [sp, #0xd8]
	b _080B1814
_080B17F8:
	mov r0, sp
	adds r0, #0x4c
	str r0, [sp, #0xc0]
	ldrh r0, [r7, #8]
	ldr r1, [sp, #0x104]
	strh r0, [r1, #0]
	movs r2, #0
	str r2, [sp, #0xd8]
	b _080B1814
_080B180A:
	mov r3, sp
	adds r3, #0x80
	str r3, [sp, #0xc0]
	movs r0, #0
_080B1812:
	str r0, [sp, #0xd8]
_080B1814:
	ldr r0, _080B185C
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r1, [sp, #0xd4]
	ldrh r3, [r0, #0]
	cmp r1, r3
	beq _080B1834
	ldrh r0, [r0, #0]
	str r0, [sp, #0xd4]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_080B1834:
	ldr r1, _080B1860
	ldrh r0, [r1, #0]
	ldr r2, [sp, #0xc0]
	strb r0, [r2, #0x1c]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r1, [r2, #0xc]
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080B1864
	bl sub_08097FF8
	b _080B1872
	.2byte 0x0000
_080B185C: .4byte gUnk_030007A0
_080B1860: .4byte gUnk_030007A4
_080B1864:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080B1872:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B1898
	ldr r3, [sp, #0x104]
	ldrh r1, [r3, #0]
	ldr r0, [sp, #0xd8]
	str r0, [sp, #0]
	ldr r0, [sp, #0xc0]
	ldr r2, [sp, #0x108]
	ldr r3, [sp, #0x10c]
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_080B1898:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r8, r5
	mov r9, r4
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	mov r2, r8
	mov r3, r9
	bl sub_0800BC08
	ldr r1, [sp, #0xdc]
	cmp r1, #0
	beq _080B1912
	adds r0, r1, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xdc]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080B198E
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B198E
	bl sub_0800CC98
	cmp r0, #0
	bne _080B198E
	bl sub_0800CD34
	cmp r0, #0
	bne _080B198E
	mov r2, r8
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r5, #0
	ldrsh r1, [r4, r5]
	ldr r3, [sp, #0x104]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x108]
	ldrh r3, [r4, #0]
	mov r5, sl
	str r5, [sp, #0]
	ldr r4, [sp, #0xc0]
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r5, [sp, #0xc0]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080B198E
_080B1912:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B198E
	bl sub_0800CC98
	cmp r0, #0
	bne _080B198E
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	bne _080B198E
	ldr r0, [sp, #0xec]
	cmp r0, #0
	beq _080B1966
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r9
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r5, [sp, #0x104]
	ldrh r2, [r5, #0]
	ldr r4, [sp, #0x108]
	ldrh r3, [r4, #0]
	mov r5, sl
	str r5, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	str r6, [sp, #8]
	ldr r4, [sp, #0xc0]
	adds r4, #0x1c
	str r4, [sp, #0xc]
	ldr r5, [sp, #0xc0]
	ldr r4, [r5, #8]
	str r4, [sp, #0x10]
	ldr r4, [r5, #0]
	str r4, [sp, #0x14]
	bl sub_08007974
	b _080B198E
_080B1966:
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [sp, #0x104]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x108]
	ldrh r3, [r4, #0]
	mov r5, sl
	str r5, [sp, #0]
	ldr r4, [sp, #0xc0]
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r5, [sp, #0xc0]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B198E:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _080B19A4
	ldr r1, [sp, #0xc8]
	cmp r1, r0
	beq _080B19A4
	str r0, [sp, #0xc8]
	movs r2, #0xa
	str r2, [sp, #0xe0]
	movs r3, #0
	str r3, [sp, #0xe8]
_080B19A4:
	ldr r4, [sp, #0xe0]
	cmp r4, #0
	beq _080B19F8
	bl sub_0800CC98
	cmp r0, #0
	bne _080B19D0
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B19D0
	bl sub_0800CD34
	cmp r0, #0
	bne _080B19D0
	ldr r5, [sp, #0xe8]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xc8]
	bl sub_0801A120
_080B19D0:
	movs r0, #2
	ldr r1, [sp, #0xe0]
	ands r0, r1
	cmp r0, #0
	beq _080B19E6
	ldr r2, [sp, #0xe8]
	lsls r0, r2, #0x10
	ldr r3, _080B19F4
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xe8]
_080B19E6:
	ldr r0, [sp, #0xe0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xe0]
	b _080B1A00
	.2byte 0x0000
_080B19F4: .4byte 0xFFFF0000
_080B19F8:
	movs r4, #0
	str r4, [sp, #0xc8]
	ldr r5, [sp, #0xe0]
	str r5, [r7, #0x4c]
_080B1A00:
	adds r0, r7, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080B1A10
	movs r0, #1
	str r0, [sp, #0x100]
_080B1A10:
	adds r0, r7, #0
	bl sub_08020680
	bl sub_080003F0
	ldr r1, [sp, #0x100]
	cmp r1, #0
	bne _080B1A34
_080B1A20:
	bl sub_0800CB78
	cmp r0, #0
	bne _080B1A34
	bl sub_08056E90
	cmp r0, #0
	bne _080B1A34
	bl _080B1204
_080B1A34:
	ldr r2, _080B1BC0
	ldr r5, _080B1BC4
	ldr r0, [r5, #0]
	movs r4, #1
	adds r1, r4, #0
	ldrh r0, [r0, #0]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	ldr r1, _080B1BC8
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	orrs r0, r4
	str r0, [r2, #0]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08009088
	bl sub_08098060
	bl sub_080B1FD4
	mov r2, sp
	adds r2, #0x80
	str r2, [sp, #0xc0]
	ldr r0, _080B1BCC
	ldrh r0, [r0, #0]
	movs r1, #0
	strb r0, [r2, #0x1c]
	ldr r2, [r5, #0]
	adds r0, r2, #0
	adds r0, #0x6c
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
	movs r3, #0
	str r3, [sp, #0xe8]
	movs r4, #0xa
	str r4, [sp, #0xe0]
	movs r0, #1
	mov r9, r0
	mov r8, r5
_080B1A9E:
	bl sub_080020F4
	ldr r2, _080B1BC8
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	mov r2, r9
	orrs r0, r2
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B1B72
	bl sub_0800CC98
	cmp r0, #0
	bne _080B1B72
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	bne _080B1B72
	ldr r0, _080B1BCC
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0xc0]
	ldr r1, [r3, #0xc]
	movs r2, #1
	bl sub_08000AF0
	mov r4, r8
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r3, [r4, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	mov r5, r9
	str r5, [sp, #0]
	ldr r0, [sp, #0xc0]
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
	add r4, sp, #0xb4
	mov r5, sp
	adds r5, #0xb6
	str r6, [sp, #0]
	str r6, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r4, r8
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r5, sl
	str r5, [sp, #0]
	ldr r4, [sp, #0xc0]
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r5, [sp, #0xc0]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r0, [sp, #0xe8]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xc8]
	bl sub_0801A120
_080B1B72:
	movs r0, #2
	ldr r1, [sp, #0xe0]
	ands r0, r1
	cmp r0, #0
	beq _080B1B88
	ldr r2, [sp, #0xe8]
	lsls r0, r2, #0x10
	ldr r3, _080B1BD0
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xe8]
_080B1B88:
	bl sub_080B23C8
	bl sub_080003F0
	ldr r0, [sp, #0xe0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xe0]
	ldr r0, _080B1BD4
	ldr r4, [sp, #0xe0]
	cmp r4, r0
	beq _080B1BA4
	b _080B1A9E
_080B1BA4:
	bl sub_080683CC
	ldr r4, _080B1BC4
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r0, _080B1BD8
	bl sub_08068330
	adds r6, r4, #0
	add r7, sp, #0xb4
	b _080B1CAA
	.2byte 0x0000
_080B1BC0: .4byte gUnk_030056FC
_080B1BC4: .4byte gUnk_030007A0
_080B1BC8: .4byte gUnk_03003CE0
_080B1BCC: .4byte gUnk_030007A4
_080B1BD0: .4byte 0xFFFF0000
_080B1BD4: .4byte 0x0000FFFF
_080B1BD8: .4byte 0xDEADFACE
_080B1BDC:
	bl sub_080020F4
	ldr r2, _080B1CC4
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
	bne _080B1CA2
	bl sub_0800CC98
	cmp r0, #0
	bne _080B1CA2
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B1CA2
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B1CA2
	ldr r0, _080B1CC8
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r2, [sp, #0xc0]
	ldr r1, [r2, #0xc]
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
	mov sl, r0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	ldr r0, [sp, #0xc0]
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
	adds r4, #0xb6
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r5, #0
	ldrsh r1, [r4, r5]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, sl
	str r4, [sp, #0]
	ldr r4, [sp, #0xc0]
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r5, [sp, #0xc0]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B1CA2:
	bl sub_080B23C8
	bl sub_080003F0
_080B1CAA:
	ldr r0, _080B1CCC
	bl sub_080682B8
	cmp r0, #0
	beq _080B1BDC
	ldr r0, _080B1CCC
	bl sub_08065E38
	ldr r0, _080B1CD0
	mov r8, r0
	ldr r6, _080B1CD4
	add r7, sp, #0xb4
	b _080B1D9A
_080B1CC4: .4byte gUnk_03003CE0
_080B1CC8: .4byte gUnk_030007A4
_080B1CCC: .4byte 0xDEADFACE
_080B1CD0: .4byte gUnk_03003D10
_080B1CD4: .4byte gUnk_030007A0
_080B1CD8:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	add r1, r8
	ldr r0, [r1, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B1D92
	bl sub_0800CC98
	cmp r0, #0
	bne _080B1D92
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B1D92
	ldr r0, _080B1DE8
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r2, [sp, #0xc0]
	ldr r1, [r2, #0xc]
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
	mov sl, r0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	ldr r0, [sp, #0xc0]
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
	adds r4, #0xb6
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r5, #0
	ldrsh r1, [r4, r5]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, sl
	str r4, [sp, #0]
	ldr r4, [sp, #0xc0]
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r5, [sp, #0xc0]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B1D92:
	bl sub_080B23C8
	bl sub_080003F0
_080B1D9A:
	bl sub_08058DB0
	cmp r0, #0
	bne _080B1CD8
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _080B1DEC
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_0805A318
	cmp r0, #0
	beq _080B1DF8
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080B1DF0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080B1DF4
	ldr r1, [r1, #0]
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r1, r1, r2
	b _080B1E16
_080B1DE8: .4byte gUnk_030007A4
_080B1DEC: .4byte gUnk_03003CE0
_080B1DF0: .4byte 0x001400A6
_080B1DF4: .4byte gUnk_03005CF4
_080B1DF8:
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080B1E20
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080B1E24
	ldr r1, [r1, #0]
	movs r3, #0xe4
	lsls r3, r3, #3
	adds r1, r1, r3
_080B1E16:
	str r0, [r1, #0]
	ldr r6, _080B1E28
	add r7, sp, #0xb4
	b _080B1EFA
	.2byte 0x0000
_080B1E20: .4byte 0x001400A4
_080B1E24: .4byte gUnk_03005CF4
_080B1E28: .4byte gUnk_030007A0
_080B1E2C:
	bl sub_080020F4
	ldr r2, _080B1F9C
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
	bne _080B1EF2
	bl sub_0800CC98
	cmp r0, #0
	bne _080B1EF2
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B1EF2
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B1EF2
	ldr r0, _080B1FA0
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r2, [sp, #0xc0]
	ldr r1, [r2, #0xc]
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
	mov sl, r0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	ldr r0, [sp, #0xc0]
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
	adds r4, #0xb6
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl sub_0800BC08
	movs r3, #0
	ldrsh r0, [r7, r3]
	movs r5, #0
	ldrsh r1, [r4, r5]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, sl
	str r4, [sp, #0]
	ldr r4, [sp, #0xc0]
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r5, [sp, #0xc0]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B1EF2:
	bl sub_080B23C8
	bl sub_080003F0
_080B1EFA:
	ldr r0, _080B1FA4
	ldr r0, [r0, #0]
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	beq _080B1E2C
	bl sub_080020F4
	ldr r4, _080B1F9C
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
	bl sub_080B23FC
	bl sub_080B2454
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080B1F96
	ldr r0, _080B1FA8
	ldr r0, [r0, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080B1F96
	ldr r0, _080B1FAC
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xc4]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r2, #0x1d
	str r2, [sp, #0xe8]
	movs r5, #1
	negs r5, r5
_080B1F66:
	ldr r0, _080B1FA8
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r3, [sp, #0xe8]
	lsls r0, r3, #0x10
	ldr r1, _080B1FB0
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0xe8]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080B1F66
	ldr r0, _080B1FAC
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080B1F96:
	bl sub_08056E24
	b _080B1FB8
_080B1F9C: .4byte gUnk_03003CE0
_080B1FA0: .4byte gUnk_030007A4
_080B1FA4: .4byte gUnk_03005CF4
_080B1FA8: .4byte gUnk_030007A0
_080B1FAC: .4byte gUnk_030034E0
_080B1FB0: .4byte 0xFFFF0000
_080B1FB4:
	bl sub_080003F0
_080B1FB8:
	bl sub_08056E90
	cmp r0, #0
	beq _080B1FB4
	bl sub_080B2424
_080B1FC4:
	add sp, #0x110
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080B0FC4
