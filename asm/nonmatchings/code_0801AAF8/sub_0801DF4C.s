	thumb_func_start sub_0801DF4C
sub_0801DF4C: @ 0x0801DF4C
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r3, #0
	ldr r1, _0801DF7C
	ldr r0, [r1, #0]
	ldrh r0, [r0, #2]
	cmp r0, r2
	beq _0801DF76
	adds r5, r1, #0
	movs r1, #0
	movs r4, #0xb8
	lsls r4, r4, #2
_0801DF64:
	adds r1, r1, r4
	adds r3, #1
	cmp r3, #4
	bhi _0801DF76
	ldr r0, [r5, #0]
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	cmp r0, r2
	bne _0801DF64
_0801DF76:
	pop {r4, r5}
	pop {r0}
	bx r0
_0801DF7C: .4byte gUnk_030056F4
	thumb_func_end sub_0801DF4C
