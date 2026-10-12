	thumb_func_start sub_08058280
sub_08058280: @ 0x08058280
	push {r4, r5, r6, r7, lr}
	ldr r0, _080582B8
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r6, _080582BC
	movs r7, #1
	movs r5, #0
	movs r4, #0xb8
	lsls r4, r4, #2
_08058292:
	adds r1, r7, #0
	lsls r1, r3
	ldr r0, [r6, #0]
	ands r0, r1
	cmp r0, #0
	beq _080582A6
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _080582A6
	strh r5, [r2, #0xc]
_080582A6:
	adds r3, #1
	adds r2, r2, r4
	cmp r3, #4
	bls _08058292
	bl sub_08019F04
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080582B8: .4byte gUnk_030056F4
_080582BC: .4byte gUnk_030056FC
	thumb_func_end sub_08058280
