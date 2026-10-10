	thumb_func_start sub_08006C70
sub_08006C70: @ 0x08006C70
	push {lr}
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _08006C90
	cmp r1, r0
	bhi _08006C8A
	ldr r0, _08006C94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08006C8A
	adds r0, r1, #0
	bl sub_080B7208
_08006C8A:
	pop {r0}
	bx r0
	.2byte 0x0000
_08006C90: .4byte 0x000001AB
_08006C94: .4byte gUnk_030028AC
	thumb_func_end sub_08006C70
