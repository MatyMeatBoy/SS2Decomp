	thumb_func_start sub_0808FF98
sub_0808FF98: @ 0x0808FF98
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808FFB0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808FFB4
	adds r0, r1, #0
	bl sub_0802704C
	b _08090000
	.2byte 0x0000
_0808FFB0: .4byte gUnk_03005CF4
_0808FFB4:
	bl sub_08056E90
	cmp r0, #0
	beq _08090000
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808FFCC
_0808FFC8:
	bl sub_080003F0
_0808FFCC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808FFC8
	bl sub_0800BB40
	ldr r0, _0808FFF4
	ldr r1, [r0, #0]
	ldr r0, _0808FFF8
	adds r3, r1, r0
	ldr r2, _0808FFFC
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	b _08090002
_0808FFF4: .4byte gUnk_03005CF4
_0808FFF8: .4byte 0x0000071C
_0808FFFC: .4byte gUnk_08511538
_08090000:
	movs r0, #0
_08090002:
	pop {r1}
	bx r1
	thumb_func_end sub_0808FF98
