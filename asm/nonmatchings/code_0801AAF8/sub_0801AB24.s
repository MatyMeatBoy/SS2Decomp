	thumb_func_start sub_0801AB24
sub_0801AB24: @ 0x0801AB24
	ldr r0, _0801AB44
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0801AB48
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	negs r0, r0
	asrs r1, r0, #0x1f
	movs r0, #2
	ands r1, r0
	b _0801AB4A
	.2byte 0x0000
_0801AB44: .4byte gUnk_03000028
_0801AB48:
	movs r1, #1
_0801AB4A:
	adds r0, r1, #0
	bx lr
	thumb_func_end sub_0801AB24
