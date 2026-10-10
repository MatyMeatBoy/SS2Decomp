	thumb_func_start sub_080016C8
sub_080016C8: @ 0x080016C8
	movs r2, #0
	ldr r0, _080016E8
	ldr r1, [r0, #0xc]
	cmp r1, r0
	beq _080016E4
	adds r3, r0, #0
_080016D4:
	ldr r0, [r1, #4]
	subs r0, r0, r1
	cmp r2, r0
	bhs _080016DE
	adds r2, r0, #0
_080016DE:
	ldr r1, [r1, #0xc]
	cmp r1, r3
	bne _080016D4
_080016E4:
	adds r0, r2, #0
	bx lr
_080016E8: .4byte gUnk_03002370
	thumb_func_end sub_080016C8
