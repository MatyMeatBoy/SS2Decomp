	thumb_func_start sub_080B4B48
sub_080B4B48: @ 0x080B4B48
	push {r4, lr}
	ldr r4, _080B4B78
	movs r0, #0xa0
	bl sub_08001494
	str r0, [r4, #0]
	cmp r0, #0
	beq _080B4B72
	movs r2, #0
	movs r3, #0
_080B4B5C:
	ldr r0, [r4, #0]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r0
	str r3, [r1, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080B4B5C
_080B4B72:
	pop {r4}
	pop {r0}
	bx r0
_080B4B78: .4byte gUnk_030007D0
	thumb_func_end sub_080B4B48
