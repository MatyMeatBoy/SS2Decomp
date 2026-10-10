	thumb_func_start sub_0808C020
sub_0808C020: @ 0x0808C020
	push {r4, r5, r6, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0808C03C
	adds r6, r1, r0
	ldr r0, _0808C040
	bl sub_08007290
	adds r5, r0, #0
	b _0808C072
_0808C03C: .4byte gUnk_03003CE0
_0808C040: .4byte 0x001403D1
_0808C044:
	bl sub_08058260
	ldr r1, _0808C064
	cmp r0, r1
	bhi _0808C06C
	ldr r0, _0808C068
	str r0, [sp, #0]
	str r4, [sp, #4]
	movs r0, #0x78
	adds r1, #1
	movs r2, #0xf0
	movs r3, #0x50
	bl sub_08057DD0
	b _0808C0B6
	.2byte 0x0000
_0808C064: .4byte 0x00000149
_0808C068: .4byte sub_0808C020
_0808C06C:
	movs r0, #1
	bl sub_08057624
_0808C072:
	adds r0, r5, #2
	movs r1, #9
	movs r2, #0x12
	bl sub_0801A3D0
	ldr r0, _0808C094
	ldrh r4, [r0, #0]
	cmp r4, #0
	beq _0808C044
	bl sub_08058240
	movs r1, #0xb6
	lsls r1, r1, #1
	bl sub_08015C5C
	b _0808C09E
	.2byte 0x0000
_0808C094: .4byte gUnk_03001324
_0808C098:
	movs r0, #1
	bl sub_08057624
_0808C09E:
	bl sub_08015F20
	cmp r0, #0
	beq _0808C0AE
	bl sub_08056E90
	cmp r0, #0
	beq _0808C098
_0808C0AE:
	ldr r0, [r6, #0x30]
	ldr r1, _0808C0C0
	orrs r0, r1
	str r0, [r6, #0x30]
_0808C0B6:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0808C0C0: .4byte 0x00000403
	thumb_func_end sub_0808C020
