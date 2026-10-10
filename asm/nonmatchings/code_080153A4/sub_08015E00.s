	thumb_func_start sub_08015E00
sub_08015E00: @ 0x08015E00
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08015E34
	movs r0, #0x34
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08015E38
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08000274
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08015E34: .4byte gUnk_03003C10
_08015E38: .4byte sub_08014170
	thumb_func_end sub_08015E00
