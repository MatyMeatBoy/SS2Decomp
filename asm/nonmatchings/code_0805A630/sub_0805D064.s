	thumb_func_start sub_0805D064
sub_0805D064: @ 0x0805D064
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r2, #0]
	cmp r0, #2
	beq _0805D074
	movs r0, #0
	b _0805D08A
_0805D074:
	ldr r0, _0805D090
	ldr r1, [r0, #0]
	lsls r0, r3, #4
	adds r1, r1, r0
	adds r1, #0x70
	adds r0, r2, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	movs r0, #1
_0805D08A:
	pop {r4}
	pop {r1}
	bx r1
_0805D090: .4byte gUnk_030034E0
	thumb_func_end sub_0805D064
