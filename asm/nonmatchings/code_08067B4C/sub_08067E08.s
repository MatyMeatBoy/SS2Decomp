	thumb_func_start sub_08067E08
sub_08067E08: @ 0x08067E08
	ldr r3, _08067E38
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bhi _08067E44
	ldr r1, _08067E3C
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0x90
	strb r0, [r1, #0]
	ldr r0, _08067E40
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	str r0, [r1, #8]
	strb r2, [r1, #1]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	movs r0, #1
	b _08067E46
_08067E38: .4byte gUnk_03006338
_08067E3C: .4byte gUnk_03006300
_08067E40: .4byte gUnk_03005CF4
_08067E44:
	movs r0, #0
_08067E46:
	bx lr
	thumb_func_end sub_08067E08
