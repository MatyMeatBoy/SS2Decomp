	thumb_func_start sub_080B77EC
sub_080B77EC: @ 0x080B77EC
	push {r4, lr}
	ldr r0, _080B781C
	ldr r2, [r0, #0]
	ldr r3, [r2, #0]
	ldr r0, _080B7820
	cmp r3, r0
	beq _080B7814
	ldr r0, _080B7824
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0, #0]
	adds r0, #0xc
	strh r1, [r0, #0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2, #0]
_080B7814:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B781C: .4byte gUnk_03007FF0
_080B7820: .4byte 0x68736D53
_080B7824: .4byte 0x040000C6
	thumb_func_end sub_080B77EC
