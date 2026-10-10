	thumb_func_start sub_0808EE98
sub_0808EE98: @ 0x0808EE98
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0808EEC0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808EECC
	bl sub_0800CD9C
	adds r0, r4, #0
	bl sub_0802704C
	ldr r0, _0808EEC4
	ldr r1, _0808EEC8
	bl sub_0801674C
	bl sub_0800CD9C
	b _0808EF4C
	.2byte 0x0000
_0808EEC0: .4byte gUnk_03005CF4
_0808EEC4: .4byte sub_080B0FC4
_0808EEC8: .4byte sub_080B22E8
_0808EECC:
	bl sub_08056E90
	cmp r0, #0
	beq _0808EF4C
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808EEE4
_0808EEE0:
	bl sub_080003F0
_0808EEE4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808EEE0
	bl sub_0800BB40
	bl sub_0800CDAC
	bl sub_080020F4
	ldr r5, _0808EF3C
	movs r4, #0xa6
	lsls r4, r4, #1
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
	movs r4, #0
	strh r4, [r0, #0x20]
	ldr r0, _0808EF40
	ldr r1, [r0, #0]
	ldr r0, _0808EF44
	adds r3, r1, r0
	ldr r2, _0808EF48
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	strh r4, [r1, #0x10]
	movs r0, #1
	strh r0, [r1, #0x30]
	strh r0, [r1, #0x24]
	b _0808EF4E
_0808EF3C: .4byte gUnk_03003CE0
_0808EF40: .4byte gUnk_03005CF4
_0808EF44: .4byte 0x0000071C
_0808EF48: .4byte gUnk_0850C6E8
_0808EF4C:
	movs r0, #0
_0808EF4E:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0808EE98
