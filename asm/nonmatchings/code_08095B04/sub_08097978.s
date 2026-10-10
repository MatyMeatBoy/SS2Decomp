	thumb_func_start sub_08097978
sub_08097978: @ 0x08097978
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r7, [sp, #0x14]
	asrs r1, r4, #8
	subs r1, r2, r1
	asrs r0, r5, #8
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	beq _080979B8
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	ldr r2, _080979B4
	adds r1, r0, #0
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r6, [r1, #0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r1, [r0, #0]
	b _080979C6
_080979B4: .4byte gUnk_080B9704
_080979B8:
	movs r6, #0
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r3, r5
	bge _080979C6
	movs r1, #0xff
	lsls r1, r1, #8
_080979C6:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #0]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [r7, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08097978
