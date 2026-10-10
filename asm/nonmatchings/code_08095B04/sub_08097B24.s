	thumb_func_start sub_08097B24
sub_08097B24: @ 0x08097B24
	push {r4, lr}
	ldr r4, [r0, #0x14]
	lsls r4, r4, #8
	ldr r0, [r0, #0x18]
	lsls r0, r0, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r4, r4, #0x10
	subs r1, r1, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	asrs r0, r0, #0x10
	subs r2, r2, r0
	lsls r4, r3, #0x10
	asrs r4, r4, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r1, #0
	muls r0, r1, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	cmp r4, r0
	ble _08097B64
	movs r1, #1
_08097B64:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08097B24
