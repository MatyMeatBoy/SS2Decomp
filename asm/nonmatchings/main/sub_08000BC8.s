	thumb_func_start sub_08000BC8
sub_08000BC8: @ 0x08000BC8
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	ldr r0, [r6, #0]
	lsrs r4, r0, #8
	movs r1, #3
	ands r1, r4
	cmp r1, #0
	beq _08000BDE
	adds r0, r4, #4
	subs r4, r0, r1
_08000BDE:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _08000BF6
	b _08000BEA
_08000BE6:
	bl sub_080003F0
_08000BEA:
	adds r0, r4, #0
	bl sub_08001494
	str r0, [r5, #0]
	cmp r0, #0
	beq _08000BE6
_08000BF6:
	ldr r1, [r5, #0]
	adds r0, r6, #0
	bl sub_080B8580
	ldr r0, [r5, #0]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08000BC8
