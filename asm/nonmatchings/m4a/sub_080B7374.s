	thumb_func_start sub_080B7374
sub_080B7374: @ 0x080B7374
	push {r4, r5, lr}
	ldr r0, _080B7398
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080B7392
	ldr r5, _080B739C
	adds r4, r0, #0
_080B7384:
	ldr r0, [r5, #0]
	bl sub_080B7134
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080B7384
_080B7392:
	pop {r4, r5}
	pop {r0}
	bx r0
_080B7398: .4byte 0x00000004
_080B739C: .4byte gUnk_080BC5DC
	thumb_func_end sub_080B7374
