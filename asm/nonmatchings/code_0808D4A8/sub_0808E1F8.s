	thumb_func_start sub_0808E1F8
sub_0808E1F8: @ 0x0808E1F8
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808E210
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808E214
	adds r0, r1, #0
	bl sub_0802704C
	b _0808E264
	.2byte 0x0000
_0808E210: .4byte gUnk_03005CF4
_0808E214:
	bl sub_08056E90
	cmp r0, #0
	beq _0808E264
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808E22C
_0808E228:
	bl sub_080003F0
_0808E22C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808E228
	bl sub_0800BB40
	ldr r0, _0808E258
	ldr r1, [r0, #0]
	ldr r0, _0808E25C
	adds r3, r1, r0
	ldr r2, _0808E260
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
	b _0808E266
_0808E258: .4byte gUnk_03005CF4
_0808E25C: .4byte 0x0000071C
_0808E260: .4byte gUnk_0850008C
_0808E264:
	movs r0, #0
_0808E266:
	pop {r1}
	bx r1
	thumb_func_end sub_0808E1F8
