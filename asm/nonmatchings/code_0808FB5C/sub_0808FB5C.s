	thumb_func_start sub_0808FB5C
sub_0808FB5C: @ 0x0808FB5C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808FB7C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808FB84
	adds r0, r1, #0
	bl sub_0802704C
	ldr r0, _0808FB80
	adds r0, #0x72
	movs r1, #0x1e
	strh r1, [r0, #0]
	b _0808FBD4
	.2byte 0x0000
_0808FB7C: .4byte gUnk_03005CF4
_0808FB80: .4byte gUnk_03003170
_0808FB84:
	bl sub_08056E90
	cmp r0, #0
	beq _0808FBD4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808FB9C
_0808FB98:
	bl sub_080003F0
_0808FB9C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808FB98
	bl sub_0800BB40
	ldr r0, _0808FBC8
	ldr r1, [r0, #0]
	ldr r0, _0808FBCC
	adds r3, r1, r0
	ldr r2, _0808FBD0
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #6
	strh r0, [r1, #0x36]
	movs r0, #1
	b _0808FBD6
_0808FBC8: .4byte gUnk_03005CF4
_0808FBCC: .4byte 0x0000071C
_0808FBD0: .4byte gUnk_0850DE28
_0808FBD4:
	movs r0, #0
_0808FBD6:
	pop {r1}
	bx r1
	thumb_func_end sub_0808FB5C
