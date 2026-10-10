	thumb_func_start sub_0802DE0C
sub_0802DE0C: @ 0x0802DE0C
	push {r4, r5, r6, r7, lr}
	movs r0, #0x25
	movs r1, #0xb5
	movs r2, #0xec
	bl sub_080289C0
	adds r6, r0, #0
	ldr r0, _0802DE88
	ldr r0, [r0, #0]
	ldr r2, _0802DE8C
	adds r1, r0, r2
	movs r2, #0
_0802DE24:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802DE98
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DE24
	bl sub_080003F0
	movs r2, #0
_0802DE38:
	cmp r2, #0
	beq _0802DE4C
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802DE4C:
	ldr r4, _0802DE90
	ldr r0, _0802DE88
	ldr r0, [r0, #0]
	ldr r2, _0802DE8C
	adds r1, r0, r2
	movs r2, #0
_0802DE58:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802DE94
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DE58
	bl sub_080003F0
	movs r0, #0
_0802DE6C:
	cmp r0, #0
	beq _0802DE72
	str r4, [r0, #0x44]
_0802DE72:
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _0802DE9C
	ldr r0, _0802DE88
	ldr r1, [r0, #0]
	movs r2, #0xe2
	lsls r2, r2, #1
	b _0802DEA4
	.2byte 0x0000
_0802DE88: .4byte gUnk_03005CF4
_0802DE8C: .4byte 0x000007A4
_0802DE90: .4byte sub_08038D18
_0802DE94:
	adds r0, r1, #0
	b _0802DE6C
_0802DE98:
	adds r2, r1, #0
	b _0802DE38
_0802DE9C:
	ldr r0, _0802DEBC
	ldr r1, [r0, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
_0802DEA4:
	adds r1, r1, r2
	ldrb r1, [r1, #0]
	asrs r1, r1, #5
	ands r1, r4
	cmp r1, #0
	beq _0802DEC0
	adds r0, r6, #0
	movs r1, #1
	bl sub_0802939C
	b _0802DF16
	.2byte 0x0000
_0802DEBC: .4byte gUnk_03005CF4
_0802DEC0:
	ldr r7, _0802DECC
	ldr r0, [r0, #0]
	ldr r1, _0802DED0
	adds r4, r0, r1
	movs r5, #0
	b _0802DED8
_0802DECC: .4byte sub_08044E34
_0802DED0: .4byte 0x00000E34
_0802DED4:
	adds r5, #1
	adds r4, #0x28
_0802DED8:
	cmp r5, #0x1d
	bhi _0802DF16
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802DED4
	b _0802DEEC
_0802DEE8:
	bl sub_080003F0
_0802DEEC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802DEE8
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
_0802DF16:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802DF30
	ldr r0, _0802DF2C
	ldr r0, [r0, #0]
	adds r0, #0x80
	movs r1, #0x80
	ldr r4, [r0, #0]
	b _0802DF38
	.2byte 0x0000
_0802DF2C: .4byte gUnk_03005CF4
_0802DF30:
	ldr r0, _0802DF4C
	ldr r0, [r0, #0]
	movs r1, #0x80
	ldr r4, [r0, #0x78]
_0802DF38:
	ands r4, r1
	bl sub_0800CE30
	cmp r0, #0
	beq _0802DF5C
	ldr r1, _0802DF4C
	ldr r0, [r1, #0]
	ldr r2, _0802DF50
	b _0802DF62
	.2byte 0x0000
_0802DF4C: .4byte gUnk_03005CF4
_0802DF50: .4byte 0x000001C3
_0802DF54:
	adds r2, r1, #0
	b _0802DFA2
_0802DF58:
	adds r0, r1, #0
	b _0802DFD6
_0802DF5C:
	ldr r1, _0802DFE0
	ldr r0, [r1, #0]
	ldr r2, _0802DFE4
_0802DF62:
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	asrs r2, r0, #5
	movs r0, #1
	ands r2, r0
	adds r0, r1, #0
	cmp r4, #0
	beq _0802DF76
	cmp r2, #0
	beq _0802DFFC
_0802DF76:
	ldr r0, _0802DFE8
	movs r2, #0x8f
	lsls r2, r2, #1
	movs r1, #0xdd
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802DFE0
	ldr r0, [r0, #0]
	ldr r2, _0802DFEC
	adds r1, r0, r2
	movs r2, #0
_0802DF8E:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802DF54
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DF8E
	bl sub_080003F0
	movs r2, #0
_0802DFA2:
	cmp r2, #0
	beq _0802DFB6
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802DFB6:
	ldr r5, _0802DFF0
	ldr r0, _0802DFE0
	ldr r0, [r0, #0]
	ldr r2, _0802DFEC
	adds r1, r0, r2
	movs r2, #0
_0802DFC2:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802DF58
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802DFC2
	bl sub_080003F0
	movs r0, #0
_0802DFD6:
	cmp r0, #0
	beq _0802E052
	str r5, [r0, #0x44]
	b _0802E052
	.2byte 0x0000
_0802DFE0: .4byte gUnk_03005CF4
_0802DFE4: .4byte 0x000001B7
_0802DFE8: .4byte 0x00040029
_0802DFEC: .4byte 0x000007A4
_0802DFF0: .4byte sub_0803898C
_0802DFF4:
	adds r2, r1, #0
	b _0802E07E
_0802DFF8:
	adds r0, r1, #0
	b _0802E0B2
_0802DFFC:
	ldr r6, _0802E008
	ldr r0, [r0, #0]
	ldr r1, _0802E00C
	adds r4, r0, r1
	movs r5, #0
	b _0802E014
_0802E008: .4byte sub_08045E38
_0802E00C: .4byte 0x00000E34
_0802E010:
	adds r5, #1
	adds r4, #0x28
_0802E014:
	cmp r5, #0x1d
	bhi _0802E052
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802E010
	b _0802E028
_0802E024:
	bl sub_080003F0
_0802E028:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802E024
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
_0802E052:
	movs r1, #0x8f
	lsls r1, r1, #1
	movs r0, #0x33
	movs r2, #0xff
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802E0D4
	ldr r0, [r0, #0]
	ldr r2, _0802E0D8
	adds r1, r0, r2
	movs r2, #0
_0802E06A:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802DFF4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E06A
	bl sub_080003F0
	movs r2, #0
_0802E07E:
	cmp r2, #0
	beq _0802E092
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802E092:
	ldr r5, _0802E0DC
	ldr r0, _0802E0D4
	ldr r0, [r0, #0]
	ldr r2, _0802E0D8
	adds r1, r0, r2
	movs r2, #0
_0802E09E:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802DFF8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802E09E
	bl sub_080003F0
	movs r0, #0
_0802E0B2:
	cmp r0, #0
	beq _0802E0B8
	str r5, [r0, #0x44]
_0802E0B8:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802E108
	bl sub_0801AB24
	cmp r0, #1
	beq _0802E0EC
	cmp r0, #1
	bgt _0802E0E0
	cmp r0, #0
	beq _0802E0E6
	b _0802E100
	.2byte 0x0000
_0802E0D4: .4byte gUnk_03005CF4
_0802E0D8: .4byte 0x000007A4
_0802E0DC: .4byte sub_080392B4
_0802E0E0:
	cmp r0, #2
	beq _0802E0F4
	b _0802E100
_0802E0E6:
	bl sub_080576A8
	b _0802E100
_0802E0EC:
	movs r0, #6
	bl sub_0801AB50
	b _0802E100
_0802E0F4:
	movs r0, #6
	bl sub_0801AB90
	b _0802E100
_0802E0FC:
	bl sub_080003F0
_0802E100:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802E0FC
_0802E108:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0802DE0C
