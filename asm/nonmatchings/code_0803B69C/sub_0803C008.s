	thumb_func_start sub_0803C008
sub_0803C008: @ 0x0803C008
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803C044
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	adds r4, r0, #0
	cmp r4, #1
	beq _0803C034
	b _0803C350
_0803C034:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803C050
	ldr r0, _0803C048
	ldr r0, [r0, #0]
	ldr r1, _0803C04C
	b _0803C056
_0803C044: .4byte gUnk_03003CE0
_0803C048: .4byte gUnk_03005CF4
_0803C04C: .4byte 0x000001C5
_0803C050:
	ldr r0, _0803C068
	ldr r0, [r0, #0]
	ldr r1, _0803C06C
_0803C056:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _0803C064
	b _0803C2FC
_0803C064:
	b _0803C074
	.2byte 0x0000
_0803C068: .4byte gUnk_03005CF4
_0803C06C: .4byte 0x000001B9
_0803C070:
	bl sub_080003F0
_0803C074:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C070
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C098
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C0A0
	.2byte 0x0000
_0803C098: .4byte 0x001401E3
_0803C09C:
	bl sub_080003F0
_0803C0A0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C09C
	adds r0, r4, #0
	bl sub_0805EF14
	adds r4, r0, #0
	cmp r4, #0
	bne _0803C102
	b _0803C0BC
_0803C0B8:
	bl sub_080003F0
_0803C0BC:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C0B8
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C0E0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C0E8
	.2byte 0x0000
_0803C0E0: .4byte 0x001401E5
_0803C0E4:
	bl sub_080003F0
_0803C0E8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C0E4
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803C0BC
	b _0803C102
_0803C0FE:
	bl sub_080003F0
_0803C102:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C0FE
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C124
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C12C
_0803C124: .4byte 0x001401E4
_0803C128:
	bl sub_080003F0
_0803C12C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C128
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #1
	beq _0803C142
	b _0803C2A6
_0803C142:
	movs r3, #0
	ldr r1, _0803C194
	ldr r0, [r1, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r2, r0, r4
	adds r4, r1, #0
	movs r1, #0x18
_0803C152:
	ldrh r0, [r2, #0]
	cmp r0, #0xa
	bne _0803C15C
	ldr r0, [r2, #4]
	adds r3, r3, r0
_0803C15C:
	subs r1, #1
	adds r2, #0x10
	cmp r1, #0
	bge _0803C152
	ldr r0, [r4, #0]
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r2, r0, r1
	adds r0, #0x6a
	ldrh r1, [r0, #0]
	lsls r0, r1, #4
	subs r0, r0, r1
	cmp r0, #0
	ble _0803C18C
	adds r1, r0, #0
_0803C17A:
	ldrh r0, [r2, #0]
	cmp r0, #0xa
	bne _0803C184
	ldr r0, [r2, #4]
	adds r3, r3, r0
_0803C184:
	subs r1, #1
	adds r2, #0x10
	cmp r1, #0
	bne _0803C17A
_0803C18C:
	cmp r3, #0x63
	ble _0803C250
	b _0803C19C
	.2byte 0x0000
_0803C194: .4byte gUnk_030034E0
_0803C198:
	bl sub_080003F0
_0803C19C:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C198
	b _0803C1AA
_0803C1A6:
	bl sub_080003F0
_0803C1AA:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803C1A6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C1CC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C1D4
_0803C1CC: .4byte 0x001401E6
_0803C1D0:
	bl sub_080003F0
_0803C1D4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803C1EA
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803C1D0
	bl sub_0805EFBC
_0803C1EA:
	ldr r0, _0803C220
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803C1FC
	movs r0, #0x23
	bl sub_08006D08
_0803C1FC:
	ldr r2, _0803C224
	movs r0, #6
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	movs r0, #0x64
	bl sub_0807C014
	bl sub_0800CE30
	cmp r0, #0
	beq _0803C230
	ldr r0, _0803C228
	ldr r0, [r0, #0]
	ldr r4, _0803C22C
	adds r2, r0, r4
	b _0803C238
_0803C220: .4byte gUnk_030027D0
_0803C224: .4byte 0x0000270F
_0803C228: .4byte gUnk_03005CF4
_0803C22C: .4byte 0x000001C5
_0803C230:
	ldr r0, _0803C244
	ldr r0, [r0, #0]
	ldr r1, _0803C248
	adds r2, r0, r1
_0803C238:
	ldrb r1, [r2, #0]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2, #0]
	b _0803C39E
	.2byte 0x0000
_0803C244: .4byte gUnk_03005CF4
_0803C248: .4byte 0x000001B9
_0803C24C:
	bl sub_080003F0
_0803C250:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C24C
	b _0803C25E
_0803C25A:
	bl sub_080003F0
_0803C25E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803C25A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C280
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C288
_0803C280: .4byte 0x001401E8
_0803C284:
	bl sub_080003F0
_0803C288:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C294
	b _0803C39E
_0803C294:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803C284
	bl sub_0805EFBC
	b _0803C39E
_0803C2A2:
	bl sub_080003F0
_0803C2A6:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C2A2
	b _0803C2B4
_0803C2B0:
	bl sub_080003F0
_0803C2B4:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803C2B0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C2D8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C2E0
	.2byte 0x0000
_0803C2D8: .4byte 0x001401E7
_0803C2DC:
	bl sub_080003F0
_0803C2E0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803C39E
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803C2DC
	bl sub_0805EFBC
	b _0803C39E
_0803C2F8:
	bl sub_080003F0
_0803C2FC:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C2F8
	b _0803C30A
_0803C306:
	bl sub_080003F0
_0803C30A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803C306
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C32C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C334
_0803C32C: .4byte 0x001401E9
_0803C330:
	bl sub_080003F0
_0803C334:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803C39E
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803C330
	bl sub_0805EFBC
	b _0803C39E
_0803C34C:
	bl sub_080003F0
_0803C350:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C34C
	b _0803C35E
_0803C35A:
	bl sub_080003F0
_0803C35E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803C35A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C380
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C388
_0803C380: .4byte 0x001401F5
_0803C384:
	bl sub_080003F0
_0803C388:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803C39E
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803C384
	bl sub_0805EFBC
_0803C39E:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803C3C4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0803C3C4: .4byte gUnk_03003CE0
	thumb_func_end sub_0803C008
