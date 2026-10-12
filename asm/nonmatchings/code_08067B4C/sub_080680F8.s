	thumb_func_start sub_080680F8
sub_080680F8: @ 0x080680F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08068134
	ldr r0, [r5, #0]
	cmp r0, #0x31
	bhi _0806813C
	bl sub_0800CFF0
	cmp r0, #0
	bne _0806813C
	ldr r2, _08068138
	ldr r1, [r5, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r4, [r2, #0]
	adds r4, r4, r0
	bl sub_0800CFC8
	movs r1, #1
	str r1, [r4, #4]
	movs r0, #0xa5
	strb r0, [r4, #0]
	str r6, [r4, #8]
	strb r1, [r4, #1]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	movs r0, #1
	b _0806813E
_08068134: .4byte gUnk_03006338
_08068138: .4byte gUnk_03006300
_0806813C:
	movs r0, #0
_0806813E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_080680F8
