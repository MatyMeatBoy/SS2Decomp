	thumb_func_start sub_080653D4
sub_080653D4: @ 0x080653D4
	push {r4, lr}
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _080653F8
	adds r4, r1, r0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _080653F0
	adds r0, r4, #0
	bl sub_080003A8
_080653F0:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080653F8: .4byte gUnk_03006110
	thumb_func_end sub_080653D4
