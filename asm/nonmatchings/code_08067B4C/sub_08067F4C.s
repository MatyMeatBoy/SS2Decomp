	thumb_func_start sub_08067F4C
sub_08067F4C: @ 0x08067F4C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r3, _08067F84
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bhi _08067F8C
	ldr r1, _08067F88
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0x9d
	strb r0, [r1, #0]
	lsls r0, r4, #0x10
	orrs r0, r5
	str r0, [r1, #8]
	str r6, [r1, #0xc]
	strb r2, [r1, #1]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	movs r0, #1
	b _08067F8E
_08067F84: .4byte gUnk_03006338
_08067F88: .4byte gUnk_03006300
_08067F8C:
	movs r0, #0
_08067F8E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08067F4C
