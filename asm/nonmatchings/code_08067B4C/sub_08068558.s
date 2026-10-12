	thumb_func_start sub_08068558
sub_08068558: @ 0x08068558
	ldr r3, _08068584
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bhi _0806858C
	ldr r1, _08068588
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r2, #1
	str r2, [r1, #4]
	movs r0, #0xaf
	strb r0, [r1, #0]
	str r2, [r1, #8]
	strb r2, [r1, #1]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	movs r0, #1
	b _0806858E
	.2byte 0x0000
_08068584: .4byte gUnk_03006338
_08068588: .4byte gUnk_03006300
_0806858C:
	movs r0, #0
_0806858E:
	bx lr
	thumb_func_end sub_08068558
