	thumb_func_start sub_08002A54
sub_08002A54: @ 0x08002A54
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #2
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _08002A84
	ldr r1, _08002A88
	str r1, [r0, #0xc]
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0
	str r1, [r0, #0x24]
	movs r1, #1
	str r1, [r0, #8]
	movs r1, #0
	bl sub_08000274
	pop {r0}
	bx r0
	.2byte 0x0000
_08002A84: .4byte gUnk_03002810
_08002A88: .4byte sub_08002694
	thumb_func_end sub_08002A54
