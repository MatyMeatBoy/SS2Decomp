	thumb_func_start sub_08067CE8
sub_08067CE8: @ 0x08067CE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _08067D18
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bhi _08067D20
	ldr r1, _08067D1C
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0xb0
	strb r0, [r1, #0]
	str r4, [r1, #8]
	strb r2, [r1, #1]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	movs r0, #1
	b _08067D22
	.2byte 0x0000
_08067D18: .4byte gUnk_03006338
_08067D1C: .4byte gUnk_03006300
_08067D20:
	movs r0, #0
_08067D22:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08067CE8
