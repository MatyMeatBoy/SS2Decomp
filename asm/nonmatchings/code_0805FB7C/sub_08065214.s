	thumb_func_start sub_08065214
sub_08065214: @ 0x08065214
	push {lr}
	ldr r2, [r0, #0x14]
	adds r3, r2, #0
	adds r3, #0x10
	lsls r2, r2, #5
	ldr r1, [r0, #0xc]
	adds r1, r1, r2
	ldr r2, [r0, #0x18]
	adds r0, r3, #0
	bl sub_08000AF0
	pop {r0}
	bx r0
	thumb_func_end sub_08065214
