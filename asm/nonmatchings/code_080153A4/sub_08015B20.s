	thumb_func_start sub_08015B20
sub_08015B20: @ 0x08015B20
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	ldr r6, _08015B6C
	adds r0, r4, r6
	bl sub_08000470
	cmp r0, #0
	beq _08015B74
	bl sub_080020F4
	cmp r0, r5
	bne _08015C08
	ldr r3, _08015B70
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	adds r2, r1, r3
	ldrh r0, [r2, #0x20]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08015C08
	adds r0, r3, #0
	adds r0, #0x30
	adds r0, r1, r0
	ldr r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08015C08
	strh r1, [r2, #0x20]
	b _08015C08
_08015B6C: .4byte gUnk_03003C40
_08015B70: .4byte gUnk_03003CE0
_08015B74:
	ldr r1, _08015B8C
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r0, r0, r1
	ldrh r0, [r0, #0x10]
	cmp r0, #6
	beq _08015B90
	cmp r0, #8
	beq _08015BA0
	b _08015C08
	.2byte 0x0000
_08015B8C: .4byte gUnk_03003CE0
_08015B90:
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08015B9C
	b _08015BA8
	.2byte 0x0000
_08015B9C: .4byte sub_08015914
_08015BA0:
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08015BC0
_08015BA8:
	str r1, [r0, #0]
	ldr r1, _08015BC4
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r1, #8
	adds r0, r0, r1
	movs r1, #0x34
	str r1, [r0, #0]
	adds r4, r2, #0
	b _08015BCC
	.2byte 0x0000
_08015BC0: .4byte sub_08015A48
_08015BC4: .4byte gUnk_03003C40
_08015BC8:
	bl sub_080003F0
_08015BCC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	ldr r3, _08015C10
	adds r0, r4, r5
	lsls r2, r0, #3
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0, #0]
	cmp r1, #0
	beq _08015BC8
	adds r0, r3, #0
	adds r0, #0x10
	adds r0, r2, r0
	movs r4, #0xff
	lsls r4, r4, #2
	adds r1, r1, r4
	str r1, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x24
	adds r0, r2, r0
	movs r1, #0
	str r1, [r0, #0]
	adds r0, r2, r3
	adds r1, r5, #0
	bl sub_08000274
_08015C08:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08015C10: .4byte gUnk_03003C40
	thumb_func_end sub_08015B20
