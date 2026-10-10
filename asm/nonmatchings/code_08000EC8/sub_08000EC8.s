	thumb_func_start sub_08000EC8
sub_08000EC8: @ 0x08000EC8
	ldr r1, _08000EE4
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, _08000EE8
	movs r0, #0
	strh r0, [r1, #0]
	ldr r0, _08000EEC
	movs r1, #0
	str r1, [r0, #0]
	ldr r0, _08000EF0
	str r1, [r0, #0]
	bx lr
_08000EE4: .4byte gUnk_03000002
_08000EE8: .4byte gUnk_03000000
_08000EEC: .4byte gUnk_03000010
_08000EF0: .4byte gUnk_03000014
	thumb_func_end sub_08000EC8
