	thumb_func_start sub_0800BB68
sub_0800BB68: @ 0x0800BB68
	ldr r0, _0800BB7C
	adds r0, #0x9c
	ldr r1, [r0, #0]
	movs r0, #0xc
	ands r1, r0
	cmp r1, #0
	beq _0800BB78
	movs r1, #1
_0800BB78:
	adds r0, r1, #0
	bx lr
_0800BB7C: .4byte gUnk_03003170
	thumb_func_end sub_0800BB68
