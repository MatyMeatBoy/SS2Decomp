	thumb_func_start sub_08016ECC
sub_08016ECC: @ 0x08016ECC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	ldr r1, _08016F10
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	ldr r7, _08016F14
	movs r6, #1
	lsls r6, r1
	ldr r4, [r7, #0]
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _08016F20
	ldr r5, _08016F18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r0, #2
	adds r0, r5, #0
	adds r0, #8
	adds r3, r2, r0
	ldr r0, [r3, #0]
	cmp r0, #1
	bhi _08016F1C
	adds r0, r2, r5
	movs r1, #0
	str r1, [r0, #0]
	adds r0, r5, #4
	adds r0, r2, r0
	str r1, [r0, #0]
	str r1, [r3, #0]
	bics r4, r6
	str r4, [r7, #0]
	b _08016F20
	.2byte 0x0000
_08016F10: .4byte 0xFFFC0000
_08016F14: .4byte gUnk_030056F8
_08016F18: .4byte gUnk_03005700
_08016F1C:
	subs r0, #1
	str r0, [r3, #0]
_08016F20:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08016ECC
