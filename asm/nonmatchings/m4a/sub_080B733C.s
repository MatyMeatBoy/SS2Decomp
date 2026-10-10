	thumb_func_start sub_080B733C
sub_080B733C: @ 0x080B733C
	push {r4, r5, lr}
	ldr r0, _080B7360
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _080B735A
	ldr r5, _080B7364
	adds r4, r0, #0
_080B734C:
	ldr r0, [r5, #0]
	bl sub_080B7954
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _080B734C
_080B735A:
	pop {r4, r5}
	pop {r0}
	bx r0
_080B7360: .4byte 0x00000004
_080B7364: .4byte gUnk_080BC5DC
	thumb_func_end sub_080B733C
