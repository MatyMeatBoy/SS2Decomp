	thumb_func_start sub_08067C28
sub_08067C28: @ 0x08067C28
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _08067C58
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bhi _08067C60
	ldr r1, _08067C5C
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0x87
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	str r0, [r1, #8]
	strb r2, [r1, #1]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	movs r0, #1
	b _08067C62
_08067C58: .4byte gUnk_03006338
_08067C5C: .4byte gUnk_03006300
_08067C60:
	movs r0, #0
_08067C62:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08067C28
