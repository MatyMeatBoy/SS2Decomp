	thumb_func_start sub_080B95E4
sub_080B95E4: @ 0x080B95E4
	cmp r1, #0
	beq _080B969A
	movs r3, #1
	cmp r0, r1
	bhs _080B95F0
	mov pc, lr
_080B95F0:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_080B95F6:
	cmp r1, r4
	bhs _080B9604
	cmp r1, r0
	bhs _080B9604
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _080B95F6
_080B9604:
	lsls r4, r4, #3
_080B9606:
	cmp r1, r4
	bhs _080B9614
	cmp r1, r0
	bhs _080B9614
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _080B9606
_080B9614:
	movs r2, #0
	cmp r0, r1
	blo _080B961C
	subs r0, r0, r1
_080B961C:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _080B962E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080B962E:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _080B9640
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080B9640:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _080B9652
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_080B9652:
	mov ip, r3
	cmp r0, #0
	beq _080B9660
	lsrs r3, r3, #4
	beq _080B9660
	lsrs r1, r1, #4
	b _080B9614
_080B9660:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _080B966C
	pop {r4}
	mov pc, lr
_080B966C:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _080B967A
	lsrs r4, r1, #3
	adds r0, r0, r4
_080B967A:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _080B9688
	lsrs r4, r1, #2
	adds r0, r0, r4
_080B9688:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _080B9696
	lsrs r4, r1, #1
	adds r0, r0, r4
_080B9696:
	pop {r4}
	mov pc, lr
_080B969A:
	push {lr}
	bl sub_080B9428
	movs r0, #0
	pop {pc}
	thumb_func_end sub_080B95E4
