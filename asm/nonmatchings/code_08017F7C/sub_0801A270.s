	thumb_func_start sub_0801A270
sub_0801A270: @ 0x0801A270
	movs r1, #0
	ldr r0, _0801A288
	movs r3, #1
	ldr r2, [r0, #0]
_0801A278:
	adds r0, r3, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _0801A28C
	adds r0, r1, #0
	b _0801A296
	.2byte 0x0000
_0801A288: .4byte gUnk_030056FC
_0801A28C:
	adds r1, #1
	cmp r1, #4
	ble _0801A278
	movs r0, #1
	negs r0, r0
_0801A296:
	bx lr
	thumb_func_end sub_0801A270
