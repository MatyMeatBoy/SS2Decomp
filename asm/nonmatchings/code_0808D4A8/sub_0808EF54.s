	thumb_func_start sub_0808EF54
sub_0808EF54: @ 0x0808EF54
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0808EFB8
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _0808EFC4
	bl sub_08056E90
	cmp r0, #0
	beq _0808EFDA
	movs r0, #0
	movs r1, #2
	bl sub_08056FB8
	bl sub_08056E78
	bl sub_0800CDAC
	ldr r1, [r5, #0]
	movs r6, #0
	movs r0, #3
	strh r0, [r1, #0x36]
	ldr r0, _0808EFBC
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	bl sub_08057BD0
	bl sub_080020F4
	ldr r5, _0808EFC0
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
	strh r6, [r0, #0x20]
	movs r0, #1
	b _0808EFDC
_0808EFB8: .4byte gUnk_03005CF4
_0808EFBC: .4byte gUnk_03003170
_0808EFC0: .4byte gUnk_03003CE0
_0808EFC4:
	bl sub_0800CD9C
	adds r0, r4, #0
	bl sub_0802704C
	ldr r0, _0808EFE4
	ldr r1, _0808EFE8
	bl sub_0801674C
	bl sub_0800CD9C
_0808EFDA:
	movs r0, #0
_0808EFDC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
_0808EFE4: .4byte sub_080A9950
_0808EFE8: .4byte sub_080AB2D8
	thumb_func_end sub_0808EF54
