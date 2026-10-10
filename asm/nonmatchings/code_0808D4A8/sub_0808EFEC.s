	thumb_func_start sub_0808EFEC
sub_0808EFEC: @ 0x0808EFEC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _0808F054
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _0808F060
	bl sub_08056E90
	cmp r0, #0
	beq _0808F076
	movs r0, #0
	movs r1, #2
	bl sub_08056FB8
	bl sub_08056E78
	bl sub_0800CDAC
	ldr r1, [r5, #0]
	movs r6, #0
	movs r0, #3
	strh r0, [r1, #0x36]
	bl sub_0805D518
	ldr r0, _0808F058
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	bl sub_08057BD0
	bl sub_080020F4
	ldr r5, _0808F05C
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
	b _0808F078
_0808F054: .4byte gUnk_03005CF4
_0808F058: .4byte gUnk_03003170
_0808F05C: .4byte gUnk_03003CE0
_0808F060:
	bl sub_0800CD9C
	adds r0, r4, #0
	bl sub_0802704C
	ldr r0, _0808F080
	ldr r1, _0808F084
	bl sub_0801674C
	bl sub_0800CD9C
_0808F076:
	movs r0, #0
_0808F078:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
_0808F080: .4byte sub_080B4C34
_0808F084: .4byte sub_080B6324
	thumb_func_end sub_0808EFEC
