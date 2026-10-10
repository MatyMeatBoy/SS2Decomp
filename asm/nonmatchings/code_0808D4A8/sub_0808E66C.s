	thumb_func_start sub_0808E66C
sub_0808E66C: @ 0x0808E66C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0808E698
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808E71A
	adds r0, r1, #0
	bl sub_0802704C
	ldr r0, _0808E69C
	adds r0, #0x90
	ldrh r0, [r0, #0]
	subs r0, #2
	cmp r0, #0xf
	bhi _0808E76C
	lsls r0, r0, #2
	ldr r1, _0808E6A0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0808E698: .4byte gUnk_03005CF4
_0808E69C: .4byte gUnk_03003170
_0808E6A0: .4byte _0808E6A4
_0808E6A4:
	.4byte _0808E6E4
_0808E6A8: .4byte _0808E76C
_0808E6AC: .4byte _0808E6F4
_0808E6B0: .4byte _0808E76C
_0808E6B4: .4byte _0808E700
_0808E6B8: .4byte _0808E76C
_0808E6BC: .4byte _0808E700
_0808E6C0: .4byte _0808E76C
_0808E6C4: .4byte _0808E700
_0808E6C8: .4byte _0808E76C
_0808E6CC: .4byte _0808E6E4
_0808E6D0: .4byte _0808E76C
_0808E6D4: .4byte _0808E700
_0808E6D8: .4byte _0808E76C
_0808E6DC: .4byte _0808E76C
_0808E6E0: .4byte _0808E714
_0808E6E4:
	ldr r0, _0808E6F0
	adds r0, #0x70
	movs r1, #0x1e
	strh r1, [r0, #0]
	b _0808E700
	.2byte 0x0000
_0808E6F0: .4byte gUnk_03003170
_0808E6F4:
	ldr r1, _0808E70C
	movs r2, #0x80
	lsls r2, r2, #0x18
	movs r0, #0
	bl sub_080573A0
_0808E700:
	ldr r1, _0808E710
	movs r0, #0
	bl sub_08057328
	b _0808E76C
	.2byte 0x0000
_0808E70C: .4byte sub_0808E970
_0808E710: .4byte sub_0808E94C
_0808E714:
	bl sub_0802996C
	b _0808E76C
_0808E71A:
	bl sub_08056E90
	cmp r0, #0
	beq _0808E76C
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808E732
_0808E72E:
	bl sub_080003F0
_0808E732:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808E72E
	bl sub_0800BB40
	ldr r0, _0808E760
	ldr r1, [r0, #0]
	ldr r0, _0808E764
	adds r3, r1, r0
	ldr r2, _0808E768
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
	b _0808E76E
	.2byte 0x0000
_0808E760: .4byte gUnk_03005CF4
_0808E764: .4byte 0x0000071C
_0808E768: .4byte gUnk_085060D4
_0808E76C:
	movs r0, #0
_0808E76E:
	pop {r1}
	bx r1
	thumb_func_end sub_0808E66C
