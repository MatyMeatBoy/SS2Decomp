	thumb_func_start sub_080653FC
sub_080653FC: @ 0x080653FC
	push {r4, lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08065420
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08065418
	adds r0, r4, #0
	bl sub_080003A8
_08065418:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_08065420: .4byte gUnk_03006160
	thumb_func_end sub_080653FC
