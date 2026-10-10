	thumb_func_start sub_0800035C
sub_0800035C: @ 0x0800035C
	ldr r0, _080003A4
	ldr r0, [r0, #0]
	mov sp, r0
	ldr r4, _0800039C
	ldr r4, [r4, #0]
	ldr r1, [r4, #0x24]
	cmp r1, #0
	beq sub_08000378
	ldr r3, _080004B0
	adds r0, r4, #0
	mov lr, r3
	push {r1}
	pop {pc}
	thumb_func_end sub_0800035C
