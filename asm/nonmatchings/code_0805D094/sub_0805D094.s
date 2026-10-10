	thumb_func_start sub_0805D094
sub_0805D094: @ 0x0805D094
	push {r4, lr}
	ldr r4, _0805D0BC
	ldr r3, [r4, #0]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r3, r1
	ldrh r1, [r2, #0]
	cmp r1, #4
	bne _0805D0D4
	adds r0, r2, #0
	bl sub_0805D210
	adds r2, r0, #0
	cmp r2, #0
	beq _0805D0C4
	ldr r1, [r4, #0]
	ldr r3, _0805D0C0
	adds r2, r1, r3
	movs r1, #1
	b _0805D0DA
_0805D0BC: .4byte gUnk_030034E0
_0805D0C0: .4byte 0x00000109
_0805D0C4:
	ldr r1, [r4, #0]
	ldr r3, _0805D0D0
	adds r1, r1, r3
	strb r2, [r1, #0]
	b _0805D0DC
	.2byte 0x0000
_0805D0D0: .4byte 0x00000109
_0805D0D4:
	ldr r1, _0805D0E4
	adds r2, r3, r1
	movs r1, #0
_0805D0DA:
	strb r1, [r2, #0]
_0805D0DC:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
_0805D0E4: .4byte 0x00000109
	thumb_func_end sub_0805D094
