	thumb_func_start sub_0805E0C4
sub_0805E0C4: @ 0x0805E0C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xec
	mov r9, r0
	ldr r0, [r0, #0x60]
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0xa0]
	movs r2, #0
	str r2, [sp, #0xa4]
	movs r4, #0
	str r4, [sp, #0xc8]
	movs r5, #0
	str r5, [sp, #0xcc]
	movs r7, #0
	str r7, [sp, #0xd0]
	add r6, sp, #0x90
	mov r0, sp
	adds r0, #0x74
	str r0, [sp, #0xe0]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0xe4]
	mov r4, r8
	adds r4, #1
	movs r3, #0xfd
_0805E0FE:
	movs r7, #0
	str r7, [sp, #0x9c]
	adds r1, r2, #0
_0805E104:
	ldr r7, [sp, #0x9c]
	adds r0, r7, r1
	add r0, sp
	adds r0, #4
	strb r3, [r0, #0]
	adds r0, r7, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	cmp r0, #0x11
	bls _0805E104
	adds r2, #0x1e
	adds r5, #1
	cmp r5, #1
	ble _0805E0FE
	mov r1, r8
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _0805E136
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	b _0805E13A
_0805E136:
	movs r2, #0xff
	mov sl, r2
_0805E13A:
	mov r8, r4
	ldrb r4, [r4, #0]
	str r4, [sp, #0xdc]
	movs r5, #1
	add r8, r5
	bl sub_0800CE30
	adds r2, r0, #0
	cmp r2, #0
	beq _0805E19C
	mov r7, sl
	cmp r7, #0xff
	beq _0805E1F6
	cmp r7, #0xf
	bhi _0805E168
	add r0, sp, #0x40
	ldr r1, _0805E164
	movs r3, #1
	negs r3, r3
	movs r2, #0
	b _0805E1AE
_0805E164: .4byte 0x000500A8
_0805E168:
	mov r0, sl
	cmp r0, #0x1f
	bhi _0805E18C
	add r0, sp, #0x40
	ldr r1, _0805E188
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	movs r2, #0xf
	bl sub_08065158
	mov r0, sl
	subs r0, #0x10
	b _0805E1F0
	.2byte 0x0000
_0805E188: .4byte 0x000500A7
_0805E18C:
	add r0, sp, #0x40
	ldr r1, _0805E198
	movs r3, #1
	negs r3, r3
	movs r2, #0
	b _0805E1E4
_0805E198: .4byte 0x000500C1
_0805E19C:
	mov r1, sl
	cmp r1, #0xff
	beq _0805E1F6
	cmp r1, #0xf
	bhi _0805E1BC
	add r0, sp, #0x40
	ldr r1, _0805E1B8
	movs r3, #1
	negs r3, r3
_0805E1AE:
	str r2, [sp, #0]
	movs r2, #0xf
	bl sub_08065158
	b _0805E1F6
_0805E1B8: .4byte 0x000500A8
_0805E1BC:
	mov r4, sl
	cmp r4, #0x1f
	bhi _0805E1DC
	add r0, sp, #0x40
	ldr r1, _0805E1D8
	movs r3, #1
	negs r3, r3
	str r2, [sp, #0]
	movs r2, #0xf
	bl sub_08065158
	mov r0, sl
	subs r0, #0x10
	b _0805E1F0
_0805E1D8: .4byte 0x000500A7
_0805E1DC:
	add r0, sp, #0x40
	ldr r1, _0805E26C
	movs r3, #1
	negs r3, r3
_0805E1E4:
	str r2, [sp, #0]
	movs r2, #0xf
	bl sub_08065158
	mov r0, sl
	subs r0, #0x20
_0805E1F0:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_0805E1F6:
	bl sub_0801E4B0
	str r0, [r6, #0]
	add r4, sp, #0x90
	ldr r1, _0805E270
	adds r0, r4, #0
	bl sub_08000498
	movs r5, #0
	ldr r7, [sp, #0xe0]
	strb r0, [r7, #0]
	ldr r1, _0805E274
	adds r0, r4, #0
	bl sub_08000498
	strb r0, [r7, #1]
	ldr r1, _0805E278
	adds r0, r4, #0
	bl sub_08000498
	strb r0, [r7, #2]
	ldr r1, _0805E27C
	adds r0, r4, #0
	bl sub_08000498
	strb r0, [r7, #3]
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r4, #0
	bl sub_08000498
	strb r0, [r7, #4]
	adds r0, r4, #0
	movs r1, #0x64
	bl sub_08000498
	strb r0, [r7, #5]
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08000498
	strb r0, [r7, #6]
	ldr r0, [r4, #0]
	strb r0, [r7, #7]
	strb r5, [r7, #8]
	movs r0, #0
	str r0, [sp, #0xbc]
	movs r3, #0
	ldr r1, [sp, #0xe0]
	movs r2, #0xff
_0805E25A:
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne _0805E280
	ldr r4, [sp, #0xbc]
	cmp r4, #0
	bne _0805E280
	orrs r0, r2
	strb r0, [r1, #0]
	b _0805E292
_0805E26C: .4byte 0x000500C1
_0805E270: .4byte 0x00989680
_0805E274: .4byte 0x000F4240
_0805E278: .4byte 0x000186A0
_0805E27C: .4byte 0x00002710
_0805E280:
	ldrb r0, [r1, #0]
	adds r0, #0x41
	strb r0, [r1, #0]
	ldr r7, [sp, #0xbc]
	cmp r7, #0
	bne _0805E28E
	adds r3, r5, #0
_0805E28E:
	movs r0, #1
	str r0, [sp, #0xbc]
_0805E292:
	adds r1, #1
	adds r5, #1
	cmp r5, #8
	ble _0805E25A
	movs r5, #0
	cmp r3, #7
	bgt _0805E2B2
	ldr r2, [sp, #0xe0]
_0805E2A2:
	adds r0, r2, r5
	adds r1, r2, r3
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r3, #1
	adds r5, #1
	cmp r3, #7
	ble _0805E2A2
_0805E2B2:
	ldr r2, [sp, #0xe0]
	adds r1, r2, r5
	movs r2, #0
	movs r0, #0xfd
	strb r0, [r1, #0]
	adds r0, r5, #1
	ldr r4, [sp, #0xe0]
	adds r0, r4, r0
	strb r2, [r0, #0]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0805E330
	adds r1, r1, r0
	str r1, [sp, #0xd8]
	movs r5, #0
	adds r7, r0, #0
	ldrb r0, [r7, #0]
	ldr r1, [sp, #0xe4]
	strb r0, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfd
	beq _0805E300
	ldr r2, [sp, #0xe4]
	adds r3, r7, #0
_0805E2EA:
	adds r5, #1
	cmp r5, #9
	bgt _0805E300
	adds r1, r2, r5
	adds r0, r5, r3
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfd
	bne _0805E2EA
_0805E300:
	bl sub_08002204
	cmp r0, #0
	bne _0805E344
	ldr r0, _0805E334
	bl sub_08007290
	cmp r5, #0xc
	bgt _0805E34E
	ldr r3, [sp, #0xe4]
	adds r2, r0, #2
_0805E316:
	adds r1, r3, r5
	ldrb r0, [r2, #0]
	strb r0, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf1
	bhi _0805E338
	adds r5, #1
	adds r2, #1
	cmp r5, #0xc
	ble _0805E316
	b _0805E34E
	.2byte 0x0000
_0805E330: .4byte gUnk_03003CE2
_0805E334: .4byte 0x001404DF
_0805E338:
	movs r0, #0xfd
	strb r0, [r1, #0]
	adds r0, r5, #1
	ldr r2, [sp, #0xe4]
	adds r0, r2, r0
	b _0805E34A
_0805E344:
	adds r0, r5, #1
	ldr r4, [sp, #0xe4]
	adds r0, r4, r0
_0805E34A:
	movs r1, #0
	strb r1, [r0, #0]
_0805E34E:
	movs r5, #0
	str r5, [sp, #0xc0]
	movs r7, #0
	str r7, [sp, #0xbc]
	movs r0, #0
	str r0, [sp, #0xc4]
	movs r1, #0
	str r1, [sp, #0xd4]
	movs r2, #1
	str r2, [sp, #0xa8]
	movs r4, #0
	str r4, [sp, #0xb0]
	str r5, [sp, #0xb4]
	str r7, [sp, #0x94]
	movs r0, #1
	str r0, [sp, #0xac]
	bl sub_080653CC
_0805E372:
	mov r1, r9
	ldr r0, [r1, #0x74]
	cmp r0, #7
	bls _0805E37E
	bl _0805ECF2
_0805E37E:
	lsls r0, r0, #2
	ldr r1, _0805E388
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0805E388: .4byte _0805E38C
_0805E38C:
	.4byte _0805E3AC
_0805E390: .4byte _0805E3C2
_0805E394: .4byte _0805ECF2
_0805E398: .4byte _0805E3F0
_0805E39C: .4byte _0805E902
_0805E3A0: .4byte _0805EAB4
_0805E3A4: .4byte _0805EAC8
_0805E3A8: .4byte _0805ECD4
_0805E3AC:
	ldr r2, _0805E3EC
	mov r0, r9
	adds r0, #0x70
	movs r1, #1
	ldrb r0, [r0, #0]
	lsls r1, r0
	ldrb r0, [r2, #0]
	bics r0, r1
	strb r0, [r2, #0]
	bl sub_0800035C
_0805E3C2:
	mov r2, r9
	ldr r0, [r2, #0x28]
	movs r1, #0
	adds r0, #0x30
	ldrb r0, [r0, #0]
	cmp r0, #3
	bne _0805E3D2
	movs r1, #1
_0805E3D2:
	cmp r1, #0
	bne _0805E3DA
	bl _0805ECF2
_0805E3DA:
	movs r4, #0
	str r4, [sp, #0x9c]
	movs r5, #1
	str r5, [sp, #0xa0]
	movs r7, #0
	str r7, [sp, #0x98]
	movs r0, #3
	bl _0805ECC8
_0805E3EC: .4byte gUnk_03005D6C
_0805E3F0:
	mov r2, r8
	ldrb r0, [r2, #0]
	cmp r0, #0xfe
	bne _0805E402
	movs r0, #4
	mov r4, r9
	str r0, [r4, #0x74]
	bl _0805ECF2
_0805E402:
	cmp r0, #0xff
	bne _0805E43A
	mov r0, r9
	adds r0, #0x68
	ldr r5, [sp, #0x9c]
	ldrb r0, [r0, #0]
	cmp r5, r0
	blo _0805E420
	movs r0, #4
	mov r7, r9
	str r0, [r7, #0x74]
	movs r0, #1
	add r8, r0
	bl _0805ECF2
_0805E420:
	ldr r0, [sp, #0x9c]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	mov r1, r9
	adds r1, #0x6e
	movs r0, #0
	strh r0, [r1, #0]
	movs r1, #1
	add r8, r1
	bl _0805ECF2
_0805E43A:
	cmp r0, #0xfa
	bne _0805E448
	movs r2, #0xa
	str r2, [sp, #0xac]
	movs r4, #1
	add r8, r4
	b _0805E46A
_0805E448:
	cmp r0, #0xf9
	bne _0805E456
	movs r5, #0x14
	str r5, [sp, #0xac]
	movs r7, #1
	add r8, r7
	b _0805E46A
_0805E456:
	cmp r0, #0xf8
	beq _0805E464
	cmp r0, #0xfd
	bne _0805E46A
	movs r0, #6
	bl _0805ECC8
_0805E464:
	movs r2, #1
	str r2, [sp, #0xac]
	add r8, r2
_0805E46A:
	ldr r0, [sp, #0xa8]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xa8]
	cmp r0, #0xff
	beq _0805E488
	ldr r0, _0805E4AC
	ldrh r1, [r0, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0805E488
	bl _0805ECF2
_0805E488:
	ldr r0, [sp, #0xa4]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xa4]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _0805E4B6
	ldr r4, [sp, #0xdc]
	cmp r4, #0
	beq _0805E4B0
	adds r0, r4, #0
	adds r0, #0xc7
	bl sub_0805865C
	b _0805E4B6
	.2byte 0x0000
_0805E4AC: .4byte gUnk_03001324
_0805E4B0:
	movs r0, #0xc8
	bl sub_0805865C
_0805E4B6:
	mov r5, r8
	ldrb r0, [r5, #0]
	adds r1, r0, #0
	adds r3, r0, #0
	cmp r1, #0xfc
	bne _0805E4FE
	mov r2, r9
	adds r2, #0x6e
	ldr r7, [sp, #0x9c]
	lsls r3, r7, #4
	subs r0, r3, r7
	lsls r0, r0, #1
	ldrh r1, [r2, #0]
	adds r0, r0, r1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r4, [sp, #0xd8]
	ldr r5, [sp, #0xc0]
	adds r0, r4, r5
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc0]
	adds r0, r4, r0
	ldrb r0, [r0, #0]
	adds r5, r2, #0
	cmp r0, #0
	beq _0805E4F8
	b _0805E744
_0805E4F8:
	movs r7, #1
	add r8, r7
	b _0805E71A
_0805E4FE:
	cmp r1, #0xf6
	bne _0805E548
	mov r2, r9
	adds r2, #0x6e
	ldr r1, [sp, #0x9c]
	lsls r3, r1, #4
	subs r0, r3, r1
	lsls r0, r0, #1
	ldrh r4, [r2, #0]
	adds r0, r0, r4
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r5, _0805E544
	ldr r7, [sp, #0xc4]
	adds r0, r5, r7
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r7, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc4]
	adds r0, r5, r0
	ldrb r0, [r0, #0]
	adds r5, r2, #0
	cmp r0, #0
	beq _0805E538
	b _0805E744
_0805E538:
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0xc4]
	b _0805E71E
	.2byte 0x0000
_0805E544: .4byte gUnk_03003CE2
_0805E548:
	cmp r1, #0xf4
	bne _0805E590
	mov r2, r9
	adds r2, #0x6e
	ldr r4, [sp, #0x9c]
	lsls r3, r4, #4
	subs r0, r3, r4
	lsls r0, r0, #1
	ldrh r5, [r2, #0]
	adds r0, r0, r5
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r7, _0805E58C
	ldr r4, [sp, #0xc8]
	adds r0, r7, r4
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc8]
	adds r0, r7, r0
	ldrb r0, [r0, #0]
	adds r5, r2, #0
	cmp r0, #0
	beq _0805E582
	b _0805E744
_0805E582:
	movs r7, #1
	add r8, r7
	movs r0, #0
	str r0, [sp, #0xc8]
	b _0805E71E
_0805E58C: .4byte gUnk_03003E2E
_0805E590:
	cmp r1, #0xf3
	bne _0805E5D8
	mov r2, r9
	adds r2, #0x6e
	ldr r1, [sp, #0x9c]
	lsls r3, r1, #4
	subs r0, r3, r1
	lsls r0, r0, #1
	ldrh r4, [r2, #0]
	adds r0, r0, r4
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r5, _0805E5D4
	ldr r7, [sp, #0xcc]
	adds r0, r5, r7
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r7, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xcc]
	adds r0, r5, r0
	ldrb r0, [r0, #0]
	adds r5, r2, #0
	cmp r0, #0
	beq _0805E5CA
	b _0805E744
_0805E5CA:
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0xcc]
	b _0805E71E
_0805E5D4: .4byte gUnk_03003F7A
_0805E5D8:
	cmp r1, #0xf2
	bne _0805E620
	mov r2, r9
	adds r2, #0x6e
	ldr r4, [sp, #0x9c]
	lsls r3, r4, #4
	subs r0, r3, r4
	lsls r0, r0, #1
	ldrh r5, [r2, #0]
	adds r0, r0, r5
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r7, _0805E61C
	ldr r4, [sp, #0xd0]
	adds r0, r7, r4
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd0]
	adds r0, r7, r0
	ldrb r0, [r0, #0]
	adds r5, r2, #0
	cmp r0, #0
	beq _0805E612
	b _0805E744
_0805E612:
	movs r7, #1
	add r8, r7
	movs r0, #0
	str r0, [sp, #0xd0]
	b _0805E71E
_0805E61C: .4byte gUnk_030040C6
_0805E620:
	cmp r1, #0xf5
	bne _0805E662
	mov r2, r9
	adds r2, #0x6e
	ldr r1, [sp, #0x9c]
	lsls r3, r1, #4
	subs r0, r3, r1
	lsls r0, r0, #1
	ldrh r4, [r2, #0]
	adds r0, r0, r4
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r5, [sp, #0xe4]
	ldr r7, [sp, #0xd4]
	adds r0, r5, r7
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r7, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	adds r0, r5, r0
	ldrb r0, [r0, #0]
	adds r5, r2, #0
	cmp r0, #0
	bne _0805E744
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0xd4]
	b _0805E71E
_0805E662:
	cmp r1, #0xfb
	bne _0805E6A4
	mov r2, r9
	adds r2, #0x6e
	ldr r4, [sp, #0x9c]
	lsls r3, r4, #4
	subs r0, r3, r4
	lsls r0, r0, #1
	ldrh r5, [r2, #0]
	adds r0, r0, r5
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r7, [sp, #0xe0]
	ldr r4, [sp, #0xbc]
	adds r0, r7, r4
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xbc]
	adds r0, r7, r0
	ldrb r0, [r0, #0]
	adds r5, r2, #0
	cmp r0, #0
	bne _0805E744
	movs r7, #1
	add r8, r7
	movs r0, #0
	str r0, [sp, #0xbc]
	b _0805E71E
_0805E6A4:
	cmp r1, #0xfa
	bne _0805E6B6
	movs r1, #1
	add r8, r1
	mov r5, r9
	adds r5, #0x6e
	ldr r2, [sp, #0x9c]
	lsls r3, r2, #4
	b _0805E744
_0805E6B6:
	cmp r1, #0xf9
	bne _0805E6C8
	movs r4, #1
	add r8, r4
	mov r5, r9
	adds r5, #0x6e
	ldr r7, [sp, #0x9c]
	lsls r3, r7, #4
	b _0805E744
_0805E6C8:
	cmp r1, #0xf8
	bne _0805E6DA
	movs r0, #1
	add r8, r0
	mov r5, r9
	adds r5, #0x6e
	ldr r1, [sp, #0x9c]
	lsls r3, r1, #4
	b _0805E744
_0805E6DA:
	mov r2, r9
	ldr r4, [r2, #0x64]
	cmp r4, #0
	beq _0805E726
	adds r2, #0x6e
	ldr r5, [sp, #0x9c]
	lsls r3, r5, #4
	subs r0, r3, r5
	lsls r0, r0, #1
	ldrh r7, [r2, #0]
	adds r0, r0, r7
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r5, [sp, #0xc0]
	lsls r0, r5, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	adds r5, r2, #0
	cmp r0, #0
	bne _0805E744
	mov r7, r9
	str r0, [r7, #0x64]
_0805E71A:
	movs r0, #0
	str r0, [sp, #0xc0]
_0805E71E:
	ldrh r0, [r5, #0]
	subs r0, #1
	strh r0, [r5, #0]
	b _0805E744
_0805E726:
	mov r1, r9
	adds r1, #0x6e
	ldr r4, [sp, #0x9c]
	lsls r2, r4, #4
	subs r0, r2, r4
	lsls r0, r0, #1
	ldrh r5, [r1, #0]
	adds r0, r0, r5
	add r0, sp
	adds r0, #4
	strb r3, [r0, #0]
	movs r7, #1
	add r8, r7
	adds r5, r1, #0
	adds r3, r2, #0
_0805E744:
	ldrh r0, [r5, #0]
	adds r0, #1
	strh r0, [r5, #0]
	ldrh r1, [r5, #0]
	ldr r2, [sp, #0x9c]
	subs r0, r3, r2
	lsls r4, r0, #1
	adds r1, r1, r4
	add r1, sp
	adds r1, #4
	movs r0, #0xfd
	strb r0, [r1, #0]
	mov r0, r9
	adds r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	blt _0805E768
	b _0805E8FC
_0805E768:
	ldr r0, _0805E7CC
	ldrh r1, [r0, #0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0805E776
	b _0805E8FC
_0805E776:
	mov r7, r8
	ldrb r1, [r7, #0]
	adds r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0805E786
	b _0805E8E2
_0805E786:
	adds r6, r5, #0
	adds r2, r4, #0
	ldr r0, [sp, #0xe4]
	mov ip, r0
	ldr r4, [sp, #0xe0]
	str r4, [sp, #0xe8]
_0805E792:
	adds r0, r1, #0
	cmp r0, #0xfc
	beq _0805E79E
	ldr r7, [sp, #0xc0]
	cmp r7, #0
	beq _0805E7D0
_0805E79E:
	ldrh r0, [r6, #0]
	adds r0, r0, r2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r4, [sp, #0xd8]
	ldr r7, [sp, #0xc0]
	adds r0, r4, r7
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r7, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc0]
	adds r0, r4, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0805E7C6
	b _0805E8CC
_0805E7C6:
	movs r0, #1
	add r8, r0
	b _0805E8A4
_0805E7CC: .4byte gUnk_03001324
_0805E7D0:
	cmp r0, #0xf6
	beq _0805E7DA
	ldr r4, [sp, #0xc4]
	cmp r4, #0
	beq _0805E810
_0805E7DA:
	ldrh r0, [r6, #0]
	adds r0, r0, r2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r7, _0805E80C
	ldr r4, [sp, #0xc4]
	adds r0, r7, r4
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc4]
	ldr r7, [sp, #0xd8]
	adds r0, r7, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0805E8CC
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0xc4]
	b _0805E8A8
_0805E80C: .4byte gUnk_03003CE2
_0805E810:
	cmp r0, #0xf5
	beq _0805E81A
	ldr r4, [sp, #0xd4]
	cmp r4, #0
	beq _0805E848
_0805E81A:
	ldrh r0, [r6, #0]
	adds r0, r0, r2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r0, [sp, #0xd4]
	add r0, ip
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	ldr r0, [sp, #0xd4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	add r0, ip
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0805E8CC
	movs r7, #1
	add r8, r7
	movs r0, #0
	str r0, [sp, #0xd4]
	b _0805E8A8
_0805E848:
	cmp r0, #0xfb
	beq _0805E852
	ldr r1, [sp, #0xbc]
	cmp r1, #0
	beq _0805E882
_0805E852:
	ldrh r0, [r6, #0]
	adds r0, r0, r2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldr r4, [sp, #0xe8]
	ldr r7, [sp, #0xbc]
	adds r0, r4, r7
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r7, #0
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xbc]
	adds r0, r4, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0805E8CC
	movs r0, #1
	add r8, r0
	movs r1, #0
	str r1, [sp, #0xbc]
	b _0805E8A8
_0805E882:
	mov r7, r9
	ldr r4, [r7, #0x64]
	cmp r4, #0
	beq _0805E8B0
	ldrh r0, [r6, #0]
	adds r0, r0, r2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	ldrh r0, [r4, #0]
	strb r0, [r1, #0]
	movs r0, #1
	str r0, [sp, #0xc0]
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0805E8CC
	str r0, [r7, #0x64]
_0805E8A4:
	movs r1, #0
	str r1, [sp, #0xc0]
_0805E8A8:
	ldrh r0, [r5, #0]
	subs r0, #1
	strh r0, [r5, #0]
	b _0805E8CC
_0805E8B0:
	cmp r0, #0xf1
	bls _0805E8B8
	movs r4, #1
	add r8, r4
_0805E8B8:
	ldrh r0, [r6, #0]
	adds r0, r0, r2
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	mov r7, r8
	ldrb r0, [r7, #0]
	strb r0, [r1, #0]
	movs r0, #1
	add r8, r0
_0805E8CC:
	ldrh r0, [r6, #0]
	adds r0, #1
	strh r0, [r6, #0]
	mov r4, r8
	ldrb r1, [r4, #0]
	adds r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _0805E8E2
	b _0805E792
_0805E8E2:
	ldr r7, [sp, #0x9c]
	subs r0, r3, r7
	lsls r0, r0, #1
	ldrh r5, [r5, #0]
	adds r0, r0, r5
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	movs r0, #0xfd
	strb r0, [r1, #0]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0xa8]
	b _0805ECF2
_0805E8FC:
	ldr r1, [sp, #0xac]
	str r1, [sp, #0xa8]
	b _0805ECF2
_0805E902:
	mov r0, r9
	adds r0, #0x84
	ldr r1, [r0, #0]
	adds r2, r0, #0
	cmp r1, #0
	blt _0805E914
	movs r4, #1
	str r4, [sp, #0x94]
	b _0805E954
_0805E914:
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	bne _0805E938
	ldr r0, _0805E934
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805E94C
	movs r5, #0x8d
	str r5, [sp, #0xb0]
	movs r7, #1
	str r7, [sp, #0x94]
	b _0805E954
	.2byte 0x0000
_0805E934: .4byte gUnk_03001324
_0805E938:
	ldr r0, _0805E97C
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805E94C
	movs r0, #1
	str r0, [sp, #0x94]
	movs r1, #0x8d
	str r1, [sp, #0xb0]
_0805E94C:
	ldr r4, [sp, #0x94]
	cmp r4, #0
	bne _0805E954
	b _0805EA80
_0805E954:
	ldr r0, [sp, #0xb0]
	adds r5, r0, #0
	adds r5, #1
	str r5, [sp, #0xb0]
	cmp r0, #0x8c
	bhi _0805E962
	b _0805EA80
_0805E962:
	mov r7, r8
	ldrb r0, [r7, #0]
	cmp r0, #0xfe
	bne _0805EA46
	movs r0, #1
	add r8, r0
	mov r1, r8
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne _0805E980
	movs r2, #0xff
	mov sl, r2
	b _0805E988
_0805E97C: .4byte gUnk_03001324
_0805E980:
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_0805E988:
	movs r4, #1
	add r8, r4
	mov r5, r8
	ldrb r5, [r5, #0]
	str r5, [sp, #0xdc]
	bl sub_0800CE30
	adds r2, r0, #0
	cmp r2, #0
	beq _0805E9EC
	mov r7, sl
	cmp r7, #0xff
	beq _0805EA46
	cmp r7, #0xf
	bhi _0805E9B8
	add r0, sp, #0x40
	ldr r1, _0805E9B4
	movs r3, #1
	negs r3, r3
	movs r2, #0
	b _0805E9FE
	.2byte 0x0000
_0805E9B4: .4byte 0x000500A8
_0805E9B8:
	mov r0, sl
	cmp r0, #0x1f
	bhi _0805E9DC
	add r0, sp, #0x40
	ldr r1, _0805E9D8
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	movs r2, #0xf
	bl sub_08065158
	mov r0, sl
	subs r0, #0x10
	b _0805EA40
	.2byte 0x0000
_0805E9D8: .4byte 0x000500A7
_0805E9DC:
	add r0, sp, #0x40
	ldr r1, _0805E9E8
	movs r3, #1
	negs r3, r3
	movs r2, #0
	b _0805EA34
_0805E9E8: .4byte 0x000500C1
_0805E9EC:
	mov r1, sl
	cmp r1, #0xff
	beq _0805EA46
	cmp r1, #0xf
	bhi _0805EA0C
	add r0, sp, #0x40
	ldr r1, _0805EA08
	movs r3, #1
	negs r3, r3
_0805E9FE:
	str r2, [sp, #0]
	movs r2, #0xf
	bl sub_08065158
	b _0805EA46
_0805EA08: .4byte 0x000500A8
_0805EA0C:
	mov r4, sl
	cmp r4, #0x1f
	bhi _0805EA2C
	add r0, sp, #0x40
	ldr r1, _0805EA28
	movs r3, #1
	negs r3, r3
	str r2, [sp, #0]
	movs r2, #0xf
	bl sub_08065158
	mov r0, sl
	subs r0, #0x10
	b _0805EA40
_0805EA28: .4byte 0x000500A7
_0805EA2C:
	add r0, sp, #0x40
	ldr r1, _0805EA7C
	movs r3, #1
	negs r3, r3
_0805EA34:
	str r2, [sp, #0]
	movs r2, #0xf
	bl sub_08065158
	mov r0, sl
	subs r0, #0x20
_0805EA40:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_0805EA46:
	movs r5, #0
	str r5, [sp, #0x94]
	movs r7, #0
	str r7, [sp, #0xb0]
	add r0, sp, #4
	movs r1, #0xfd
	strb r1, [r0, #0]
	strb r1, [r0, #0x1e]
	movs r0, #0
	str r0, [sp, #0x9c]
	movs r0, #3
	mov r1, r9
	str r0, [r1, #0x74]
	movs r2, #0
	str r2, [sp, #0x98]
	movs r4, #1
	add r8, r4
	mov r0, r9
	adds r0, #0x6e
	add r5, sp, #0x9c
	ldrh r5, [r5, #0]
	strh r5, [r0, #0]
	ldr r7, [sp, #0xac]
	str r7, [sp, #0xa8]
	movs r0, #0
	str r0, [sp, #0xb4]
	b _0805ECF2
_0805EA7C: .4byte 0x000500C1
_0805EA80:
	ldr r0, [r2, #0]
	cmp r0, #0
	blt _0805EA88
	b _0805ECF2
_0805EA88:
	ldr r1, [sp, #0xb8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xb8]
	cmp r1, #0x1d
	bhi _0805EA9C
	movs r1, #1
	str r1, [sp, #0xb4]
	b _0805EAA6
_0805EA9C:
	ldr r2, [sp, #0xb8]
	cmp r2, #0x1d
	bls _0805EAA6
	movs r4, #0
	str r4, [sp, #0xb4]
_0805EAA6:
	ldr r5, [sp, #0xb8]
	cmp r5, #0x28
	bhi _0805EAAE
	b _0805ECF2
_0805EAAE:
	movs r7, #0
	str r7, [sp, #0xb8]
	b _0805ECF2
_0805EAB4:
	ldr r0, [sp, #0x98]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x98]
	cmp r0, #0
	beq _0805EAC4
	b _0805ECF2
_0805EAC4:
	movs r0, #3
	b _0805ECC8
_0805EAC8:
	mov r2, r9
	adds r2, #0x84
	ldr r1, [r2, #0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne _0805EB60
	ldr r0, _0805EB2C
	ldrh r1, [r0, #0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0805EB34
	movs r2, #0
	str r2, [sp, #0xa0]
	movs r0, #7
	mov r4, r9
	str r0, [r4, #0x74]
	ldr r2, [r4, #0x28]
	ldr r0, _0805EB30
	ldrb r0, [r0, #0]
	adds r1, r2, #0
	adds r1, #0x31
	ldrb r1, [r1, #0]
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _0805EB24
	adds r0, r2, #0
	adds r0, #0x30
	ldrb r1, [r0, #0]
	adds r2, r0, #0
	cmp r1, #1
	beq _0805EB1A
	cmp r1, #3
	beq _0805EB1A
	cmp r1, #4
	beq _0805EB1A
	cmp r1, #2
	bne _0805EB24
_0805EB1A:
	movs r0, #4
	strb r0, [r2, #0]
	movs r0, #0xdd
	bl sub_0805865C
_0805EB24:
	movs r5, #0
	str r5, [sp, #0xb4]
	b _0805ECF2
	.2byte 0x0000
_0805EB2C: .4byte gUnk_03001324
_0805EB30: .4byte gUnk_03005D70
_0805EB34:
	ldr r1, [sp, #0xb8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xb8]
	cmp r1, #0x1d
	bhi _0805EB48
	movs r7, #1
	str r7, [sp, #0xb4]
	b _0805EB52
_0805EB48:
	ldr r0, [sp, #0xb8]
	cmp r0, #0x1d
	bls _0805EB52
	movs r1, #0
	str r1, [sp, #0xb4]
_0805EB52:
	ldr r2, [sp, #0xb8]
	cmp r2, #0x28
	bhi _0805EB5A
	b _0805ECF2
_0805EB5A:
	movs r4, #0
	str r4, [sp, #0xb8]
	b _0805ECF2
_0805EB60:
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	beq _0805EB6A
	b _0805EC7C
_0805EB6A:
	bl sub_08058DB0
	adds r5, r0, #0
	cmp r5, #0
	bne _0805EB98
	ldr r0, _0805EB94
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805EB98
	mov r4, r9
	adds r4, #0x80
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _0805EB90
	movs r0, #0xc6
	bl sub_0805865C
_0805EB90:
	strh r5, [r4, #0]
	b _0805ECF2
_0805EB94: .4byte gUnk_03001324
_0805EB98:
	bl sub_08058DB0
	cmp r0, #0
	bne _0805EBC8
	ldr r0, _0805EBC4
	ldrh r1, [r0, #0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805EBC8
	mov r4, r9
	adds r4, #0x80
	ldrh r0, [r4, #0]
	cmp r0, #1
	beq _0805EBBC
	movs r0, #0xc7
	bl sub_0805865C
_0805EBBC:
	movs r0, #1
	strh r0, [r4, #0]
	b _0805ECF2
	.2byte 0x0000
_0805EBC4: .4byte gUnk_03001324
_0805EBC8:
	bl sub_08058DB0
	cmp r0, #0
	bne _0805EC10
	ldr r0, _0805EC08
	ldrh r1, [r0, #0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _0805EC10
	movs r0, #0xf
	bl sub_0805865C
	movs r5, #0
	str r5, [sp, #0xa0]
	movs r0, #7
	mov r7, r9
	str r0, [r7, #0x74]
	ldr r2, [r7, #0x28]
	ldr r0, _0805EC0C
	ldrb r0, [r0, #0]
	adds r1, r2, #0
	adds r1, #0x31
	ldrb r1, [r1, #0]
	asrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0805ECF2
	adds r0, r2, #0
	b _0805EC52
	.2byte 0x0000
_0805EC08: .4byte gUnk_03001324
_0805EC0C: .4byte gUnk_03005D70
_0805EC10:
	bl sub_08058DB0
	cmp r0, #0
	bne _0805ECF2
	ldr r0, _0805EC74
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0805ECF2
	movs r0, #0x10
	bl sub_0805865C
	mov r0, r9
	adds r0, #0x80
	movs r1, #1
	strh r1, [r0, #0]
	movs r0, #0
	str r0, [sp, #0xa0]
	movs r0, #7
	mov r2, r9
	str r0, [r2, #0x74]
	ldr r3, [r2, #0x28]
	ldr r0, _0805EC78
	ldrb r0, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x31
	ldrb r2, [r2, #0]
	asrs r0, r2
	ands r0, r1
	cmp r0, #0
	beq _0805ECF2
	adds r0, r3, #0
_0805EC52:
	adds r0, #0x30
	ldrb r1, [r0, #0]
	adds r2, r0, #0
	cmp r1, #1
	beq _0805EC68
	cmp r1, #3
	beq _0805EC68
	cmp r1, #4
	beq _0805EC68
	cmp r1, #2
	bne _0805ECF2
_0805EC68:
	movs r0, #4
	strb r0, [r2, #0]
	movs r0, #0xdd
	bl sub_0805865C
	b _0805ECF2
_0805EC74: .4byte gUnk_03001324
_0805EC78: .4byte gUnk_03005D70
_0805EC7C:
	subs r0, r1, #1
	str r0, [r2, #0]
	cmp r1, #0
	bgt _0805ECF2
	movs r4, #0
	str r4, [sp, #0xa0]
	movs r5, #0
	str r5, [sp, #0xb4]
	mov r7, r9
	ldr r2, [r7, #0x28]
	ldr r0, _0805ECD0
	ldrb r1, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x31
	ldrb r0, [r0, #0]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0805ECC6
	adds r0, r2, #0
	adds r0, #0x30
	ldrb r1, [r0, #0]
	adds r2, r0, #0
	cmp r1, #1
	beq _0805ECBC
	cmp r1, #3
	beq _0805ECBC
	cmp r1, #4
	beq _0805ECBC
	cmp r1, #2
	bne _0805ECC6
_0805ECBC:
	movs r0, #4
	strb r0, [r2, #0]
	movs r0, #0xdd
	bl sub_0805865C
_0805ECC6:
	movs r0, #7
_0805ECC8:
	mov r1, r9
	str r0, [r1, #0x74]
	b _0805ECF2
	.2byte 0x0000
_0805ECD0: .4byte gUnk_03005D70
_0805ECD4:
	movs r2, #0
	str r2, [sp, #0xa0]
	mov r4, r9
	ldr r0, [r4, #0x28]
	movs r1, #0
	adds r0, #0x30
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0805ECE8
	movs r1, #1
_0805ECE8:
	cmp r1, #0
	beq _0805ECF2
	ldr r5, [sp, #0xa0]
	mov r7, r9
	str r5, [r7, #0x74]
_0805ECF2:
	bl sub_0800CC98
	cmp r0, #0
	beq _0805ECFC
	b _0805EE64
_0805ECFC:
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	bne _0805ED04
	b _0805EE64
_0805ED04:
	movs r5, #0
	ldr r1, [sp, #0x9c]
	cmp r5, r1
	bgt _0805ED38
	add r4, sp, #4
_0805ED0E:
	mov r0, r9
	adds r0, #0x69
	ldrb r1, [r0, #0]
	movs r2, #0
	orrs r1, r2
	adds r0, #1
	ldrb r2, [r0, #0]
	ldr r7, [sp, #0x98]
	adds r2, r7, r2
	lsls r0, r5, #1
	adds r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_0801A3D0
	adds r4, #0x1e
	adds r5, #1
	ldr r0, [sp, #0x9c]
	cmp r5, r0
	ble _0805ED0E
_0805ED38:
	ldr r1, [sp, #0xb4]
	cmp r1, #0
	beq _0805ED48
	ldr r0, _0805EE04
	movs r1, #0x1c
	movs r2, #0x11
	bl sub_0801A3D0
_0805ED48:
	mov r2, sl
	cmp r2, #0xff
	beq _0805ED84
	add r4, sp, #0x40
	lsls r0, r2, #5
	ldr r1, [r4, #0xc]
	adds r1, r1, r0
	movs r0, #0x1f
	movs r2, #1
	bl sub_08000AF0
	add r1, sp, #0x5c
	add r1, sl
	movs r3, #0
	movs r0, #0xf
	strb r0, [r1, #0]
	mov r0, r9
	adds r0, #0x69
	ldrb r1, [r0, #0]
	lsls r1, r1, #3
	adds r1, #0x18
	adds r0, #1
	ldrb r2, [r0, #0]
	lsls r2, r2, #3
	subs r2, #0x28
	str r3, [sp, #0]
	adds r0, r4, #0
	mov r3, sl
	bl sub_08065230
_0805ED84:
	mov r4, r9
	ldr r0, [r4, #0x74]
	cmp r0, #6
	bne _0805EE64
	mov r0, r9
	adds r0, #0x84
	ldr r1, [r0, #0]
	movs r0, #2
	negs r0, r0
	cmp r1, r0
	bne _0805EE64
	mov r0, r9
	adds r0, #0x80
	ldrh r7, [r0, #0]
	cmp r7, #0
	beq _0805EE08
	adds r4, #0x2c
	mov r5, r9
	adds r5, #0x7a
	mov r3, r9
	adds r3, #0x7e
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #5
	adds r2, r5, #0
	bl sub_08065370
	mov r6, r9
	adds r6, #0x6a
	ldrb r2, [r6, #0]
	lsls r2, r2, #3
	subs r2, #0x18
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x78
	movs r3, #9
	bl sub_08065230
	ldrb r2, [r6, #0]
	lsls r2, r2, #3
	subs r2, #0x18
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x88
	movs r3, #5
	bl sub_08065264
	ldrb r2, [r6, #0]
	lsls r2, r2, #3
	subs r2, #0x18
	mov r0, r9
	adds r0, #0x78
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x68
	movs r3, #4
	bl sub_08065230
	b _0805EE64
	.2byte 0x0000
_0805EE04: .4byte gUnk_084EBD48
_0805EE08:
	mov r4, r9
	adds r4, #0x2c
	mov r5, r9
	adds r5, #0x78
	mov r3, r9
	adds r3, #0x7c
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #4
	adds r2, r5, #0
	bl sub_08065370
	mov r6, r9
	adds r6, #0x6a
	ldrb r2, [r6, #0]
	lsls r2, r2, #3
	subs r2, #0x18
	str r7, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x78
	movs r3, #8
	bl sub_08065230
	ldrb r2, [r6, #0]
	lsls r2, r2, #3
	subs r2, #0x18
	mov r0, r9
	adds r0, #0x7a
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x88
	movs r3, #5
	bl sub_08065230
	ldrb r2, [r6, #0]
	lsls r2, r2, #3
	subs r2, #0x18
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x68
	movs r3, #4
	bl sub_08065264
_0805EE64:
	bl sub_080003F0
	bl _0805E372
	thumb_func_end sub_0805E0C4
