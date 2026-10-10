	thumb_func_start sub_0808E000
sub_0808E000: @ 0x0808E000
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0808E028
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808E034
	bl sub_0800CD9C
	adds r0, r4, #0
	bl sub_0802704C
	ldr r0, _0808E02C
	ldr r1, _0808E030
	bl sub_0801674C
	bl sub_0800CD9C
	b _0808E088
	.2byte 0x0000
_0808E028: .4byte gUnk_03005CF4
_0808E02C: .4byte sub_080AB2F8
_0808E030: .4byte sub_080AC81C
_0808E034:
	bl sub_08056E90
	cmp r0, #0
	beq _0808E088
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808E04C
_0808E048:
	bl sub_080003F0
_0808E04C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808E048
	bl sub_0800CDAC
	bl sub_0800BB40
	ldr r0, _0808E07C
	ldr r1, [r0, #0]
	ldr r0, _0808E080
	adds r3, r1, r0
	ldr r2, _0808E084
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
	b _0808E08A
_0808E07C: .4byte gUnk_03005CF4
_0808E080: .4byte 0x0000071C
_0808E084: .4byte gUnk_084FD06C
_0808E088:
	movs r0, #0
_0808E08A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0808E000
