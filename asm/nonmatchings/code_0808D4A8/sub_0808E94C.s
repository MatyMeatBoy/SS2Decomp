	thumb_func_start sub_0808E94C
sub_0808E94C: @ 0x0808E94C
	push {r4, r5, lr}
	movs r4, #0
	movs r5, #0x2a
	movs r0, #3
	movs r1, #0
	bl sub_0800BD48
_0808E95A:
	adds r4, r4, r5
	lsls r1, r4, #8
	asrs r1, r1, #0x10
	movs r0, #3
	movs r2, #0
	bl sub_0800BBA8
	bl sub_080003F0
	b _0808E95A
	thumb_func_end sub_0808E94C
