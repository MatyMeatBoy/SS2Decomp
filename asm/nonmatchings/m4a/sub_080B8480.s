	thumb_func_start sub_080B8480
sub_080B8480: @ 0x080B8480
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _080B84B8
	ands r4, r0
	ldrb r0, [r2, #0]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _080B84BC
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _080B84C0
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _080B84C4
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B84B8: .4byte 0xFFFFFF00
_080B84BC: .4byte 0xFFFF00FF
_080B84C0: .4byte 0xFF00FFFF
_080B84C4: .4byte 0x00FFFFFF
	thumb_func_end sub_080B8480
