	thumb_func_start sub_0805D190
sub_0805D190: @ 0x0805D190
	push {r4, lr}
	ldr r4, _0805D1B0
	ldr r2, [r4, #0]
	movs r3, #0x98
	lsls r3, r3, #1
	adds r1, r2, r3
	ldrh r1, [r1, #0]
	cmp r1, #7
	bne _0805D1B4
	movs r1, #0x9d
	lsls r1, r1, #1
	adds r2, r2, r1
	movs r1, #1
	strb r1, [r2, #0]
	b _0805D1D6
	.2byte 0x0000
_0805D1B0: .4byte gUnk_030034E0
_0805D1B4:
	bl sub_080020F4
	adds r2, r0, #0
	ldr r3, _0805D1DC
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r2, r1
	adds r1, r1, r3
	adds r1, #0xc6
	movs r3, #0
	movs r2, #0
	strh r2, [r1, #0]
	ldr r1, [r4, #0]
	movs r2, #0x9d
	lsls r2, r2, #1
	adds r1, r1, r2
	strb r3, [r1, #0]
_0805D1D6:
	pop {r4}
	pop {r1}
	bx r1
_0805D1DC: .4byte gUnk_03003CE0
	thumb_func_end sub_0805D190
