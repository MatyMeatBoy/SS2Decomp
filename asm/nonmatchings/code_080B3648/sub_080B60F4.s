	thumb_func_start sub_080B60F4
sub_080B60F4: @ 0x080B60F4
	push {r4, r5, r6, lr}
	ldr r4, _080B6168
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080B6162
	bl sub_08000470
	cmp r0, #0
	beq _080B610C
	ldr r0, [r4, #0]
	bl sub_080003A8
_080B610C:
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	movs r3, #1
	ldr r6, _080B616C
	movs r4, #1
	ldr r5, _080B6170
_080B611E:
	adds r1, r4, #0
	lsls r1, r3
	ldr r0, [r6, #0]
	ands r0, r1
	cmp r0, #0
	beq _080B6142
	ldr r1, [r5, #0]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	subs r0, r0, r3
	lsls r0, r0, #5
	adds r0, r0, r1
	adds r0, #0x7a
	ldrh r2, [r0, #0]
	adds r1, r4, #0
	orrs r1, r2
	strh r1, [r0, #0]
_080B6142:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _080B611E
	movs r3, #0
	ldr r2, _080B6174
	movs r1, #0
_080B6152:
	lsls r0, r3, #1
	adds r0, r0, r2
	strh r1, [r0, #0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bls _080B6152
_080B6162:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080B6168: .4byte gUnk_030007EC
_080B616C: .4byte gUnk_030056FC
_080B6170: .4byte gUnk_030056F4
_080B6174: .4byte gUnk_030007D4
	thumb_func_end sub_080B60F4
