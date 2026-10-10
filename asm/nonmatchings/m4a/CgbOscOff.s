	thumb_func_start CgbOscOff
CgbOscOff: @ 0x080B7B84
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _080B7BAC
	cmp r0, #2
	bgt _080B7B98
	cmp r0, #1
	beq _080B7B9E
	b _080B7BC0
_080B7B98:
	cmp r1, #3
	beq _080B7BB4
	b _080B7BC0
_080B7B9E:
	ldr r1, _080B7BA8
	movs r0, #8
	strb r0, [r1, #0]
	adds r1, #2
	b _080B7BC8
_080B7BA8: .4byte 0x04000063
_080B7BAC:
	ldr r1, _080B7BB0
	b _080B7BC2
_080B7BB0: .4byte 0x04000069
_080B7BB4:
	ldr r1, _080B7BBC
	movs r0, #0
	b _080B7BCA
	.2byte 0x0000
_080B7BBC: .4byte 0x04000070
_080B7BC0:
	ldr r1, _080B7BD0
_080B7BC2:
	movs r0, #8
	strb r0, [r1, #0]
	adds r1, #4
_080B7BC8:
	movs r0, #0x80
_080B7BCA:
	strb r0, [r1, #0]
	bx lr
	.2byte 0x0000
_080B7BD0: .4byte 0x04000079
	thumb_func_end CgbOscOff
