	thumb_func_start sub_08002A8C
sub_08002A8C: @ 0x08002A8C
	movs r1, #0
	ldr r0, _08002A9C
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _08002A98
	movs r1, #1
_08002A98:
	adds r0, r1, #0
	bx lr
_08002A9C: .4byte gUnk_03002838
	thumb_func_end sub_08002A8C
