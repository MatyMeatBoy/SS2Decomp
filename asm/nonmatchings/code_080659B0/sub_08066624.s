	thumb_func_start sub_08066624
sub_08066624: @ 0x08066624
	push {r4, r5, r6, r7, lr}
	ldr r0, _08066634
	ldr r2, [r0, #0]
	cmp r2, #0x31
	bls _08066638
	movs r0, #0
	b _08066708
	.2byte 0x0000
_08066634: .4byte gUnk_03006338
_08066638:
	ldr r1, _08066660
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r4, r1, r0
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0xab
	strb r0, [r4, #0]
	bl sub_0800CE30
	cmp r0, #0
	beq _08066668
	ldr r2, _08066664
	ldr r1, [r2, #0]
	ldr r0, [r1, #0xc]
	str r0, [r4, #8]
	ldr r0, [r1, #0x10]
	b _08066672
_08066660: .4byte gUnk_03006300
_08066664: .4byte gUnk_03004210
_08066668:
	ldr r2, _08066710
	ldr r1, [r2, #0]
	ldr r0, [r1, #4]
	str r0, [r4, #8]
	ldr r0, [r1, #8]
_08066672:
	str r0, [r4, #0xc]
	mov ip, r2
	adds r3, r4, #0
	adds r3, #0x10
	movs r2, #7
	movs r1, #0
	ldr r7, _08066714
	ldr r6, _08066710
	movs r5, #0xa0
	lsls r5, r5, #1
_08066686:
	ldr r0, [r6, #0]
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	strb r0, [r3, #0]
	adds r3, #1
	adds r1, #1
	cmp r1, r2
	blo _08066686
	movs r1, #0
	cmp r1, r2
	bhs _080666B6
	ldr r6, _08066710
	movs r5, #0xa6
	lsls r5, r5, #1
_080666A4:
	ldr r0, [r6, #0]
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	strb r0, [r3, #0]
	adds r3, #1
	adds r1, #1
	cmp r1, r2
	blo _080666A4
_080666B6:
	movs r2, #5
	movs r1, #0
	ldr r6, _08066710
	ldr r5, _08066718
_080666BE:
	ldr r0, [r6, #0]
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	strb r0, [r3, #0]
	adds r3, #1
	adds r1, #1
	cmp r1, r2
	blo _080666BE
	movs r1, #0
	cmp r1, r2
	bhs _080666EC
	ldr r6, _08066710
	ldr r5, _0806671C
_080666DA:
	ldr r0, [r6, #0]
	adds r0, r0, r5
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	strb r0, [r3, #0]
	adds r3, #1
	adds r1, #1
	cmp r1, r2
	blo _080666DA
_080666EC:
	movs r1, #0
	mov r2, ip
	ldr r0, [r2, #0]
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _080666FA
	movs r1, #1
_080666FA:
	strb r1, [r3, #0]
	movs r0, #5
	strb r0, [r4, #1]
	ldr r0, [r7, #0]
	adds r0, #1
	str r0, [r7, #0]
	movs r0, #1
_08066708:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08066710: .4byte gUnk_03004210
_08066714: .4byte gUnk_03006338
_08066718: .4byte 0x00000147
_0806671C: .4byte 0x00000153
	thumb_func_end sub_08066624
