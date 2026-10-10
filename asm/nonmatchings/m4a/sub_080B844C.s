	thumb_func_start sub_080B844C
sub_080B844C: @ 0x080B844C
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2, #0]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _080B8468
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3, #0]
	bl sub_080B8F2C
	pop {r0}
	bx r0
	.2byte 0x0000
_080B8468: .4byte gUnk_080BBA90
	thumb_func_end sub_080B844C
