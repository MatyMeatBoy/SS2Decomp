	thumb_func_start sub_08006B2C
sub_08006B2C: @ 0x08006B2C
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _08006B58
	ldr r1, _08006B5C
	str r1, [r0, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #1
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x24]
	bl sub_08000274
	pop {r0}
	bx r0
_08006B58: .4byte gUnk_030061E0
_08006B5C: .4byte sub_080066BC
	thumb_func_end sub_08006B2C
