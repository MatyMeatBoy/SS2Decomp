	thumb_func_start sub_080A9818
sub_080A9818: @ 0x080A9818
	push {r4, lr}
	ldr r4, _080A9840
	movs r0, #0x78
	bl sub_08001494
	str r0, [r4, #0]
	movs r3, #0
	movs r2, #0
	movs r1, #2
_080A982A:
	ldr r0, [r4, #0]
	adds r0, r2, r0
	str r3, [r0, #8]
	adds r2, #0x28
	subs r1, #1
	cmp r1, #0
	bge _080A982A
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A9840: .4byte gUnk_03000424
	thumb_func_end sub_080A9818
