	thumb_func_start sub_08058D98
sub_08058D98: @ 0x08058D98
	push {lr}
	sub sp, #0x10
	mov r2, sp
	movs r1, #0xa
	strh r1, [r2, #0]
	str r0, [sp, #4]
	mov r0, sp
	bl sub_0805AB20
	add sp, #0x10
	pop {r1}
	bx r1
	thumb_func_end sub_08058D98
