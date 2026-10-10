	thumb_func_start sub_0800A03C
sub_0800A03C: @ 0x0800A03C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r1, _0800A05C
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	adds r5, r1, #0
	cmp r0, #0xe
	bhi _0800A108
	lsls r0, r0, #2
	ldr r1, _0800A060
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0800A05C: .4byte gUnk_03003170
_0800A060: .4byte _0800A064
_0800A064:
	.4byte _0800A108
_0800A068: .4byte _0800A108
_0800A06C: .4byte _0800A108
_0800A070: .4byte _0800A108
_0800A074: .4byte _0800A0A0
_0800A078: .4byte _0800A108
_0800A07C: .4byte _0800A108
_0800A080: .4byte _0800A108
_0800A084: .4byte _0800A0AE
_0800A088: .4byte _0800A108
_0800A08C: .4byte _0800A108
_0800A090: .4byte _0800A286
_0800A094: .4byte _0800A286
_0800A098: .4byte _0800A108
_0800A09C: .4byte _0800A286
_0800A0A0:
	adds r0, r5, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xc
	bne _0800A0AC
	b _0800A286
_0800A0AC:
	b _0800A108
_0800A0AE:
	adds r0, r5, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	subs r0, #2
	cmp r0, #0xf
	bhi _0800A108
	lsls r0, r0, #2
	ldr r1, _0800A0C4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800A0C4: .4byte _0800A0C8
_0800A0C8:
	.4byte _0800A286
_0800A0CC: .4byte _0800A108
_0800A0D0: .4byte _0800A286
_0800A0D4: .4byte _0800A108
_0800A0D8: .4byte _0800A286
_0800A0DC: .4byte _0800A108
_0800A0E0: .4byte _0800A286
_0800A0E4: .4byte _0800A108
_0800A0E8: .4byte _0800A286
_0800A0EC: .4byte _0800A108
_0800A0F0: .4byte _0800A286
_0800A0F4: .4byte _0800A108
_0800A0F8: .4byte _0800A286
_0800A0FC: .4byte _0800A108
_0800A100: .4byte _0800A108
_0800A104: .4byte _0800A286
_0800A108:
	adds r0, r5, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #3
	beq _0800A116
	cmp r0, #6
	bne _0800A11A
_0800A116:
	movs r7, #1
	b _0800A11C
_0800A11A:
	movs r7, #0
_0800A11C:
	adds r0, r5, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #9
	beq _0800A150
	cmp r0, #9
	bgt _0800A130
	cmp r0, #0
	beq _0800A13C
	b _0800A210
_0800A130:
	cmp r0, #0xa
	beq _0800A1A8
	cmp r0, #0xd
	bne _0800A13A
	b _0800A286
_0800A13A:
	b _0800A210
_0800A13C:
	adds r0, r5, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0800A148
	b _0800A286
_0800A148:
	cmp r0, #5
	bne _0800A14E
	b _0800A286
_0800A14E:
	b _0800A210
_0800A150:
	adds r0, r5, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xf
	bhi _0800A210
	lsls r0, r0, #2
	ldr r1, _0800A164
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800A164: .4byte _0800A168
_0800A168:
	.4byte _0800A286
_0800A16C: .4byte _0800A210
_0800A170: .4byte _0800A286
_0800A174: .4byte _0800A210
_0800A178: .4byte _0800A286
_0800A17C: .4byte _0800A210
_0800A180: .4byte _0800A286
_0800A184: .4byte _0800A210
_0800A188: .4byte _0800A286
_0800A18C: .4byte _0800A210
_0800A190: .4byte _0800A210
_0800A194: .4byte _0800A210
_0800A198: .4byte _0800A286
_0800A19C: .4byte _0800A286
_0800A1A0: .4byte _0800A210
_0800A1A4: .4byte _0800A286
_0800A1A8:
	adds r0, r5, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x13
	bhi _0800A210
	lsls r0, r0, #2
	ldr r1, _0800A1BC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0800A1BC: .4byte _0800A1C0
_0800A1C0:
	.4byte _0800A286
_0800A1C4: .4byte _0800A286
_0800A1C8: .4byte _0800A210
_0800A1CC: .4byte _0800A286
_0800A1D0: .4byte _0800A210
_0800A1D4: .4byte _0800A210
_0800A1D8: .4byte _0800A210
_0800A1DC: .4byte _0800A210
_0800A1E0: .4byte _0800A210
_0800A1E4: .4byte _0800A210
_0800A1E8: .4byte _0800A210
_0800A1EC: .4byte _0800A210
_0800A1F0: .4byte _0800A210
_0800A1F4: .4byte _0800A286
_0800A1F8: .4byte _0800A210
_0800A1FC: .4byte _0800A286
_0800A200: .4byte _0800A286
_0800A204: .4byte _0800A210
_0800A208: .4byte _0800A210
_0800A20C: .4byte _0800A286
_0800A210:
	adds r0, r5, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	subs r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0800A228
	bl sub_0800CDC0
	cmp r0, #0
	bne _0800A286
_0800A228:
	movs r6, #0
	mov ip, r5
	ldr r0, _0800A290
	mov r8, r0
	ldr r1, _0800A294
	mov r4, ip
	adds r4, #0xa0
	lsls r0, r7, #1
	adds r7, r0, r1
_0800A23A:
	lsls r2, r6, #1
	mov r0, ip
	adds r0, #0x8c
	ldrh r1, [r0, #0]
	movs r0, #0x74
	muls r0, r1, r0
	adds r0, r2, r0
	mov r1, r8
	adds r3, r0, r1
	ldrh r0, [r3, #0]
	cmp r0, #0
	beq _0800A27E
	adds r0, r5, #0
	adds r0, #0xa8
	adds r2, r2, r0
	ldrh r1, [r2, #0]
	adds r0, r1, #1
	strh r0, [r2, #0]
	ldrh r0, [r3, #0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r0, r1
	bhi _0800A27E
	movs r1, #0
	strh r1, [r2, #0]
	ldrh r0, [r4, #0]
	adds r0, #1
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r2, [r7, #0]
	cmp r0, r2
	blo _0800A27E
	strh r1, [r4, #0]
_0800A27E:
	adds r4, #2
	adds r6, #1
	cmp r6, #3
	bls _0800A23A
_0800A286:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0800A290: .4byte gUnk_08478470
_0800A294: .4byte gUnk_08478F4C
	thumb_func_end sub_0800A03C
