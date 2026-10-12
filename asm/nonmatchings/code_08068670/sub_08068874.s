	thumb_func_start sub_08068874
sub_08068874: @ 0x08068874
	ldr r0, _08068884
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	cmp r0, #1
	beq _08068888
	movs r0, #0
	b _0806888A
	.2byte 0x0000
_08068884: .4byte gUnk_03006300
_08068888:
	adds r0, r1, #0
_0806888A:
	bx lr
	thumb_func_end sub_08068874
