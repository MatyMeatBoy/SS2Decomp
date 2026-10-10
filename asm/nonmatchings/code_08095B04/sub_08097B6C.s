	thumb_func_start sub_08097B6C
sub_08097B6C: @ 0x08097B6C
	push {r4, r5, lr}
	ldr r5, [sp, #0xc]
	subs r4, r0, r2
	lsls r4, r4, #8
	subs r1, r1, r3
	lsls r1, r1, #8
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	cmp r5, r0
	ble _08097B9C
	movs r1, #1
_08097B9C:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08097B6C
