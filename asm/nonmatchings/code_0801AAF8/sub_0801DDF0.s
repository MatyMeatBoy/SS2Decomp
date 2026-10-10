	thumb_func_start sub_0801DDF0
sub_0801DDF0: @ 0x0801DDF0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0801DE10
	adds r0, r0, r1
	ldr r2, _0801DE14
	adds r1, r4, #0
	bl sub_080B8578
	pop {r4}
	pop {r0}
	bx r0
_0801DE10: .4byte gUnk_03003D18
_0801DE14: .4byte 0x04000008
	thumb_func_end sub_0801DDF0
