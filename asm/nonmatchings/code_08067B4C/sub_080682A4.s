	thumb_func_start sub_080682A4
sub_080682A4: @ 0x080682A4
	ldr r0, _080682B0
	ldr r0, [r0, #0]
	cmp r0, #0x31
	bhi _080682B4
	movs r0, #0
	b _080682B6
_080682B0: .4byte gUnk_03006338
_080682B4:
	movs r0, #1
_080682B6:
	bx lr
	thumb_func_end sub_080682A4
