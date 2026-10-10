	thumb_func_start sub_0808E774
sub_0808E774: @ 0x0808E774
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808E79C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808E7A4
	adds r0, r1, #0
	bl sub_0802704C
	ldr r0, _0808E7A0
	movs r1, #0
	bl sub_0801674C
	bl sub_08015ED4
	bl sub_08015D74
	b _0808E7F4
	.2byte 0x0000
_0808E79C: .4byte gUnk_03005CF4
_0808E7A0: .4byte sub_080A756C
_0808E7A4:
	bl sub_08056E90
	cmp r0, #0
	beq _0808E7F4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808E7BC
_0808E7B8:
	bl sub_080003F0
_0808E7BC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808E7B8
	bl sub_0800BB40
	ldr r0, _0808E7E8
	ldr r1, [r0, #0]
	ldr r0, _0808E7EC
	adds r3, r1, r0
	ldr r2, _0808E7F0
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
	b _0808E7F6
_0808E7E8: .4byte gUnk_03005CF4
_0808E7EC: .4byte 0x0000071C
_0808E7F0: .4byte gUnk_085060D4
_0808E7F4:
	movs r0, #0
_0808E7F6:
	pop {r1}
	bx r1
	thumb_func_end sub_0808E774
