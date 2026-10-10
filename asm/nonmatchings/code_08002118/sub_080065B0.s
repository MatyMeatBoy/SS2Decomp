	thumb_func_start sub_080065B0
sub_080065B0: @ 0x080065B0
	push {r4, lr}
	ldr r4, _080065F0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080065C4
	adds r0, r4, #0
	bl sub_080003A8
_080065C4:
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08001494
	ldr r1, _080065F4
	str r1, [r4, #0xc]
	ldr r2, _080065F8
	adds r1, r0, r2
	str r1, [r4, #0x10]
	str r0, [r4, #0x20]
	movs r0, #1
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080065F0: .4byte gUnk_03002840
_080065F4: .4byte sub_08002B70
_080065F8: .4byte 0x00000FFC
	thumb_func_end sub_080065B0
