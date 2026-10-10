	thumb_func_start sub_08015820
sub_08015820: @ 0x08015820
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	ldr r6, _0801586C
	adds r0, r4, r6
	bl sub_08000470
	cmp r0, #0
	beq _08015874
	bl sub_080020F4
	cmp r0, r5
	bne _08015908
	ldr r3, _08015870
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
	bls _08015908
	adds r0, r3, #0
	adds r0, #0x30
	adds r0, r1, r0
	ldr r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08015908
	strh r1, [r2, #0x20]
	b _08015908
_0801586C: .4byte gUnk_03003C40
_08015870: .4byte gUnk_03003CE0
_08015874:
	ldr r1, _0801588C
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r0, r0, r1
	ldrh r0, [r0, #0x10]
	cmp r0, #1
	beq _08015890
	cmp r0, #8
	beq _080158A0
	b _08015908
	.2byte 0x0000
_0801588C: .4byte gUnk_03003CE0
_08015890:
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _0801589C
	b _080158A8
	.2byte 0x0000
_0801589C: .4byte sub_08015620
_080158A0:
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldr r1, _080158C0
_080158A8:
	str r1, [r0, #0]
	ldr r1, _080158C4
	lsls r2, r5, #2
	adds r0, r2, r5
	lsls r0, r0, #3
	adds r1, #8
	adds r0, r0, r1
	movs r1, #0x34
	str r1, [r0, #0]
	adds r4, r2, #0
	b _080158CC
	.2byte 0x0000
_080158C0: .4byte sub_080156FC
_080158C4: .4byte gUnk_03003C40
_080158C8:
	bl sub_080003F0
_080158CC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	ldr r3, _08015910
	adds r0, r4, r5
	lsls r2, r0, #3
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r2, r0
	str r1, [r0, #0]
	cmp r1, #0
	beq _080158C8
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
_08015908:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08015910: .4byte gUnk_03003C40
	thumb_func_end sub_08015820
