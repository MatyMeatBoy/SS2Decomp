	thumb_func_start sub_0808FE04
sub_0808FE04: @ 0x0808FE04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r1, r0, #0
	ldr r7, _0808FE90
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _0808FE98
	bl sub_08056E90
	cmp r0, #0
	beq _0808FEA6
	adds r0, r4, #0
	bl sub_08058404
	movs r0, #1
	bl sub_080570DC
	movs r0, #0
	movs r1, #0
	bl sub_08056FB8
	bl sub_080020F4
	ldr r5, _0808FE94
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x68
	movs r1, #0
	mov r8, r1
	movs r6, #1
	strb r6, [r0, #0]
	bl sub_08056E78
	ldr r0, [r7, #0]
	mov r1, r8
	strh r1, [r0, #0x36]
	bl sub_080020F4
	adds r2, r0, #0
	muls r2, r4, r2
	adds r0, r5, #0
	adds r0, #0x30
	adds r2, r2, r0
	ldr r0, [r2, #0]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	mov r1, r8
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	movs r1, #4
	strh r1, [r0, #0x1c]
	ldr r0, [r7, #0]
	strh r6, [r0, #0x30]
	strh r6, [r0, #0x24]
	movs r0, #1
	b _0808FEA8
	.2byte 0x0000
_0808FE90: .4byte gUnk_03005CF4
_0808FE94: .4byte gUnk_03003CE0
_0808FE98:
	adds r0, r1, #0
	bl sub_0802704C
	ldr r1, _0808FEB4
	movs r0, #0
	bl sub_08057328
_0808FEA6:
	movs r0, #0
_0808FEA8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0808FEB4: .4byte sub_0805CB8C
	thumb_func_end sub_0808FE04
