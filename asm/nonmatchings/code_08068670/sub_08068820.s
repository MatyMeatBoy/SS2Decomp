	thumb_func_start sub_08068820
sub_08068820: @ 0x08068820
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, _08068858
	ldr r3, [r2, #0]
	cmp r3, #0x31
	bhi _08068860
	ldr r1, _0806885C
	lsls r0, r3, #4
	adds r0, r0, r3
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r0, #1
	str r0, [r1, #4]
	movs r0, #0xa4
	strb r0, [r1, #0]
	str r4, [r1, #8]
	str r5, [r1, #0xc]
	str r6, [r1, #0x10]
	movs r0, #2
	strb r0, [r1, #1]
	ldr r0, [r2, #0]
	adds r0, #1
	str r0, [r2, #0]
	movs r0, #1
	b _08068862
_08068858: .4byte gUnk_03006338
_0806885C: .4byte gUnk_03006300
_08068860:
	movs r0, #0
_08068862:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08068820
