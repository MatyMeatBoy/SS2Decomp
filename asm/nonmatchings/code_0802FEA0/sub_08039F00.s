	thumb_func_start sub_08039F00
sub_08039F00: @ 0x08039F00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r7, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08039F50
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r7, #0
	movs r1, #0x6f
	movs r2, #0xdd
	movs r3, #0
	bl sub_08028AAC
	adds r0, r7, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _08039F5C
	ldr r0, _08039F54
	ldr r0, [r0, #0]
	ldr r1, _08039F58
	b _08039F62
_08039F50: .4byte gUnk_03003CE0
_08039F54: .4byte gUnk_03005CF4
_08039F58: .4byte 0x000001BD
_08039F5C:
	ldr r0, _08039FA4
	ldr r0, [r0, #0]
	ldr r1, _08039FA8
_08039F62:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	adds r5, r0, #0
	cmp r5, #9
	ble _08039F6E
	b _0803A384
_08039F6E:
	cmp r4, #0
	beq _08039F74
	b _0803A334
_08039F74:
	movs r3, #0
	movs r2, #0
	ldr r0, _08039FAC
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08039F82:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _08039F90
	ldrh r0, [r1, #2]
	cmp r0, #0x2e
	bne _08039F90
	adds r3, #1
_08039F90:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08039F82
	adds r6, r3, #0
	cmp r6, #0
	bgt _08039FA0
	b _0803A2CC
_08039FA0:
	b _08039FB4
	.2byte 0x0000
_08039FA4: .4byte gUnk_03005CF4
_08039FA8: .4byte 0x000001B1
_08039FAC: .4byte gUnk_030034E0
_08039FB0:
	bl sub_080003F0
_08039FB4:
	bl sub_0805F184
	cmp r0, #0
	bne _08039FB0
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039FD8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039FE0
	.2byte 0x0000
_08039FD8: .4byte 0x0014025B
_08039FDC:
	bl sub_080003F0
_08039FE0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039FDC
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _08039FF6
	b _0803A27C
_08039FF6:
	adds r5, r5, r6
	mov r8, r5
	b _0803A000
_08039FFC:
	bl sub_080003F0
_0803A000:
	bl sub_0805F184
	cmp r0, #0
	bne _08039FFC
	b _0803A00E
_0803A00A:
	bl sub_080003F0
_0803A00E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A00A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A030
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A038
_0803A030: .4byte 0x0014025C
_0803A034:
	bl sub_080003F0
_0803A038:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803A04E
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A034
	bl sub_0805EFBC
_0803A04E:
	adds r4, r6, #0
	movs r3, #0
	ldr r6, _0803A09C
	movs r5, #0
_0803A056:
	ldr r0, [r6, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #1
	bne _0803A07E
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x2e
	bne _0803A07E
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _0803A084
_0803A07E:
	adds r3, #1
	cmp r3, #0x18
	bls _0803A056
_0803A084:
	mov r5, r8
	lsls r0, r5, #0x18
	lsrs r4, r0, #0x18
	bl sub_0800CE30
	cmp r0, #0
	beq _0803A0A8
	ldr r0, _0803A0A0
	ldr r0, [r0, #0]
	ldr r1, _0803A0A4
	b _0803A0AE
	.2byte 0x0000
_0803A09C: .4byte gUnk_030034E0
_0803A0A0: .4byte gUnk_03005CF4
_0803A0A4: .4byte 0x000001BD
_0803A0A8:
	ldr r0, _0803A0BC
	ldr r0, [r0, #0]
	ldr r1, _0803A0C0
_0803A0AE:
	adds r0, r0, r1
	strb r4, [r0, #0]
	cmp r5, #9
	bgt _0803A0B8
	b _0803A31A
_0803A0B8:
	add r6, sp, #0xc
	b _0803A0C8
_0803A0BC: .4byte gUnk_03005CF4
_0803A0C0: .4byte 0x000001B1
_0803A0C4:
	bl sub_080003F0
_0803A0C8:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A0C4
	b _0803A0D6
_0803A0D2:
	bl sub_080003F0
_0803A0D6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A0D2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A0F8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A100
_0803A0F8: .4byte 0x0014025E
_0803A0FC:
	bl sub_080003F0
_0803A100:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803A116
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A0FC
	bl sub_0805EFBC
_0803A116:
	ldr r0, _0803A164
	adds r1, r5, #0
	bl sub_08068070
	bl sub_0800CE30
	adds r4, r0, #0
	cmp r4, #0
	bne _0803A1C0
	ldr r0, _0803A168
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803A13A
	movs r0, #0x33
	bl sub_08006D08
_0803A13A:
	movs r1, #6
	movs r2, #0x58
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_0803A14A:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _0803A14A
	movs r4, #0
_0803A156:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _0803A156
	b _0803A170
_0803A164: .4byte sub_08059340
_0803A168: .4byte gUnk_030027D0
_0803A16C:
	bl sub_080003F0
_0803A170:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A16C
	b _0803A17E
_0803A17A:
	bl sub_080003F0
_0803A17E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A17A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A1A0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A1A8
_0803A1A0: .4byte 0x0014025F
_0803A1A4:
	bl sub_080003F0
_0803A1A8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803A252
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A1A4
	bl sub_0805EFBC
	b _0803A252
_0803A1C0:
	ldr r0, _0803A1FC
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803A1D2
	movs r0, #0x33
	bl sub_08006D08
_0803A1D2:
	movs r1, #6
	movs r2, #0x23
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_0803A1E2:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _0803A1E2
	movs r4, #0
_0803A1EE:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _0803A1EE
	b _0803A204
_0803A1FC: .4byte gUnk_030027D0
_0803A200:
	bl sub_080003F0
_0803A204:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A200
	b _0803A212
_0803A20E:
	bl sub_080003F0
_0803A212:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A20E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A234
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A23C
_0803A234: .4byte 0x00140260
_0803A238:
	bl sub_080003F0
_0803A23C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803A252
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A238
	bl sub_0805EFBC
_0803A252:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803A274
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	b _0803A450
	.2byte 0x0000
_0803A274: .4byte gUnk_03003CE0
_0803A278:
	bl sub_080003F0
_0803A27C:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A278
	b _0803A28A
_0803A286:
	bl sub_080003F0
_0803A28A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A286
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A2AC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A2B4
_0803A2AC: .4byte 0x0014025D
_0803A2B0:
	bl sub_080003F0
_0803A2B4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803A31A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A2B0
	b _0803A316
_0803A2C8:
	bl sub_080003F0
_0803A2CC:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A2C8
	b _0803A2DA
_0803A2D6:
	bl sub_080003F0
_0803A2DA:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A2D6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A2FC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A304
_0803A2FC: .4byte 0x00140259
_0803A300:
	bl sub_080003F0
_0803A304:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803A31A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A300
_0803A316:
	bl sub_0805EFBC
_0803A31A:
	adds r0, r7, #0
	movs r1, #0
	bl sub_080290E4
	adds r0, r7, #0
	movs r1, #0
	movs r2, #3
	movs r3, #4
	bl sub_08028D98
	b _0803A432
_0803A330:
	bl sub_080003F0
_0803A334:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A330
	b _0803A342
_0803A33E:
	bl sub_080003F0
_0803A342:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A33E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A364
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A36C
_0803A364: .4byte 0x0014025A
_0803A368:
	bl sub_080003F0
_0803A36C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803A432
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A368
	bl sub_0805EFBC
	b _0803A432
_0803A384:
	cmp r4, #0
	bne _0803A3E4
	b _0803A38E
_0803A38A:
	bl sub_080003F0
_0803A38E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A38A
	b _0803A39C
_0803A398:
	bl sub_080003F0
_0803A39C:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A398
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A3C0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A3C8
	.2byte 0x0000
_0803A3C0: .4byte 0x00140261
_0803A3C4:
	bl sub_080003F0
_0803A3C8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803A432
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A3C4
	bl sub_0805EFBC
	b _0803A432
_0803A3E0:
	bl sub_080003F0
_0803A3E4:
	bl sub_0805F184
	cmp r0, #0
	bne _0803A3E0
	b _0803A3F2
_0803A3EE:
	bl sub_080003F0
_0803A3F2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803A3EE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803A414
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803A41C
_0803A414: .4byte 0x00140262
_0803A418:
	bl sub_080003F0
_0803A41C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803A432
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803A418
	bl sub_0805EFBC
_0803A432:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803A45C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_0803A450:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0803A45C: .4byte gUnk_03003CE0
	thumb_func_end sub_08039F00
