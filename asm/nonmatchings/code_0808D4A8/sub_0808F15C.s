	thumb_func_start sub_0808F15C
sub_0808F15C: @ 0x0808F15C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0808F184
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808F18C
	bl sub_0800CD9C
	adds r0, r4, #0
	bl sub_0802704C
	ldr r0, _0808F188
	movs r1, #0
	bl sub_0801674C
	bl sub_0800CD9C
	b _0808F1DC
	.2byte 0x0000
_0808F184: .4byte gUnk_03005CF4
_0808F188: .4byte sub_0808F1E4
_0808F18C:
	bl sub_08056E90
	cmp r0, #0
	beq _0808F1DC
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808F1A4
_0808F1A0:
	bl sub_080003F0
_0808F1A4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808F1A0
	bl sub_0800BB40
	bl sub_0800CDAC
	ldr r0, _0808F1D0
	ldr r1, [r0, #0]
	ldr r0, _0808F1D4
	adds r2, r1, r0
	ldr r0, _0808F1D8
	ldr r0, [r0, #0x4c]
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	strh r0, [r1, #0x30]
	strh r0, [r1, #0x24]
	b _0808F1DE
	.2byte 0x0000
_0808F1D0: .4byte gUnk_03005CF4
_0808F1D4: .4byte 0x0000071C
_0808F1D8: .4byte gUnk_0850C6E8
_0808F1DC:
	movs r0, #0
_0808F1DE:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0808F15C
