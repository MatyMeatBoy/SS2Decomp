	thumb_func_start sub_0808DE94
sub_0808DE94: @ 0x0808DE94
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808DEB4
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808DEBC
	adds r0, r1, #0
	bl sub_0802704C
	ldr r1, _0808DEB8
	movs r0, #0
	bl sub_08057328
	b _0808DF0C
	.2byte 0x0000
_0808DEB4: .4byte gUnk_03005CF4
_0808DEB8: .4byte sub_0808E130
_0808DEBC:
	bl sub_08056E90
	cmp r0, #0
	beq _0808DF0C
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808DED4
_0808DED0:
	bl sub_080003F0
_0808DED4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808DED0
	bl sub_0800BB40
	ldr r0, _0808DF00
	ldr r1, [r0, #0]
	ldr r0, _0808DF04
	adds r3, r1, r0
	ldr r2, _0808DF08
	ldr r0, [r1, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r0, #1
	strh r0, [r1, #0x24]
	strh r0, [r1, #0x30]
	b _0808DF0E
_0808DF00: .4byte gUnk_03005CF4
_0808DF04: .4byte 0x0000071C
_0808DF08: .4byte gUnk_084FD06C
_0808DF0C:
	movs r0, #0
_0808DF0E:
	pop {r1}
	bx r1
	thumb_func_end sub_0808DE94
