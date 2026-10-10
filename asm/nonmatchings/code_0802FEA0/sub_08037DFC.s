	thumb_func_start sub_08037DFC
sub_08037DFC: @ 0x08037DFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r4, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08037E38
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_0800CE30
	cmp r0, #0
	beq _08037E40
	ldr r0, _08037E3C
	ldr r0, [r0, #0]
	ldr r5, [r0, #0x7c]
	b _08037E46
	.2byte 0x0000
_08037E38: .4byte gUnk_03003CE0
_08037E3C: .4byte gUnk_03005CF4
_08037E40:
	ldr r0, _08037E5C
	ldr r0, [r0, #0]
	ldr r5, [r0, #0x74]
_08037E46:
	bl sub_0800CE30
	cmp r0, #0
	beq _08037E60
	ldr r0, _08037E5C
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08037E6A
	.2byte 0x0000
_08037E5C: .4byte gUnk_03005CF4
_08037E60:
	ldr r0, _08037E84
	ldr r0, [r0, #0]
	movs r7, #0xdd
	lsls r7, r7, #1
	adds r0, r0, r7
_08037E6A:
	ldrb r0, [r0, #0]
	asrs r6, r0, #2
	movs r0, #1
	ands r6, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08037E8C
	ldr r0, _08037E84
	ldr r0, [r0, #0]
	ldr r1, _08037E88
	adds r0, r0, r1
	b _08037E94
_08037E84: .4byte gUnk_03005CF4
_08037E88: .4byte 0x000001C7
_08037E8C:
	ldr r0, _08037EDC
	ldr r0, [r0, #0]
	ldr r7, _08037EE0
	adds r0, r0, r7
_08037E94:
	ldrb r0, [r0, #0]
	asrs r4, r0, #6
	movs r0, #1
	ands r4, r0
	movs r2, #0
	movs r1, #0
	ldr r0, _08037EE4
	ldr r0, [r0, #0]
	movs r7, #0xc1
	lsls r7, r7, #4
	adds r3, r0, r7
_08037EAA:
	adds r0, r3, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08037EB4
	adds r2, #1
_08037EB4:
	adds r1, #1
	cmp r1, #0x90
	bls _08037EAA
	movs r7, #0
	cmp r2, #0x91
	bne _08037EC2
	movs r7, #1
_08037EC2:
	bl sub_080020F4
	adds r1, r0, #0
	cmp r4, #0
	beq _08037ECE
	b _0803809A
_08037ECE:
	cmp r7, #0
	bne _08037ED4
	b _0803809A
_08037ED4:
	cmp r1, #0
	beq _08037EDA
	b _0803809A
_08037EDA:
	b _08037EEC
_08037EDC: .4byte gUnk_03005CF4
_08037EE0: .4byte 0x000001BB
_08037EE4: .4byte gUnk_030034E0
_08037EE8:
	bl sub_080003F0
_08037EEC:
	bl sub_0805F184
	cmp r0, #0
	bne _08037EE8
	b _08037EFA
_08037EF6:
	bl sub_080003F0
_08037EFA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08037EF6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037F1C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037F24
_08037F1C: .4byte 0x00140113
_08037F20:
	bl sub_080003F0
_08037F24:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08037F3A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037F20
	bl sub_0805EFBC
_08037F3A:
	bl sub_0805CFA0
	movs r1, #1
	cmp r0, #0
	bge _08037F46
	movs r1, #0
_08037F46:
	cmp r1, #0
	bne _08037F4C
	b _08038046
_08037F4C:
	movs r1, #6
	movs r2, #0x1e
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_08037F5C:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08037F5C
	movs r4, #0
_08037F68:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08037F68
	ldr r0, _08037F90
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08037F86
	movs r0, #0x33
	bl sub_08006D08
_08037F86:
	ldr r0, _08037F94
	movs r1, #0x26
	bl sub_08068070
	b _08037F9C
_08037F90: .4byte gUnk_030027D0
_08037F94: .4byte sub_0805990C
_08037F98:
	bl sub_080003F0
_08037F9C:
	bl sub_0805F184
	cmp r0, #0
	bne _08037F98
	b _08037FAA
_08037FA6:
	bl sub_080003F0
_08037FAA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08037FA6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037FCC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037FD4
_08037FCC: .4byte 0x00140114
_08037FD0:
	bl sub_080003F0
_08037FD4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08037FF0
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037FD0
	bl sub_0805EFBC
	b _08037FF0
_08037FEC:
	bl sub_080003F0
_08037FF0:
	bl sub_0805F184
	cmp r0, #0
	bne _08037FEC
	b _08037FFE
_08037FFA:
	bl sub_080003F0
_08037FFE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08037FFA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038020
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038028
_08038020: .4byte 0x00140115
_08038024:
	bl sub_080003F0
_08038028:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08038034
	b _080384AA
_08038034:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038024
	bl sub_0805EFBC
	b _080384AA
_08038042:
	bl sub_080003F0
_08038046:
	bl sub_0805F184
	cmp r0, #0
	bne _08038042
	b _08038054
_08038050:
	bl sub_080003F0
_08038054:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038050
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038078
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038080
	.2byte 0x0000
_08038078: .4byte 0x00140116
_0803807C:
	bl sub_080003F0
_08038080:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803808C
	b _080384AA
_0803808C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803807C
	bl sub_0805EFBC
	b _080384AA
_0803809A:
	cmp r6, #0
	beq _080380F6
	b _080380A4
_080380A0:
	bl sub_080003F0
_080380A4:
	bl sub_0805F184
	cmp r0, #0
	bne _080380A0
	b _080380B2
_080380AE:
	bl sub_080003F0
_080380B2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080380AE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080380D4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080380DC
_080380D4: .4byte 0x00140112
_080380D8:
	bl sub_080003F0
_080380DC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080380E8
	b _080384AA
_080380E8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080380D8
	bl sub_0805EFBC
	b _080384AA
_080380F6:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r5
	cmp r0, #0
	beq _0803815A
	b _08038106
_08038102:
	bl sub_080003F0
_08038106:
	bl sub_0805F184
	cmp r0, #0
	bne _08038102
	b _08038114
_08038110:
	bl sub_080003F0
_08038114:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038110
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038138
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038140
	.2byte 0x0000
_08038138: .4byte 0x00140111
_0803813C:
	bl sub_080003F0
_08038140:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803814C
	b _080384AA
_0803814C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803813C
	bl sub_0805EFBC
	b _080384AA
_0803815A:
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	beq _080381BA
	b _08038168
_08038164:
	bl sub_080003F0
_08038168:
	bl sub_0805F184
	cmp r0, #0
	bne _08038164
	b _08038176
_08038172:
	bl sub_080003F0
_08038176:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038172
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038198
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080381A0
_08038198: .4byte 0x00140110
_0803819C:
	bl sub_080003F0
_080381A0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080381AC
	b _080384AA
_080381AC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803819C
	bl sub_0805EFBC
	b _080384AA
_080381BA:
	movs r0, #0x40
	ands r0, r5
	cmp r0, #0
	beq _0803821A
	b _080381C8
_080381C4:
	bl sub_080003F0
_080381C8:
	bl sub_0805F184
	cmp r0, #0
	bne _080381C4
	b _080381D6
_080381D2:
	bl sub_080003F0
_080381D6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080381D2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080381F8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038200
_080381F8: .4byte 0x0014010F
_080381FC:
	bl sub_080003F0
_08038200:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803820C
	b _080384AA
_0803820C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080381FC
	bl sub_0805EFBC
	b _080384AA
_0803821A:
	movs r0, #0x20
	ands r0, r5
	cmp r0, #0
	beq _0803827A
	b _08038228
_08038224:
	bl sub_080003F0
_08038228:
	bl sub_0805F184
	cmp r0, #0
	bne _08038224
	b _08038236
_08038232:
	bl sub_080003F0
_08038236:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038232
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038258
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038260
_08038258: .4byte 0x0014010E
_0803825C:
	bl sub_080003F0
_08038260:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803826C
	b _080384AA
_0803826C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803825C
	bl sub_0805EFBC
	b _080384AA
_0803827A:
	movs r0, #0x10
	ands r0, r5
	cmp r0, #0
	beq _080382DA
	b _08038288
_08038284:
	bl sub_080003F0
_08038288:
	bl sub_0805F184
	cmp r0, #0
	bne _08038284
	b _08038296
_08038292:
	bl sub_080003F0
_08038296:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038292
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080382B8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080382C0
_080382B8: .4byte 0x0014010D
_080382BC:
	bl sub_080003F0
_080382C0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080382CC
	b _080384AA
_080382CC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080382BC
	bl sub_0805EFBC
	b _080384AA
_080382DA:
	movs r0, #8
	ands r0, r5
	cmp r0, #0
	beq _0803833A
	b _080382E8
_080382E4:
	bl sub_080003F0
_080382E8:
	bl sub_0805F184
	cmp r0, #0
	bne _080382E4
	b _080382F6
_080382F2:
	bl sub_080003F0
_080382F6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080382F2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038318
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038320
_08038318: .4byte 0x0014010C
_0803831C:
	bl sub_080003F0
_08038320:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803832C
	b _080384AA
_0803832C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803831C
	bl sub_0805EFBC
	b _080384AA
_0803833A:
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _0803839A
	b _08038348
_08038344:
	bl sub_080003F0
_08038348:
	bl sub_0805F184
	cmp r0, #0
	bne _08038344
	b _08038356
_08038352:
	bl sub_080003F0
_08038356:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038352
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038378
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038380
_08038378: .4byte 0x0014010B
_0803837C:
	bl sub_080003F0
_08038380:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803838C
	b _080384AA
_0803838C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803837C
	bl sub_0805EFBC
	b _080384AA
_0803839A:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _080383F8
	b _080383A8
_080383A4:
	bl sub_080003F0
_080383A8:
	bl sub_0805F184
	cmp r0, #0
	bne _080383A4
	b _080383B6
_080383B2:
	bl sub_080003F0
_080383B6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080383B2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080383D8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080383E0
_080383D8: .4byte 0x0014010A
_080383DC:
	bl sub_080003F0
_080383E0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080384AA
	bl sub_0800CDF8
	cmp r0, #0
	beq _080383DC
	bl sub_0805EFBC
	b _080384AA
_080383F8:
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	beq _0803845C
	b _08038406
_08038402:
	bl sub_080003F0
_08038406:
	bl sub_0805F184
	cmp r0, #0
	bne _08038402
	b _08038414
_08038410:
	bl sub_080003F0
_08038414:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038410
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038438
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038440
	.2byte 0x0000
_08038438: .4byte 0x00140109
_0803843C:
	bl sub_080003F0
_08038440:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080384AA
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803843C
	bl sub_0805EFBC
	b _080384AA
_08038458:
	bl sub_080003F0
_0803845C:
	bl sub_0805F184
	cmp r0, #0
	bne _08038458
	b _0803846A
_08038466:
	bl sub_080003F0
_0803846A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038466
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803848C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038494
_0803848C: .4byte 0x00140108
_08038490:
	bl sub_080003F0
_08038494:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080384AA
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038490
	bl sub_0805EFBC
_080384AA:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080384D0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080384D0: .4byte gUnk_03003CE0
	thumb_func_end sub_08037DFC
