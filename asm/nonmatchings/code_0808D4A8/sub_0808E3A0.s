	thumb_func_start sub_0808E3A0
sub_0808E3A0: @ 0x0808E3A0
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808E3B8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808E3BC
	adds r0, r1, #0
	bl sub_0802704C
	b _0808E40C
	.2byte 0x0000
_0808E3B8: .4byte gUnk_03005CF4
_0808E3BC:
	bl sub_08056E90
	cmp r0, #0
	beq _0808E40C
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808E3D4
_0808E3D0:
	bl sub_080003F0
_0808E3D4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808E3D0
	bl sub_0800BB40
	ldr r0, _0808E400
	ldr r1, [r0, #0]
	ldr r0, _0808E404
	adds r3, r1, r0
	ldr r2, _0808E408
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
	b _0808E40E
_0808E400: .4byte gUnk_03005CF4
_0808E404: .4byte 0x0000071C
_0808E408: .4byte gUnk_085028BC
_0808E40C:
	movs r0, #0
_0808E40E:
	pop {r1}
	bx r1
	thumb_func_end sub_0808E3A0
