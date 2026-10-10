	thumb_func_start sub_080020F4
sub_080020F4: @ 0x080020F4
	ldr r0, _08002104
	ldr r0, [r0, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08002108
	movs r0, #0
	b _08002110
_08002104: .4byte gUnk_030027D0
_08002108:
	ldr r0, _08002114
	ldr r0, [r0, #0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
_08002110:
	bx lr
	.2byte 0x0000
_08002114: .4byte 0x04000128
	thumb_func_end sub_080020F4
