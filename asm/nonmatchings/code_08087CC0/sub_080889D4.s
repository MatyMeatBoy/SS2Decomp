	thumb_func_start sub_080889D4
sub_080889D4: @ 0x080889D4
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08001494
	ldr r2, _08088A0C
	str r0, [r2, #0x20]
	ldr r1, _08088A10
	str r1, [r2, #0xc]
	ldr r1, _08088A14
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xa
	str r0, [r2, #8]
	movs r0, #0
	str r0, [r2, #0x24]
	adds r0, r2, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08000274
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08088A0C: .4byte gUnk_030061B0
_08088A10: .4byte sub_08087A5C
_08088A14: .4byte 0x00000BFC
	thumb_func_end sub_080889D4
