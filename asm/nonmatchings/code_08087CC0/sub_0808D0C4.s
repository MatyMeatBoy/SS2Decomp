	thumb_func_start sub_0808D0C4
sub_0808D0C4: @ 0x0808D0C4
	push {r4, r5, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0808D110
	adds r4, r1, r0
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0808D0F2
	adds r5, r1, #0
_0808D0E4:
	movs r0, #1
	bl sub_08057624
	ldr r0, [r4, #0x30]
	ands r0, r5
	cmp r0, #0
	beq _0808D0E4
_0808D0F2:
	movs r1, #0xa5
	lsls r1, r1, #1
	ldr r0, _0808D114
	str r0, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x78
	movs r2, #0x78
	movs r3, #0x50
	bl sub_08057DD0
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
_0808D110: .4byte gUnk_03003CE0
_0808D114: .4byte sub_0808C020
	thumb_func_end sub_0808D0C4
