	thumb_func_start sub_080694AC
sub_080694AC: @ 0x080694AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	bl sub_08058DB0
	cmp r0, #0
	beq _080694C4
	b _080698C0
_080694C4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080694CE
	b _080698C0
_080694CE:
	ldr r1, _080694EC
	ldr r0, [sp, #8]
	ands r0, r1
	str r0, [sp, #8]
	ldr r2, [r6, #0]
	cmp r2, #3
	bhi _080694F4
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _080694F0
	adds r1, r1, r0
	mov r8, r1
	b _0806950A
_080694EC: .4byte 0xFFFF00FF
_080694F0: .4byte gUnk_03003CE0
_080694F4:
	ldr r0, _08069534
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	subs r1, r1, r2
	lsls r1, r1, #5
	ldr r2, _08069538
	adds r1, r1, r2
	ldr r0, [r0, #0]
	adds r0, r0, r1
	mov r9, r0
_0806950A:
	ldr r2, [r6, #8]
	cmp r2, #3
	bhi _08069540
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0806953C
	adds r7, r1, r0
	movs r3, #0x7c
	adds r3, r3, r7
	mov sl, r3
	movs r4, #8
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #0
	str r0, [r1, #0]
	adds r0, r7, #0
	adds r0, #0x68
	b _08069564
_08069534: .4byte gUnk_030056F4
_08069538: .4byte 0xFFFFF480
_0806953C: .4byte gUnk_03003CE0
_08069540:
	ldr r1, _080695D8
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r2, _080695DC
	adds r0, r0, r2
	ldr r1, [r1, #0]
	adds r5, r1, r0
	movs r3, #0x86
	lsls r3, r3, #2
	adds r3, r3, r5
	mov sl, r3
	movs r4, #1
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r5, r1
_08069564:
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0806956C
	b _080698C0
_0806956C:
	adds r0, r6, #0
	mov r1, sl
	bl sub_08068F9C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080695E0
	ldr r1, [sp, #0xc]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
	ldr r0, [r6, #0xc]
	cmp r0, #0x13
	bne _080695B8
	ldr r1, _080695E4
	ldr r0, [r6, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r4, [r0, #0]
	bl sub_080008C8
	movs r1, #0x64
	bl __umodsi3
	cmp r4, r0
	blo _080695B8
	ldr r0, _080695E8
	ldr r1, [sp, #8]
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [sp, #8]
_080695B8:
	ldr r0, [r6, #0xc]
	cmp r0, #0xc
	beq _080695C0
	b _080696C0
_080695C0:
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r5, r2
	ldr r0, [r0, #0]
	cmp r0, #0xff
	bne _080695F0
	ldr r1, _080695EC
	ldr r0, [sp, #8]
	ands r0, r1
	str r0, [sp, #8]
	b _080695FE
	.2byte 0x0000
_080695D8: .4byte gUnk_030056F4
_080695DC: .4byte 0xFFFFF480
_080695E0: .4byte 0xFFFF0000
_080695E4: .4byte gUnk_084EC16C
_080695E8: .4byte 0xFFFF00FF
_080695EC: .4byte 0xFF00FFFF
_080695F0:
	ldr r0, _08069638
	ldr r1, [sp, #8]
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r1, r0
	str r1, [sp, #8]
_080695FE:
	ldr r0, [r6, #0]
	cmp r0, #3
	bhi _08069654
	ldr r0, [r6, #8]
	cmp r0, #3
	bhi _0806963C
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r1, r8
	adds r1, #0x8c
	ldr r1, [r1, #0]
	asrs r1, r1, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	mov r2, r8
	adds r2, #0x90
	ldr r2, [r2, #0]
	asrs r2, r2, #8
	subs r1, r1, r2
	lsls r1, r1, #0x10
	b _0806968C
_08069638: .4byte 0xFF00FFFF
_0806963C:
	mov r1, r8
	adds r1, #0x8c
	ldr r0, [r5, #0x14]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	mov r2, r8
	adds r2, #0x90
	ldr r1, [r5, #0x18]
	ldr r2, [r2, #0]
	b _08069688
_08069654:
	ldr r0, [r6, #8]
	cmp r0, #3
	bhi _08069678
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	mov r2, r9
	ldr r1, [r2, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	adds r1, r7, #0
	adds r1, #0x90
	mov r2, r8
	adds r2, #0x90
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	b _08069688
_08069678:
	ldr r0, [r5, #0x14]
	mov r3, r9
	ldr r1, [r3, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x18]
	ldr r2, [r3, #0x18]
_08069688:
	subs r1, r1, r2
	lsls r1, r1, #8
_0806968C:
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	lsls r0, r0, #0x18
	ldr r2, _080696B8
	ldr r1, [sp, #8]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #8]
	ldr r1, _080696BC
	ldr r2, [sp, #8]
	asrs r0, r2, #0x18
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	lsls r1, r1, #0x18
	ldr r0, _080696B8
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	b _080696CC
_080696B8: .4byte 0x00FFFFFF
_080696BC: .4byte gUnk_084790B4
_080696C0:
	ldr r0, _08069748
	ldr r1, [sp, #8]
	ands r1, r0
	ldr r0, _0806974C
	ands r1, r0
	str r1, [sp, #8]
_080696CC:
	ldr r0, [r6, #8]
	cmp r0, #3
	bls _080696D4
	b _080697DC
_080696D4:
	ldrb r2, [r7, #0]
	ldr r1, _08069750
	ldr r0, [sp, #8]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #8]
	bl sub_080020F4
	ldr r1, [r6, #8]
	cmp r1, r0
	bne _08069704
	movs r0, #0xa
	strh r0, [r7, #0x20]
	adds r1, r7, #0
	adds r1, #0x88
	add r0, sp, #8
	ldrh r0, [r0, #4]
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	adds r0, r7, #0
	add r1, sp, #8
	bl sub_0801F320
_08069704:
	add r4, sp, #8
	ldrh r2, [r6, #0x14]
	ldr r3, _08069754
	ldr r1, [r6, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r3, [r0, #2]
	ldrh r0, [r6, #8]
	str r0, [sp, #0]
	adds r0, r4, #0
	mov r1, sl
	bl sub_08069388
	ldr r0, [r6, #0xc]
	cmp r0, #0x12
	bne _0806972C
	movs r0, #0
	strb r0, [r4, #1]
_0806972C:
	ldr r0, [r6, #0]
	cmp r0, #3
	bhi _08069758
	mov r3, r8
	ldrh r0, [r3, #0]
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xf8
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0xdc
	ldr r0, [r0, #0]
	b _08069768
	.2byte 0x0000
_08069748: .4byte 0xFF00FFFF
_0806974C: .4byte 0x00FFFFFF
_08069750: .4byte 0xFFFFFF00
_08069754: .4byte gUnk_084EBF1C
_08069758:
	mov r1, r9
	ldrh r0, [r1, #0]
	lsls r0, r0, #2
	adds r1, r7, #0
	adds r1, #0xe4
	adds r1, r1, r0
	mov r2, r9
	ldr r0, [r2, #0x50]
_08069768:
	str r0, [r1, #0]
	bl sub_080020F4
	ldr r1, [r6, #8]
	cmp r1, r0
	bne _080697A4
	add r4, sp, #8
	ldrb r1, [r4, #1]
	adds r0, r7, #0
	bl sub_0801E1A4
	adds r1, r0, #0
	cmp r1, #0
	beq _0806978E
	ldrh r0, [r7, #0]
	ldrb r2, [r4, #1]
	bl sub_0801DB94
	b _080697A4
_0806978E:
	ldrb r1, [r4, #1]
	adds r0, r7, #0
	bl sub_0801E164
	adds r1, r0, #0
	cmp r1, #0
	beq _080697A4
	ldrh r0, [r7, #0]
	ldrb r2, [r4, #1]
	bl sub_0801DB94
_080697A4:
	ldrh r4, [r7, #0]
	bl sub_080020F4
	cmp r4, r0
	bne _0806989E
	adds r3, r7, #0
	adds r3, #0xe0
	ldr r2, _080697D4
	ldr r1, [r6, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #2]
	str r0, [r3, #0]
	add r1, sp, #8
	ldrb r0, [r1, #1]
	ldrh r1, [r1, #4]
	ldr r2, _080697D8
	ldr r2, [r2, #0]
	adds r2, #0x24
	bl sub_08069224
	b _0806989E
_080697D4: .4byte gUnk_084EBF1C
_080697D8: .4byte gUnk_030034E0
_080697DC:
	movs r0, #0xa
	strh r0, [r5, #0xc]
	ldrh r1, [r5, #2]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r2, r5, #0
	adds r2, #0x4a
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	ldrh r3, [r2, #0]
	adds r0, r0, r3
	strh r0, [r2, #0]
	ldrh r0, [r1, #4]
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_0801F2CC
	ldr r0, [r6, #0]
	cmp r0, #3
	bhi _0806980C
	mov r0, r8
	adds r0, #0xdc
	ldr r0, [r0, #0]
	b _08069810
_0806980C:
	mov r1, r9
	ldr r0, [r1, #0x50]
_08069810:
	str r0, [r5, #0x54]
	ldr r1, [r6, #0]
	adds r0, r5, #0
	adds r0, #0x58
	strh r1, [r0, #0]
	adds r2, r5, #0
	adds r2, #0x5a
	ldr r1, [r6, #0]
	movs r0, #1
	lsls r0, r1
	ldrh r1, [r2, #0]
	orrs r0, r1
	strh r0, [r2, #0]
	add r4, sp, #8
	ldrh r2, [r6, #0x14]
	ldr r3, _08069878
	ldr r1, [r6, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r3, [r0, #2]
	ldrh r0, [r6, #8]
	str r0, [sp, #0]
	adds r0, r4, #0
	mov r1, sl
	bl sub_08069388
	ldr r0, [r6, #0xc]
	cmp r0, #0x12
	bne _08069852
	movs r0, #0
	strb r0, [r4, #1]
_08069852:
	ldr r2, _0806987C
	adds r0, r5, r2
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _08069898
	ldrb r1, [r4, #1]
	adds r0, r5, #0
	bl sub_0801E244
	adds r1, r0, #0
	cmp r1, #0
	beq _08069880
	ldrh r0, [r5, #0]
	adds r0, #4
	ldrb r2, [r4, #1]
	bl sub_0801DB94
	b _08069898
	.2byte 0x0000
_08069878: .4byte gUnk_084EBF1C
_0806987C: .4byte 0x00000226
_08069880:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801E104
	adds r1, r0, #0
	cmp r1, #0
	beq _08069898
	ldrh r0, [r5, #0]
	adds r0, #4
	ldrb r2, [r4, #1]
	bl sub_0801DB94
_08069898:
	add r0, sp, #8
	bl sub_080660EC
_0806989E:
	add r0, sp, #8
	ldrh r1, [r0, #4]
	ldr r2, [r6, #0x14]
	ldr r3, [r6, #0]
	ldr r0, [r6, #8]
	str r0, [sp, #0]
	ldr r5, _080698D0
	ldr r4, [r6, #0xc]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r5
	ldrh r0, [r0, #2]
	str r0, [sp, #4]
	mov r0, sl
	bl sub_08069080
_080698C0:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080698D0: .4byte gUnk_084EBF1C
	thumb_func_end sub_080694AC
