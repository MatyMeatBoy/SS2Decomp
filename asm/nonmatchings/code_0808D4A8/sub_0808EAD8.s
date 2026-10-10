	thumb_func_start sub_0808EAD8
sub_0808EAD8: @ 0x0808EAD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0808EB00
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808EB0C
	bl sub_0800CD9C
	adds r0, r4, #0
	bl sub_0802704C
	ldr r0, _0808EB04
	ldr r1, _0808EB08
	bl sub_0801674C
	bl sub_0800CD9C
	b _0808EB60
	.2byte 0x0000
_0808EB00: .4byte gUnk_03005CF4
_0808EB04: .4byte sub_080B0288
_0808EB08: .4byte sub_080B0F9C
_0808EB0C:
	bl sub_08056E90
	cmp r0, #0
	beq _0808EB60
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808EB24
_0808EB20:
	bl sub_080003F0
_0808EB24:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808EB20
	bl sub_0800BB40
	bl sub_0800CDAC
	ldr r0, _0808EB54
	ldr r1, [r0, #0]
	ldr r0, _0808EB58
	adds r3, r1, r0
	ldr r2, _0808EB5C
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
	b _0808EB62
_0808EB54: .4byte gUnk_03005CF4
_0808EB58: .4byte 0x0000071C
_0808EB5C: .4byte gUnk_08508B54
_0808EB60:
	movs r0, #0
_0808EB62:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0808EAD8
