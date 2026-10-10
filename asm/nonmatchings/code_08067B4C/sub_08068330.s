	thumb_func_start sub_08068330
sub_08068330: @ 0x08068330
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08068370
	ldr r0, [r4, #0]
	cmp r0, #0x31
	bhi _0806837C
	bl sub_080020F4
	ldr r1, _08068374
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	cmp r0, #9
	bhi _0806837C
	ldr r2, _08068378
	ldr r1, [r4, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r2, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0x84
	strb r0, [r1, #0]
	str r5, [r1, #8]
	strb r2, [r1, #1]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	movs r0, #1
	b _0806837E
_08068370: .4byte gUnk_03006338
_08068374: .4byte gUnk_03006210
_08068378: .4byte gUnk_03006300
_0806837C:
	movs r0, #0
_0806837E:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08068330
