	thumb_func_start sub_0809D6A8
sub_0809D6A8: @ 0x0809D6A8
	push {r4, lr}
	ldr r4, _0809D6D4
	movs r0, #0x78
	bl sub_08001494
	str r0, [r4, #0]
	movs r2, #0
	movs r3, #0
_0809D6B8:
	ldr r0, [r4, #0]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r0
	str r3, [r1, #8]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _0809D6B8
	pop {r4}
	pop {r0}
	bx r0
_0809D6D4: .4byte gUnk_030002F8
	thumb_func_end sub_0809D6A8
