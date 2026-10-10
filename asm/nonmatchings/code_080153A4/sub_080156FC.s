	thumb_func_start sub_080156FC
sub_080156FC: @ 0x080156FC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _08015738
	adds r5, r1, r0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	lsls r0, r0, #0xf
	lsrs r6, r0, #0x1d
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	adds r1, r5, #0
	adds r1, #0xb0
	strh r0, [r1, #0]
	subs r0, r6, #1
	cmp r0, #6
	bhi _08015768
	lsls r0, r0, #2
	ldr r1, _0801573C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08015738: .4byte gUnk_03003CE0
_0801573C: .4byte _08015740
_08015740:
	.4byte _0801575C
_08015744: .4byte _0801575C
_08015748: .4byte _0801575C
_0801574C: .4byte _0801575C
_08015750: .4byte _0801575C
_08015754: .4byte _0801575C
_08015758: .4byte _0801575C
_0801575C:
	movs r6, #5
	adds r1, r5, #0
	adds r1, #0xb0
	ldrh r0, [r1, #0]
	adds r0, #0x10
	strh r0, [r1, #0]
_08015768:
	adds r0, r5, #0
	adds r0, #0xb0
	ldrh r1, [r0, #0]
	adds r0, #8
	strh r1, [r0, #0]
	movs r4, #0
	cmp r6, #0
	beq _080157E2
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	b _080157D6
_08015780:
	adds r0, r5, #0
	adds r0, #0xb2
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080157C8
	adds r0, r5, #0
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _080157C8
	cmp r6, #0
	beq _080157C8
	adds r1, r5, #0
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	movs r0, #1
	bl sub_0807A028
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r5, #0]
	adds r4, #1
	str r4, [sp, #0]
	adds r2, r6, #0
	adds r3, r6, #0
	bl sub_08077444
	cmp r4, #2
	bls _080157C6
	movs r4, #0
_080157C6:
	subs r6, #1
_080157C8:
	bl sub_080003F0
	cmp r6, #0
	beq _080157E2
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
_080157D6:
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	beq _08015780
_080157E2:
	bl sub_080020F4
	cmp r0, r7
	bne _08015804
	ldrh r0, [r5, #0x20]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08015804
	ldr r1, [r5, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08015804
	strh r1, [r5, #0x20]
_08015804:
	movs r1, #0
	strh r1, [r5, #0x24]
	ldrh r0, [r5, #0x26]
	strh r0, [r5, #0x28]
	strh r1, [r5, #0x26]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0, #0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080156FC
