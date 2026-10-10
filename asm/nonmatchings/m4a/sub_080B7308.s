	thumb_func_start sub_080B7308
sub_080B7308: @ 0x080B7308
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _080B7334
	ldr r1, _080B7338
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1, #0]
	ldr r1, [r2, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	bne _080B732E
	adds r0, r2, #0
	bl sub_080B7134
_080B732E:
	pop {r0}
	bx r0
	.2byte 0x0000
_080B7334: .4byte gUnk_080BC5DC
_080B7338: .4byte gUnk_080BC60C
	thumb_func_end sub_080B7308
