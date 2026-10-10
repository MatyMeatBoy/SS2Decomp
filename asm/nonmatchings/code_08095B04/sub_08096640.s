	thumb_func_start sub_08096640
sub_08096640: @ 0x08096640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x28]
	mov r1, sl
	ldr r1, [r1, #0x18]
	str r1, [sp, #0x2c]
	ldr r0, _080967B4
	add r0, sl
	ldrb r0, [r0, #0]
	str r0, [sp, #0x20]
	ldr r0, _080967B8
	add r0, sl
	ldrb r0, [r0, #0]
	str r0, [sp, #0x24]
	ldr r0, _080967BC
	ldr r0, [r0, #0]
	mov r9, r0
	movs r2, #0
	str r2, [sp, #0x1c]
_08096672:
	ldr r5, [sp, #0x1c]
	mov r3, sl
	ldrh r3, [r3, #0]
	cmp r5, r3
	bne _0809667E
	b _0809678A
_0809667E:
	ldr r0, _080967C0
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _0809678A
	mov r5, sl
	ldrh r0, [r5, #0xc]
	cmp r0, #0xb
	beq _0809678A
	ldr r0, _080967B4
	add r0, r9
	ldrb r0, [r0, #0]
	ldr r1, [sp, #0x20]
	adds r7, r1, r0
	ldr r0, _080967B8
	add r0, r9
	ldrb r0, [r0, #0]
	ldr r2, [sp, #0x24]
	adds r2, r2, r0
	mov r8, r2
	mov r3, r9
	ldr r1, [r3, #0x14]
	ldr r5, [sp, #0x28]
	subs r1, r5, r1
	lsls r1, r1, #8
	ldr r0, [r3, #0x18]
	ldr r2, [sp, #0x2c]
	subs r0, r2, r0
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	asrs r6, r1, #0x10
	adds r0, r6, #0
	cmp r6, #0
	bge _080966C8
	negs r0, r6
_080966C8:
	asrs r0, r0, #3
	cmp r0, #0
	bgt _0809678A
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	adds r0, r5, #0
	cmp r5, #0
	bge _080966DA
	negs r0, r5
_080966DA:
	cmp r0, #0
	bgt _0809678A
	adds r0, r6, #0
	muls r0, r6, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	bl sub_080B858C
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	subs r1, r7, r4
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	mov r3, r8
	subs r4, r3, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r8, r4
	ldr r4, _080967C4
	adds r1, r2, #0
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r5, #0
	ldrsh r1, [r1, r5]
	muls r1, r7, r1
	ldr r5, [sp, #0x28]
	adds r3, r5, r1
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r5, #0
	ldrsh r1, [r2, r5]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	ldr r5, [sp, #0x2c]
	adds r2, r5, r1
	ldr r1, _080967C8
	lsrs r0, r0, #0x14
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	adds r1, r3, #0
	movs r3, #0
	bl sub_0800B118
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0809678A
	subs r0, #1
	lsls r0, r0, #0x10
	ldr r1, _080967CC
	lsrs r0, r0, #0xf
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r7, r0
	ldr r5, [sp, #0x28]
	adds r3, r5, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	ldr r1, [sp, #0x2c]
	adds r2, r1, r0
	mov r5, sl
	str r3, [r5, #0x14]
	str r2, [r5, #0x18]
_0809678A:
	ldr r0, [sp, #0x1c]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	movs r0, #0xb8
	lsls r0, r0, #2
	add r9, r0
	ldr r1, [sp, #0x1c]
	cmp r1, #4
	bhi _080967A2
	b _08096672
_080967A2:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080967B4: .4byte 0x0000022E
_080967B8: .4byte 0x0000022F
_080967BC: .4byte gUnk_030056F4
_080967C0: .4byte gUnk_030056FC
_080967C4: .4byte gUnk_080B9704
_080967C8: .4byte gUnk_085186EC
_080967CC: .4byte gUnk_0849E730
	thumb_func_end sub_08096640
