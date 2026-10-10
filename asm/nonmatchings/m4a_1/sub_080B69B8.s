	thumb_func_start sub_080B69B8
sub_080B69B8: @ 0x080B69B8
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r0, [r2, #3]
	lsls r0, r0, #8
	ldrb r3, [r2, #2]
	orrs r0, r3
	lsls r0, r0, #8
	ldrb r3, [r2, #1]
	orrs r0, r3
	lsls r0, r0, #8
	bl sub_080B6990
	orrs r0, r3
	str r0, [r1, #0x40]
	pop {r0}
	bx r0
	thumb_func_end sub_080B69B8
