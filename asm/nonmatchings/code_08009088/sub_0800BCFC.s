	thumb_func_start sub_0800BCFC
sub_0800BCFC: @ 0x0800BCFC
	push {r4, lr}
	sub sp, #4
	ldr r4, [sp, #0xc]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, #0x1c
	str r4, [sp, #0]
	bl sub_0800B7DC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0800BCFC
