	thumb_func_start sub_0805D650
sub_0805D650: @ 0x0805D650
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bge _0805D65A
	movs r4, #0
_0805D65A:
	ldr r1, _0805D6A4
	lsls r0, r4, #4
	movs r2, #0xb8
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r1, #0]
	adds r3, r1, r0
	movs r5, #1
	negs r5, r5
	adds r2, r4, #0
	adds r1, #0x6a
	ldrh r1, [r1, #0]
	lsls r0, r1, #4
	subs r0, r0, r1
	cmp r4, r0
	bge _0805D69A
	ldr r6, _0805D6A8
	adds r1, r0, #0
_0805D67E:
	ldrh r0, [r3, #0]
	cmp r0, #0xa
	bne _0805D692
	ldr r0, [r3, #4]
	cmp r5, r0
	bge _0805D692
	cmp r0, r6
	beq _0805D692
	adds r4, r2, #0
	adds r5, r0, #0
_0805D692:
	adds r2, #1
	adds r3, #0x10
	cmp r2, r1
	blt _0805D67E
_0805D69A:
	cmp r5, #0
	blt _0805D6AC
	adds r0, r4, #0
	b _0805D6B0
	.2byte 0x0000
_0805D6A4: .4byte gUnk_030034E0
_0805D6A8: .4byte 0x000186A0
_0805D6AC:
	movs r0, #1
	negs r0, r0
_0805D6B0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_0805D650
