	thumb_func_start sub_0800CB3C
sub_0800CB3C: @ 0x0800CB3C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0800CB70
	ldr r0, _0800CB74
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x64
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08000274
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0800CB70: .4byte gUnk_030034B0
_0800CB74: .4byte sub_0800BD5C
	thumb_func_end sub_0800CB3C
