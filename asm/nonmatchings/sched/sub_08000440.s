	thumb_func_start sub_08000440
sub_08000440: @ 0x08000440
	movs r3, #0
	ldr r1, _08000460
	ldr r1, [r1, #0]
_08000446:
	ldr r2, [r1, #4]
	cmp r2, #4
	bne _08000456
	ldr r2, [r1, #0x14]
	cmp r0, r2
	bne _08000456
	movs r0, #1
	bx lr
_08000456:
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _08000446
	adds r0, r3, #0
	bx lr
_08000460: .4byte gUnk_03001240
	thumb_func_end sub_08000440
