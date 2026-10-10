	thumb_func_start sub_0801DD9C
sub_0801DD9C: @ 0x0801DD9C
	push {lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0801DDB4
	adds r0, r0, r1
	bl sub_0801E024
	pop {r0}
	bx r0
_0801DDB4: .4byte gUnk_03003CE0
	thumb_func_end sub_0801DD9C
