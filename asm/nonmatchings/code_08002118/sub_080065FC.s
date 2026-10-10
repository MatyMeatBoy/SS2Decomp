	thumb_func_start sub_080065FC
sub_080065FC: @ 0x080065FC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _08006630
	ldr r1, _08006634
	str r1, [r0, #0xc]
	ldr r3, _08006638
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0xa
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x24]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08000274
	pop {r4, r5}
	pop {r0}
	bx r0
_08006630: .4byte gUnk_03003480
_08006634: .4byte sub_08003984
_08006638: .4byte 0x00001FFC
	thumb_func_end sub_080065FC
