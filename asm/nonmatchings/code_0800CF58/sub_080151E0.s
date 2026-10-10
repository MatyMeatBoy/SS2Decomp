	thumb_func_start sub_080151E0
sub_080151E0: @ 0x080151E0
	push {r4, r5, r6, lr}
	bl sub_080020F4
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	ldr r6, _08015228
	adds r0, r4, r6
	bl sub_08000470
	cmp r0, #0
	beq _08015230
	ldr r3, _0801522C
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r2, r5, #0
	muls r2, r0, r2
	adds r1, r2, r3
	ldrh r0, [r1, #0x20]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080152C2
	adds r0, r3, #0
	adds r0, #0x30
	adds r0, r2, r0
	ldr r2, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r2, r0
	cmp r2, #0
	bne _080152C2
	strh r2, [r1, #0x20]
	b _080152C2
_08015228: .4byte gUnk_03003C40
_0801522C: .4byte gUnk_03003CE0
_08015230:
	ldr r1, _08015248
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r0, r0, r1
	ldrh r0, [r0, #0x10]
	cmp r0, #2
	beq _0801524C
	cmp r0, #4
	beq _0801525C
	b _080152C2
	.2byte 0x0000
_08015248: .4byte gUnk_03003CE0
_0801524C:
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _08015258
	b _08015264
	.2byte 0x0000
_08015258: .4byte sub_08015090
_0801525C:
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _0801527C
_08015264:
	str r1, [r0, #0]
	ldr r1, _08015280
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r1, #8
	adds r0, r0, r1
	movs r1, #0x34
	str r1, [r0, #0]
	adds r4, r2, #0
	b _08015288
	.2byte 0x0000
_0801527C: .4byte sub_08015150
_08015280: .4byte gUnk_03003C40
_08015284:
	bl sub_080003F0
_08015288:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	ldr r3, _080152C8
	adds r0, r4, r5
	lsls r2, r0, #3
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0, #0]
	cmp r1, #0
	beq _08015284
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
	bl sub_08000274
_080152C2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080152C8: .4byte gUnk_03003C40
	thumb_func_end sub_080151E0
