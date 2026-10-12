	thumb_func_start sub_08088A18
sub_08088A18: @ 0x08088A18
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	orrs r4, r0
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r2, _08088A58
	str r0, [r2, #0x20]
	ldr r1, _08088A5C
	str r1, [r2, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r2, #0x10]
	movs r0, #0xa
	str r0, [r2, #8]
	movs r0, #0
	str r0, [r2, #0x24]
	adds r0, r2, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08000274
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08088A58: .4byte gUnk_03003480
_08088A5C: .4byte sub_080878AC
	thumb_func_end sub_08088A18
