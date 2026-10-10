	thumb_func_start sub_0801D028
sub_0801D028: @ 0x0801D028
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _0801D050
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0xa]
	adds r3, r1, #0
	cmp r0, #8
	bne _0801D03C
	movs r0, #6
_0801D03C:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0801D046
	b _0801D344
_0801D046:
	lsls r0, r0, #2
	ldr r1, _0801D054
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801D050: .4byte gUnk_030034E0
_0801D054: .4byte _0801D058
_0801D058:
	.4byte _0801D078
_0801D05C: .4byte _0801D0FE
_0801D060: .4byte _0801D090
_0801D064: .4byte _0801D0F0
_0801D068: .4byte _0801D200
_0801D06C: .4byte _0801D298
_0801D070: .4byte _0801D178
_0801D074: .4byte _0801D2A2
_0801D078:
	cmp r2, #2
	bne _0801D07E
	b _0801D2BC
_0801D07E:
	cmp r2, #2
	bgt _0801D084
	b _0801D2AA
_0801D084:
	cmp r2, #3
	beq _0801D08A
	b _0801D344
_0801D08A:
	ldr r0, [r3, #0]
	ldrh r0, [r0, #0x3c]
	b _0801D346
_0801D090:
	cmp r2, #7
	bne _0801D096
	b _0801D2B6
_0801D096:
	cmp r2, #7
	bgt _0801D0A2
	cmp r2, #3
	bne _0801D0A0
	b _0801D2BC
_0801D0A0:
	b _0801D344
_0801D0A2:
	cmp r2, #9
	beq _0801D0A8
	b _0801D344
_0801D0A8:
	ldr r1, [r3, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801D0C2
	movs r1, #0
	b _0801D0D4
_0801D0C2:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801D0D4:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801D0E6
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801D0E8
_0801D0E6:
	movs r0, #0
_0801D0E8:
	cmp r0, #7
	beq _0801D0EE
	b _0801D344
_0801D0EE:
	b _0801D334
_0801D0F0:
	cmp r2, #2
	bne _0801D0F6
	b _0801D2B6
_0801D0F6:
	cmp r2, #4
	beq _0801D0FC
	b _0801D344
_0801D0FC:
	b _0801D2BC
_0801D0FE:
	cmp r2, #5
	bne _0801D104
	b _0801D2B6
_0801D104:
	cmp r2, #9
	beq _0801D10A
	b _0801D344
_0801D10A:
	ldr r1, [r3, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801D124
	movs r1, #0
	b _0801D136
_0801D124:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801D136:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801D148
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801D14A
_0801D148:
	movs r0, #0
_0801D14A:
	subs r0, #1
	cmp r0, #5
	bls _0801D152
	b _0801D344
_0801D152:
	lsls r0, r0, #2
	ldr r1, _0801D15C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801D15C: .4byte _0801D160
_0801D160:
	.4byte _0801D1F4
_0801D164: .4byte _0801D27C
_0801D168: .4byte _0801D316
_0801D16C: .4byte _0801D324
_0801D170: .4byte _0801D334
_0801D174: .4byte _0801D288
_0801D178:
	cmp r2, #5
	bne _0801D17E
	b _0801D2B6
_0801D17E:
	cmp r2, #9
	beq _0801D184
	b _0801D344
_0801D184:
	ldr r1, [r3, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801D19E
	movs r1, #0
	b _0801D1B0
_0801D19E:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801D1B0:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801D1C2
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801D1C4
_0801D1C2:
	movs r0, #0
_0801D1C4:
	subs r0, #0xd
	cmp r0, #5
	bls _0801D1CC
	b _0801D344
_0801D1CC:
	lsls r0, r0, #2
	ldr r1, _0801D1D8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0801D1D8: .4byte _0801D1DC
_0801D1DC:
	.4byte _0801D1F4
_0801D1E0: .4byte _0801D27C
_0801D1E4: .4byte _0801D316
_0801D1E8: .4byte _0801D324
_0801D1EC: .4byte _0801D334
_0801D1F0: .4byte _0801D288
_0801D1F4:
	ldr r0, _0801D1FC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x38]
	b _0801D346
_0801D1FC: .4byte gUnk_030034E0
_0801D200:
	cmp r2, #5
	beq _0801D2B6
	cmp r2, #5
	bgt _0801D20E
	cmp r2, #4
	beq _0801D2BC
	b _0801D344
_0801D20E:
	cmp r2, #9
	beq _0801D214
	b _0801D344
_0801D214:
	ldr r1, [r3, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801D22E
	movs r1, #0
	b _0801D240
_0801D22E:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801D240:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801D252
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801D254
_0801D252:
	movs r0, #0
_0801D254:
	subs r0, #8
	cmp r0, #4
	bhi _0801D344
	lsls r0, r0, #2
	ldr r1, _0801D264
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801D264: .4byte _0801D268
_0801D268:
	.4byte _0801D27C
_0801D26C: .4byte _0801D316
_0801D270: .4byte _0801D324
_0801D274: .4byte _0801D334
_0801D278: .4byte _0801D288
_0801D27C:
	ldr r0, _0801D284
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x3c]
	b _0801D346
_0801D284: .4byte gUnk_030034E0
_0801D288:
	ldr r0, _0801D294
	ldr r0, [r0, #0]
	adds r0, #0x4c
	ldrh r0, [r0, #0]
	b _0801D346
	.2byte 0x0000
_0801D294: .4byte gUnk_030034E0
_0801D298:
	cmp r2, #6
	beq _0801D2B6
	cmp r2, #8
	bne _0801D344
	b _0801D2BC
_0801D2A2:
	cmp r2, #8
	beq _0801D2BC
	cmp r2, #8
	bgt _0801D2B0
_0801D2AA:
	cmp r2, #1
	beq _0801D2B6
	b _0801D344
_0801D2B0:
	cmp r2, #9
	beq _0801D2C2
	b _0801D344
_0801D2B6:
	ldr r0, [r3, #0]
	ldrh r0, [r0, #0x34]
	b _0801D346
_0801D2BC:
	ldr r0, [r3, #0]
	ldrh r0, [r0, #0x38]
	b _0801D346
_0801D2C2:
	ldr r1, [r3, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801D2DC
	movs r1, #0
	b _0801D2EE
_0801D2DC:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801D2EE:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801D300
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801D302
_0801D300:
	movs r0, #0
_0801D302:
	cmp r0, #0x14
	beq _0801D334
	cmp r0, #0x14
	bgt _0801D310
	cmp r0, #0x13
	beq _0801D316
	b _0801D344
_0801D310:
	cmp r0, #0x15
	beq _0801D324
	b _0801D344
_0801D316:
	ldr r0, _0801D320
	ldr r0, [r0, #0]
	adds r0, #0x40
	ldrh r0, [r0, #0]
	b _0801D346
_0801D320: .4byte gUnk_030034E0
_0801D324:
	ldr r0, _0801D330
	ldr r0, [r0, #0]
	adds r0, #0x44
	ldrh r0, [r0, #0]
	b _0801D346
	.2byte 0x0000
_0801D330: .4byte gUnk_030034E0
_0801D334:
	ldr r0, _0801D340
	ldr r0, [r0, #0]
	adds r0, #0x48
	ldrh r0, [r0, #0]
	b _0801D346
	.2byte 0x0000
_0801D340: .4byte gUnk_030034E0
_0801D344:
	movs r0, #0
_0801D346:
	pop {r1}
	bx r1
	thumb_func_end sub_0801D028
