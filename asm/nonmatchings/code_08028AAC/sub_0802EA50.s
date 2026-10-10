	thumb_func_start sub_0802EA50
sub_0802EA50: @ 0x0802EA50
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0x21
	movs r1, #0xb6
	movs r2, #0x87
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802EB40
	ldr r0, [r0, #0]
	ldr r2, _0802EB44
	adds r1, r0, r2
	movs r2, #0
_0802EA6C:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802EB60
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802EA6C
	bl sub_080003F0
	movs r2, #0
_0802EA80:
	cmp r2, #0
	beq _0802EA94
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x14
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802EA94:
	ldr r5, _0802EB48
	ldr r0, _0802EB40
	ldr r0, [r0, #0]
	ldr r2, _0802EB44
	adds r1, r0, r2
	movs r2, #0
_0802EAA0:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802EB5C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802EAA0
	bl sub_080003F0
	movs r0, #0
_0802EAB4:
	cmp r0, #0
	beq _0802EABA
	str r5, [r0, #0x44]
_0802EABA:
	movs r0, #8
	movs r1, #0x38
	movs r2, #0x87
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802EB40
	ldr r0, [r0, #0]
	ldr r2, _0802EB44
	adds r1, r0, r2
	movs r2, #0
_0802EAD0:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802EB58
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802EAD0
	bl sub_080003F0
	movs r2, #0
_0802EAE4:
	cmp r2, #0
	beq _0802EAF8
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x14
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802EAF8:
	ldr r5, _0802EB4C
	ldr r0, _0802EB40
	ldr r0, [r0, #0]
	ldr r2, _0802EB44
	adds r1, r0, r2
	movs r2, #0
_0802EB04:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802EB54
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802EB04
	bl sub_080003F0
	movs r0, #0
_0802EB18:
	cmp r0, #0
	beq _0802EB1E
	str r5, [r0, #0x44]
_0802EB1E:
	adds r0, r4, #0
	movs r1, #2
	bl sub_0802939C
	bl sub_08002164
	adds r5, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _0802EB64
	ldr r0, _0802EB40
	ldr r0, [r0, #0]
	ldr r1, _0802EB50
	adds r0, r0, r1
	b _0802EB6C
	.2byte 0x0000
_0802EB40: .4byte gUnk_03005CF4
_0802EB44: .4byte 0x000007A4
_0802EB48: .4byte sub_0803C008
_0802EB4C: .4byte sub_08031F28
_0802EB50: .4byte 0x000001C5
_0802EB54:
	adds r0, r1, #0
	b _0802EB18
_0802EB58:
	adds r2, r1, #0
	b _0802EAE4
_0802EB5C:
	adds r0, r1, #0
	b _0802EAB4
_0802EB60:
	adds r2, r1, #0
	b _0802EA80
_0802EB64:
	ldr r0, _0802EBC8
	ldr r0, [r0, #0]
	ldr r2, _0802EBCC
	adds r0, r0, r2
_0802EB6C:
	ldrb r0, [r0, #0]
	asrs r4, r0, #3
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne _0802EB7C
	cmp r5, #1
	beq _0802EB88
_0802EB7C:
	ldr r2, _0802EBD0
	movs r0, #6
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
_0802EB88:
	cmp r6, #0
	beq _0802EBA0
	movs r0, #0
	movs r1, #0xb8
	movs r2, #0xa0
	movs r3, #0
	bl sub_08028AAC
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
_0802EBA0:
	cmp r6, #1
	beq _0802EBD4
	cmp r6, #2
	bne _0802EBAA
	b _0802F0F0
_0802EBAA:
	bl sub_0800CC98
	cmp r0, #0
	beq _0802EBB4
	b _0802F1FE
_0802EBB4:
	bl sub_0801AB24
	cmp r0, #1
	bne _0802EBBE
	b _0802F1E2
_0802EBBE:
	cmp r0, #1
	ble _0802EBC4
	b _0802F1D6
_0802EBC4:
	b _0802F1D0
	.2byte 0x0000
_0802EBC8: .4byte gUnk_03005CF4
_0802EBCC: .4byte 0x000001B9
_0802EBD0: .4byte 0x0000270F
_0802EBD4:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0802EC08
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	orrs r0, r6
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CC98
	cmp r0, #0
	bne _0802EC34
	bl sub_0801AB24
	cmp r0, #1
	beq _0802EC18
	cmp r0, #1
	bgt _0802EC0C
	cmp r0, #0
	beq _0802EC12
	b _0802EC2C
	.2byte 0x0000
_0802EC08: .4byte gUnk_03003CE0
_0802EC0C:
	cmp r0, #2
	beq _0802EC20
	b _0802EC2C
_0802EC12:
	bl sub_080576A8
	b _0802EC2C
_0802EC18:
	movs r0, #6
	bl sub_0801AB50
	b _0802EC2C
_0802EC20:
	movs r0, #6
	bl sub_0801AB90
	b _0802EC2C
_0802EC28:
	bl sub_080003F0
_0802EC2C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802EC28
_0802EC34:
	movs r5, #0
	movs r4, #0
	movs r7, #1
	ldr r6, _0802EC58
_0802EC3C:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802EC5C
	adds r0, r7, #0
	lsls r0, r4
	ldr r1, [r6, #0]
	adds r1, #0x88
	ldr r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq _0802EC6E
	b _0802EC74
	.2byte 0x0000
_0802EC58: .4byte gUnk_03005CF4
_0802EC5C:
	adds r0, r7, #0
	lsls r0, r4
	ldr r1, [r6, #0]
	adds r1, #0x84
	ldr r1, [r1, #0]
	ands r0, r1
	movs r1, #1
	cmp r0, #0
	bne _0802EC70
_0802EC6E:
	movs r1, #0
_0802EC70:
	cmp r1, #0
	beq _0802EC76
_0802EC74:
	adds r5, #1
_0802EC76:
	adds r4, #1
	cmp r4, #0xa
	bls _0802EC3C
	adds r4, r5, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _0802EC98
	ldr r0, _0802EC94
	ldr r0, [r0, #0]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0802ECA2
	.2byte 0x0000
_0802EC94: .4byte gUnk_03005CF4
_0802EC98:
	ldr r0, _0802ECC0
	ldr r0, [r0, #0]
	movs r2, #0xda
	lsls r2, r2, #1
	adds r0, r0, r2
_0802ECA2:
	ldrb r0, [r0, #0]
	cmp r4, r0
	bne _0802ECAA
	b _0802F1AA
_0802ECAA:
	subs r0, r4, #2
	lsls r5, r4, #0x18
	cmp r0, #9
	bls _0802ECB4
	b _0802F0C2
_0802ECB4:
	lsls r0, r0, #2
	ldr r1, _0802ECC4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0802ECC0: .4byte gUnk_03005CF4
_0802ECC4: .4byte _0802ECC8
_0802ECC8:
	.4byte _0802ECF0
_0802ECCC: .4byte _0802ED4A
_0802ECD0: .4byte _0802EDA6
_0802ECD4: .4byte _0802EE02
_0802ECD8: .4byte _0802EE5E
_0802ECDC: .4byte _0802EEBA
_0802ECE0: .4byte _0802EF16
_0802ECE4: .4byte _0802EF72
_0802ECE8: .4byte _0802EFCE
_0802ECEC: .4byte _0802F028
_0802ECF0:
	lsls r5, r4, #0x18
	b _0802ECF8
_0802ECF4:
	bl sub_080003F0
_0802ECF8:
	bl sub_0805F184
	cmp r0, #0
	bne _0802ECF4
	b _0802ED06
_0802ED02:
	bl sub_080003F0
_0802ED06:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802ED02
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802ED28
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802ED30
_0802ED28: .4byte 0x001401EA
_0802ED2C:
	bl sub_080003F0
_0802ED30:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802ED3C
	b _0802F0C2
_0802ED3C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802ED2C
	bl sub_0805EFBC
	b _0802F0C2
_0802ED4A:
	lsls r5, r4, #0x18
	b _0802ED52
_0802ED4E:
	bl sub_080003F0
_0802ED52:
	bl sub_0805F184
	cmp r0, #0
	bne _0802ED4E
	b _0802ED60
_0802ED5C:
	bl sub_080003F0
_0802ED60:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802ED5C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802ED84
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802ED8C
	.2byte 0x0000
_0802ED84: .4byte 0x001401EB
_0802ED88:
	bl sub_080003F0
_0802ED8C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802ED98
	b _0802F0C2
_0802ED98:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802ED88
	bl sub_0805EFBC
	b _0802F0C2
_0802EDA6:
	lsls r5, r4, #0x18
	b _0802EDAE
_0802EDAA:
	bl sub_080003F0
_0802EDAE:
	bl sub_0805F184
	cmp r0, #0
	bne _0802EDAA
	b _0802EDBC
_0802EDB8:
	bl sub_080003F0
_0802EDBC:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802EDB8
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802EDE0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802EDE8
	.2byte 0x0000
_0802EDE0: .4byte 0x001401EC
_0802EDE4:
	bl sub_080003F0
_0802EDE8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802EDF4
	b _0802F0C2
_0802EDF4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802EDE4
	bl sub_0805EFBC
	b _0802F0C2
_0802EE02:
	lsls r5, r4, #0x18
	b _0802EE0A
_0802EE06:
	bl sub_080003F0
_0802EE0A:
	bl sub_0805F184
	cmp r0, #0
	bne _0802EE06
	b _0802EE18
_0802EE14:
	bl sub_080003F0
_0802EE18:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802EE14
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802EE3C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802EE44
	.2byte 0x0000
_0802EE3C: .4byte 0x001401ED
_0802EE40:
	bl sub_080003F0
_0802EE44:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802EE50
	b _0802F0C2
_0802EE50:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802EE40
	bl sub_0805EFBC
	b _0802F0C2
_0802EE5E:
	lsls r5, r4, #0x18
	b _0802EE66
_0802EE62:
	bl sub_080003F0
_0802EE66:
	bl sub_0805F184
	cmp r0, #0
	bne _0802EE62
	b _0802EE74
_0802EE70:
	bl sub_080003F0
_0802EE74:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802EE70
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802EE98
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802EEA0
	.2byte 0x0000
_0802EE98: .4byte 0x001401EE
_0802EE9C:
	bl sub_080003F0
_0802EEA0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802EEAC
	b _0802F0C2
_0802EEAC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802EE9C
	bl sub_0805EFBC
	b _0802F0C2
_0802EEBA:
	lsls r5, r4, #0x18
	b _0802EEC2
_0802EEBE:
	bl sub_080003F0
_0802EEC2:
	bl sub_0805F184
	cmp r0, #0
	bne _0802EEBE
	b _0802EED0
_0802EECC:
	bl sub_080003F0
_0802EED0:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802EECC
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802EEF4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802EEFC
	.2byte 0x0000
_0802EEF4: .4byte 0x001401EF
_0802EEF8:
	bl sub_080003F0
_0802EEFC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802EF08
	b _0802F0C2
_0802EF08:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802EEF8
	bl sub_0805EFBC
	b _0802F0C2
_0802EF16:
	lsls r5, r4, #0x18
	b _0802EF1E
_0802EF1A:
	bl sub_080003F0
_0802EF1E:
	bl sub_0805F184
	cmp r0, #0
	bne _0802EF1A
	b _0802EF2C
_0802EF28:
	bl sub_080003F0
_0802EF2C:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802EF28
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802EF50
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802EF58
	.2byte 0x0000
_0802EF50: .4byte 0x001401F0
_0802EF54:
	bl sub_080003F0
_0802EF58:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802EF64
	b _0802F0C2
_0802EF64:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802EF54
	bl sub_0805EFBC
	b _0802F0C2
_0802EF72:
	lsls r5, r4, #0x18
	b _0802EF7A
_0802EF76:
	bl sub_080003F0
_0802EF7A:
	bl sub_0805F184
	cmp r0, #0
	bne _0802EF76
	b _0802EF88
_0802EF84:
	bl sub_080003F0
_0802EF88:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802EF84
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802EFAC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802EFB4
	.2byte 0x0000
_0802EFAC: .4byte 0x001401F1
_0802EFB0:
	bl sub_080003F0
_0802EFB4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802EFC0
	b _0802F0C2
_0802EFC0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802EFB0
	bl sub_0805EFBC
	b _0802F0C2
_0802EFCE:
	lsls r5, r4, #0x18
	b _0802EFD6
_0802EFD2:
	bl sub_080003F0
_0802EFD6:
	bl sub_0805F184
	cmp r0, #0
	bne _0802EFD2
	b _0802EFE4
_0802EFE0:
	bl sub_080003F0
_0802EFE4:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802EFE0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F008
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F010
	.2byte 0x0000
_0802F008: .4byte 0x001401F2
_0802F00C:
	bl sub_080003F0
_0802F010:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0802F0C2
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F00C
	bl sub_0805EFBC
	b _0802F0C2
_0802F028:
	lsls r5, r4, #0x18
	b _0802F030
_0802F02C:
	bl sub_080003F0
_0802F030:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F02C
	b _0802F03E
_0802F03A:
	bl sub_080003F0
_0802F03E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F03A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F060
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F068
_0802F060: .4byte 0x001401F3
_0802F064:
	bl sub_080003F0
_0802F068:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0802F07E
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F064
	bl sub_0805EFBC
_0802F07E:
	ldr r0, _0802F0AC
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0802F090
	movs r0, #0x33
	bl sub_08006D08
_0802F090:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802F0B4
	ldr r0, _0802F0B0
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #0xc
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0802F0C2
	.2byte 0x0000
_0802F0AC: .4byte gUnk_030027D0
_0802F0B0: .4byte gUnk_03005CF4
_0802F0B4:
	ldr r0, _0802F0D8
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0802F0C2:
	lsrs r4, r5, #0x18
	bl sub_0800CE30
	cmp r0, #0
	beq _0802F0DC
	ldr r0, _0802F0D8
	ldr r0, [r0, #0]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0802F0E6
_0802F0D8: .4byte gUnk_03005CF4
_0802F0DC:
	ldr r0, _0802F0EC
	ldr r0, [r0, #0]
	movs r2, #0xda
	lsls r2, r2, #1
	adds r0, r0, r2
_0802F0E6:
	strb r4, [r0, #0]
	b _0802F1AA
	.2byte 0x0000
_0802F0EC: .4byte gUnk_03005CF4
_0802F0F0:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802F128
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CC98
	cmp r0, #0
	bne _0802F15A
	bl sub_0801AB24
	cmp r0, #1
	beq _0802F138
	cmp r0, #1
	bgt _0802F12C
	cmp r0, #0
	beq _0802F132
	b _0802F14C
	.2byte 0x0000
_0802F128: .4byte gUnk_03003CE0
_0802F12C:
	cmp r0, #2
	beq _0802F140
	b _0802F14C
_0802F132:
	bl sub_080576A8
	b _0802F14C
_0802F138:
	movs r0, #6
	bl sub_0801AB50
	b _0802F14C
_0802F140:
	movs r0, #6
	bl sub_0801AB90
	b _0802F14C
_0802F148:
	bl sub_080003F0
_0802F14C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802F148
	b _0802F15A
_0802F156:
	bl sub_080003F0
_0802F15A:
	bl sub_0805F184
	cmp r0, #0
	bne _0802F156
	b _0802F168
_0802F164:
	bl sub_080003F0
_0802F168:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802F164
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0802F18C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802F194
	.2byte 0x0000
_0802F18C: .4byte 0x001401F4
_0802F190:
	bl sub_080003F0
_0802F194:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0802F1AA
	bl sub_0800CDF8
	cmp r0, #0
	beq _0802F190
	bl sub_0805EFBC
_0802F1AA:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802F1CC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	b _0802F1FE
	.2byte 0x0000
_0802F1CC: .4byte gUnk_03003CE0
_0802F1D0:
	cmp r0, #0
	beq _0802F1DC
	b _0802F1F6
_0802F1D6:
	cmp r0, #2
	beq _0802F1EA
	b _0802F1F6
_0802F1DC:
	bl sub_080576A8
	b _0802F1F6
_0802F1E2:
	movs r0, #6
	bl sub_0801AB50
	b _0802F1F6
_0802F1EA:
	movs r0, #6
	bl sub_0801AB90
	b _0802F1F6
_0802F1F2:
	bl sub_080003F0
_0802F1F6:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802F1F2
_0802F1FE:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0802EA50
