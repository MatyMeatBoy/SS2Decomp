	thumb_func_start sub_080140AC
sub_080140AC: @ 0x080140AC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0xc8
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq _080140E6
	bl sub_0800CCCC
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r6, #0
	adds r0, #0xcc
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	adds r1, #0x8c
	adds r2, r6, #0
	adds r2, #0xca
	ldrh r2, [r2, #0]
	movs r4, #0
	str r4, [sp, #0]
	bl sub_08013E90
	ldrh r0, [r5, #0]
	subs r0, #1
	strh r0, [r5, #0]
_080140E6:
	adds r7, r6, #0
	adds r7, #0xce
	ldrh r0, [r7, #0]
	cmp r0, #0
	beq _08014166
	bl sub_0800CCCC
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r5, r6, #0
	adds r5, #0xd2
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r1, r6, #0
	adds r1, #0x8c
	adds r2, r6, #0
	adds r2, #0xd0
	ldrh r2, [r2, #0]
	movs r4, #0
	str r4, [sp, #0]
	bl sub_08013E90
	ldrh r0, [r7, #0]
	subs r0, #1
	strh r0, [r7, #0]
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0801414A
	adds r2, r6, #0
	adds r2, #0xd4
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _08014156
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	strh r0, [r7, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08014142
	movs r0, #4
	strh r0, [r7, #0]
_08014142:
	strh r3, [r2, #0]
	movs r0, #0x80
	lsls r0, r0, #2
	b _08014164
_0801414A:
	adds r0, r6, #0
	adds r0, #0xd4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08014166
_08014156:
	ldrh r0, [r5, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r5, #0]
	cmp r0, #0x3f
	bgt _08014166
	movs r0, #0x40
_08014164:
	strh r0, [r5, #0]
_08014166:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080140AC
