	thumb_func_start sub_080003A8
sub_080003A8: @ 0x080003A8
	push {r0, r1, r2, r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq sub_080003C0
	ldr r3, _080004B4
	mov lr, r3
	push {r1}
	pop {pc}
	.2byte 0x0000
	.4byte 0x03001248
	thumb_func_end sub_080003A8
