	thumb_func_start sub_08000378
sub_08000378: @ 0x08000378
	ldr r0, [r4, #0x20]
	bl sub_08001538
	ldr r0, _080003A0
	ldr r1, [r0, #0]
	subs r1, #1
	str r1, [r0, #0]
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0]
	str r1, [r0, #0]
	cmp r1, #0
	beq _08000398
	str r0, [r1, #0x18]
	b _08000320
_08000398:
	b _08000320
	.2byte 0x0000
_0800039C: .4byte gUnk_0300123C
_080003A0: .4byte gUnk_03001244
_080003A4: .4byte gUnk_03001248
	thumb_func_end sub_08000378
