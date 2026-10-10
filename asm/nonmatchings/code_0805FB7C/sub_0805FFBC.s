	thumb_func_start sub_0805FFBC
sub_0805FFBC: @ 0x0805FFBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	str r0, [sp, #0x44]
	mov r9, r1
	adds r5, r2, #0
	str r3, [sp, #0x48]
	cmp r5, #0
	bne _0805FFD6
	b _0806022C
_0805FFD6:
	movs r0, #0
	str r0, [sp, #0x50]
	movs r1, #0
	str r1, [sp, #0x54]
	movs r2, #0
	str r2, [sp, #0x58]
	movs r3, #0
	str r3, [sp, #0x5c]
	str r0, [sp, #0x60]
	ldr r1, _08060004
	ldr r2, [sp, #0x48]
	ands r2, r1
	str r2, [sp, #0x64]
	ldrh r0, [r5, #0]
	subs r0, #1
	cmp r0, #9
	bls _0805FFFA
	b _0806022C
_0805FFFA:
	lsls r0, r0, #2
	ldr r1, _08060008
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08060004: .4byte 0x7FFFFFFF
_08060008: .4byte _0806000C
_0806000C:
	.4byte _08060034
_08060010: .4byte _08060068
_08060014: .4byte _080600A0
_08060018: .4byte _080600C8
_0806001C: .4byte _080600F4
_08060020: .4byte _08060144
_08060024: .4byte _080600D0
_08060028: .4byte _08060208
_0806002C: .4byte _0806016C
_08060030: .4byte _08060190
_08060034:
	ldrh r0, [r5, #2]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x4c]
	ldr r0, _08060064
	ldr r1, [r0, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	ldr r3, [sp, #0x4c]
	adds r6, r3, r0
	movs r0, #0
	str r0, [sp, #0x54]
	movs r1, #0
	str r1, [sp, #0x58]
	movs r2, #0
	str r2, [sp, #0x5c]
	mov r3, r9
	lsls r3, r3, #0x10
	mov r9, r3
	b _08060236
	.2byte 0x0000
_08060064: .4byte gUnk_03003470
_08060068:
	ldrh r0, [r5, #2]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	ldr r0, _0806009C
	ldr r1, [r0, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	adds r6, r2, r0
	ldrb r0, [r5, #8]
	str r0, [sp, #0x54]
	ldrb r1, [r5, #6]
	str r1, [sp, #0x58]
	ldrb r3, [r5, #7]
	str r3, [sp, #0x5c]
	cmp r3, #0
	bne _08060122
	adds r0, r2, #0
	adds r0, #0xbc
	ldrh r0, [r0, #0]
	str r0, [sp, #0x5c]
	b _08060122
	.2byte 0x0000
_0806009C: .4byte gUnk_03003470
_080600A0:
	ldrh r0, [r5, #2]
	movs r1, #0xc0
	lsls r1, r1, #0xc
_080600A6:
	orrs r0, r1
	bl sub_08007290
	ldr r1, _080600C4
	ldr r2, [r1, #0]
	lsls r1, r2, #5
	subs r1, r1, r2
	adds r6, r0, r1
	ldrb r2, [r5, #8]
	str r2, [sp, #0x54]
	ldrb r3, [r5, #6]
	str r3, [sp, #0x58]
	ldrb r0, [r5, #7]
	str r0, [sp, #0x5c]
	b _08060122
_080600C4: .4byte gUnk_03003470
_080600C8:
	ldrh r0, [r5, #2]
	movs r1, #0xd0
	lsls r1, r1, #0xc
	b _080600A6
_080600D0:
	ldrh r0, [r5, #2]
	movs r1, #0x88
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	ldr r1, _080600F0
	ldr r2, [r1, #0]
	lsls r1, r2, #5
	subs r1, r1, r2
	adds r6, r0, r1
	movs r2, #0
	str r2, [sp, #0x54]
	movs r3, #0
	str r3, [sp, #0x58]
	b _080601FA
_080600F0: .4byte gUnk_03003470
_080600F4:
	ldrh r0, [r5, #2]
	movs r1, #0xe0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	ldr r1, _08060140
	ldr r2, [r1, #0]
	lsls r1, r2, #5
	subs r1, r1, r2
	adds r6, r0, r1
	ldrb r1, [r5, #8]
	str r1, [sp, #0x54]
	ldrb r2, [r5, #6]
	str r2, [sp, #0x58]
	ldrb r3, [r5, #7]
	str r3, [sp, #0x5c]
	adds r0, #0xa0
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08060122
	movs r0, #1
	str r0, [sp, #0x60]
_08060122:
	ldrh r0, [r5, #4]
	mov r1, r9
	lsls r1, r1, #0x10
	mov r9, r1
	cmp r0, #0
	bne _08060130
	b _08060236
_08060130:
	subs r0, #1
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x50]
	b _08060236
_08060140: .4byte gUnk_03003470
_08060144:
	ldrh r0, [r5, #2]
	movs r1, #0xf0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	ldr r1, _08060168
	ldr r2, [r1, #0]
	lsls r1, r2, #5
	subs r1, r1, r2
	adds r6, r0, r1
	movs r2, #0
	str r2, [sp, #0x54]
	movs r3, #0
	str r3, [sp, #0x58]
	movs r0, #0
	str r0, [sp, #0x5c]
	b _0806021E
_08060168: .4byte gUnk_03003470
_0806016C:
	ldrh r0, [r5, #2]
	movs r1, #0xa8
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	ldr r1, _0806018C
	ldr r2, [r1, #0]
	lsls r1, r2, #5
	subs r1, r1, r2
	adds r6, r0, r1
	mov r2, r9
	lsls r2, r2, #0x10
	mov r9, r2
	b _08060236
	.2byte 0x0000
_0806018C: .4byte gUnk_03003470
_08060190:
	bl sub_0800CC98
	cmp r0, #0
	bne _080601E8
	ldr r0, [r5, #4]
	str r0, [sp, #0x40]
	ldr r6, _080601E4
	add r4, sp, #0x20
	movs r7, #0
	movs r3, #0
	mov r8, r3
	add r0, sp, #0x40
	mov sl, r0
	mov r1, r9
	lsls r1, r1, #0x10
	mov r9, r1
_080601B0:
	ldr r1, [r6, #0]
	mov r0, sl
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	cmp r7, #0
	bne _080601C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	beq _080601CC
_080601C8:
	adds r4, #1
	movs r7, #1
_080601CC:
	movs r2, #1
	add r8, r2
	adds r6, #4
	mov r3, r8
	cmp r3, #5
	bls _080601B0
	movs r0, #7
	strb r0, [r4, #0]
	movs r0, #0
	strb r0, [r4, #1]
	add r6, sp, #0x20
	b _08060236
_080601E4: .4byte gUnk_084EBD5C
_080601E8:
	movs r0, #0xb0
	lsls r0, r0, #0xd
	bl sub_08007290
	ldr r1, _08060204
	ldr r2, [r1, #0]
	lsls r1, r2, #5
	subs r1, r1, r2
	adds r6, r0, r1
_080601FA:
	mov r0, r9
	lsls r0, r0, #0x10
	mov r9, r0
	b _08060236
	.2byte 0x0000
_08060204: .4byte gUnk_03003470
_08060208:
	ldrh r0, [r5, #2]
	movs r1, #0x90
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	ldr r1, _08060228
	ldr r2, [r1, #0]
	lsls r1, r2, #5
	subs r1, r1, r2
	adds r6, r0, r1
_0806021E:
	mov r1, r9
	lsls r1, r1, #0x10
	mov r9, r1
	b _08060236
	.2byte 0x0000
_08060228: .4byte gUnk_03003470
_0806022C:
	mov r0, r9
	movs r1, #2
	bl sub_0801A664
	b _080605C0
_08060236:
	ldr r2, [sp, #0x64]
	cmp r2, #1
	bne _0806023E
	b _08060414
_0806023E:
	cmp r2, #1
	blo _0806024A
	cmp r2, #2
	bne _08060248
	b _0806055C
_08060248:
	b _08060594
_0806024A:
	ldr r3, [sp, #0x54]
	cmp r3, #0
	beq _0806027E
	mov r0, sp
	movs r1, #0xa1
	strb r1, [r0, #0]
	movs r5, #0
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq _08060274
	adds r1, r6, #0
	mov r2, sp
	adds r2, #1
_08060264:
	ldrb r0, [r1, #0]
	strb r0, [r2, #0]
	adds r1, #1
	adds r2, #1
	adds r5, #1
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne _08060264
_08060274:
	adds r0, r5, #1
	mov r2, sp
	adds r1, r2, r0
	movs r0, #0xfd
	b _08060592
_0806027E:
	ldr r3, [sp, #0x5c]
	cmp r3, #0
	beq _08060298
	cmp r3, #7
	bne _0806028C
	movs r0, #6
	str r0, [sp, #0x5c]
_0806028C:
	mov r1, sp
	ldr r0, [sp, #0x5c]
	adds r0, #0xa1
	strb r0, [r1, #0]
	movs r5, #1
	b _0806029A
_08060298:
	movs r5, #0
_0806029A:
	ldr r1, [sp, #0x60]
	cmp r1, #0
	beq _080602AA
	mov r2, sp
	adds r1, r2, r5
	movs r0, #0xcd
	strb r0, [r1, #0]
	adds r5, #1
_080602AA:
	ldr r0, _0806031C
	ldr r1, [r0, #0]
	adds r2, r0, #0
	cmp r1, #2
	bne _08060320
	ldr r3, [sp, #0x50]
	cmp r3, #0
	beq _080602F4
	movs r4, #0
	adds r0, r3, #0
	adds r0, #0x3e
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080602E8
	movs r2, #0x3e
_080602C8:
	adds r0, r4, r5
	mov r3, sp
	adds r1, r3, r0
	adds r0, r4, r2
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, r2
	adds r0, r3, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080602C8
_080602E8:
	adds r5, r5, r4
	mov r0, sp
	adds r1, r0, r5
	movs r0, #0x51
	strb r0, [r1, #0]
	adds r5, #1
_080602F4:
	movs r4, #0
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq _0806038C
_080602FC:
	adds r0, r4, r5
	mov r2, sp
	adds r1, r2, r0
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0806038C
	cmp r4, #0x1b
	bls _080602FC
	b _0806038C
_0806031C: .4byte gUnk_03003470
_08060320:
	movs r4, #0
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq _08060346
_08060328:
	adds r0, r4, r5
	mov r3, sp
	adds r1, r3, r0
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08060346
	cmp r4, #0x1b
	bls _08060328
_08060346:
	adds r5, r5, r4
	movs r4, #0
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _0806038C
	mov r3, sp
	adds r1, r3, r5
	movs r0, #0x51
	strb r0, [r1, #0]
	adds r5, #1
	ldr r1, [r2, #0]
	lsls r0, r1, #5
	subs r1, r0, r1
	ldr r2, [sp, #0x50]
	adds r0, r2, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0806038C
	adds r2, r1, #0
_0806036C:
	adds r0, r4, r5
	mov r3, sp
	adds r1, r3, r0
	adds r0, r4, r2
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, r2
	adds r0, r3, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0806036C
_0806038C:
	adds r0, r4, r5
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _0806040C
	cmp r0, #9
	bhi _080603E4
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, r4, #0
	add r1, sp
	movs r0, #0x4c
	strb r0, [r1, #0]
	ldr r0, [sp, #0x58]
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	ldr r0, [sp, #0x58]
	movs r1, #0xa
	bl __umodsi3
	str r0, [sp, #0x58]
	cmp r5, #0
	beq _080603D4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r2, sp
	adds r1, r2, r6
	adds r0, r5, #0
	adds r0, #0x41
	strb r0, [r1, #0]
_080603D4:
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	add r1, sp
	ldr r0, [sp, #0x58]
	adds r0, #0x41
	b _08060402
_080603E4:
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r4, #0
	add r1, sp
	movs r0, #0x4c
	strb r0, [r1, #0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r3, sp
	adds r1, r3, r2
	ldr r0, [sp, #0x58]
	adds r0, #0xac
_08060402:
	strb r0, [r1, #0]
	mov r0, sp
	adds r1, r0, r4
	movs r0, #0xfd
	strb r0, [r1, #0]
_0806040C:
	mov r2, sp
	adds r1, r2, r4
	movs r0, #0xfd
	b _08060592
_08060414:
	movs r4, #0
	ldr r3, [sp, #0x54]
	cmp r3, #0
	beq _08060426
	mov r1, sp
	movs r0, #0xa1
	strb r0, [r1, #0]
	movs r4, #1
	b _08060554
_08060426:
	ldrh r0, [r5, #0]
	cmp r0, #1
	beq _0806042E
	b _08060536
_0806042E:
	ldr r0, [sp, #0x4c]
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _08060516
	bl sub_0801DE60
	cmp r0, #0
	bne _0806045C
	ldr r0, [sp, #0x4c]
	adds r0, #0xa2
	ldrh r1, [r0, #0]
	ldr r0, _08060458
	ldr r0, [r0, #0]
	adds r0, #0x48
	ldrh r0, [r0, #0]
	lsls r0, r0, #2
	adds r7, r1, #0
	muls r7, r0, r7
	b _08060462
	.2byte 0x0000
_08060458: .4byte gUnk_030034E0
_0806045C:
	ldr r0, [sp, #0x4c]
	adds r0, #0xa2
	ldrh r7, [r0, #0]
_08060462:
	movs r4, #0
	ldrb r0, [r6, #0]
	b _0806047C
_08060468:
	mov r0, sp
	adds r1, r0, r4
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r6, r4
	ldrb r0, [r0, #0]
_0806047C:
	cmp r0, #0xfd
	beq _08060484
	cmp r0, #0xf7
	bne _08060468
_08060484:
	adds r1, r4, #3
	mov r8, r1
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	cmp r0, #0xfd
	beq _080604EE
	adds r0, r7, #0
	movs r1, #0x64
	bl __udivsi3
	adds r5, r0, #0
	adds r0, r7, #0
	movs r1, #0x64
	bl __umodsi3
	adds r7, r0, #0
	cmp r5, #0
	beq _080604B8
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	add r1, sp
	adds r0, r5, #0
	adds r0, #0x41
	strb r0, [r1, #0]
_080604B8:
	adds r0, r7, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	adds r0, r7, #0
	movs r1, #0xa
	bl __umodsi3
	adds r7, r0, #0
	adds r1, r4, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r2, r4, #0
	add r1, sp
	adds r0, r5, #0
	adds r0, #0x41
	strb r0, [r1, #0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r3, sp
	adds r1, r3, r2
	adds r0, r7, #0
	adds r0, #0x41
	strb r0, [r1, #0]
_080604EE:
	mov r0, r8
	adds r2, r6, r0
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq _08060554
_080604F8:
	mov r3, sp
	adds r1, r3, r4
	ldrb r0, [r2, #0]
	strb r0, [r1, #0]
	movs r0, #1
	add r8, r0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r1, r8
	adds r2, r6, r1
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne _080604F8
	b _08060554
_08060516:
	ldrb r0, [r6, #0]
	cmp r0, #0xfd
	beq _08060554
_0806051C:
	mov r2, sp
	adds r1, r2, r4
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	cmp r0, #0xfd
	bne _0806051C
	b _08060554
_08060536:
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq _08060554
_0806053C:
	mov r3, sp
	adds r1, r3, r4
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0806053C
_08060554:
	mov r0, sp
	adds r1, r0, r4
	movs r0, #0xfd
	b _08060592
_0806055C:
	movs r4, #0
	ldr r1, [sp, #0x54]
	cmp r1, #0
	beq _0806056E
	mov r1, sp
	movs r0, #0xa1
	strb r0, [r1, #0]
	movs r4, #1
	b _0806058C
_0806056E:
	ldrb r0, [r6, #0]
	cmp r0, #0xfd
	beq _0806058C
_08060574:
	mov r2, sp
	adds r1, r2, r4
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	cmp r0, #0xfd
	bne _08060574
_0806058C:
	mov r3, sp
	adds r1, r3, r4
	movs r0, #0
_08060592:
	strb r0, [r1, #0]
_08060594:
	movs r0, #0
	ldr r1, [sp, #0x48]
	cmp r1, #0
	bge _080605AA
	mov r0, sp
	bl sub_0801A638
	lsrs r5, r0, #1
	negs r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_080605AA:
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r2, [sp, #0x44]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, r9
	lsrs r2, r3, #0x10
	mov r0, sp
	bl sub_0801A3D0
_080605C0:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0805FFBC
