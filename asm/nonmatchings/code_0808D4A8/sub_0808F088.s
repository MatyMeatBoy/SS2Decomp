	thumb_func_start sub_0808F088
sub_0808F088: @ 0x0808F088
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0808F0B8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808F0CE
	bl sub_0800CD9C
	bl sub_0800CE08
	adds r0, r4, #0
	bl sub_0802704C
	movs r0, #0x1b
	bl sub_08057AE8
	cmp r0, #0
	bne _0808F0C4
	ldr r0, _0808F0BC
	ldr r1, _0808F0C0
	bl sub_0801674C
	b _0808F0C8
_0808F0B8: .4byte gUnk_03005CF4
_0808F0BC: .4byte sub_080B24B8
_0808F0C0: .4byte sub_080B2780
_0808F0C4:
	bl sub_08056E24
_0808F0C8:
	bl sub_0800CD9C
	b _0808F154
_0808F0CE:
	bl sub_08056E90
	cmp r0, #0
	beq _0808F154
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808F0E6
_0808F0E2:
	bl sub_080003F0
_0808F0E6:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808F0E2
	bl sub_0800BB40
	bl sub_0800CDAC
	ldr r6, _0808F144
	ldr r0, [r6, #0]
	ldr r1, _0808F148
	adds r2, r0, r1
	ldr r1, _0808F14C
	ldr r0, [r0, #0x40]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	bl sub_080020F4
	ldr r5, _0808F150
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
	movs r1, #0
	strh r1, [r0, #0x20]
	ldr r0, [r6, #0]
	strh r1, [r0, #0x10]
	movs r1, #1
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x24]
	movs r0, #1
	b _0808F156
	.2byte 0x0000
_0808F144: .4byte gUnk_03005CF4
_0808F148: .4byte 0x0000071C
_0808F14C: .4byte gUnk_0850C6E8
_0808F150: .4byte gUnk_03003CE0
_0808F154:
	movs r0, #0
_0808F156:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_0808F088
