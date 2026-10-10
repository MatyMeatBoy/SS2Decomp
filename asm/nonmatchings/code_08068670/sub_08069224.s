	thumb_func_start sub_08069224
sub_08069224: @ 0x08069224
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r4, r2, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	bl sub_0800CF80
	cmp r0, #0
	beq _0806923E
_0806923A:
	movs r0, #0
	b _0806937C
_0806923E:
	bl sub_080008C8
	movs r1, #0x64
	bl sub_080B95E4
	mov r8, r0
	cmp r6, #7
	bhi _0806929E
	lsls r0, r6, #2
	ldr r1, _08069258
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08069258: .4byte _0806925C
_0806925C:
	.4byte _0806923A
_08069260: .4byte _0806927C
_08069264: .4byte _08069282
_08069268: .4byte _08069288
_0806926C: .4byte _0806928E
_08069270: .4byte _08069294
_08069274: .4byte _0806929A
_08069278: .4byte _0806929A
_0806927C:
	movs r0, #0
	ldrsh r5, [r4, r0]
	b _0806929E
_08069282:
	movs r0, #2
	ldrsh r5, [r4, r0]
	b _0806929E
_08069288:
	movs r0, #4
	ldrsh r5, [r4, r0]
	b _0806929E
_0806928E:
	movs r0, #6
	ldrsh r5, [r4, r0]
	b _0806929E
_08069294:
	movs r0, #8
	ldrsh r5, [r4, r0]
	b _0806929E
_0806929A:
	movs r0, #0xa
	ldrsh r5, [r4, r0]
_0806929E:
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	subs r0, r0, r5
	adds r0, #0x32
	adds r1, r5, #1
	bl sub_080B9394
	subs r0, #2
	cmp r0, #0
	bge _080692B6
	movs r0, #0
_080692B6:
	cmp r8, r0
	bhs _0806937A
	subs r0, r6, #1
	cmp r0, #6
	bhi _0806937A
	lsls r0, r0, #2
	ldr r1, _080692CC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080692CC: .4byte _080692D0
_080692D0:
	.4byte _080692EC
_080692D4: .4byte _08069300
_080692D8: .4byte _08069314
_080692DC: .4byte _08069328
_080692E0: .4byte _0806933C
_080692E4: .4byte _0806935C
_080692E8: .4byte _0806935C
_080692EC:
	ldrh r0, [r4, #0]
	adds r0, #1
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x64
	ble _08069350
	movs r0, #0x64
	strh r0, [r4, #0]
	b _0806937A
_08069300:
	ldrh r0, [r4, #2]
	adds r0, #1
	strh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x63
	ble _08069350
	movs r0, #0x64
	strh r0, [r4, #2]
	b _0806937A
_08069314:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x64
	ble _08069350
	movs r0, #0x64
	strh r0, [r4, #4]
	b _0806937A
_08069328:
	ldrh r0, [r4, #6]
	adds r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x64
	ble _08069350
	movs r0, #0x64
	strh r0, [r4, #6]
	b _0806937A
_0806933C:
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x64
	ble _08069350
	movs r0, #0x64
	strh r0, [r4, #8]
	b _0806937A
_08069350:
	bl sub_080020F4
	adds r1, r6, #0
	bl sub_08022200
	b _0806937A
_0806935C:
	ldrh r0, [r4, #0xa]
	adds r0, #1
	strh r0, [r4, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x64
	ble _08069370
	movs r0, #0x64
	strh r0, [r4, #0xa]
	b _0806937A
_08069370:
	bl sub_080020F4
	adds r1, r6, #0
	bl sub_08022200
_0806937A:
	adds r0, r6, #0
_0806937C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08069224
