	thumb_func_start sub_0808441C
sub_0808441C: @ 0x0808441C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	movs r4, #0
	add r0, sp, #0x30
	movs r1, #0
	strh r4, [r0, #0]
	strh r4, [r0, #2]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strh r4, [r0, #4]
	movs r5, #0
	adds r7, r0, #0
	add r0, sp, #0x10
	mov sl, r0
	add r1, sp, #0x20
	mov r8, r1
	mov r2, sp
	adds r2, #0x40
	str r2, [sp, #0x78]
	add r1, sp, #0x34
	movs r2, #0
_08084452:
	adds r0, r1, r5
	strb r2, [r0, #0]
	adds r5, #1
	cmp r5, #0xb
	bls _08084452
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	lsls r0, r5, #4
	mov r1, sp
	ldr r3, [sp, #0x5c]
	adds r0, r0, r3
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	adds r3, #0x10
	str r3, [sp, #0x7c]
	ldr r3, [sp, #0x5c]
	adds r3, #0x20
	str r3, [sp, #0x74]
_08084482:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r4, r0, #0
	cmp r5, r4
	beq _08084482
	lsls r0, r4, #4
	mov r1, sl
	ldr r6, [sp, #0x5c]
	adds r0, r0, r6
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
_080844A2:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r6, r0, #0
	cmp r5, r6
	beq _080844A2
	cmp r4, r6
	beq _080844A2
	lsls r0, r6, #4
	mov r1, r8
	ldr r2, [sp, #0x5c]
	adds r0, r0, r2
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [sp, #0x5c]
	bl sub_08084200
	adds r4, r0, #0
	cmp r4, #0
	bne _080844D4
	b _0808481C
_080844D4:
	bl sub_080008C8
	ldr r1, _08084508
	ands r1, r0
	ldr r0, _0808450C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bls _080844E8
	b _0808481C
_080844E8:
	ldr r6, [sp, #0x5c]
	ldrh r0, [r6, #4]
	ldrh r1, [r6, #0x14]
	adds r0, r0, r1
	ldrh r1, [r6, #0x24]
	adds r6, r0, r1
	cmp r6, #0x63
	bhi _080844FA
	b _080847E4
_080844FA:
	adds r0, r6, #0
	subs r0, #0x64
	cmp r0, #0xc7
	bhi _08084510
	movs r6, #0
	b _0808451C
	.2byte 0x0000
_08084508: .4byte 0x0000FFFF
_0808450C: .4byte gUnk_030034E0
_08084510:
	ldr r2, _08084530
	adds r0, r6, r2
	movs r6, #2
	cmp r0, #0xc7
	bhi _0808451C
	movs r6, #1
_0808451C:
	subs r0, r4, #1
	cmp r0, #0x17
	bls _08084524
	b _08084C16
_08084524:
	lsls r0, r0, #2
	ldr r1, _08084534
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08084530: .4byte 0xFFFFFED4
_08084534: .4byte _08084538
_08084538:
	.4byte _08084598
_0808453C: .4byte _080845B8
_08084540: .4byte _080845D8
_08084544: .4byte _080845F8
_08084548: .4byte _08084618
_0808454C: .4byte _08084630
_08084550: .4byte _08084648
_08084554: .4byte _08084660
_08084558: .4byte _08084678
_0808455C: .4byte _08084690
_08084560: .4byte _080846A8
_08084564: .4byte _080846BC
_08084568: .4byte _080846D0
_0808456C: .4byte _080846E4
_08084570: .4byte _080846F8
_08084574: .4byte _0808470C
_08084578: .4byte _08084720
_0808457C: .4byte _08084734
_08084580: .4byte _08084748
_08084584: .4byte _0808475C
_08084588: .4byte _08084770
_0808458C: .4byte _08084784
_08084590: .4byte _080847AC
_08084594: .4byte _080847C8
_08084598:
	bl sub_080008C8
	movs r1, #0xe
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r2, _080845B4
	lsls r1, r5, #2
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	b _0808480E
_080845B4: .4byte gUnk_084EC1E0
_080845B8:
	bl sub_080008C8
	movs r1, #0xe
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r2, _080845D4
	lsls r1, r5, #2
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	b _0808480E
_080845D4: .4byte gUnk_084EC288
_080845D8:
	bl sub_080008C8
	movs r1, #0xe
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r2, _080845F4
	lsls r1, r5, #2
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	b _0808480E
_080845F4: .4byte gUnk_084EC330
_080845F8:
	bl sub_080008C8
	movs r1, #0xe
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r2, _08084614
	lsls r1, r5, #2
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	b _0808480E
_08084614: .4byte gUnk_084EC3D8
_08084618:
	bl sub_080008C8
	movs r1, #7
	ands r1, r0
	ldr r2, _0808462C
	lsls r1, r1, #2
	lsls r0, r6, #5
	adds r1, r1, r0
	adds r1, r1, r2
	b _0808480E
_0808462C: .4byte gUnk_084EC480
_08084630:
	bl sub_080008C8
	movs r1, #7
	ands r1, r0
	ldr r2, _08084644
	lsls r1, r1, #2
	lsls r0, r6, #5
	adds r1, r1, r0
	adds r1, r1, r2
	b _0808480E
_08084644: .4byte gUnk_084EC4E0
_08084648:
	bl sub_080008C8
	movs r1, #7
	ands r1, r0
	ldr r2, _0808465C
	lsls r1, r1, #2
	lsls r0, r6, #5
	adds r1, r1, r0
	adds r1, r1, r2
	b _0808480E
_0808465C: .4byte gUnk_084EC540
_08084660:
	bl sub_080008C8
	movs r1, #7
	ands r1, r0
	ldr r2, _08084674
	lsls r1, r1, #2
	lsls r0, r6, #5
	adds r1, r1, r0
	adds r1, r1, r2
	b _0808480E
_08084674: .4byte gUnk_084EC5A0
_08084678:
	bl sub_080008C8
	movs r1, #7
	ands r1, r0
	ldr r2, _0808468C
	lsls r1, r1, #2
	lsls r0, r6, #5
	adds r1, r1, r0
	adds r1, r1, r2
	b _0808480E
_0808468C: .4byte gUnk_084EC600
_08084690:
	bl sub_080008C8
	movs r1, #7
	ands r1, r0
	ldr r2, _080846A4
	lsls r1, r1, #2
	lsls r0, r6, #5
	adds r1, r1, r0
	adds r1, r1, r2
	b _0808480E
_080846A4: .4byte gUnk_084EC660
_080846A8:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, _080846B8
	b _08084792
_080846B8: .4byte gUnk_084EC6C0
_080846BC:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, _080846CC
	b _08084792
_080846CC: .4byte gUnk_084EC6E4
_080846D0:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, _080846E0
	b _08084792
_080846E0: .4byte gUnk_084EC708
_080846E4:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, _080846F4
	b _08084792
_080846F4: .4byte gUnk_084EC72C
_080846F8:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, _08084708
	b _08084792
_08084708: .4byte gUnk_084EC750
_0808470C:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, _0808471C
	b _08084792
_0808471C: .4byte gUnk_084EC774
_08084720:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, _08084730
	b _08084792
_08084730: .4byte gUnk_084EC798
_08084734:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, _08084744
	b _08084792
_08084744: .4byte gUnk_084EC7BC
_08084748:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, _08084758
	b _08084792
_08084758: .4byte gUnk_084EC7E0
_0808475C:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, _0808476C
	b _08084792
_0808476C: .4byte gUnk_084EC804
_08084770:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, _08084780
	b _08084792
_08084780: .4byte gUnk_084EC828
_08084784:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r1, _080847A8
_08084792:
	lsls r0, r6, #1
	adds r0, r0, r6
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	strh r1, [r7, #0]
	ldrh r0, [r0, #2]
	strh r0, [r7, #2]
	b _08084C16
	.2byte 0x0000
_080847A8: .4byte gUnk_084EC84C
_080847AC:
	bl sub_080008C8
	movs r1, #3
	ands r1, r0
	ldr r2, _080847C4
	lsls r1, r1, #2
	adds r0, r6, #1
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r2
	b _0808480E
	.2byte 0x0000
_080847C4: .4byte gUnk_084EC870
_080847C8:
	bl sub_080008C8
	movs r1, #3
	ands r1, r0
	ldr r2, _080847E0
	lsls r1, r1, #2
	adds r0, r6, #1
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r2
	b _0808480E
	.2byte 0x0000
_080847E0: .4byte gUnk_084EC8B0
_080847E4:
	cmp r4, #0x17
	beq _080847EE
	cmp r4, #0x18
	beq _08084800
	b _0808481C
_080847EE:
	bl sub_080008C8
	movs r1, #3
	ands r1, r0
	ldr r0, _080847FC
	b _0808480A
	.2byte 0x0000
_080847FC: .4byte gUnk_084EC870
_08084800:
	bl sub_080008C8
	movs r1, #3
	ands r1, r0
	ldr r0, _08084818
_0808480A:
	lsls r1, r1, #2
	adds r1, r1, r0
_0808480E:
	ldrh r0, [r1, #0]
	strh r0, [r7, #0]
	ldrh r0, [r1, #2]
	strh r0, [r7, #2]
	b _08084C16
_08084818: .4byte gUnk_084EC8B0
_0808481C:
	mov r0, sp
	ldrh r0, [r0, #0]
	cmp r0, #5
	bgt _08084832
	cmp r0, #3
	blt _0808482A
	b _080849AA
_0808482A:
	cmp r0, #2
	bne _08084830
	b _0808499C
_08084830:
	b _080849B8
_08084832:
	cmp r0, #9
	beq _08084838
	b _080849B8
_08084838:
	mov r0, sp
	ldrh r4, [r0, #2]
	cmp r4, #3
	beq _08084852
	cmp r4, #4
	beq _0808487C
	bl sub_080008C8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _08084904
	b _080848A8
_08084852:
	bl sub_080008C8
	adds r5, r0, #0
	ands r5, r4
	add r1, sp, #0x4c
	ldr r3, _08084878
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r2, r1, #0
	adds r0, r0, r3
	ldm r0!, {r3, r4, r5}
	stm r2!, {r3, r4, r5}
	adds r0, r7, #0
	movs r2, #0x10
	bl sub_080B96A4
	b _08084C16
	.2byte 0x0000
_08084878: .4byte gUnk_084EC8F0
_0808487C:
	bl sub_080008C8
	adds r5, r0, #0
	movs r0, #3
	ands r5, r0
	add r1, sp, #0x4c
	ldr r3, _080848A4
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r2, r1, #0
	adds r0, r0, r3
	ldm r0!, {r3, r4, r6}
	stm r2!, {r3, r4, r6}
	adds r0, r7, #0
	movs r2, #0x10
	bl sub_080B96A4
	b _08084A6A
	.2byte 0x0000
_080848A4: .4byte gUnk_084EC920
_080848A8:
	bl sub_080008C8
	movs r1, #0xc
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r0, _08084900
	ldr r0, [r0, #0]
	lsls r1, r5, #4
	adds r0, r0, r1
	adds r1, r7, #0
	movs r5, #0xf2
	lsls r5, r5, #3
	adds r0, r0, r5
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldrh r0, [r7, #0]
	cmp r0, #0
	beq _080848A8
	ldrh r0, [r7, #2]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x64]
	adds r0, #0xbc
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080848EA
	b _08084C16
_080848EA:
	ldrh r0, [r7, #6]
	cmp r0, #0
	beq _080848F2
	b _08084C16
_080848F2:
	ldr r0, [sp, #0x64]
	adds r0, #0xb0
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080848FE
	b _08084C16
_080848FE:
	b _080849B8
_08084900: .4byte gUnk_030034E0
_08084904:
	adds r4, r7, #0
_08084906:
	bl sub_080008C8
	movs r1, #0xc
	bl sub_080B95E4
	adds r5, r0, #0
	ldr r0, _08084954
	ldr r0, [r0, #0]
	lsls r1, r5, #4
	adds r0, r0, r1
	adds r1, r4, #0
	movs r5, #0x85
	lsls r5, r5, #4
	adds r0, r0, r5
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _08084906
	ldrh r0, [r7, #0]
	cmp r0, #3
	bne _0808495C
	ldrh r0, [r7, #2]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x68]
	ldr r0, [r7, #4]
	ldr r1, _08084958
	ands r0, r1
	cmp r0, #0
	beq _08084950
	b _08084C16
_08084950:
	ldr r0, [sp, #0x68]
	b _0808498C
_08084954: .4byte gUnk_030034E0
_08084958: .4byte 0x00FFFFFF
_0808495C:
	cmp r0, #4
	bne _08084970
	ldrh r0, [r7, #2]
	movs r1, #0xd0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x6c]
	b _0808497E
_08084970:
	ldrh r0, [r7, #2]
	movs r1, #0xe0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x70]
_0808497E:
	ldr r0, [r7, #4]
	ldr r1, _08084998
	ands r0, r1
	cmp r0, #0
	beq _0808498A
	b _08084C16
_0808498A:
	ldr r0, [sp, #0x6c]
_0808498C:
	adds r0, #0xa4
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08084996
	b _08084C16
_08084996:
	b _08084A6A
_08084998: .4byte 0x00FFFFFF
_0808499C:
	adds r0, r7, #0
	mov r1, sp
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	b _080849B8
_080849AA:
	adds r0, r7, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	b _08084A6A
_080849B8:
	bl sub_080008C8
	ldr r1, _080849DC
	ands r1, r0
	ldr r0, _080849E0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bhi _08084A6A
	mov r0, sl
	ldrh r1, [r0, #0]
	cmp r1, #5
	bgt _080849E4
	cmp r1, #3
	bge _08084A52
	cmp r1, #2
	beq _08084A4A
	b _08084A56
_080849DC: .4byte 0x0000FFFF
_080849E0: .4byte gUnk_030034E0
_080849E4:
	cmp r1, #9
	bne _08084A56
	ldrh r4, [r0, #2]
	cmp r4, #1
	beq _08084A16
	cmp r4, #1
	bgt _080849F8
	cmp r4, #0
	beq _080849FE
	b _08084A44
_080849F8:
	cmp r4, #2
	beq _08084A2A
	b _08084A44
_080849FE:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	movs r6, #1
	mov r9, r6
	cmp r5, #0
	bne _08084A56
	movs r0, #3
	b _08084A54
_08084A16:
	bl sub_080008C8
	ands r4, r0
	movs r1, #4
	mov r9, r1
	cmp r4, #0
	bne _08084A56
	movs r2, #2
	mov r9, r2
	b _08084A56
_08084A2A:
	bl sub_080008C8
	movs r1, #3
	bl sub_080B95E4
	adds r5, r0, #0
	movs r3, #6
	mov r9, r3
	cmp r5, #0
	bne _08084A56
	movs r4, #5
	mov r9, r4
	b _08084A56
_08084A44:
	movs r5, #0
	mov r9, r5
	b _08084A56
_08084A4A:
	mov r6, sl
	ldrb r6, [r6, #7]
	mov r9, r6
	b _08084A56
_08084A52:
	movs r0, #0
_08084A54:
	mov r9, r0
_08084A56:
	ldrh r0, [r7, #0]
	cmp r0, #5
	bgt _08084A66
	cmp r0, #3
	blt _08084A66
	movs r0, #0
	strb r0, [r7, #7]
	b _08084A6A
_08084A66:
	mov r1, r9
	strb r1, [r7, #7]
_08084A6A:
	bl sub_080008C8
	ldr r1, _08084AAC
	ands r1, r0
	ldr r0, _08084AB0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x6c]
	movs r4, #0
	cmp r1, r0
	bhi _08084A80
	movs r4, #1
_08084A80:
	ldrh r0, [r7, #0]
	cmp r0, #2
	beq _08084AB4
	cmp r0, #2
	bge _08084A8C
	b _08084C16
_08084A8C:
	cmp r0, #5
	ble _08084A92
	b _08084C16
_08084A92:
	mov r2, r8
	ldrh r0, [r2, #0]
	cmp r0, #2
	bge _08084A9C
	b _08084C16
_08084A9C:
	cmp r0, #5
	bgt _08084AA2
	b _08084BC8
_08084AA2:
	cmp r0, #9
	beq _08084AA8
	b _08084C16
_08084AA8:
	b _08084BA4
	.2byte 0x0000
_08084AAC: .4byte 0x0000FFFF
_08084AB0: .4byte gUnk_030034E0
_08084AB4:
	ldrh r0, [r7, #2]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x64]
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _08084B42
	mov r3, r8
	ldrh r0, [r3, #0]
	cmp r0, #2
	bge _08084AD4
	b _08084C16
_08084AD4:
	cmp r0, #5
	ble _08084B14
	cmp r0, #9
	beq _08084ADE
	b _08084C16
_08084ADE:
	bl sub_080008C8
	adds r5, r0, #0
	movs r0, #3
	ands r5, r0
	cmp r4, #0
	beq _08084B04
	ldr r2, _08084B00
_08084AEE:
	lsls r1, r5, #2
	mov r4, r8
	ldrh r0, [r4, #2]
_08084AF4:
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r0, [r1, #0]
	b _08084C14
	.2byte 0x0000
_08084B00: .4byte gUnk_084ECA90
_08084B04:
	ldr r2, _08084B10
	lsls r1, r5, #2
	mov r5, r8
	ldrh r0, [r5, #2]
	b _08084AF4
	.2byte 0x0000
_08084B10: .4byte gUnk_084ECAE0
_08084B14:
	mov r6, r8
	ldrh r0, [r6, #4]
	cmp r0, #0
	bne _08084B1E
	b _08084C14
_08084B1E:
	subs r0, #1
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
	adds r0, #0xac
	ldrh r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08084C14
	mov r1, r8
	ldrh r0, [r1, #4]
	b _08084C14
_08084B42:
	mov r2, r8
	ldrh r0, [r2, #0]
	cmp r0, #2
	blt _08084C16
	cmp r0, #5
	ble _08084B78
	cmp r0, #9
	bne _08084C16
	bl sub_080008C8
	adds r5, r0, #0
	movs r0, #3
	ands r5, r0
	cmp r4, #0
	beq _08084B70
	ldr r2, _08084B6C
	lsls r1, r5, #2
	mov r3, r8
	ldrh r0, [r3, #2]
	b _08084AF4
	.2byte 0x0000
_08084B6C: .4byte gUnk_084EC950
_08084B70:
	ldr r2, _08084B74
	b _08084AEE
_08084B74: .4byte gUnk_084EC9A0
_08084B78:
	mov r5, r8
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08084C14
	subs r0, #1
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
	adds r0, #0xac
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08084C14
	mov r6, r8
	ldrh r0, [r6, #4]
	b _08084C14
_08084BA4:
	bl sub_080008C8
	adds r5, r0, #0
	movs r0, #3
	ands r5, r0
	cmp r4, #0
	beq _08084BC0
	ldr r2, _08084BBC
	lsls r1, r5, #2
	mov r3, r8
	ldrh r0, [r3, #2]
	b _08084AF4
_08084BBC: .4byte gUnk_084EC9F0
_08084BC0:
	ldr r2, _08084BC4
	b _08084AEE
_08084BC4: .4byte gUnk_084ECA40
_08084BC8:
	mov r4, r8
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _08084C14
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
	ldrh r0, [r7, #0]
	subs r0, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08084BFE
	adds r0, r1, #0
	adds r0, #0xac
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08084C14
	ldrh r0, [r4, #4]
	b _08084C14
_08084BFE:
	adds r0, r1, #0
	adds r0, #0xac
	ldrh r0, [r0, #0]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08084C10
	strh r1, [r7, #4]
	b _08084C16
_08084C10:
	mov r5, r8
	ldrh r0, [r5, #4]
_08084C14:
	strh r0, [r7, #4]
_08084C16:
	ldr r6, _08084C40
	mov r8, r6
	ldr r4, [sp, #0x78]
	ldr r5, [sp, #0x5c]
_08084C1E:
	ldrh r0, [r5, #0]
	cmp r0, #2
	blt _08084C80
	cmp r0, #5
	ble _08084C7C
	cmp r0, #9
	bne _08084C80
	mov r0, sp
	ldrh r0, [r0, #2]
	cmp r0, #1
	beq _08084C56
	cmp r0, #1
	bgt _08084C44
	cmp r0, #0
	beq _08084C4A
	b _08084C70
	.2byte 0x0000
_08084C40: .4byte gUnk_030034E0
_08084C44:
	cmp r0, #2
	beq _08084C64
	b _08084C70
_08084C4A:
	ldrh r0, [r5, #4]
	str r0, [r4, #0]
	movs r1, #0x14
	bl sub_080B956C
	b _08084C82
_08084C56:
	ldrh r0, [r5, #4]
	str r0, [r4, #0]
	lsls r0, r0, #3
	movs r1, #0x64
	bl sub_080B956C
	b _08084C82
_08084C64:
	ldrh r0, [r5, #4]
	str r0, [r4, #0]
	movs r1, #0xa
	bl sub_080B956C
	b _08084C82
_08084C70:
	ldrh r0, [r5, #4]
	str r0, [r4, #0]
	movs r1, #0x64
	bl sub_080B956C
	b _08084C82
_08084C7C:
	ldrb r0, [r5, #6]
	b _08084C82
_08084C80:
	movs r0, #0
_08084C82:
	str r0, [r4, #0]
	adds r4, #4
	adds r5, #0x10
	ldr r0, [sp, #0x78]
	adds r0, #8
	cmp r4, r0
	bls _08084C1E
	ldr r0, [sp, #0x5c]
	ldr r6, [r0, #0x34]
	ldr r1, _08084CE4
	adds r0, r6, #0
	bl sub_080B956C
	adds r6, r0, #1
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x78]
	ldr r1, [r2, #4]
	adds r0, r0, r1
	ldr r1, [r2, #8]
	adds r0, r0, r1
	adds r0, r0, r6
	mov r3, r8
	ldr r1, [r3, #0]
	ldr r1, [r1, #0x6c]
	muls r0, r1, r0
	lsrs r0, r0, #0x12
	adds r5, r0, #3
	cmp r5, #0x13
	bls _08084CBE
	movs r5, #0x14
_08084CBE:
	bl sub_080008C8
	ldr r4, _08084CE8
	mov r8, r4
	lsls r1, r5, #2
	add r1, r8
	ldr r1, [r1, #0]
	adds r1, #1
	bl sub_080B95E4
	adds r6, r0, #0
	movs r4, #0
	cmp r4, r5
	bhs _08084D0A
	cmp r4, r6
	bhi _08084CEC
	mov r1, r8
	ldr r0, [r1, #0]
	b _08084D04
_08084CE4: .4byte 0x00002710
_08084CE8: .4byte gUnk_084ECB30
_08084CEC:
	ldr r1, _08084D84
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	adds r4, #1
	cmp r4, r5
	bhs _08084D0A
	cmp r0, r6
	bhi _08084CEC
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
_08084D04:
	cmp r6, r0
	bhs _08084CEC
	strb r4, [r7, #6]
_08084D0A:
	ldr r2, [sp, #0x5c]
	ldr r6, [r2, #0x34]
	bl sub_080008C8
	ldr r1, _08084D88
	bl sub_080B95E4
	adds r6, r6, r0
	movs r4, #0
	cmp r4, r6
	bhi _08084D28
	ldr r0, _08084D8C
	ldr r0, [r0, #0]
	cmp r6, r0
	blo _08084D4A
_08084D28:
	ldr r1, _08084D8C
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	adds r4, #1
	cmp r4, #4
	bhi _08084D4A
	cmp r0, r6
	bhi _08084D28
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	cmp r6, r0
	bhs _08084D28
	ldrb r0, [r7, #6]
	adds r0, r0, r4
	strb r0, [r7, #6]
_08084D4A:
	ldrh r0, [r7, #0]
	cmp r0, #2
	bne _08084D6A
	ldrh r0, [r7, #2]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x64]
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _08084D6A
	movs r0, #0
	strb r0, [r7, #6]
_08084D6A:
	ldrb r0, [r7, #6]
	cmp r0, #0x13
	bls _08084D74
	movs r0, #0x14
	strb r0, [r7, #6]
_08084D74:
	ldrh r0, [r7, #0]
	cmp r0, #3
	beq _08084DBC
	cmp r0, #3
	bgt _08084D90
	cmp r0, #2
	beq _08084D9A
	b _08084E28
_08084D84: .4byte gUnk_084ECB30
_08084D88: .4byte 0x00030D40
_08084D8C: .4byte gUnk_084ECB84
_08084D90:
	cmp r0, #4
	beq _08084DDE
	cmp r0, #5
	beq _08084E00
	b _08084E28
_08084D9A:
	movs r5, #0
	ldr r0, [sp, #0x64]
	adds r0, #0xb0
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08084E0C
_08084DA6:
	adds r5, #1
	cmp r5, #2
	bhi _08084E28
	lsls r0, r5, #2
	ldr r3, [sp, #0x64]
	adds r0, r3, r0
	adds r0, #0xb0
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08084DA6
	b _08084E24
_08084DBC:
	movs r5, #0
	ldr r0, [sp, #0x68]
	adds r0, #0xa4
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08084E0C
_08084DC8:
	adds r5, #1
	cmp r5, #2
	bhi _08084E28
	lsls r0, r5, #2
	ldr r4, [sp, #0x68]
	adds r0, r4, r0
	adds r0, #0xa4
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08084DC8
	b _08084E24
_08084DDE:
	movs r5, #0
	ldr r0, [sp, #0x6c]
	adds r0, #0xa4
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08084E0C
_08084DEA:
	adds r5, #1
	cmp r5, #2
	bhi _08084E28
	lsls r0, r5, #2
	ldr r6, [sp, #0x6c]
	adds r0, r6, r0
	adds r0, #0xa4
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08084DEA
	b _08084E24
_08084E00:
	movs r5, #0
	ldr r0, [sp, #0x70]
	adds r0, #0xa4
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08084E10
_08084E0C:
	strh r5, [r7, #4]
	b _08084E28
_08084E10:
	adds r5, #1
	cmp r5, #2
	bhi _08084E28
	lsls r0, r5, #2
	ldr r1, [sp, #0x70]
	adds r0, r1, r0
	adds r0, #0xa4
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08084E10
_08084E24:
	movs r0, #0
	strh r0, [r7, #4]
_08084E28:
	ldr r1, [sp, #0x60]
	adds r0, r7, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [sp, #0x5c]
	bl sub_0805AE94
	adds r4, r0, #0
	ldr r0, [sp, #0x7c]
	bl sub_0805AE94
	adds r6, r0, #0
	ldr r0, [sp, #0x74]
	bl sub_0805AE94
	adds r5, r0, #0
	ldr r0, [sp, #0x60]
	bl sub_0805AE94
	mov r8, r0
	ldr r0, _08084EA4
	mov r9, r0
	ldr r7, [r0, #0]
	adds r4, r4, r6
	adds r4, r4, r5
	ldr r1, [sp, #0x5c]
	ldr r0, [r1, #0x34]
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_080B956C
	ldr r4, [r7, #0x6c]
	adds r4, r4, r0
	mov r0, r8
	movs r1, #0xa
	bl sub_080B956C
	subs r4, r4, r0
	str r4, [r7, #0x6c]
	cmp r4, #0
	bge _08084E84
	movs r0, #0
	str r0, [r7, #0x6c]
_08084E84:
	mov r2, r9
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x6c]
	ldr r2, _08084EA8
	cmp r0, r2
	ble _08084E92
	str r2, [r1, #0x6c]
_08084E92:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08084EA4: .4byte gUnk_030034E0
_08084EA8: .4byte 0x0000FFFF
	thumb_func_end sub_0808441C
