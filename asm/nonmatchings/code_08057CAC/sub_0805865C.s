	thumb_func_start sub_0805865C
sub_0805865C: @ 0x0805865C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08058678
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08058672
	adds r0, r2, #0
	bl sub_08006D08
_08058672:
	pop {r0}
	bx r0
	.2byte 0x0000
_08058678: .4byte gUnk_030027D0
	thumb_func_end sub_0805865C
