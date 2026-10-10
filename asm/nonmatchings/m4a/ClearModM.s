	thumb_func_start ClearModM
ClearModM: @ 0x080B81EC
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _080B8200
	movs r0, #0xc
	b _080B8202
_080B8200:
	movs r0, #3
_080B8202:
	ldrb r2, [r1, #0]
	orrs r0, r2
	strb r0, [r1, #0]
	bx lr
	thumb_func_end ClearModM
