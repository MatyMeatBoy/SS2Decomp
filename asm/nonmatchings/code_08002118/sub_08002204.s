	thumb_func_start sub_08002204
sub_08002204: @ 0x08002204
	ldr r0, _08002214
	ldr r0, [r0, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08002218
	movs r0, #1
	b _08002222
_08002214: .4byte gUnk_030027D0
_08002218:
	ldr r0, _08002224
	ldr r0, [r0, #0]
	lsrs r0, r0, #7
	movs r1, #1
	ands r0, r1
_08002222:
	bx lr
_08002224: .4byte gUnk_03002730
	thumb_func_end sub_08002204
