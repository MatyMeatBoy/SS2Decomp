	thumb_func_start sub_080586B4
sub_080586B4: @ 0x080586B4
	push {r4, r5, lr}
	ldr r4, _080586CC
	ldr r5, [r4, #0]
	adds r0, r5, #0
	bl sub_08006CD0
	movs r0, #0
	str r0, [r4, #0]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
_080586CC: .4byte gUnk_03005CF8
	thumb_func_end sub_080586B4
