	thumb_func_start sub_080A8090
sub_080A8090: @ 0x080A8090
	adds r1, r0, #0
	ldr r0, _080A80B0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _080A809E
	movs r0, #0x90
	lsls r0, r0, #7
_080A809E:
	str r0, [r1, #4]
	ldr r0, _080A80B4
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _080A80B8
	movs r0, #1
	b _080A80BA
	.2byte 0x0000
_080A80B0: .4byte gUnk_03000414
_080A80B4: .4byte gUnk_03000410
_080A80B8:
	movs r0, #0
_080A80BA:
	bx lr
	thumb_func_end sub_080A8090
