	thumb_func_start sub_080B7828
sub_080B7828: @ 0x080B7828
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _080B788C
	cmp r4, #0x10
	bls _080B783C
	movs r4, #0x10
_080B783C:
	ldr r0, _080B7894
	ldr r5, [r0, #0]
	ldr r1, [r5, #0]
	ldr r0, _080B7898
	cmp r1, r0
	bne _080B788C
	adds r0, r1, #1
	str r0, [r5, #0]
	adds r0, r7, #0
	bl sub_080B7534
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _080B7870
	movs r1, #0
_080B7862:
	strb r1, [r6, #0]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _080B7862
_080B7870:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _080B7880
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_080B7880:
	str r7, [r5, #0x24]
	ldr r0, _080B789C
	str r0, [r5, #0x20]
	ldr r0, _080B7898
	str r0, [r5, #0]
	str r0, [r7, #0x34]
_080B788C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B7894: .4byte gUnk_03007FF0
_080B7898: .4byte 0x68736D53
_080B789C: .4byte sub_080B6B74
	thumb_func_end sub_080B7828
