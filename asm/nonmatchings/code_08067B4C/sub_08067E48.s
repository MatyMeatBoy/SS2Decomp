	thumb_func_start sub_08067E48
sub_08067E48: @ 0x08067E48
	movs r1, #0
	ldr r0, _08067E5C
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #2
	bne _08067E56
	movs r1, #1
_08067E56:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000
_08067E5C: .4byte gUnk_03006300
	thumb_func_end sub_08067E48
