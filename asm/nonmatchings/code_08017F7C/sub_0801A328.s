	thumb_func_start sub_0801A328
sub_0801A328: @ 0x0801A328
	push {r4, r5, r6, r7, lr}
	ldr r7, [sp, #0x14]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	lsrs r4, r0, #8
	lsrs r5, r1, #8
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r6
	cmp r0, #0
	beq _0801A348
	movs r6, #0
_0801A348:
	ldr r3, _0801A380
	ldr r0, _0801A384
	lsls r2, r2, #1
	adds r2, r2, r0
	ldrh r0, [r2, #0]
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r5
	str r1, [r7, #4]
	ldrh r0, [r2, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r6, r0
	adds r0, r0, r4
	asrs r1, r1, #8
	str r1, [r7, #4]
	asrs r0, r0, #8
	str r0, [r7, #0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0801A380: .4byte gUnk_080B9704
_0801A384: .4byte gUnk_0847AD0A
	thumb_func_end sub_0801A328
