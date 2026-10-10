	thumb_func_start sub_08097A74
sub_08097A74: @ 0x08097A74
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r2, #0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1, #0]
	ldrh r1, [r0, #0]
	lsrs r1, r1, #4
	ldrh r2, [r0, #2]
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x14
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r4, #0
	bl sub_08096060
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	cmp r5, #0
	beq _08097AB4
	adds r1, r4, #0
	adds r1, #0x14
	ldrh r2, [r4, #8]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r6, #0
	movs r3, #0
	bl sub_08013E90
	strh r0, [r4, #8]
_08097AB4:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08097A74
