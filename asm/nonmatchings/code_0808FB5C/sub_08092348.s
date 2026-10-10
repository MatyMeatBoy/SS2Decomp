	thumb_func_start sub_08092348
sub_08092348: @ 0x08092348
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r1, _080923A4
	ldr r0, _080923A8
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [r1, #0x20]
	adds r4, r1, #0
_08092362:
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08001494
	str r0, [r4, #0x20]
	bl sub_080003F0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _08092362
	ldr r0, _080923A4
	ldr r1, [r0, #0x20]
	ldr r2, _080923AC
	adds r1, r1, r2
	str r1, [r0, #0x10]
	movs r1, #0x40
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0]
	str r1, [r0, #0x18]
	str r1, [r0, #0x24]
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	lsls r2, r6, #0x18
	asrs r2, r2, #0x10
	lsls r3, r7, #0x18
	asrs r3, r3, #0x18
	orrs r2, r3
	bl sub_08000274
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080923A4: .4byte gUnk_030001E8
_080923A8: .4byte sub_080923B4
_080923AC: .4byte 0x000007FC
	thumb_func_end sub_08092348
