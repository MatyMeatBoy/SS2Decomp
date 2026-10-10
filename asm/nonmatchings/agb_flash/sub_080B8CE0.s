	thumb_func_start sub_080B8CE0
sub_080B8CE0: @ 0x080B8CE0
	push {r4, lr}
	ldr r4, _080B8D0C
	movs r2, #0xaa
	strb r2, [r4, #0]
	ldr r3, _080B8D10
	movs r2, #0x55
	strb r2, [r3, #0]
	movs r2, #0xa0
	strb r2, [r4, #0]
	ldrb r2, [r0, #0]
	strb r2, [r1, #0]
	ldr r3, _080B8D14
	ldrb r2, [r0, #0]
	ldr r3, [r3, #0]
	movs r0, #1
	bl sub_080B8F30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
_080B8D0C: .4byte 0x0E005555
_080B8D10: .4byte 0x0E002AAA
_080B8D14: .4byte gUnk_030076D8
	thumb_func_end sub_080B8CE0
