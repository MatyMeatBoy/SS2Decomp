	thumb_func_start sub_080656B8
sub_080656B8: @ 0x080656B8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080656E4
	ldr r0, _080656E8
	bl sub_08001494
	str r0, [r4, #0]
	str r5, [r0, #0]
	movs r2, #0
	movs r3, #0
	movs r1, #0
_080656CE:
	ldr r0, [r4, #0]
	adds r0, #0xc
	adds r0, r0, r1
	str r3, [r0, #0]
	adds r1, #0x28
	adds r2, #1
	cmp r2, #0x1d
	bls _080656CE
	pop {r4, r5}
	pop {r0}
	bx r0
_080656E4: .4byte gUnk_0300602C
_080656E8: .4byte 0x000004B4
	thumb_func_end sub_080656B8
