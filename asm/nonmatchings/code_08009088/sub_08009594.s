	thumb_func_start sub_08009594
sub_08009594: @ 0x08009594
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	str r3, [sp, #4]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldr r1, _080095E4
	str r1, [sp, #8]
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	ldr r2, _080095E8
	adds r6, r1, r2
	ldrh r1, [r6, #0x16]
	adds r4, r2, #0
	cmp r1, #0
	beq _080095EC
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r6, #8]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r6, #0xa]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	b _080095F0
	.2byte 0x0000
_080095E4: .4byte gUnk_03001250
_080095E8: .4byte gUnk_03003170
_080095EC:
	ldrh r5, [r6, #8]
	ldrh r3, [r6, #0xa]
_080095F0:
	ldr r1, [r6, #0xc]
	cmp r1, #0
	bne _080095F8
	b _08009910
_080095F8:
	adds r1, r4, #0
	adds r1, #0x8c
	ldrh r1, [r1, #0]
	cmp r1, #8
	beq _08009624
	cmp r1, #8
	bgt _0800960C
	cmp r1, #5
	beq _08009612
	b _080096C2
_0800960C:
	cmp r1, #0xa
	beq _08009682
	b _080096C2
_08009612:
	adds r1, r4, #0
	adds r1, #0x90
	ldrh r2, [r1, #0]
	movs r1, #0xd
	eors r2, r1
	negs r1, r2
	orrs r1, r2
	lsrs r1, r1, #0x1f
	b _080096C4
_08009624:
	ldr r1, [sp, #0]
	cmp r1, #3
	bne _080096BC
	adds r1, r4, #0
	adds r1, #0x90
	ldrh r1, [r1, #0]
	subs r1, #2
	cmp r1, #0xc
	bhi _080096BC
	lsls r1, r1, #2
	ldr r2, _08009640
	adds r1, r1, r2
	ldr r1, [r1, #0]
	mov pc, r1
_08009640: .4byte _08009644
_08009644:
	.4byte _08009678
_08009648: .4byte _080096BC
_0800964C: .4byte _08009678
_08009650: .4byte _080096BC
_08009654: .4byte _08009678
_08009658: .4byte _080096BC
_0800965C: .4byte _08009678
_08009660: .4byte _080096BC
_08009664: .4byte _08009678
_08009668: .4byte _080096BC
_0800966C: .4byte _08009678
_08009670: .4byte _080096BC
_08009674: .4byte _08009678
_08009678:
	lsls r5, r5, #0x10
	str r5, [sp, #0x10]
	lsls r3, r3, #0x10
	mov r9, r3
	b _080098CE
_08009682:
	ldr r1, [sp, #0]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bhi _080096BC
	lsls r1, r3, #0x10
	asrs r4, r1, #0x10
	mov r9, r1
	cmp r4, #0
	bge _0800969A
	adds r4, #7
_0800969A:
	asrs r1, r4, #3
	ldrh r2, [r6, #2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	movs r1, #0x1e
	negs r1, r1
	cmp r2, r1
	bgt _080096B2
	movs r1, #0x15
	strh r1, [r6, #2]
	b _080096D2
_080096B2:
	cmp r2, #0x1d
	ble _080096D2
	movs r1, #0x14
	strh r1, [r6, #2]
	b _080096D2
_080096BC:
	lsls r3, r3, #0x10
	mov r9, r3
	b _080096D2
_080096C2:
	movs r1, #1
_080096C4:
	lsls r2, r5, #0x10
	str r2, [sp, #0x10]
	lsls r3, r3, #0x10
	mov r9, r3
	cmp r1, #0
	bne _080096D2
	b _080098CE
_080096D2:
	lsls r1, r5, #0x10
	asrs r4, r1, #0x10
	adds r2, r4, #0
	str r1, [sp, #0x10]
	cmp r4, #0
	bge _080096E0
	adds r2, r4, #7
_080096E0:
	asrs r1, r2, #3
	ldrh r2, [r6, #0]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, r9
	asrs r3, r1, #0x10
	adds r1, r3, #0
	cmp r3, #0
	bge _080096F6
	adds r1, r3, #7
_080096F6:
	asrs r1, r1, #3
	ldrh r2, [r6, #2]
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r1, r5, #0x10
	asrs r5, r1, #0x10
	str r1, [sp, #0x14]
	cmp r5, #0
	ble _0800975E
	adds r4, #0xf1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_080093E4
	subs r4, #8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r2, #0
	ldr r3, [sp, #0x14]
	asrs r1, r3, #0x10
	ldr r3, [sp, #0]
	lsls r3, r3, #1
	str r3, [sp, #0xc]
	lsls r3, r7, #0x10
	str r3, [sp, #0x18]
	cmp r2, r1
	bge _080097B6
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	adds r5, r1, #0
_0800973A:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #3
	subs r1, r7, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	mov r3, r9
	asrs r2, r3, #0x10
	bl sub_080093E4
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r5
	blt _0800973A
	b _080097B6
_0800975E:
	ldr r1, [sp, #0]
	lsls r1, r1, #1
	str r1, [sp, #0xc]
	lsls r2, r7, #0x10
	str r2, [sp, #0x18]
	cmp r5, #0
	bge _080097B6
	subs r4, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r3, #0
	bl sub_080093E4
	negs r1, r5
	adds r4, #8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r2, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r2, r1
	bge _080097B6
	lsls r0, r4, #0x10
	asrs r7, r0, #0x10
	adds r5, r1, #0
_08009794:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r1, r4, #3
	adds r1, r7, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	mov r3, r9
	asrs r2, r3, #0x10
	bl sub_080093E4
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r5
	blt _08009794
_080097B6:
	ldr r1, [sp, #0x18]
	asrs r4, r1, #0x10
	cmp r4, #0
	ble _08009810
	lsrs r7, r1, #0x10
	ldr r2, [sp, #0x10]
	ldr r3, _0800980C
	adds r5, r2, r3
	asrs r1, r5, #0x10
	movs r0, #0xa1
	lsls r0, r0, #0x10
	add r0, r9
	asrs r4, r0, #0x10
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_080094CC
	movs r2, #0
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	cmp r2, r1
	bge _0800985A
	mov r8, r4
	adds r7, r1, #0
_080097E6:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #3
	mov r0, r8
	subs r2, r0, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	asrs r1, r5, #0x10
	bl sub_080094CC
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r7
	blt _080097E6
	b _0800985A
	.2byte 0x0000
_0800980C: .4byte 0xFFF80000
_08009810:
	cmp r4, #0
	bge _0800985A
	ldr r1, [sp, #0x10]
	ldr r2, _08009920
	adds r7, r1, r2
	asrs r1, r7, #0x10
	mov r3, r9
	asrs r5, r3, #0x10
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_080094CC
	negs r1, r4
	movs r2, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r2, r1
	bge _0800985A
	mov sl, r5
	mov r8, r1
	adds r5, r7, #0
_0800983A:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #3
	add r2, sl
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	asrs r1, r5, #0x10
	bl sub_080094CC
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, r8
	blt _0800983A
_0800985A:
	ldr r4, [sp, #0xc]
	ldr r2, _08009924
	adds r1, r4, r2
	ldrh r1, [r1, #0]
	lsrs r1, r1, #8
	movs r2, #0x1f
	ands r1, r2
	lsls r1, r1, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r3, r1, r2
	ldr r4, [sp, #0x14]
	cmp r4, #0
	bne _08009882
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _08009882
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _08009896
_08009882:
	ldr r1, _08009928
	ldr r4, [sp, #0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r3, #0
	bl sub_08001348
_08009896:
	ldr r1, [sp, #0x14]
	cmp r1, #0
	bne _080098A2
	ldr r2, [sp, #4]
	cmp r2, #0
	beq _080098B0
_080098A2:
	ldr r3, [sp, #0x10]
	asrs r1, r3, #0x10
	cmp r1, #0
	bge _080098AC
	adds r1, #7
_080098AC:
	asrs r1, r1, #3
	strh r1, [r6, #0]
_080098B0:
	ldr r4, [sp, #0x18]
	cmp r4, #0
	bne _080098BE
	ldr r4, _0800992C
	ldr r1, [sp, #4]
	cmp r1, #0
	beq _080098CE
_080098BE:
	mov r2, r9
	asrs r1, r2, #0x10
	cmp r1, #0
	bge _080098C8
	adds r1, #7
_080098C8:
	asrs r1, r1, #3
	strh r1, [r6, #2]
	ldr r4, _0800992C
_080098CE:
	adds r1, r4, #0
	adds r1, #0x84
	ldr r3, [sp, #0x10]
	asrs r2, r3, #0x10
	ldrh r1, [r1, #0]
	adds r2, r2, r1
	adds r1, r4, #0
	adds r1, #0x86
	mov r4, r9
	asrs r3, r4, #0x10
	ldrh r1, [r1, #0]
	adds r3, r3, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r1, [r6, #4]
	adds r2, r2, r1
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ldrh r4, [r6, #6]
	adds r3, r3, r4
	ldrh r1, [r6, #0x14]
	lsls r1, r1, #2
	ldr r4, [sp, #8]
	adds r4, r4, r1
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #0xff
	ands r2, r1
	strh r2, [r4, #0]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	ands r3, r1
	strh r3, [r4, #2]
_08009910:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08009920: .4byte 0xFFF80000
_08009924: .4byte 0x04000008
_08009928: .4byte gUnk_03003460
_0800992C: .4byte gUnk_03003170
	thumb_func_end sub_08009594
