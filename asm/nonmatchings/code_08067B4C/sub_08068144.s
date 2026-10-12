	thumb_func_start sub_08068144
sub_08068144: @ 0x08068144
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0806817C
	ldr r0, [r4, #0]
	cmp r0, #0x31
	bhi _08068184
	bl sub_0800CFF0
	cmp r0, #0
	bne _08068184
	ldr r2, _08068180
	ldr r1, [r4, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r2, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0xa7
	strb r0, [r1, #0]
	str r5, [r1, #8]
	strb r2, [r1, #1]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	movs r0, #1
	b _08068186
_0806817C: .4byte gUnk_03006338
_08068180: .4byte gUnk_03006300
_08068184:
	movs r0, #0
_08068186:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08068144
