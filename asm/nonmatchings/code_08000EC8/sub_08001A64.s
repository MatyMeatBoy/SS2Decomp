	thumb_func_start sub_08001A64
sub_08001A64: @ 0x08001A64
	push {lr}
	bl sub_08000EF4
	movs r0, #0xc0
	bl sub_08000FD4
	bl sub_08000F2C
	ldr r1, _08001A94
	ldr r2, _08001A98
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #0x1c
	ldr r0, _08001A9C
	str r0, [r1, #0]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1, #0]
	ldr r1, _08001AA0
	movs r0, #0
	strb r0, [r1, #8]
	pop {r0}
	bx r0
	.2byte 0x0000
_08001A94: .4byte 0x04000128
_08001A98: .4byte 0x00002003
_08001A9C: .4byte 0x0000C352
_08001AA0: .4byte gUnk_030024B0
	thumb_func_end sub_08001A64
