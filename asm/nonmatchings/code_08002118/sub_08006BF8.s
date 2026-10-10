	thumb_func_start sub_08006BF8
sub_08006BF8: @ 0x08006BF8
	push {lr}
	ldr r1, _08006C10
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _08006C0A
	movs r0, #1
	str r0, [r1, #0]
	bl sub_080B77EC
_08006C0A:
	pop {r0}
	bx r0
	.2byte 0x0000
_08006C10: .4byte gUnk_03002870
	thumb_func_end sub_08006BF8
