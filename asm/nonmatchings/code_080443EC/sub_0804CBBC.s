	thumb_func_start sub_0804CBBC
sub_0804CBBC: @ 0x0804CBBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _0804CC7C
	ldr r0, [r0, #0]
	movs r3, #4
	ldr r2, [r0, #0x38]
	ands r3, r2
	cmp r3, #0
	beq _0804CBD8
	movs r3, #1
_0804CBD8:
	movs r4, #1
	adds r1, r2, #0
	ands r1, r4
	cmp r1, #0
	beq _0804CBE4
	movs r1, #1
_0804CBE4:
	cmp r1, #0
	beq _0804CBEA
	b _0804CD38
_0804CBEA:
	orrs r2, r4
	str r2, [r0, #0x38]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0804CC80
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	movs r0, #0x80
	lsls r0, r0, #3
	mov sl, r0
	ldr r0, _0804CC84
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	add r5, sp, #4
	mov r9, r4
	ldr r0, _0804CC88
	mov r8, r0
_0804CC26:
	mov r0, sp
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804CC26
	bl sub_0800CC98
	cmp r0, #0
	bne _0804CCB4
	bl sub_0801AB24
	cmp r0, #1
	beq _0804CC98
	cmp r0, #1
	bgt _0804CC8C
	cmp r0, #0
	beq _0804CC92
	b _0804CCAC
	.2byte 0x0000
_0804CC7C: .4byte gUnk_03005CF4
_0804CC80: .4byte gUnk_03003CE0
_0804CC84: .4byte gUnk_03003170
_0804CC88: .4byte 0xFF600000
_0804CC8C:
	cmp r0, #2
	beq _0804CCA0
	b _0804CCAC
_0804CC92:
	bl sub_080576A8
	b _0804CCAC
_0804CC98:
	movs r0, #6
	bl sub_0801AB50
	b _0804CCAC
_0804CCA0:
	movs r0, #6
	bl sub_0801AB90
	b _0804CCAC
_0804CCA8:
	bl sub_080003F0
_0804CCAC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804CCA8
_0804CCB4:
	ldr r6, _0804CCC4
	ldr r0, _0804CCC8
	ldr r0, [r0, #0]
	ldr r1, _0804CCCC
	adds r4, r0, r1
	movs r5, #0
	b _0804CCD4
	.2byte 0x0000
_0804CCC4: .4byte sub_0804D020
_0804CCC8: .4byte gUnk_03005CF4
_0804CCCC: .4byte 0x00000E34
_0804CCD0:
	adds r5, #1
	adds r4, #0x28
_0804CCD4:
	cmp r5, #0x1d
	bhi _0804CD12
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804CCD0
	b _0804CCE8
_0804CCE4:
	bl sub_080003F0
_0804CCE8:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804CCE4
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
_0804CD12:
	movs r1, #0xc4
	ldr r0, _0804CD30
	str r1, [r0, #0]
	ldr r0, _0804CD34
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0804CD26
	b _0804D006
_0804CD26:
	movs r0, #0xc4
	bl sub_08006CB4
	b _0804D006
	.2byte 0x0000
_0804CD30: .4byte gUnk_03005CF8
_0804CD34: .4byte gUnk_030027D0
_0804CD38:
	cmp r3, #0
	beq _0804CD3E
	b _0804CF94
_0804CD3E:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804CD80
	bl sub_0801AB24
	cmp r0, #1
	beq _0804CD64
	cmp r0, #1
	bgt _0804CD58
	cmp r0, #0
	beq _0804CD5E
	b _0804CD78
_0804CD58:
	cmp r0, #2
	beq _0804CD6C
	b _0804CD78
_0804CD5E:
	bl sub_080576A8
	b _0804CD78
_0804CD64:
	movs r0, #6
	bl sub_0801AB50
	b _0804CD78
_0804CD6C:
	movs r0, #6
	bl sub_0801AB90
	b _0804CD78
_0804CD74:
	bl sub_080003F0
_0804CD78:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804CD74
_0804CD80:
	movs r0, #0xe8
	movs r1, #0x8c
	movs r2, #0x96
	movs r3, #0x6e
	bl sub_0802A080
	ldr r6, _0804CD9C
	ldr r0, _0804CDA0
	ldr r0, [r0, #0]
	ldr r3, _0804CDA4
	adds r4, r0, r3
	movs r5, #0
	b _0804CDAC
	.2byte 0x0000
_0804CD9C: .4byte sub_0804D330
_0804CDA0: .4byte gUnk_03005CF4
_0804CDA4: .4byte 0x00000E34
_0804CDA8:
	adds r5, #1
	adds r4, #0x28
_0804CDAC:
	cmp r5, #0x1d
	bhi _0804CDEA
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804CDA8
	b _0804CDC0
_0804CDBC:
	bl sub_080003F0
_0804CDC0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804CDBC
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
	movs r1, #1
	bl sub_08000274
_0804CDEA:
	ldr r6, _0804CDF8
	ldr r0, _0804CDFC
	ldr r0, [r0, #0]
	ldr r3, _0804CE00
	adds r4, r0, r3
	movs r5, #0
	b _0804CE08
_0804CDF8: .4byte sub_0804D330
_0804CDFC: .4byte gUnk_03005CF4
_0804CE00: .4byte 0x00000E34
_0804CE04:
	adds r5, #1
	adds r4, #0x28
_0804CE08:
	cmp r5, #0x1d
	bhi _0804CE46
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804CE04
	b _0804CE1C
_0804CE18:
	bl sub_080003F0
_0804CE1C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804CE18
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
	movs r1, #2
	bl sub_08000274
_0804CE46:
	ldr r6, _0804CE54
	ldr r0, _0804CE58
	ldr r0, [r0, #0]
	ldr r3, _0804CE5C
	adds r4, r0, r3
	movs r5, #0
	b _0804CE64
_0804CE54: .4byte sub_0804D330
_0804CE58: .4byte gUnk_03005CF4
_0804CE5C: .4byte 0x00000E34
_0804CE60:
	adds r5, #1
	adds r4, #0x28
_0804CE64:
	cmp r5, #0x1d
	bhi _0804CEA2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804CE60
	b _0804CE78
_0804CE74:
	bl sub_080003F0
_0804CE78:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804CE74
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
	movs r1, #3
	bl sub_08000274
_0804CEA2:
	ldr r6, _0804CEB0
	ldr r0, _0804CEB4
	ldr r0, [r0, #0]
	ldr r3, _0804CEB8
	adds r4, r0, r3
	movs r5, #0
	b _0804CEC0
_0804CEB0: .4byte sub_0804D330
_0804CEB4: .4byte gUnk_03005CF4
_0804CEB8: .4byte 0x00000E34
_0804CEBC:
	adds r5, #1
	adds r4, #0x28
_0804CEC0:
	cmp r5, #0x1d
	bhi _0804CEFE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804CEBC
	b _0804CED4
_0804CED0:
	bl sub_080003F0
_0804CED4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804CED0
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
	movs r1, #4
	bl sub_08000274
_0804CEFE:
	ldr r6, _0804CF0C
	ldr r0, _0804CF10
	ldr r0, [r0, #0]
	ldr r3, _0804CF14
	adds r4, r0, r3
	movs r5, #0
	b _0804CF1C
_0804CF0C: .4byte sub_0804D330
_0804CF10: .4byte gUnk_03005CF4
_0804CF14: .4byte 0x00000E34
_0804CF18:
	adds r5, #1
	adds r4, #0x28
_0804CF1C:
	cmp r5, #0x1d
	bhi _0804CF5A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804CF18
	b _0804CF30
_0804CF2C:
	bl sub_080003F0
_0804CF30:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804CF2C
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
	movs r1, #5
	bl sub_08000274
_0804CF5A:
	ldr r0, _0804CF8C
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _0804CF90
	movs r6, #1
	movs r4, #0
_0804CF66:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0804CF7A
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0804CF7A
	strh r4, [r2, #0xc]
_0804CF7A:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _0804CF66
	bl sub_08019F04
	b _0804D006
_0804CF8C: .4byte gUnk_030056F4
_0804CF90: .4byte gUnk_030056FC
_0804CF94:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804CFD6
	bl sub_0801AB24
	cmp r0, #1
	beq _0804CFBA
	cmp r0, #1
	bgt _0804CFAE
	cmp r0, #0
	beq _0804CFB4
	b _0804CFCE
_0804CFAE:
	cmp r0, #2
	beq _0804CFC2
	b _0804CFCE
_0804CFB4:
	bl sub_080576A8
	b _0804CFCE
_0804CFBA:
	movs r0, #6
	bl sub_0801AB50
	b _0804CFCE
_0804CFC2:
	movs r0, #6
	bl sub_0801AB90
	b _0804CFCE
_0804CFCA:
	bl sub_080003F0
_0804CFCE:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804CFCA
_0804CFD6:
	ldr r0, _0804D018
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _0804D01C
	movs r6, #1
	movs r4, #0
_0804CFE2:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0804CFF6
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0804CFF6
	strh r4, [r2, #0xc]
_0804CFF6:
	adds r3, #1
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r2, r2, r1
	cmp r3, #4
	bls _0804CFE2
	bl sub_08019F04
_0804D006:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0804D018: .4byte gUnk_030056F4
_0804D01C: .4byte gUnk_030056FC
	thumb_func_end sub_0804CBBC
