	thumb_func_start sub_0801AAE0
sub_0801AAE0: @ 0x0801AAE0
	movs r2, #0
	ldr r0, _0801AAF4
	ldrh r1, [r0, #0]
	movs r0, #0x16
	ands r0, r1
	cmp r0, #0
	bne _0801AAF0
	movs r2, #1
_0801AAF0:
	adds r0, r2, #0
	bx lr
_0801AAF4: .4byte gUnk_03000028
	thumb_func_end sub_0801AAE0
