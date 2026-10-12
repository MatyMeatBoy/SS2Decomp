	thumb_func_start sub_0805A318
sub_0805A318: @ 0x0805A318
	push {r4, lr}
	bl sub_08002164
	adds r3, r0, #0
	movs r2, #0
	cmp r2, r3
	bhs _0805A348
	ldr r0, _0805A33C
	adds r0, #0x64
	movs r4, #0xa6
	lsls r4, r4, #1
_0805A32E:
	ldrh r1, [r0, #0]
	cmp r1, #6
	beq _0805A338
	cmp r1, #8
	bne _0805A340
_0805A338:
	movs r0, #1
	b _0805A34A
_0805A33C: .4byte gUnk_03003CE0
_0805A340:
	adds r0, r0, r4
	adds r2, #1
	cmp r2, r3
	blo _0805A32E
_0805A348:
	movs r0, #0
_0805A34A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0805A318
