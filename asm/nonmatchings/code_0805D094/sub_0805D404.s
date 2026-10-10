	thumb_func_start sub_0805D404
sub_0805D404: @ 0x0805D404
	push {r4, lr}
	movs r3, #0
	movs r2, #0
	ldr r0, _0805D430
	ldr r0, [r0, #0]
	movs r4, #0xb8
	lsls r4, r4, #2
	adds r1, r0, r4
_0805D414:
	ldrh r0, [r1, #0]
	cmp r0, #0xa
	bne _0805D41E
	ldr r0, [r1, #4]
	adds r3, r3, r0
_0805D41E:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x4a
	bls _0805D414
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
_0805D430: .4byte gUnk_030034E0
	thumb_func_end sub_0805D404
