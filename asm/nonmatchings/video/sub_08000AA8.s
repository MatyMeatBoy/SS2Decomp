	thumb_func_start sub_08000AA8
sub_08000AA8: @ 0x08000AA8
	adds r2, r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r2, #0
	beq _08000AEA
	cmp r0, #1
	beq _08000AD4
	cmp r0, #1
	bgt _08000AC2
	cmp r0, #0
	beq _08000ACC
	b _08000AEA
_08000AC2:
	cmp r1, #2
	beq _08000ADC
	cmp r1, #3
	beq _08000AE4
	b _08000AEA
_08000ACC:
	ldr r1, _08000AD0
	b _08000AE6
_08000AD0: .4byte 0x04000008
_08000AD4:
	ldr r1, _08000AD8
	b _08000AE6
_08000AD8: .4byte 0x0400000A
_08000ADC:
	ldr r1, _08000AE0
	b _08000AE6
_08000AE0: .4byte 0x0400000C
_08000AE4:
	ldr r1, _08000AEC
_08000AE6:
	ldrh r0, [r2, #0]
	strh r0, [r1, #0]
_08000AEA:
	bx lr
_08000AEC: .4byte 0x0400000E
	thumb_func_end sub_08000AA8
