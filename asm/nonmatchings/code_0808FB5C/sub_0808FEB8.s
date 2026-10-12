	thumb_func_start sub_0808FEB8
sub_0808FEB8: @ 0x0808FEB8
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808FED0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808FED4
	adds r0, r1, #0
	bl sub_0802704C
	b _0808FF20
	.2byte 0x0000
_0808FED0: .4byte gUnk_03005CF4
_0808FED4:
	bl sub_08056E90
	cmp r0, #0
	beq _0808FF20
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808FEEC
_0808FEE8:
	bl sub_080003F0
_0808FEEC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808FEE8
	bl sub_0800BB40
	ldr r0, _0808FF14
	ldr r1, [r0, #0]
	ldr r0, _0808FF18
	adds r3, r1, r0
	ldr r2, _0808FF1C
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	b _0808FF22
_0808FF14: .4byte gUnk_03005CF4
_0808FF18: .4byte 0x0000071C
_0808FF1C: .4byte gUnk_0850F894
_0808FF20:
	movs r0, #0
_0808FF22:
	pop {r1}
	bx r1
	thumb_func_end sub_0808FEB8
