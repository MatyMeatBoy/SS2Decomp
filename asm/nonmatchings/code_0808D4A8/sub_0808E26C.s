	thumb_func_start sub_0808E26C
sub_0808E26C: @ 0x0808E26C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0808E294
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808E2A0
	bl sub_0800CD9C
	adds r0, r4, #0
	bl sub_0802704C
	ldr r0, _0808E298
	ldr r1, _0808E29C
	bl sub_0801674C
	bl sub_0800CD9C
	b _0808E2F4
	.2byte 0x0000
_0808E294: .4byte gUnk_03005CF4
_0808E298: .4byte sub_080AC844
_0808E29C: .4byte sub_080AE080
_0808E2A0:
	bl sub_08056E90
	cmp r0, #0
	beq _0808E2F4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	bl sub_0800CDAC
	b _0808E2BC
_0808E2B8:
	bl sub_080003F0
_0808E2BC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808E2B8
	bl sub_0800BB40
	ldr r0, _0808E2E8
	ldr r1, [r0, #0]
	ldr r0, _0808E2EC
	adds r3, r1, r0
	ldr r2, _0808E2F0
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
	b _0808E2F6
_0808E2E8: .4byte gUnk_03005CF4
_0808E2EC: .4byte 0x0000071C
_0808E2F0: .4byte gUnk_0850008C
_0808E2F4:
	movs r0, #0
_0808E2F6:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0808E26C
