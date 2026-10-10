	thumb_func_start sub_0805D348
sub_0805D348: @ 0x0805D348
	ldr r0, _0805D368
	ldr r0, [r0, #0]
	movs r2, #0xa8
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	ldr r3, _0805D36C
_0805D356:
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	bne _0805D370
	ldr r0, [r1, #4]
	cmp r0, r3
	bhi _0805D370
	movs r0, #1
	b _0805D37A
	.2byte 0x0000
_0805D368: .4byte gUnk_030034E0
_0805D36C: .4byte 0x0001869F
_0805D370:
	adds r2, #1
	adds r1, #0x10
	cmp r2, #0x18
	ble _0805D356
	movs r0, #0
_0805D37A:
	bx lr
	thumb_func_end sub_0805D348
