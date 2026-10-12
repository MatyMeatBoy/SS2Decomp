	thumb_func_start sub_08088A60
sub_08088A60: @ 0x08088A60
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	ldr r2, _08088A9C
	str r0, [r2, #0x20]
	ldr r1, _08088AA0
	str r1, [r2, #0xc]
	ldr r1, _08088AA4
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xa
	str r0, [r2, #8]
	movs r0, #0
	str r0, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
	adds r0, r2, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08000274
	pop {r4, r5}
	pop {r0}
	bx r0
_08088A9C: .4byte gUnk_030061B0
_08088AA0: .4byte sub_08087A5C
_08088AA4: .4byte 0x00000BFC
	thumb_func_end sub_08088A60
