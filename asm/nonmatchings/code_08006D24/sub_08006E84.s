	thumb_func_start sub_08006E84
sub_08006E84: @ 0x08006E84
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _08006EBC
	ldr r1, _08006EC0
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0xfa
	lsls r1, r1, #2
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x18]
	str r1, [r0, #0]
	ldr r1, _08006EC4
	str r1, [r0, #0x24]
	movs r1, #0
	bl sub_08000274
	pop {r0}
	bx r0
	.2byte 0x0000
_08006EBC: .4byte gUnk_03002880
_08006EC0: .4byte sub_08006BC0
_08006EC4: .4byte sub_08006BE8
	thumb_func_end sub_08006E84
