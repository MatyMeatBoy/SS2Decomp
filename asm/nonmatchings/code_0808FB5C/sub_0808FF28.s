	thumb_func_start sub_0808FF28
sub_0808FF28: @ 0x0808FF28
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808FF40
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808FF44
	adds r0, r1, #0
	bl sub_0802704C
	b _0808FF90
	.2byte 0x0000
_0808FF40: .4byte gUnk_03005CF4
_0808FF44:
	bl sub_08056E90
	cmp r0, #0
	beq _0808FF90
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808FF5C
_0808FF58:
	bl sub_080003F0
_0808FF5C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808FF58
	bl sub_0800BB40
	ldr r0, _0808FF84
	ldr r1, [r0, #0]
	ldr r0, _0808FF88
	adds r3, r1, r0
	ldr r2, _0808FF8C
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	b _0808FF92
_0808FF84: .4byte gUnk_03005CF4
_0808FF88: .4byte 0x0000071C
_0808FF8C: .4byte gUnk_08510530
_0808FF90:
	movs r0, #0
_0808FF92:
	pop {r1}
	bx r1
	thumb_func_end sub_0808FF28
