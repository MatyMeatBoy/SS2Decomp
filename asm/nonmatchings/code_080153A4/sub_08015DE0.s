	thumb_func_start sub_08015DE0
sub_08015DE0: @ 0x08015DE0
	adds r3, r0, #0
	ldr r2, [r3, #0]
	subs r0, r1, r2
	asrs r0, r0, #1
	cmp r0, #0
	ble _08015DF0
	adds r0, r2, r0
	b _08015DF2
_08015DF0:
	adds r0, r2, #1
_08015DF2:
	str r0, [r3, #0]
	ldr r0, [r3, #0]
	cmp r1, r0
	bgt _08015DFC
	str r1, [r3, #0]
_08015DFC:
	bx lr
	thumb_func_end sub_08015DE0
