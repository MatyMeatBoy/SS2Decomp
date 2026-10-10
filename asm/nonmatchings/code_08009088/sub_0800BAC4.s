	thumb_func_start sub_0800BAC4
sub_0800BAC4: @ 0x0800BAC4
	push {r4, lr}
	adds r4, r1, #0
	ldr r2, _0800BAF0
	lsls r4, r4, #2
	movs r1, #0x74
	muls r0, r1, r0
	adds r4, r4, r0
	adds r2, #0x10
	adds r4, r4, r2
	ldr r0, [r4, #0]
	bl sub_08007290
	adds r2, r0, #0
	ldr r0, [r4, #0]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _0800BAF4
	adds r2, #0x10
	b _0800BB00
	.2byte 0x0000
_0800BAF0: .4byte gUnk_0847846C
_0800BAF4:
	adds r0, r2, #0
	adds r0, #0x10
	ldr r1, _0800BB38
	bl sub_08000BC8
	adds r2, r0, #0
_0800BB00:
	ldr r3, _0800BB3C
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r4, #2
	ldrsh r0, [r2, r4]
	muls r1, r0, r1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	adds r0, r2, r0
	str r0, [r3, #0x68]
	ldrh r1, [r2, #0]
	adds r0, r3, #0
	adds r0, #0x78
	strh r1, [r0, #0]
	ldrh r0, [r2, #2]
	adds r1, r3, #0
	adds r1, #0x7a
	strh r0, [r1, #0]
	adds r1, #0x22
	movs r0, #0x40
	str r0, [r1, #0]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
_0800BB38: .4byte gUnk_030031D4
_0800BB3C: .4byte gUnk_03003170
	thumb_func_end sub_0800BAC4
