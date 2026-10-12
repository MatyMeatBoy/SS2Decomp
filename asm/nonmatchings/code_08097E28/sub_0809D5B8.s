	thumb_func_start sub_0809D5B8
sub_0809D5B8: @ 0x0809D5B8
	push {r4, lr}
	ldr r4, _0809D5E0
	movs r0, #0xa0
	lsls r0, r0, #1
	bl sub_08001494
	str r0, [r4, #0]
	movs r3, #0
	movs r2, #0
	movs r1, #7
_0809D5CC:
	ldr r0, [r4, #0]
	adds r0, r2, r0
	str r3, [r0, #8]
	adds r2, #0x28
	subs r1, #1
	cmp r1, #0
	bge _0809D5CC
	pop {r4}
	pop {r0}
	bx r0
_0809D5E0: .4byte gUnk_030002F4
	thumb_func_end sub_0809D5B8
