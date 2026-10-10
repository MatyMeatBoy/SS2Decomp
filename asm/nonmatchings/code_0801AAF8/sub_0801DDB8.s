	thumb_func_start sub_0801DDB8
sub_0801DDB8: @ 0x0801DDB8
	push {lr}
	adds r1, r0, #0
	ldr r0, _0801DDCC
	ldr r0, [r0, #0]
	adds r0, #0x10
	ldr r2, _0801DDD0
	bl sub_080B8578
	pop {r0}
	bx r0
_0801DDCC: .4byte gUnk_030034E0
_0801DDD0: .4byte 0x04000008
	thumb_func_end sub_0801DDB8
