	thumb_func_start sub_08067F94
sub_08067F94: @ 0x08067F94
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r4, _08067FD0
	ldr r2, [r4, #0]
	cmp r2, #0x31
	bhi _08067FD8
	ldr r1, _08067FD4
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r2, [r1, #0]
	adds r2, r2, r0
	movs r3, #1
	str r3, [r2, #4]
	movs r0, #0x9e
	strb r0, [r2, #0]
	lsls r0, r5, #0x10
	lsls r1, r6, #8
	orrs r0, r1
	orrs r0, r7
	str r0, [r2, #8]
	strb r3, [r2, #1]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	movs r0, #1
	b _08067FDA
	.2byte 0x0000
_08067FD0: .4byte gUnk_03006338
_08067FD4: .4byte gUnk_03006300
_08067FD8:
	movs r0, #0
_08067FDA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08067F94
