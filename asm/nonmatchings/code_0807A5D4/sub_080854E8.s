	thumb_func_start sub_080854E8
sub_080854E8: @ 0x080854E8
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #6
	movs r3, #4
	ldr r1, _08085514
	ldr r0, [r1, #0x10]
	cmp r0, r2
	bls _0808550A
	adds r1, #0x10
_080854FA:
	adds r1, #4
	adds r3, #1
	subs r4, #1
	cmp r3, #9
	bhi _0808550A
	ldr r0, [r1, #0]
	cmp r0, r2
	bhi _080854FA
_0808550A:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
_08085514: .4byte gUnk_084EBD4C
	thumb_func_end sub_080854E8
