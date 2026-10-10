	thumb_func_start sub_08098028
sub_08098028: @ 0x08098028
	ldr r1, _0809803C
	movs r0, #0
	strb r0, [r1, #0]
	ldr r2, _08098040
	ldrb r1, [r2, #0]
	movs r0, #0xfe
	ands r0, r1
	strb r0, [r2, #0]
	bx lr
	.2byte 0x0000
_0809803C: .4byte gUnk_030002BC
_08098040: .4byte gUnk_030002BD
	thumb_func_end sub_08098028
