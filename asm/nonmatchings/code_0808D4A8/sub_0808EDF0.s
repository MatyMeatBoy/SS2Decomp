	thumb_func_start sub_0808EDF0
sub_0808EDF0: @ 0x0808EDF0
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808EE34
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808EE40
	adds r0, r1, #0
	bl sub_0802704C
	ldr r1, _0808EE38
	adds r0, r1, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _0808EE14
	cmp r0, #0x10
	bne _0808EE1A
_0808EE14:
	adds r1, #0x72
	movs r0, #0x3c
	strh r0, [r1, #0]
_0808EE1A:
	ldr r0, _0808EE38
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #3
	beq _0808EE28
	cmp r0, #0xd
	bne _0808EE90
_0808EE28:
	ldr r1, _0808EE3C
	movs r0, #0
	bl sub_08057328
	b _0808EE90
	.2byte 0x0000
_0808EE34: .4byte gUnk_03005CF4
_0808EE38: .4byte gUnk_03003170
_0808EE3C: .4byte sub_0808ECFC
_0808EE40:
	bl sub_08056E90
	cmp r0, #0
	beq _0808EE90
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808EE58
_0808EE54:
	bl sub_080003F0
_0808EE58:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808EE54
	bl sub_0800BB40
	ldr r0, _0808EE84
	ldr r1, [r0, #0]
	ldr r0, _0808EE88
	adds r3, r1, r0
	ldr r2, _0808EE8C
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
	b _0808EE92
_0808EE84: .4byte gUnk_03005CF4
_0808EE88: .4byte 0x0000071C
_0808EE8C: .4byte gUnk_0850C6E8
_0808EE90:
	movs r0, #0
_0808EE92:
	pop {r1}
	bx r1
	thumb_func_end sub_0808EDF0
