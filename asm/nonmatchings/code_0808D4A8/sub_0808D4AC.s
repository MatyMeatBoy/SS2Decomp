	thumb_func_start sub_0808D4AC
sub_0808D4AC: @ 0x0808D4AC
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808D4C4
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808D4C8
	adds r0, r1, #0
	bl sub_0802704C
	b _0808D518
	.2byte 0x0000
_0808D4C4: .4byte gUnk_03005CF4
_0808D4C8:
	bl sub_08056E90
	cmp r0, #0
	beq _0808D518
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808D4E0
_0808D4DC:
	bl sub_080003F0
_0808D4E0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808D4DC
	bl sub_0800BB40
	ldr r0, _0808D50C
	ldr r1, [r0, #0]
	ldr r0, _0808D510
	adds r3, r1, r0
	ldr r2, _0808D514
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
	b _0808D51A
_0808D50C: .4byte gUnk_03005CF4
_0808D510: .4byte 0x0000071C
_0808D514: .4byte gUnk_084F794C
_0808D518:
	movs r0, #0
_0808D51A:
	pop {r1}
	bx r1
	thumb_func_end sub_0808D4AC
