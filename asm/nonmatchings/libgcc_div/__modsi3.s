	thumb_func_start __modsi3
__modsi3: @ 0x080B942C
	movs r3, #1
	cmp r1, #0
	beq _080B94F0
	bpl _080B9436
	negs r1, r1
_080B9436:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _080B9440
	negs r0, r0
_080B9440:
	cmp r0, r1
	blo _080B94E4
	movs r4, #1
	lsls r4, r4, #0x1c
_080B9448:
	cmp r1, r4
	bhs _080B9456
	cmp r1, r0
	bhs _080B9456
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080B9448
_080B9456:
	lsls r4, r4, #3
_080B9458:
	cmp r1, r4
	bhs _080B9466
	cmp r1, r0
	bhs _080B9466
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080B9458
_080B9466:
	movs r2, #0
	cmp r0, r1
	blo _080B946E
	subs r0, r0, r1
_080B946E:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080B9480
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080B9480:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080B9492
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080B9492:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080B94A4
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080B94A4:
	mov ip, r3
	cmp r0, #0
	beq _080B94B2
	lsrs r3, r3, #4
	beq _080B94B2
	lsrs r1, r1, #4
	b _080B9466
_080B94B2:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _080B94E4
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080B94C8
	lsrs r4, r1, #3
	adds r0, r0, r4
_080B94C8:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080B94D6
	lsrs r4, r1, #2
	adds r0, r0, r4
_080B94D6:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080B94E4
	lsrs r4, r1, #1
	adds r0, r0, r4
_080B94E4:
	pop {r4}
	cmp r4, #0
	bpl _080B94EC
	negs r0, r0
_080B94EC:
	pop {r4}
	mov pc, lr
_080B94F0:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	thumb_func_end __modsi3
