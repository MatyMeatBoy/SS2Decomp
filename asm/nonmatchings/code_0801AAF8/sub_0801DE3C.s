	thumb_func_start sub_0801DE3C
sub_0801DE3C: @ 0x0801DE3C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0801DE5C
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x18
	bl sub_080B8578
	pop {r4}
	pop {r0}
	bx r0
_0801DE5C: .4byte gUnk_03003D38
	thumb_func_end sub_0801DE3C
