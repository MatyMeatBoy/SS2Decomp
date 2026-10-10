	thumb_func_start sub_08015090
sub_08015090: @ 0x08015090
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08015148
	adds r5, r1, r0
	ldrh r2, [r5, #0x26]
	adds r0, r5, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08015112
	ldrh r0, [r5, #0x20]
	cmp r0, #5
	bne _08015112
	adds r6, r5, #0
	adds r6, #0x8c
	ldr r1, _0801514C
	lsls r0, r2, #2
	adds r7, r0, r1
_080150BE:
	adds r2, r5, #0
	adds r2, #0x94
	ldr r0, [r6, #0]
	ldr r1, [r6, #4]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_0800CCCC
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, [r7, #0]
	lsls r0, r0, #3
	movs r1, #0xa
	bl __divsi3
	adds r1, r5, #0
	adds r1, #0x40
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	ldrh r2, [r5, #0x1c]
	movs r1, #0
	str r1, [sp, #0]
	adds r1, r6, #0
	adds r3, r4, #0
	bl sub_08013E90
	strh r0, [r5, #0x1c]
	adds r0, r5, #0
	bl sub_08013CEC
	bl sub_080003F0
	adds r0, r5, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08015112
	ldrh r0, [r5, #0x20]
	cmp r0, #5
	beq _080150BE
_08015112:
	ldrh r0, [r5, #0x20]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0801512C
	ldr r1, [r5, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _0801512C
	strh r1, [r5, #0x20]
_0801512C:
	movs r1, #0
	strh r1, [r5, #0x24]
	ldrh r0, [r5, #0x26]
	strh r0, [r5, #0x28]
	strh r1, [r5, #0x26]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r5, r2
	strh r1, [r0, #0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08015148: .4byte gUnk_03003CE0
_0801514C: .4byte gUnk_0847AD1C
	thumb_func_end sub_08015090
