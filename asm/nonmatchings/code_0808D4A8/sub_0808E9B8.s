	thumb_func_start sub_0808E9B8
sub_0808E9B8: @ 0x0808E9B8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r5, #0
	ldr r7, _0808E9F8
	movs r4, #0
	movs r6, #0x88
_0808E9C4:
	adds r5, r5, r7
	adds r4, r4, r6
	movs r0, #0xc
	str r0, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0x1c
	movs r2, #1
	movs r3, #4
	bl sub_0800903C
	asrs r1, r5, #8
	movs r0, #1
	movs r2, #0
	bl sub_0800BBD8
	asrs r1, r4, #8
	movs r0, #3
	movs r2, #0
	bl sub_0800BBD8
	bl sub_080003F0
	b _0808E9C4
	.2byte 0x0000
_0808E9F8: .4byte 0x000002AA
	thumb_func_end sub_0808E9B8
