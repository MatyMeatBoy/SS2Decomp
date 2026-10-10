	thumb_func_start sub_080B956C
sub_080B956C: @ 0x080B956C
	cmp r1, #0
	beq _080B95DA
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _080B95D4
	movs r4, #1
	lsls r4, r4, #0x1c
_080B957E:
	cmp r1, r4
	bhs _080B958C
	cmp r1, r0
	bhs _080B958C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080B957E
_080B958C:
	lsls r4, r4, #3
_080B958E:
	cmp r1, r4
	bhs _080B959C
	cmp r1, r0
	bhs _080B959C
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080B958E
_080B959C:
	cmp r0, r1
	blo _080B95A4
	subs r0, r0, r1
	orrs r2, r3
_080B95A4:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080B95B0
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_080B95B0:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080B95BC
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_080B95BC:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080B95C8
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_080B95C8:
	cmp r0, #0
	beq _080B95D4
	lsrs r3, r3, #4
	beq _080B95D4
	lsrs r1, r1, #4
	b _080B959C
_080B95D4:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_080B95DA:
	push {lr}
	bl sub_080B9428
	movs r0, #0
	pop {pc}
	thumb_func_end sub_080B956C
