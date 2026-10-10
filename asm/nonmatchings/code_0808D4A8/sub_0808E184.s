	thumb_func_start sub_0808E184
sub_0808E184: @ 0x0808E184
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808E19C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808E1A0
	adds r0, r1, #0
	bl sub_0802704C
	b _0808E1F0
	.2byte 0x0000
_0808E19C: .4byte gUnk_03005CF4
_0808E1A0:
	bl sub_08056E90
	cmp r0, #0
	beq _0808E1F0
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808E1B8
_0808E1B4:
	bl sub_080003F0
_0808E1B8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808E1B4
	bl sub_0800BB40
	ldr r0, _0808E1E4
	ldr r1, [r0, #0]
	ldr r0, _0808E1E8
	adds r3, r1, r0
	ldr r2, _0808E1EC
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	strh r0, [r1, #0x30]
	strh r0, [r1, #0x24]
	b _0808E1F2
_0808E1E4: .4byte gUnk_03005CF4
_0808E1E8: .4byte 0x0000071C
_0808E1EC: .4byte gUnk_0850008C
_0808E1F0:
	movs r0, #0
_0808E1F2:
	pop {r1}
	bx r1
	thumb_func_end sub_0808E184
