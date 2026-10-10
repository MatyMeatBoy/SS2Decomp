	thumb_func_start sub_0805D548
sub_0805D548: @ 0x0805D548
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0
	ldr r0, _0805D568
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_0805D558:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _0805D56C
	ldrh r0, [r1, #2]
	cmp r0, r3
	bne _0805D56C
	adds r0, r2, #0
	b _0805D578
_0805D568: .4byte gUnk_030034E0
_0805D56C:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _0805D558
	movs r0, #1
	negs r0, r0
_0805D578:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0805D548
