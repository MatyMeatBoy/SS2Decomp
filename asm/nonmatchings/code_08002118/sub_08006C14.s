	thumb_func_start sub_08006C14
sub_08006C14: @ 0x08006C14
	push {lr}
	ldr r1, _08006C2C
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _08006C26
	movs r0, #0
	str r0, [r1, #0]
	bl sub_080B77A0
_08006C26:
	pop {r0}
	bx r0
	.2byte 0x0000
_08006C2C: .4byte gUnk_03002870
	thumb_func_end sub_08006C14
