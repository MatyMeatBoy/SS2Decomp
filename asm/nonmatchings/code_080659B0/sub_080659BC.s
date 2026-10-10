	thumb_func_start sub_080659BC
sub_080659BC: @ 0x080659BC
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r2, #0
	adds r2, r3, #0
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0]
	adds r4, r0, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r0, #8]
	str r4, [sp, #8]
	ldr r0, [r0, #0]
	str r0, [sp, #0xc]
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_08007CF0
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080659BC
