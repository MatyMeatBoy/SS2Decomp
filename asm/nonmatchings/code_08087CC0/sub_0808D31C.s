	thumb_func_start sub_0808D31C
sub_0808D31C: @ 0x0808D31C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808D334
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808D338
	adds r0, r1, #0
	bl sub_0802704C
	b _0808D388
	.2byte 0x0000
_0808D334: .4byte gUnk_03005CF4
_0808D338:
	bl sub_08056E90
	cmp r0, #0
	beq _0808D388
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808D350
_0808D34C:
	bl sub_080003F0
_0808D350:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808D34C
	bl sub_0800BB40
	ldr r0, _0808D37C
	ldr r1, [r0, #0]
	ldr r0, _0808D380
	adds r3, r1, r0
	ldr r2, _0808D384
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
	b _0808D38A
_0808D37C: .4byte gUnk_03005CF4
_0808D380: .4byte 0x0000071C
_0808D384: .4byte gUnk_084F4818
_0808D388:
	movs r0, #0
_0808D38A:
	pop {r1}
	bx r1
	thumb_func_end sub_0808D31C
