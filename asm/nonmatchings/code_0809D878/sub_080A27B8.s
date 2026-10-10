	thumb_func_start sub_080A27B8
sub_080A27B8: @ 0x080A27B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	str r0, [sp, #0x14]
	ldr r5, _080A2848
	str r0, [r5, #0]
	movs r1, #0x81
	lsls r1, r1, #2
	ldr r0, [sp, #0x14]
	adds r1, r0, r1
	str r1, [sp, #0x18]
	ldr r1, _080A284C
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0x18]
	bl sub_08019F60
	ldr r0, [r5, #0]
	bl sub_0801A0B0
	ldr r1, [r5, #0]
	movs r0, #0xf2
	lsls r0, r0, #8
	str r0, [r1, #0x14]
	movs r0, #0x85
	lsls r0, r0, #8
	str r0, [r1, #0x18]
	ldr r4, _080A2850
	ldr r2, [sp, #0x14]
	movs r3, #0xb6
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrh r0, [r0, #0]
	ldr r6, _080A2854
	adds r1, r2, r6
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080A2858
	cmp r1, r0
	bne _080A286C
	adds r4, r5, #0
	ldr r5, _080A285C
	adds r6, r1, #0
_080A281E:
	ldr r0, [r4, #0]
	movs r1, #0xb
	strh r1, [r0, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _080A2834
	bl sub_08056E90
	cmp r0, #0
	beq _080A2860
_080A2834:
	ldr r0, [r4, #0]
	movs r1, #1
	ldrh r0, [r0, #0]
	lsls r1, r0
	ldr r0, [r5, #0]
	bics r0, r1
	str r0, [r5, #0]
	bl _080A35C0
	.2byte 0x0000
_080A2848: .4byte gUnk_03000364
_080A284C: .4byte gUnk_084A6DB8
_080A2850: .4byte gUnk_030003E8
_080A2854: .4byte 0x000002DA
_080A2858: .4byte 0x0000FFFF
_080A285C: .4byte gUnk_030056FC
_080A2860:
	bl sub_080003F0
	ldr r0, _080A29A4
	ldrh r0, [r0, #0]
	cmp r0, r6
	beq _080A281E
_080A286C:
	ldr r4, _080A29A8
	ldr r1, _080A29AC
	ldr r6, _080A29A4
	ldrh r2, [r6, #0]
	movs r0, #1
	negs r0, r0
	mov r8, r0
	movs r5, #1
	str r5, [sp, #0]
	adds r0, r4, #0
	mov r3, r8
	bl sub_08065158
	adds r4, #0x34
	ldr r1, _080A29B0
	ldrh r2, [r6, #0]
	str r5, [sp, #0]
	adds r0, r4, #0
	mov r3, r8
	bl sub_08065158
	ldr r4, _080A29B4
	ldr r3, [r4, #0]
	ldr r1, [sp, #0x18]
	movs r2, #6
	ldrsh r0, [r1, r2]
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r5, #0xeb
	lsls r5, r5, #1
	adds r0, r3, r5
	movs r2, #0
	strh r1, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x5c
	strh r1, [r0, #0]
	ldr r6, [sp, #0x18]
	movs r1, #4
	ldrsh r0, [r6, r1]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r5, #2
	adds r1, r3, r5
	strh r0, [r1, #0]
	adds r1, r3, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	strh r2, [r3, #0xc]
	movs r6, #0
	str r6, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r1, _080A29B8
	adds r0, r3, r1
	movs r1, #3
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0, #0]
	bl sub_080A49EC
	bl sub_080A4A7C
	bl sub_080A4AE4
	movs r0, #0
	bl sub_080A4B48
	movs r0, #1
	bl sub_080A4B48
	movs r0, #2
	bl sub_080A4B48
	bl sub_080A4BE0
	bl sub_080A4C24
	movs r0, #0
	movs r1, #0
	bl sub_080A4C74
	movs r0, #0
	movs r1, #7
	movs r2, #1
	movs r3, #2
	bl sub_080A4CA8
	movs r0, #1
	movs r1, #8
	movs r2, #4
	movs r3, #6
	bl sub_080A4CA8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080A4CA8
	movs r0, #0xb
	movs r1, #3
	bl sub_080A4CDC
	bl sub_08097FE4
	bl sub_08097A4C
	ldr r1, [r4, #0]
	adds r2, r1, #0
	adds r2, #0x5c
	ldr r0, _080A29BC
	strh r0, [r2, #0]
	ldr r3, _080A29C0
	adds r1, r1, r3
	movs r0, #0x40
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	adds r5, #0x5b
	adds r0, r0, r5
	movs r1, #0x30
	strb r1, [r0, #0]
	ldr r2, [r4, #0]
	ldrb r0, [r2, #0]
	movs r6, #0xfe
	lsls r6, r6, #1
	adds r2, r2, r6
	movs r1, #0xf
	ands r1, r0
	ldrb r3, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #0]
	ldr r0, [r4, #0]
	ldrh r2, [r0, #2]
	ldr r3, _080A29C4
	adds r1, r0, r3
	strh r2, [r1, #0]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #0]
	bl sub_08067C18
	ldr r5, [sp, #0x18]
	adds r5, #0xd6
	str r5, [sp, #0x30]
	b _080A29CC
	.2byte 0x0000
_080A29A4: .4byte gUnk_030003E8
_080A29A8: .4byte gUnk_03000380
_080A29AC: .4byte 0x0005000D
_080A29B0: .4byte 0x0005000E
_080A29B4: .4byte gUnk_03000364
_080A29B8: .4byte 0x000001FD
_080A29BC: .4byte 0x000003E7
_080A29C0: .4byte 0x0000022E
_080A29C4: .4byte 0x00000202
_080A29C8:
	bl sub_080003F0
_080A29CC:
	bl sub_08067C08
	cmp r0, #0
	beq _080A29C8
	bl sub_08067BF8
	bl sub_0806849C
	b _080A30FE
_080A29DE:
	ldr r6, [sp, #0x14]
	ldrh r0, [r6, #0xc]
	cmp r0, #0xa
	bne _080A2A06
	ldr r0, [sp, #0x20]
	cmp r0, #0
	bne _080A29F0
	movs r1, #8
	str r1, [sp, #0x20]
_080A29F0:
	ldr r0, _080A2A38
	ldr r2, [r0, #0]
	adds r1, r2, #0
	adds r1, #0x5c
	ldr r0, _080A2A3C
	strh r0, [r1, #0]
	str r3, [r2, #0x4c]
	movs r2, #0xa
	str r2, [sp, #0x24]
	movs r3, #0
	mov sl, r3
_080A2A06:
	bl sub_08058DB0
	mov r7, sp
	adds r7, #0x12
	cmp r0, #0
	beq _080A2A14
	b _080A2E9E
_080A2A14:
	ldr r4, _080A2A38
	ldr r0, [r4, #0]
	bl sub_0801C8F0
	ldr r0, [r4, #0]
	ldr r4, _080A2A40
	adds r0, r0, r4
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #7
	bls _080A2A2C
	b _080A2E9E
_080A2A2C:
	lsls r0, r0, #2
	ldr r1, _080A2A44
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080A2A38: .4byte gUnk_03000364
_080A2A3C: .4byte 0x000003E7
_080A2A40: .4byte 0x000001FD
_080A2A44: .4byte _080A2A48
_080A2A48:
	.4byte _080A2A68
_080A2A4C: .4byte _080A2A9C
_080A2A50: .4byte _080A2ADC
_080A2A54: .4byte _080A2BC4
_080A2A58: .4byte _080A2B14
_080A2A5C: .4byte _080A2DBC
_080A2A60: .4byte _080A2C7C
_080A2A64: .4byte _080A2E5C
_080A2A68:
	ldr r4, _080A2A94
	ldr r0, [r4, #0]
	movs r1, #0
	strh r1, [r0, #0xc]
	bl sub_08067C08
	mov r7, sp
	adds r7, #0x12
	cmp r0, #0
	bne _080A2A7E
	b _080A2E9E
_080A2A7E:
	ldr r0, [r4, #0]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r1, r0, r5
	ldrb r1, [r1, #0]
	ldr r6, _080A2A98
	adds r0, r0, r6
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _080A2E9E
_080A2A94: .4byte gUnk_03000364
_080A2A98: .4byte 0x000001FD
_080A2A9C:
	ldr r4, _080A2AD4
	ldr r1, [r4, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	bl sub_08068490
	ldr r1, [r4, #0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	strb r0, [r1, #0]
	ldr r1, [r4, #0]
	adds r2, r1, r2
	ldrb r0, [r2, #0]
	mov r7, sp
	adds r7, #0x12
	cmp r0, #0xff
	bne _080A2AC2
	b _080A2E9E
_080A2AC2:
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #7
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r1, _080A2AD8
	adds r0, r0, r1
	b _080A2E3A
_080A2AD4: .4byte gUnk_03000364
_080A2AD8: .4byte 0x000001FD
_080A2ADC:
	bl sub_08056F78
	mov r7, sp
	adds r7, #0x12
	cmp r0, #0
	bne _080A2AEA
	b _080A2E9E
_080A2AEA:
	ldr r2, _080A2B0C
	ldr r0, [r2, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #8
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldr r4, _080A2B10
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	movs r5, #0
	str r5, [sp, #0x28]
	b _080A2E9E
_080A2B0C: .4byte gUnk_03000364
_080A2B10: .4byte 0x000001FD
_080A2B14:
	movs r2, #0
	ldr r5, _080A2BB8
	ldr r0, [r5, #0]
	strh r2, [r0, #0xc]
	movs r0, #0xff
	movs r1, #0
	bl sub_080A4C74
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080A4CA8
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080A4CA8
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_080A4CA8
	movs r0, #0
	movs r1, #0
	bl sub_080A4CDC
	movs r0, #1
	bl sub_080A4CF0
	movs r0, #1
	bl sub_080A4CFC
	movs r6, #0
	str r6, [sp, #0x2c]
	movs r0, #0
	bl sub_08096594
	ldr r3, [r5, #0]
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r3, r3, r4
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	ldr r0, [r5, #0]
	adds r0, r0, r4
	ldrb r0, [r0, #0]
	lsrs r0, r0, #4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080A2BBC
	adds r1, r1, r0
	str r1, [sp, #0x1c]
	movs r0, #0
	bl sub_08097A38
	ldr r0, [r5, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #4
	strb r1, [r0, #0]
	ldr r0, [r5, #0]
	ldr r2, _080A2BC0
	adds r0, r0, r2
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	movs r0, #0xdf
	bl sub_0805865C
	b _080A2E9A
	.2byte 0x0000
_080A2BB8: .4byte gUnk_03000364
_080A2BBC: .4byte gUnk_03003CE0
_080A2BC0: .4byte 0x000001FD
_080A2BC4:
	movs r2, #2
	ldr r4, _080A2C3C
	ldr r0, [r4, #0]
	movs r6, #2
	strh r2, [r0, #0xc]
	adds r2, #0xfe
	ldr r1, [sp, #0x1c]
	movs r3, #0x20
	bl sub_08097A74
	bl sub_080A4520
	ldr r3, [sp, #0x2c]
	cmp r3, #0x78
	bls _080A2C70
	movs r0, #0xdf
	bl sub_0805867C
	bl sub_08002204
	cmp r0, #1
	bne _080A2C44
	bl sub_0800086C
	ldr r5, [r4, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _080A2C0A
	negs r2, r2
_080A2C0A:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r5, r1
	strb r2, [r0, #0]
	ldr r0, [r4, #0]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	bl sub_08068450
	adds r1, r0, #0
	mov r7, sp
	adds r7, #0x12
	cmp r1, #1
	beq _080A2C28
	b _080A2E9E
_080A2C28:
	ldr r0, [r4, #0]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r0, r0, r5
	strb r6, [r0, #0]
	ldr r0, [r4, #0]
	ldr r6, _080A2C40
	adds r0, r0, r6
	b _080A2E3C
	.2byte 0x0000
_080A2C3C: .4byte gUnk_03000364
_080A2C40: .4byte 0x000001FD
_080A2C44:
	ldr r0, [r4, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r6, [r0, #0]
	ldr r0, [r4, #0]
	ldr r3, _080A2C6C
	adds r0, r0, r3
	movs r1, #1
	strb r1, [r0, #0]
	bl sub_08067C18
	b _080A2E9A
	.2byte 0x0000
_080A2C6C: .4byte 0x000001FD
_080A2C70:
	ldr r0, [sp, #0x2c]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x2c]
	b _080A2E9A
_080A2C7C:
	movs r2, #0
	ldr r6, _080A2DA4
	ldr r0, [r6, #0]
	strh r2, [r0, #0xc]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r1, r0, r5
	ldrb r0, [r1, #0]
	cmp r0, #0xff
	bne _080A2C94
	movs r0, #2
	strb r0, [r1, #0]
_080A2C94:
	ldr r4, _080A2DA8
	ldr r0, [r6, #0]
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	lsls r2, r0, #4
	subs r2, r2, r0
	adds r0, r2, r4
	ldrb r0, [r0, #0]
	adds r1, r4, #2
	adds r2, r2, r1
	ldrb r1, [r2, #0]
	bl sub_080A4C74
	ldr r0, [r6, #0]
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	lsls r3, r0, #4
	subs r3, r3, r0
	adds r0, r4, #3
	adds r0, r3, r0
	ldrb r1, [r0, #0]
	adds r0, r4, #4
	adds r0, r3, r0
	ldrb r2, [r0, #0]
	adds r0, r4, #5
	adds r3, r3, r0
	ldrb r3, [r3, #0]
	movs r0, #0
	bl sub_080A4CA8
	ldr r0, [r6, #0]
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	lsls r3, r0, #4
	subs r3, r3, r0
	adds r0, r4, #6
	adds r0, r3, r0
	ldrb r1, [r0, #0]
	adds r0, r4, #7
	adds r0, r3, r0
	ldrb r2, [r0, #0]
	adds r0, r4, #0
	adds r0, #8
	adds r3, r3, r0
	ldrb r3, [r3, #0]
	movs r0, #1
	bl sub_080A4CA8
	ldr r0, [r6, #0]
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	lsls r3, r0, #4
	subs r3, r3, r0
	adds r0, r4, #0
	adds r0, #9
	adds r0, r3, r0
	ldrb r1, [r0, #0]
	adds r0, r4, #0
	adds r0, #0xa
	adds r0, r3, r0
	ldrb r2, [r0, #0]
	adds r0, r4, #0
	adds r0, #0xb
	adds r3, r3, r0
	ldrb r3, [r3, #0]
	movs r0, #2
	bl sub_080A4CA8
	ldr r0, [r6, #0]
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	lsls r2, r0, #4
	subs r2, r2, r0
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldrb r0, [r0, #0]
	adds r1, r4, #0
	adds r1, #0xd
	adds r2, r2, r1
	ldrb r1, [r2, #0]
	bl sub_080A4CDC
	movs r0, #0
	bl sub_080A4CF0
	movs r0, #0xe1
	bl sub_0805865C
	ldr r1, _080A2DAC
	movs r0, #1
	strb r0, [r1, #0]
	movs r1, #0
	mov r7, sp
	adds r7, #0x12
	ldr r5, _080A2DB0
_080A2D54:
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	beq _080A2D76
	movs r0, #0xe0
	bl sub_0805865C
	ldr r0, _080A2DB4
	adds r0, r4, r0
	movs r1, #1
	strb r1, [r0, #0]
_080A2D76:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080A2D54
	ldr r2, _080A2DA4
	ldr r0, [r2, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #6
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldr r4, _080A2DB8
	adds r0, r0, r4
	b _080A2E3A
_080A2DA4: .4byte gUnk_03000364
_080A2DA8: .4byte gUnk_08518768
_080A2DAC: .4byte gUnk_030003EA
_080A2DB0: .4byte gUnk_03000370
_080A2DB4: .4byte gUnk_030003EC
_080A2DB8: .4byte 0x000001FD
_080A2DBC:
	movs r2, #0
	ldr r0, _080A2E44
	ldr r0, [r0, #0]
	movs r1, #0
	strh r2, [r0, #0xc]
	ldr r0, _080A2E48
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r5, #0
	ldrsh r0, [r0, r5]
	ldr r3, _080A2E4C
	cmp r0, #0
	bne _080A2DD8
	strb r1, [r3, #0]
_080A2DD8:
	movs r1, #0
	mov r7, sp
	adds r7, #0x12
	ldr r5, _080A2E50
	ldr r4, _080A2E54
_080A2DE2:
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r6, #0
	ldrsh r1, [r0, r6]
	cmp r1, #0
	bne _080A2DFA
	adds r0, r2, r4
	strb r1, [r0, #0]
_080A2DFA:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080A2DE2
	ldrb r0, [r3, #0]
	cmp r0, #0
	bne _080A2E9E
	ldr r1, _080A2E54
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne _080A2E9E
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _080A2E9E
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _080A2E9E
	movs r0, #0
	bl sub_080A4CFC
	ldr r2, _080A2E44
	ldr r0, [r2, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #8
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldr r2, _080A2E58
	adds r0, r0, r2
_080A2E3A:
	movs r1, #1
_080A2E3C:
	strb r1, [r0, #0]
	bl sub_08067C18
	b _080A2E9E
_080A2E44: .4byte gUnk_03000364
_080A2E48: .4byte gUnk_03000368
_080A2E4C: .4byte gUnk_030003EA
_080A2E50: .4byte gUnk_03000370
_080A2E54: .4byte gUnk_030003EC
_080A2E58: .4byte 0x000001FD
_080A2E5C:
	movs r2, #1
	ldr r3, _080A2E88
	ldr r1, [r3, #0]
	movs r4, #1
	strh r2, [r1, #0xc]
	ldr r5, [sp, #0x28]
	cmp r5, #0xb4
	bls _080A2E90
	movs r6, #0
	str r6, [sp, #0x28]
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #5
	strb r0, [r1, #0]
	ldr r0, [r3, #0]
	ldr r1, _080A2E8C
	adds r0, r0, r1
	strb r4, [r0, #0]
	bl sub_08067C18
	b _080A2E9A
_080A2E88: .4byte gUnk_03000364
_080A2E8C: .4byte 0x000001FD
_080A2E90:
	ldr r0, [sp, #0x28]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x28]
_080A2E9A:
	mov r7, sp
	adds r7, #0x12
_080A2E9E:
	ldr r6, _080A2F0C
	ldr r5, _080A2F10
	ldrb r0, [r5, #0]
	movs r4, #0x34
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r6
	ldr r2, _080A2F14
	ldrh r0, [r2, #0]
	strb r0, [r1, #0x1c]
	ldrh r0, [r2, #0]
	adds r0, #0x10
	ldrb r1, [r5, #0]
	adds r3, r1, #0
	muls r3, r4, r3
	adds r1, r6, #0
	adds r1, #0xc
	adds r3, r3, r1
	ldr r1, [sp, #0x30]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A2EFA
	ldrb r0, [r5, #0]
	muls r0, r4, r0
	adds r0, r0, r6
	ldr r4, _080A2F18
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r1, #1
	str r1, [sp, #0]
	movs r1, #0
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080A2EFA:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A2F1C
	bl sub_08097FF8
	b _080A2F2E
_080A2F0C: .4byte gUnk_03000380
_080A2F10: .4byte gUnk_030003EF
_080A2F14: .4byte gUnk_030003E8
_080A2F18: .4byte gUnk_03000364
_080A2F1C:
	ldr r0, _080A2FCC
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080A2F2E:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r4, _080A2FCC
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	add r2, sp, #0x10
	adds r3, r7, #0
	bl sub_0800BC08
	ldr r2, [sp, #0x20]
	cmp r2, #0
	beq _080A2FD8
	adds r0, r2, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x20]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080A3036
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A3036
	bl sub_0800CC98
	cmp r0, #0
	bne _080A3036
	bl sub_0800CD34
	cmp r0, #0
	bne _080A3036
	add r0, sp, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r5, #0
	ldrsh r1, [r7, r5]
	ldr r2, [r4, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	mov r6, r9
	str r6, [sp, #0]
	ldr r6, _080A2FD0
	ldrb r2, [r6, #0]
	movs r5, #0x34
	muls r2, r5, r2
	ldr r4, _080A2FD4
	adds r2, r2, r4
	str r2, [sp, #4]
	movs r2, #0x1c
	negs r2, r2
	adds r2, r2, r4
	mov r8, r2
	ldrb r2, [r6, #0]
	muls r2, r5, r2
	subs r4, #0x14
	adds r2, r2, r4
	ldr r2, [r2, #0]
	str r2, [sp, #8]
	ldrb r2, [r6, #0]
	muls r2, r5, r2
	add r2, r8
	ldr r2, [r2, #0]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
	b _080A3036
	.2byte 0x0000
_080A2FCC: .4byte gUnk_03000364
_080A2FD0: .4byte gUnk_030003EF
_080A2FD4: .4byte gUnk_0300039C
_080A2FD8:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A3036
	bl sub_0800CC98
	cmp r0, #0
	bne _080A3036
	bl sub_0800CD34
	cmp r0, #0
	bne _080A3036
	add r0, sp, #0x10
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r5, #0
	ldrsh r1, [r7, r5]
	ldr r2, [r4, #0]
	adds r2, #0x6a
	ldrh r3, [r2, #0]
	mov r6, r9
	str r6, [sp, #0]
	ldr r6, _080A3180
	ldrb r2, [r6, #0]
	movs r5, #0x34
	muls r2, r5, r2
	ldr r4, _080A3184
	adds r2, r2, r4
	str r2, [sp, #4]
	movs r2, #0x1c
	negs r2, r2
	adds r2, r2, r4
	mov r8, r2
	ldrb r2, [r6, #0]
	muls r2, r5, r2
	subs r4, #0x14
	adds r2, r2, r4
	ldr r2, [r2, #0]
	str r2, [sp, #8]
	ldrb r2, [r6, #0]
	muls r2, r5, r2
	add r2, r8
	ldr r2, [r2, #0]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
_080A3036:
	ldr r0, _080A3180
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A309E
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A309E
	bl sub_0800CC98
	cmp r0, #0
	bne _080A309E
	bl sub_0800CD34
	cmp r0, #0
	bne _080A309E
	ldr r4, _080A3188
	ldr r1, _080A318C
	ldrh r0, [r1, #0]
	adds r5, r4, #0
	adds r5, #0x50
	strb r0, [r5, #0]
	ldrh r0, [r1, #0]
	adds r0, #0x10
	ldr r3, [sp, #0x30]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r1, [r4, #0x40]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	add r0, sp, #0x10
	movs r6, #0
	ldrsh r0, [r0, r6]
	movs r2, #0
	ldrsh r1, [r7, r2]
	subs r1, #1
	mov r3, r9
	str r3, [sp, #0]
	str r5, [sp, #4]
	ldr r2, [r4, #0x3c]
	str r2, [sp, #8]
	ldr r2, [r4, #0x34]
	str r2, [sp, #0xc]
	movs r2, #0x11
	movs r3, #0
	bl sub_08007870
	movs r4, #0
	ldrsh r1, [r7, r4]
	str r1, [r0, #0xc]
_080A309E:
	ldr r5, [sp, #0x24]
	cmp r5, #0
	beq _080A30EC
	bl sub_0800CC98
	cmp r0, #0
	bne _080A30CE
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A30CE
	bl sub_0800CD34
	cmp r0, #0
	bne _080A30CE
	ldr r0, _080A3190
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #8
	mov r6, sl
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	bl sub_0801A120
_080A30CE:
	ldr r0, [sp, #0x24]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x24]
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _080A30EC
	mov r1, sl
	lsls r0, r1, #0x10
	ldr r2, _080A3194
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	mov sl, r0
_080A30EC:
	bl sub_080003F0
	ldr r0, _080A3198
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080A3112
_080A30FE:
	bl sub_0800CB78
	cmp r0, #0
	bne _080A3112
	bl sub_08056E90
	adds r3, r0, #0
	cmp r3, #0
	bne _080A3112
	b _080A29DE
_080A3112:
	ldr r0, _080A319C
	movs r4, #0
	mov r8, r4
	str r4, [r0, #0]
	movs r0, #0xdf
	bl sub_0805867C
	bl sub_080020F4
	ldr r1, _080A31A0
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r4, #1
	orrs r0, r4
	str r0, [r2, #0]
	ldr r6, _080A3188
	ldr r1, _080A31A4
	ldr r5, _080A318C
	ldrh r2, [r5, #0]
	movs r3, #1
	negs r3, r3
	str r4, [sp, #0]
	adds r0, r6, #0
	bl sub_08065158
	ldrh r0, [r5, #0]
	strb r0, [r6, #0x1c]
	ldr r4, _080A3190
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0x6c
	mov r5, r8
	strh r5, [r0, #0]
	subs r0, #2
	strh r5, [r0, #0]
	subs r0, #2
	strh r5, [r0, #0]
	movs r0, #0
	bl sub_080A4CF0
	bl sub_080683CC
	ldr r0, _080A31A8
	bl sub_08068330
	adds r7, r4, #0
	movs r0, #0x12
	add r0, sp
	mov r8, r0
	b _080A327A
	.2byte 0x0000
_080A3180: .4byte gUnk_030003EF
_080A3184: .4byte gUnk_0300039C
_080A3188: .4byte gUnk_03000380
_080A318C: .4byte gUnk_030003E8
_080A3190: .4byte gUnk_03000364
_080A3194: .4byte 0xFFFF0000
_080A3198: .4byte gUnk_03000368
_080A319C: .4byte gUnk_030056FC
_080A31A0: .4byte gUnk_03003CE0
_080A31A4: .4byte 0x0005000D
_080A31A8: .4byte 0xDEADFACE
_080A31AC:
	bl sub_080020F4
	ldr r2, _080A3298
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r5, #1
	orrs r0, r5
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A3276
	bl sub_0800CC98
	cmp r0, #0
	bne _080A3276
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A3276
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _080A3276
	ldr r0, _080A329C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x30]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r3, [r7, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r5, [sp, #0]
	adds r0, r6, #0
	bl sub_08065370
	ldr r1, [r7, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r4, [sp, #0]
	str r4, [sp, #4]
	add r2, sp, #0x10
	mov r3, r8
	bl sub_0800BC08
	add r0, sp, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r5, r9
	str r5, [sp, #0]
	adds r4, r6, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r6, #8]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A3276:
	bl sub_080003F0
_080A327A:
	ldr r0, _080A32A0
	bl sub_080682B8
	cmp r0, #0
	beq _080A31AC
	ldr r0, _080A32A0
	bl sub_08065E38
	ldr r5, _080A32A4
	ldr r7, _080A32A8
	movs r6, #0x12
	add r6, sp
	mov r8, r6
	b _080A337A
	.2byte 0x0000
_080A3298: .4byte gUnk_03003CE0
_080A329C: .4byte gUnk_030003E8
_080A32A0: .4byte 0xDEADFACE
_080A32A4: .4byte gUnk_03000380
_080A32A8: .4byte gUnk_03000364
_080A32AC:
	bl sub_080020F4
	ldr r2, _080A33CC
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r6, #1
	orrs r0, r6
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A3376
	bl sub_0800CC98
	cmp r0, #0
	bne _080A3376
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A3376
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _080A3376
	ldr r0, _080A33D0
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x30]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [r5, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r3, [r7, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r6, [sp, #0]
	adds r0, r5, #0
	bl sub_08065370
	ldr r1, [r7, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r4, [sp, #0]
	str r4, [sp, #4]
	add r2, sp, #0x10
	mov r3, r8
	bl sub_0800BC08
	add r0, sp, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r6, r9
	str r6, [sp, #0]
	adds r4, r5, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A3376:
	bl sub_080003F0
_080A337A:
	bl sub_08058DB0
	cmp r0, #0
	bne _080A32AC
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _080A33CC
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080A33D4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080A33D8
	ldr r1, [r1, #0]
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r1, r1, r2
	str r0, [r1, #0]
	ldr r5, _080A33DC
	ldr r7, _080A33E0
	movs r3, #0x12
	add r3, sp
	mov r8, r3
	b _080A34B2
_080A33CC: .4byte gUnk_03003CE0
_080A33D0: .4byte gUnk_030003E8
_080A33D4: .4byte 0x00140065
_080A33D8: .4byte gUnk_03005CF4
_080A33DC: .4byte gUnk_03000380
_080A33E0: .4byte gUnk_03000364
_080A33E4:
	bl sub_080020F4
	ldr r2, _080A358C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r6, #1
	orrs r0, r6
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A34AE
	bl sub_0800CC98
	cmp r0, #0
	bne _080A34AE
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A34AE
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _080A34AE
	ldr r0, _080A3590
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x30]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [r5, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r3, [r7, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r6, [sp, #0]
	adds r0, r5, #0
	bl sub_08065370
	ldr r1, [r7, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r4, [sp, #0]
	str r4, [sp, #4]
	add r2, sp, #0x10
	mov r3, r8
	bl sub_0800BC08
	add r0, sp, #0x10
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r6, r9
	str r6, [sp, #0]
	adds r4, r5, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [r5, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080A34AE:
	bl sub_080003F0
_080A34B2:
	ldr r0, _080A3594
	ldr r0, [r0, #0]
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	beq _080A33E4
	bl sub_080020F4
	ldr r4, _080A358C
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	bl sub_080A4BFC
	bl sub_080A4B10
	bl sub_080A4A54
	movs r0, #0xd
	bl sub_08058688
	ldr r0, _080A3598
	ldr r0, [r0, #0]
	ldr r1, _080A359C
	ldr r3, [sp, #0x30]
	ldrh r2, [r3, #0]
	ldr r3, _080A3590
	ldrh r3, [r3, #0]
	bl sub_080970CC
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080A3568
	ldr r0, _080A35A0
	ldr r0, [r0, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080A3568
	ldr r0, _080A35A4
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x18]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r5, #0x1d
	mov sl, r5
	subs r5, #0x1e
_080A3538:
	ldr r0, _080A3598
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	mov r6, sl
	lsls r0, r6, #0x10
	ldr r1, _080A35A8
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080A3538
	ldr r0, _080A35A4
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080A3568:
	movs r3, #0x6f
	mov sl, r3
	movs r4, #1
	negs r4, r4
_080A3570:
	bl sub_080003F0
	mov r5, sl
	lsls r0, r5, #0x10
	ldr r6, _080A35A8
	adds r0, r0, r6
	lsrs r1, r0, #0x10
	mov sl, r1
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _080A3570
	bl sub_08067C18
	b _080A35B0
_080A358C: .4byte gUnk_03003CE0
_080A3590: .4byte gUnk_030003E8
_080A3594: .4byte gUnk_03005CF4
_080A3598: .4byte gUnk_03000364
_080A359C: .4byte gUnk_03000380
_080A35A0: .4byte gUnk_03000368
_080A35A4: .4byte gUnk_030034E0
_080A35A8: .4byte 0xFFFF0000
_080A35AC:
	bl sub_080003F0
_080A35B0:
	bl sub_08067C08
	cmp r0, #0
	beq _080A35AC
	bl sub_08067BF8
	bl sub_08056E24
_080A35C0:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080A27B8
