	thumb_func_start sub_080A7F30
sub_080A7F30: @ 0x080A7F30
	push {r4, lr}
	ldr r4, _080A7F58
	movs r0, #0x50
	bl sub_08001494
	str r0, [r4, #0]
	movs r3, #0
	movs r2, #0
	movs r1, #1
_080A7F42:
	ldr r0, [r4, #0]
	adds r0, r2, r0
	str r3, [r0, #8]
	adds r2, #0x28
	subs r1, #1
	cmp r1, #0
	bge _080A7F42
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A7F58: .4byte gUnk_0300040C
	thumb_func_end sub_080A7F30
