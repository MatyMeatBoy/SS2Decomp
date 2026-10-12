	thumb_func_start sub_08000470
sub_08000470: @ 0x08000470
	ldr r1, _08000488
	ldr r1, [r1, #0]
_08000474:
	cmp r0, r1
	beq _08000482
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _08000474
	movs r0, #0
	b _08000484
_08000482:
	movs r0, #1
_08000484:
	bx lr
	.2byte 0x0000
_08000488: .4byte gUnk_03001240
	thumb_func_end sub_08000470
