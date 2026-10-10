	thumb_func_start sub_080A4AE4
sub_080A4AE4: @ 0x080A4AE4
	push {r4, lr}
	ldr r4, _080A4B0C
	movs r0, #0x78
	bl sub_08001494
	str r0, [r4, #0]
	movs r3, #0
	movs r2, #0
	movs r1, #2
_080A4AF6:
	ldr r0, [r4, #0]
	adds r0, r2, r0
	str r3, [r0, #8]
	adds r2, #0x28
	subs r1, #1
	cmp r1, #0
	bge _080A4AF6
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A4B0C: .4byte gUnk_0300035C
	thumb_func_end sub_080A4AE4
