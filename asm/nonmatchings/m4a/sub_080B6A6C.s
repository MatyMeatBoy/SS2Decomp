	thumb_func_start sub_080B6A6C
sub_080B6A6C: @ 0x080B6A6C
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2, #0]
	adds r2, #1
	str r2, [r1, #0x40]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #2
	ldr r3, [r0, #0x30]
	adds r2, r2, r3
	ldr r3, [r2, #0]
	bl sub_080B6992
	str r3, [r1, #0x24]
	ldr r3, [r2, #4]
	bl sub_080B6992
	str r3, [r1, #0x28]
	ldr r3, [r2, #8]
	bl sub_080B6992
	str r3, [r1, #0x2c]
	bx ip
	thumb_func_end sub_080B6A6C
