	thumb_func_start sub_08065394
sub_08065394: @ 0x08065394
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r3, #0
	ldr r4, [sp, #0x10]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r0, #8]
	str r4, [sp, #0]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r5, #0
	bl sub_08008D38
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08065394
