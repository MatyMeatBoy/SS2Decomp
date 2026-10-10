	thumb_func_start sub_080B9394
sub_080B9394: @ 0x080B9394
	cmp r1, #0
	beq _080B941C
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _080B93AA
	negs r1, r1
_080B93AA:
	cmp r0, #0
	bpl _080B93B0
	negs r0, r0
_080B93B0:
	cmp r0, r1
	blo _080B940E
	movs r4, #1
	lsls r4, r4, #0x1c
_080B93B8:
	cmp r1, r4
	bhs _080B93C6
	cmp r1, r0
	bhs _080B93C6
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080B93B8
_080B93C6:
	lsls r4, r4, #3
_080B93C8:
	cmp r1, r4
	bhs _080B93D6
	cmp r1, r0
	bhs _080B93D6
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080B93C8
_080B93D6:
	cmp r0, r1
	blo _080B93DE
	subs r0, r0, r1
	orrs r2, r3
_080B93DE:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080B93EA
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080B93EA:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080B93F6
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080B93F6:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080B9402
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080B9402:
	cmp r0, #0
	beq _080B940E
	lsrs r3, r3, #4
	beq _080B940E
	lsrs r1, r1, #4
	b _080B93D6
_080B940E:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _080B9418
	negs r0, r0
_080B9418:
	pop {r4}
	mov pc, lr
_080B941C:
	push {lr}
	bl sub_080B9428
	movs r0, #0
	pop {pc}
	thumb_func_end sub_080B9394
