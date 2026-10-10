	thumb_func_start sub_080B82F4
sub_080B82F4: @ 0x080B82F4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1, #0]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _080B8318
	b _080B8446
_080B8318:
	lsls r0, r5, #2
	ldr r1, _080B8324
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080B8324: .4byte _080B8328
_080B8328:
	.4byte _080B8370
_080B832C: .4byte _080B8374
_080B8330: .4byte _080B837C
_080B8334: .4byte _080B8384
_080B8338: .4byte _080B838E
_080B833C: .4byte _080B839C
_080B8340: .4byte _080B83AA
_080B8344: .4byte _080B83B2
_080B8348: .4byte _080B83BA
_080B834C: .4byte _080B83C2
_080B8350: .4byte _080B83CA
_080B8354: .4byte _080B83D2
_080B8358: .4byte _080B83DA
_080B835C: .4byte _080B83E8
_080B8360: .4byte _080B83F6
_080B8364: .4byte _080B8404
_080B8368: .4byte _080B8412
_080B836C: .4byte _080B8420
_080B8370:
	strb r2, [r3, #0]
	b _080B8446
_080B8374:
	ldrb r1, [r3, #0]
	adds r0, r1, r2
	strb r0, [r3, #0]
	b _080B8446
_080B837C:
	ldrb r1, [r3, #0]
	subs r0, r1, r2
	strb r0, [r3, #0]
	b _080B8446
_080B8384:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	strb r0, [r3, #0]
	b _080B8446
_080B838E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3, #0]
	ldrb r0, [r0, #0]
	adds r0, r1, r0
	strb r0, [r3, #0]
	b _080B8446
_080B839C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3, #0]
	ldrb r0, [r0, #0]
	subs r0, r1, r0
	strb r0, [r3, #0]
	b _080B8446
_080B83AA:
	ldrb r3, [r3, #0]
	cmp r3, r2
	beq _080B842C
	b _080B8440
_080B83B2:
	ldrb r3, [r3, #0]
	cmp r3, r2
	bne _080B842C
	b _080B8440
_080B83BA:
	ldrb r3, [r3, #0]
	cmp r3, r2
	bhi _080B842C
	b _080B8440
_080B83C2:
	ldrb r3, [r3, #0]
	cmp r3, r2
	bhs _080B842C
	b _080B8440
_080B83CA:
	ldrb r3, [r3, #0]
	cmp r3, r2
	bls _080B842C
	b _080B8440
_080B83D2:
	ldrb r3, [r3, #0]
	cmp r3, r2
	blo _080B842C
	b _080B8440
_080B83DA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3, #0]
	ldrb r0, [r0, #0]
	cmp r3, r0
	beq _080B842C
	b _080B8440
_080B83E8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3, #0]
	ldrb r0, [r0, #0]
	cmp r3, r0
	bne _080B842C
	b _080B8440
_080B83F6:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3, #0]
	ldrb r0, [r0, #0]
	cmp r3, r0
	bhi _080B842C
	b _080B8440
_080B8404:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3, #0]
	ldrb r0, [r0, #0]
	cmp r3, r0
	bhs _080B842C
	b _080B8440
_080B8412:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3, #0]
	ldrb r0, [r0, #0]
	cmp r3, r0
	bls _080B842C
	b _080B8440
_080B8420:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3, #0]
	ldrb r0, [r0, #0]
	cmp r3, r0
	bhs _080B8440
_080B842C:
	ldr r0, _080B843C
	ldr r2, [r0, #0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080B8F2C
	b _080B8446
	.2byte 0x0000
_080B843C: .4byte gUnk_03007434
_080B8440:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_080B8446:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_080B82F4
