	thumb_func_start sub_0808E488
sub_0808E488: @ 0x0808E488
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, _0808E4FC
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _0808E508
	bl sub_08056E90
	cmp r0, #0
	beq _0808E51E
	movs r0, #0
	movs r1, #2
	bl sub_08056FB8
	bl sub_08056E78
	bl sub_0800CDAC
	ldr r1, [r7, #0]
	movs r6, #0
	movs r0, #3
	strh r0, [r1, #0x36]
	bl sub_0805D518
	ldr r0, _0808E500
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	bl sub_08057BD0
	bl sub_080020F4
	ldr r5, _0808E504
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
	ldr r0, [r7, #0]
	strh r6, [r0, #0x10]
	movs r1, #1
	strh r1, [r0, #0x30]
	strh r1, [r0, #0x24]
	movs r0, #1
	b _0808E520
	.2byte 0x0000
_0808E4FC: .4byte gUnk_03005CF4
_0808E500: .4byte gUnk_03003170
_0808E504: .4byte gUnk_03003CE0
_0808E508:
	bl sub_0800CD9C
	adds r0, r4, #0
	bl sub_0802704C
	ldr r0, _0808E528
	ldr r1, _0808E52C
	bl sub_0801674C
	bl sub_0800CD9C
_0808E51E:
	movs r0, #0
_0808E520:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0808E528: .4byte sub_080A27B8
_0808E52C: .4byte sub_080A49A8
	thumb_func_end sub_0808E488
