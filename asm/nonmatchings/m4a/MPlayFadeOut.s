	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x080B7150
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _080B716C
	cmp r3, r0
	bne _080B7168
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_080B7168:
	bx lr
	.2byte 0x0000
_080B716C: .4byte 0x68736D53
	thumb_func_end MPlayFadeOut
