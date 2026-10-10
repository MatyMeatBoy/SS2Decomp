	thumb_func_start sub_0801DDD4
sub_0801DDD4: @ 0x0801DDD4
	push {lr}
	ldr r1, _0801DDE8
	ldr r1, [r1, #0]
	adds r1, #0x10
	ldr r2, _0801DDEC
	bl sub_080B8578
	pop {r0}
	bx r0
	.2byte 0x0000
_0801DDE8: .4byte gUnk_030034E0
_0801DDEC: .4byte 0x04000008
	thumb_func_end sub_0801DDD4
