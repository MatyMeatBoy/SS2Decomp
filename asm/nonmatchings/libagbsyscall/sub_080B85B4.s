	thumb_func_start sub_080B85B4
sub_080B85B4: @ 0x080B85B4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _080B85D0
	movs r1, #0xaa
	strb r1, [r3, #0]
	ldr r2, _080B85D4
	movs r1, #0x55
	strb r1, [r2, #0]
	movs r1, #0xb0
	strb r1, [r3, #0]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	strb r0, [r1, #0]
	bx lr
_080B85D0: .4byte 0x0E005555
_080B85D4: .4byte 0x0E002AAA
	thumb_func_end sub_080B85B4
