	thumb_func_start sub_08000BB0
sub_08000BB0: @ 0x08000BB0
	ldr r1, _08000BC4
	movs r0, #0xfa
	strb r0, [r1, #0]
	movs r0, #0x88
	strb r0, [r1, #1]
	movs r0, #0x86
	strb r0, [r1, #2]
	movs r0, #4
	strb r0, [r1, #3]
	bx lr
_08000BC4: .4byte gUnk_03001318
	thumb_func_end sub_08000BB0
