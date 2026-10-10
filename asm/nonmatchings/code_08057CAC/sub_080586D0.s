	thumb_func_start sub_080586D0
sub_080586D0: @ 0x080586D0
	push {r4, r5, lr}
	ldr r4, _080586E8
	ldr r5, [r4, #0]
	bl sub_08006C30
	movs r0, #0
	str r0, [r4, #0]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
_080586E8: .4byte gUnk_03005CF8
	thumb_func_end sub_080586D0
