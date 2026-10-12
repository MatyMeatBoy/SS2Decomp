	thumb_func_start sub_0808D05C
sub_0808D05C: @ 0x0808D05C
	push {r4, lr}
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08001494
	ldr r4, _0808D084
	str r0, [r4, #0x20]
	ldr r1, _0808D088
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x64
	str r0, [r4, #8]
	ldr r0, _0808D08C
	str r0, [r4, #0x24]
	bl sub_0800CB9C
	cmp r0, #0
	beq _0808D094
	ldr r0, _0808D090
	b _0808D096
_0808D084: .4byte gUnk_03006450
_0808D088: .4byte 0x00000FFC
_0808D08C: .4byte sub_0808D118
_0808D090: .4byte sub_0808C0C4
_0808D094:
	ldr r0, _0808D0A8
_0808D096:
	str r0, [r4, #0xc]
	ldr r0, _0808D0AC
	movs r1, #0
	bl sub_08000274
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0808D0A8: .4byte sub_0808AFE8
_0808D0AC: .4byte gUnk_03006450
	thumb_func_end sub_0808D05C
