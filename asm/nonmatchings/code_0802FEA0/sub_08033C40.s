	thumb_func_start sub_08033C40
sub_08033C40: @ 0x08033C40
	push {r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08033C74
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _08033C80
	ldr r0, _08033C78
	ldr r0, [r0, #0]
	ldr r1, _08033C7C
	adds r0, r0, r1
	b _08033C88
_08033C74: .4byte gUnk_03003CE0
_08033C78: .4byte gUnk_03005CF4
_08033C7C: .4byte 0x000001BF
_08033C80:
	ldr r0, _08033C9C
	ldr r0, [r0, #0]
	ldr r2, _08033CA0
	adds r0, r0, r2
_08033C88:
	ldrb r0, [r0, #0]
	cmp r0, #5
	bls _08033C92
	bl _0803445E
_08033C92:
	lsls r0, r0, #2
	ldr r1, _08033CA4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08033C9C: .4byte gUnk_03005CF4
_08033CA0: .4byte 0x000001B3
_08033CA4: .4byte _08033CA8
_08033CA8:
	.4byte _08033CC0
_08033CAC: .4byte _0803409E
_08033CB0: .4byte _08034150
_08033CB4: .4byte _080341A6
_08033CB8: .4byte _080343BA
_08033CBC: .4byte _08034410
_08033CC0:
	bl sub_0800CE30
	cmp r0, #0
	beq _08033CD4
	ldr r0, _08033CD0
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x7c]
	b _08033CDA
_08033CD0: .4byte gUnk_03005CF4
_08033CD4:
	ldr r0, _08033CE8
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x74]
_08033CDA:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08033D42
	b _08033CF0
	.2byte 0x0000
_08033CE8: .4byte gUnk_03005CF4
_08033CEC:
	bl sub_080003F0
_08033CF0:
	bl sub_0805F184
	cmp r0, #0
	bne _08033CEC
	b _08033CFE
_08033CFA:
	bl sub_080003F0
_08033CFE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033CFA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033D20
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033D28
_08033D20: .4byte 0x001401BF
_08033D24:
	bl sub_080003F0
_08033D28:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08033D34
	b _0803445E
_08033D34:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033D24
	bl sub_0805EFBC
	b _0803445E
_08033D42:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08033DA2
	b _08033D50
_08033D4C:
	bl sub_080003F0
_08033D50:
	bl sub_0805F184
	cmp r0, #0
	bne _08033D4C
	b _08033D5E
_08033D5A:
	bl sub_080003F0
_08033D5E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033D5A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033D80
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033D88
_08033D80: .4byte 0x001401BE
_08033D84:
	bl sub_080003F0
_08033D88:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08033D94
	b _0803445E
_08033D94:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033D84
	bl sub_0805EFBC
	b _0803445E
_08033DA2:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08033E02
	b _08033DB0
_08033DAC:
	bl sub_080003F0
_08033DB0:
	bl sub_0805F184
	cmp r0, #0
	bne _08033DAC
	b _08033DBE
_08033DBA:
	bl sub_080003F0
_08033DBE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033DBA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033DE0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033DE8
_08033DE0: .4byte 0x001401BD
_08033DE4:
	bl sub_080003F0
_08033DE8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08033DF4
	b _0803445E
_08033DF4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033DE4
	bl sub_0805EFBC
	b _0803445E
_08033E02:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08033E62
	b _08033E10
_08033E0C:
	bl sub_080003F0
_08033E10:
	bl sub_0805F184
	cmp r0, #0
	bne _08033E0C
	b _08033E1E
_08033E1A:
	bl sub_080003F0
_08033E1E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033E1A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033E40
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033E48
_08033E40: .4byte 0x001401BC
_08033E44:
	bl sub_080003F0
_08033E48:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08033E54
	b _0803445E
_08033E54:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033E44
	bl sub_0805EFBC
	b _0803445E
_08033E62:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08033EC2
	b _08033E70
_08033E6C:
	bl sub_080003F0
_08033E70:
	bl sub_0805F184
	cmp r0, #0
	bne _08033E6C
	b _08033E7E
_08033E7A:
	bl sub_080003F0
_08033E7E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033E7A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033EA0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033EA8
_08033EA0: .4byte 0x001401BB
_08033EA4:
	bl sub_080003F0
_08033EA8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08033EB4
	b _0803445E
_08033EB4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033EA4
	bl sub_0805EFBC
	b _0803445E
_08033EC2:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08033F22
	b _08033ED0
_08033ECC:
	bl sub_080003F0
_08033ED0:
	bl sub_0805F184
	cmp r0, #0
	bne _08033ECC
	b _08033EDE
_08033EDA:
	bl sub_080003F0
_08033EDE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033EDA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033F00
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033F08
_08033F00: .4byte 0x001401BA
_08033F04:
	bl sub_080003F0
_08033F08:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08033F14
	b _0803445E
_08033F14:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033F04
	bl sub_0805EFBC
	b _0803445E
_08033F22:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08033F82
	b _08033F30
_08033F2C:
	bl sub_080003F0
_08033F30:
	bl sub_0805F184
	cmp r0, #0
	bne _08033F2C
	b _08033F3E
_08033F3A:
	bl sub_080003F0
_08033F3E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033F3A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033F60
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033F68
_08033F60: .4byte 0x001401B9
_08033F64:
	bl sub_080003F0
_08033F68:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08033F74
	b _0803445E
_08033F74:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033F64
	bl sub_0805EFBC
	b _0803445E
_08033F82:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033FE2
	b _08033F90
_08033F8C:
	bl sub_080003F0
_08033F90:
	bl sub_0805F184
	cmp r0, #0
	bne _08033F8C
	b _08033F9E
_08033F9A:
	bl sub_080003F0
_08033F9E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033F9A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033FC0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033FC8
_08033FC0: .4byte 0x001401B8
_08033FC4:
	bl sub_080003F0
_08033FC8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08033FD4
	b _0803445E
_08033FD4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033FC4
	bl sub_0805EFBC
	b _0803445E
_08033FE2:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08034046
	b _08033FF0
_08033FEC:
	bl sub_080003F0
_08033FF0:
	bl sub_0805F184
	cmp r0, #0
	bne _08033FEC
	b _08033FFE
_08033FFA:
	bl sub_080003F0
_08033FFE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033FFA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034020
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034028
_08034020: .4byte 0x001401B7
_08034024:
	bl sub_080003F0
_08034028:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08034034
	b _0803445E
_08034034:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034024
	bl sub_0805EFBC
	b _0803445E
_08034042:
	bl sub_080003F0
_08034046:
	bl sub_0805F184
	cmp r0, #0
	bne _08034042
	b _08034054
_08034050:
	bl sub_080003F0
_08034054:
	bl sub_0805EF90
	cmp r0, #0
	bne _08034050
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034078
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034080
	.2byte 0x0000
_08034078: .4byte 0x001401B6
_0803407C:
	bl sub_080003F0
_08034080:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803408C
	b _0803445E
_0803408C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803407C
	bl sub_0805EFBC
	b _0803445E
_0803409A:
	bl sub_080003F0
_0803409E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803409A
	b _080340AC
_080340A8:
	bl sub_080003F0
_080340AC:
	bl sub_0805EF90
	cmp r0, #0
	bne _080340A8
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080340D0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080340D8
	.2byte 0x0000
_080340D0: .4byte 0x001401C0
_080340D4:
	bl sub_080003F0
_080340D8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080340EE
	bl sub_0800CDF8
	cmp r0, #0
	beq _080340D4
	bl sub_0805EFBC
_080340EE:
	movs r4, #2
	bl sub_0800CE30
	cmp r0, #0
	beq _0803410C
	ldr r0, _08034104
	ldr r0, [r0, #0]
	ldr r1, _08034108
	adds r0, r0, r1
	b _08034114
	.2byte 0x0000
_08034104: .4byte gUnk_03005CF4
_08034108: .4byte 0x000001BF
_0803410C:
	ldr r0, _08034130
	ldr r0, [r0, #0]
	ldr r2, _08034134
	adds r0, r0, r2
_08034114:
	strb r4, [r0, #0]
	movs r4, #3
	bl sub_0800CE30
	cmp r0, #0
	beq _08034138
	ldr r0, _08034130
	ldr r0, [r0, #0]
	movs r1, #0xdf
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r4, [r0, #0]
	b _0803445E
	.2byte 0x0000
_08034130: .4byte gUnk_03005CF4
_08034134: .4byte 0x000001B3
_08034138:
	ldr r0, _08034148
	ldr r0, [r0, #0]
	movs r2, #0xd9
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r4, [r0, #0]
	b _0803445E
	.2byte 0x0000
_08034148: .4byte gUnk_03005CF4
_0803414C:
	bl sub_080003F0
_08034150:
	bl sub_0805F184
	cmp r0, #0
	bne _0803414C
	b _0803415E
_0803415A:
	bl sub_080003F0
_0803415E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803415A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034180
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034188
_08034180: .4byte 0x001401C1
_08034184:
	bl sub_080003F0
_08034188:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08034194
	b _0803445E
_08034194:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034184
	bl sub_0805EFBC
	b _0803445E
_080341A2:
	bl sub_080003F0
_080341A6:
	bl sub_0805F184
	cmp r0, #0
	bne _080341A2
	b _080341B4
_080341B0:
	bl sub_080003F0
_080341B4:
	bl sub_0805EF90
	cmp r0, #0
	bne _080341B0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080341D8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080341E0
	.2byte 0x0000
_080341D8: .4byte 0x001401C2
_080341DC:
	bl sub_080003F0
_080341E0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080341F6
	bl sub_0800CDF8
	cmp r0, #0
	beq _080341DC
	bl sub_0805EFBC
_080341F6:
	adds r0, r5, #0
	movs r1, #0xb
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0
	bl sub_080290E4
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r5, #0
	movs r2, #0x88
	movs r3, #0x3c
	bl sub_08028AAC
	ldr r0, _08034250
	ldr r0, [r0, #0]
	ldr r2, _08034254
	adds r1, r0, r2
	movs r2, #0
_0803421E:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _08034232
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803421E
	bl sub_080003F0
	movs r1, #0
_08034232:
	cmp r1, #0
	beq _0803423A
	movs r0, #4
	strh r0, [r1, #0x36]
_0803423A:
	movs r4, #4
	bl sub_0800CE30
	cmp r0, #0
	beq _0803425C
	ldr r0, _08034250
	ldr r0, [r0, #0]
	ldr r1, _08034258
	adds r0, r0, r1
	b _08034264
	.2byte 0x0000
_08034250: .4byte gUnk_03005CF4
_08034254: .4byte 0x000007A4
_08034258: .4byte 0x000001BF
_0803425C:
	ldr r0, _08034298
	ldr r0, [r0, #0]
	ldr r2, _0803429C
	adds r0, r0, r2
_08034264:
	strb r4, [r0, #0]
	bl sub_080020F4
	adds r1, r0, #0
	cmp r1, #0
	beq _08034272
	b _0803445E
_08034272:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803431C
	movs r1, #2
	movs r2, #0x37
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	add r4, sp, #0xc
	adds r3, r4, #0
	movs r2, #0
_0803428C:
	adds r0, r3, r1
	strb r2, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _0803428C
	b _080342A4
_08034298: .4byte gUnk_03005CF4
_0803429C: .4byte 0x000001B3
_080342A0:
	bl sub_080003F0
_080342A4:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x90
	lsls r1, r1, #7
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _080342A0
	movs r1, #3
	movs r2, #0x2c
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
_080342C6:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _080342C6
	b _080342D6
_080342D2:
	bl sub_080003F0
_080342D6:
	movs r0, #0xc0
	lsls r0, r0, #6
	movs r1, #0xb0
	lsls r1, r1, #7
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _080342D2
	movs r1, #4
	movs r2, #0x27
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
_080342F8:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _080342F8
	b _08034308
_08034304:
	bl sub_080003F0
_08034308:
	movs r0, #0x80
	lsls r0, r0, #7
	movs r1, #0x90
	lsls r1, r1, #7
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _08034304
	b _0803445E
_0803431C:
	movs r1, #2
	movs r2, #0x30
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	add r4, sp, #0xc
	adds r3, r4, #0
	movs r2, #0
_0803432E:
	adds r0, r3, r1
	strb r2, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _0803432E
	b _0803433E
_0803433A:
	bl sub_080003F0
_0803433E:
	movs r0, #0x80
	lsls r0, r0, #6
	movs r1, #0x90
	lsls r1, r1, #7
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _0803433A
	movs r1, #3
	movs r2, #0x20
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
_08034360:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _08034360
	b _08034370
_0803436C:
	bl sub_080003F0
_08034370:
	movs r0, #0xc0
	lsls r0, r0, #6
	movs r1, #0xb0
	lsls r1, r1, #7
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _0803436C
	movs r1, #4
	movs r2, #0x1b
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0
_08034392:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _08034392
	b _080343A2
_0803439E:
	bl sub_080003F0
_080343A2:
	movs r0, #0x80
	lsls r0, r0, #7
	movs r1, #0x90
	lsls r1, r1, #7
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _0803439E
	b _0803445E
_080343B6:
	bl sub_080003F0
_080343BA:
	bl sub_0805F184
	cmp r0, #0
	bne _080343B6
	b _080343C8
_080343C4:
	bl sub_080003F0
_080343C8:
	bl sub_0805EF90
	cmp r0, #0
	bne _080343C4
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080343EC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080343F4
	.2byte 0x0000
_080343EC: .4byte 0x001401C3
_080343F0:
	bl sub_080003F0
_080343F4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803445E
	bl sub_0800CDF8
	cmp r0, #0
	beq _080343F0
	bl sub_0805EFBC
	b _0803445E
_0803440C:
	bl sub_080003F0
_08034410:
	bl sub_0805F184
	cmp r0, #0
	bne _0803440C
	b _0803441E
_0803441A:
	bl sub_080003F0
_0803441E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803441A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08034440
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08034448
_08034440: .4byte 0x001401C5
_08034444:
	bl sub_080003F0
_08034448:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803445E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08034444
	bl sub_0805EFBC
_0803445E:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08034484
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x18
	pop {r4, r5}
	pop {r0}
	bx r0
_08034484: .4byte gUnk_03003CE0
	thumb_func_end sub_08033C40
