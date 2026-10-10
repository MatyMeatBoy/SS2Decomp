	thumb_func_start sub_0801DE18
sub_0801DE18: @ 0x0801DE18
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0801DE38
	adds r0, r0, r1
	adds r1, r4, #0
	movs r2, #0x18
	bl CpuSet
	pop {r4}
	pop {r0}
	bx r0
_0801DE38: .4byte gUnk_03003D38
	thumb_func_end sub_0801DE18
