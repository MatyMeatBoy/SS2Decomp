	thumb_func_start sub_0802AA28
sub_0802AA28: @ 0x0802AA28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_0800CE30
	cmp r0, #0
	beq _0802AA50
	ldr r0, _0802AA48
	ldr r0, [r0, #0]
	ldr r1, _0802AA4C
	adds r0, r0, r1
	b _0802AA58
	.2byte 0x0000
_0802AA48: .4byte gUnk_03005CF4
_0802AA4C: .4byte 0x000001BF
_0802AA50:
	ldr r0, _0802AA80
	ldr r0, [r0, #0]
	ldr r2, _0802AA84
	adds r0, r0, r2
_0802AA58:
	ldrb r0, [r0, #0]
	adds r5, r0, #0
	cmp r5, #0xa
	bne _0802AA64
	bl _0802B860
_0802AA64:
	cmp r5, #1
	bgt _0802AA6A
	b _0802ABE4
_0802AA6A:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802AA88
	ldr r0, _0802AA80
	ldr r0, [r0, #0]
	movs r3, #0xe3
	lsls r3, r3, #1
	adds r0, r0, r3
	b _0802AA92
	.2byte 0x0000
_0802AA80: .4byte gUnk_03005CF4
_0802AA84: .4byte 0x000001B3
_0802AA88:
	ldr r0, _0802AAB4
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
	adds r0, r0, r1
_0802AA92:
	ldrb r0, [r0, #0]
	asrs r5, r0, #2
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	bne _0802AAEC
	bl sub_0800CE30
	cmp r0, #0
	beq _0802AAC0
	ldr r0, _0802AAB4
	ldr r0, [r0, #0]
	movs r3, #0xe3
	lsls r3, r3, #1
	adds r2, r0, r3
	b _0802AACA
	.2byte 0x0000
_0802AAB4: .4byte gUnk_03005CF4
_0802AAB8:
	adds r2, r1, #0
	b _0802AB16
_0802AABC:
	adds r0, r1, #0
	b _0802AB4A
_0802AAC0:
	ldr r0, _0802AB68
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
	adds r2, r0, r1
_0802AACA:
	ldrb r1, [r2, #0]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2, #0]
	movs r2, #0xc4
	lsls r2, r2, #1
	ldr r0, _0802AB6C
	str r2, [r0, #0]
	ldr r0, _0802AB70
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0802AAEC
	adds r0, r2, #0
	bl sub_08006CB4
_0802AAEC:
	ldr r0, _0802AB74
	movs r1, #0x78
	movs r2, #0x78
	bl sub_080289C0
	adds r6, r0, #0
	ldr r0, _0802AB68
	ldr r0, [r0, #0]
	ldr r2, _0802AB78
	adds r1, r0, r2
	movs r2, #0
_0802AB02:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802AAB8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AB02
	bl sub_080003F0
	movs r2, #0
_0802AB16:
	cmp r2, #0
	beq _0802AB2A
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802AB2A:
	ldr r4, _0802AB7C
	ldr r0, _0802AB68
	ldr r0, [r0, #0]
	ldr r3, _0802AB78
	adds r1, r0, r3
	movs r2, #0
_0802AB36:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802AABC
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AB36
	bl sub_080003F0
	movs r0, #0
_0802AB4A:
	cmp r0, #0
	beq _0802AB50
	str r4, [r0, #0x44]
_0802AB50:
	movs r4, #3
	bl sub_0800CE30
	cmp r0, #0
	beq _0802AB80
	ldr r0, _0802AB68
	ldr r0, [r0, #0]
	movs r1, #0xdf
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0802AB8A
	.2byte 0x0000
_0802AB68: .4byte gUnk_03005CF4
_0802AB6C: .4byte gUnk_03005CF8
_0802AB70: .4byte gUnk_030027D0
_0802AB74: .4byte 0x0003003D
_0802AB78: .4byte 0x000007A4
_0802AB7C: .4byte sub_080308B4
_0802AB80:
	ldr r0, _0802ABB4
	ldr r0, [r0, #0]
	movs r2, #0xd9
	lsls r2, r2, #1
	adds r0, r0, r2
_0802AB8A:
	strb r4, [r0, #0]
	movs r0, #0
	movs r1, #0xf
	bl sub_0802A590
	bl sub_0800CC98
	cmp r0, #0
	beq _0802ABA0
	bl _0802B88A
_0802ABA0:
	bl sub_0801AB24
	cmp r0, #1
	beq _0802ABC4
	cmp r0, #1
	bgt _0802ABB8
	cmp r0, #0
	beq _0802ABBE
	b _0802ABD8
	.2byte 0x0000
_0802ABB4: .4byte gUnk_03005CF4
_0802ABB8:
	cmp r0, #2
	beq _0802ABCC
	b _0802ABD8
_0802ABBE:
	bl sub_080576A8
	b _0802ABD8
_0802ABC4:
	movs r0, #6
	bl sub_0801AB50
	b _0802ABD8
_0802ABCC:
	movs r0, #6
	bl sub_0801AB90
	b _0802ABD8
_0802ABD4:
	bl sub_080003F0
_0802ABD8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802ABD4
	bl _0802B88A
_0802ABE4:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802AC04
	ldr r0, _0802ABF8
	ldr r0, [r0, #0]
	ldr r3, _0802ABFC
	adds r0, r0, r3
	b _0802AC0C
	.2byte 0x0000
_0802ABF8: .4byte gUnk_03005CF4
_0802ABFC: .4byte 0x000001C5
_0802AC00:
	adds r2, r1, #0
	b _0802AC40
_0802AC04:
	ldr r0, _0802AC70
	ldr r0, [r0, #0]
	ldr r1, _0802AC74
	adds r0, r0, r1
_0802AC0C:
	ldrb r5, [r0, #0]
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	beq _0802AC94
	ldr r0, _0802AC78
	movs r1, #0x32
	movs r2, #0x5e
	bl sub_080289C0
	mov r8, r0
	ldr r0, _0802AC70
	ldr r0, [r0, #0]
	ldr r2, _0802AC7C
	adds r1, r0, r2
	movs r2, #0
_0802AC2C:
	ldr r0, [r1, #0]
	cmp r0, r8
	beq _0802AC00
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AC2C
	bl sub_080003F0
	movs r2, #0
_0802AC40:
	cmp r2, #0
	beq _0802AC54
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802AC54:
	ldr r4, _0802AC80
	ldr r0, _0802AC70
	ldr r0, [r0, #0]
	ldr r3, _0802AC7C
	adds r1, r0, r3
	movs r2, #0
_0802AC60:
	ldr r0, [r1, #0]
	cmp r0, r8
	beq _0802AC88
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AC60
	b _0802ACEC
_0802AC70: .4byte gUnk_03005CF4
_0802AC74: .4byte 0x000001B9
_0802AC78: .4byte 0x00030020
_0802AC7C: .4byte 0x000007A4
_0802AC80: .4byte sub_0802F578
_0802AC84:
	adds r2, r1, #0
	b _0802ACBE
_0802AC88:
	adds r0, r1, #0
	b _0802ACF2
_0802AC8C:
	adds r2, r1, #0
	b _0802AD24
_0802AC90:
	adds r0, r1, #0
	b _0802AD5A
_0802AC94:
	movs r0, #0x20
	movs r1, #0x5d
	movs r2, #0x52
	bl sub_080289C0
	mov r8, r0
	ldr r0, _0802AD70
	ldr r0, [r0, #0]
	ldr r2, _0802AD74
	adds r1, r0, r2
	movs r2, #0
_0802ACAA:
	ldr r0, [r1, #0]
	cmp r0, r8
	beq _0802AC84
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802ACAA
	bl sub_080003F0
	movs r2, #0
_0802ACBE:
	cmp r2, #0
	beq _0802ACD2
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802ACD2:
	ldr r4, _0802AD78
	ldr r0, _0802AD70
	ldr r0, [r0, #0]
	ldr r3, _0802AD74
	adds r1, r0, r3
	movs r2, #0
_0802ACDE:
	ldr r0, [r1, #0]
	cmp r0, r8
	beq _0802AC88
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802ACDE
_0802ACEC:
	bl sub_080003F0
	movs r0, #0
_0802ACF2:
	cmp r0, #0
	beq _0802ACF8
	str r4, [r0, #0x44]
_0802ACF8:
	movs r0, #0x1f
	movs r1, #0x93
	movs r2, #0x52
	bl sub_080289C0
	str r0, [sp, #0]
	ldr r0, _0802AD70
	ldr r0, [r0, #0]
	ldr r2, _0802AD74
	adds r1, r0, r2
	movs r2, #0
_0802AD0E:
	ldr r0, [r1, #0]
	ldr r3, [sp, #0]
	cmp r0, r3
	beq _0802AC8C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AD0E
	bl sub_080003F0
	movs r2, #0
_0802AD24:
	cmp r2, #0
	beq _0802AD38
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802AD38:
	ldr r4, _0802AD7C
	ldr r0, _0802AD70
	ldr r0, [r0, #0]
	ldr r2, _0802AD74
	adds r1, r0, r2
	movs r2, #0
_0802AD44:
	ldr r0, [r1, #0]
	ldr r3, [sp, #0]
	cmp r0, r3
	beq _0802AC90
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AD44
	bl sub_080003F0
	movs r0, #0
_0802AD5A:
	cmp r0, #0
	beq _0802AD60
	str r4, [r0, #0x44]
_0802AD60:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802AD80
	ldr r0, _0802AD70
	ldr r0, [r0, #0]
	ldr r5, [r0, #0x7c]
	b _0802AD86
_0802AD70: .4byte gUnk_03005CF4
_0802AD74: .4byte 0x000007A4
_0802AD78: .4byte sub_0802F578
_0802AD7C: .4byte sub_0802FA80
_0802AD80:
	ldr r0, _0802AD9C
	ldr r0, [r0, #0]
	ldr r5, [r0, #0x74]
_0802AD86:
	movs r7, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _0802ADA0
	ldr r0, _0802AD9C
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0802ADAA
_0802AD9C: .4byte gUnk_03005CF4
_0802ADA0:
	ldr r0, _0802ADC8
	ldr r0, [r0, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r0, r0, r2
_0802ADAA:
	ldrb r0, [r0, #0]
	asrs r4, r0, #6
	ands r4, r7
	movs r7, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _0802ADD4
	ldr r0, _0802ADC8
	ldr r0, [r0, #0]
	movs r3, #0xe2
	lsls r3, r3, #1
	adds r0, r0, r3
	b _0802ADDE
	.2byte 0x0000
_0802ADC8: .4byte gUnk_03005CF4
_0802ADCC:
	adds r2, r1, #0
	b _0802AE1E
_0802ADD0:
	adds r0, r1, #0
	b _0802AE52
_0802ADD4:
	ldr r0, _0802AE6C
	ldr r0, [r0, #0]
	movs r1, #0xdc
	lsls r1, r1, #1
	adds r0, r0, r1
_0802ADDE:
	ldrb r0, [r0, #0]
	asrs r1, r0, #7
	ands r1, r7
	cmp r1, #0
	bne _0802ADF4
	movs r0, #0x20
	ands r5, r0
	cmp r5, #0
	bne _0802AEB0
	cmp r4, #0
	beq _0802AEB0
_0802ADF4:
	movs r0, #0x13
	movs r1, #0xb0
	movs r2, #0x60
	bl sub_080289C0
	adds r7, r0, #0
	ldr r0, _0802AE6C
	ldr r0, [r0, #0]
	ldr r2, _0802AE70
	adds r1, r0, r2
	movs r2, #0
_0802AE0A:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _0802ADCC
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AE0A
	bl sub_080003F0
	movs r2, #0
_0802AE1E:
	cmp r2, #0
	beq _0802AE32
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802AE32:
	ldr r4, _0802AE74
	ldr r0, _0802AE6C
	ldr r0, [r0, #0]
	ldr r3, _0802AE70
	adds r1, r0, r3
	movs r2, #0
_0802AE3E:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _0802ADD0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AE3E
	bl sub_080003F0
	movs r0, #0
_0802AE52:
	cmp r0, #0
	beq _0802AE58
	str r4, [r0, #0x44]
_0802AE58:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802AE7C
	ldr r0, _0802AE6C
	ldr r0, [r0, #0]
	ldr r1, _0802AE78
	adds r2, r0, r1
	b _0802AE84
	.2byte 0x0000
_0802AE6C: .4byte gUnk_03005CF4
_0802AE70: .4byte 0x000007A4
_0802AE74: .4byte sub_0802FEA0
_0802AE78: .4byte 0x000001C5
_0802AE7C:
	ldr r0, _0802AE90
	ldr r0, [r0, #0]
	ldr r3, _0802AE94
	adds r2, r0, r3
_0802AE84:
	movs r0, #0x80
	ldrb r1, [r2, #0]
	orrs r0, r1
	strb r0, [r2, #0]
	b _0802AF14
	.2byte 0x0000
_0802AE90: .4byte gUnk_03005CF4
_0802AE94: .4byte 0x000001B9
_0802AE98:
	adds r2, r1, #0
	b _0802AEDA
_0802AE9C:
	adds r0, r1, #0
	b _0802AF0E
_0802AEA0:
	adds r2, r1, #0
	b _0802AF40
_0802AEA4:
	adds r0, r1, #0
	b _0802AF76
_0802AEA8:
	adds r2, r1, #0
	b _0802AFA6
_0802AEAC:
	adds r0, r1, #0
	b _0802AFDC
_0802AEB0:
	ldr r2, _0802AFF8
	movs r0, #0x13
	adds r1, r2, #0
	bl sub_080289C0
	adds r7, r0, #0
	ldr r0, _0802AFFC
	ldr r0, [r0, #0]
	ldr r2, _0802B000
	adds r1, r0, r2
	movs r2, #0
_0802AEC6:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _0802AE98
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AEC6
	bl sub_080003F0
	movs r2, #0
_0802AEDA:
	cmp r2, #0
	beq _0802AEEE
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802AEEE:
	ldr r4, _0802B004
	ldr r0, _0802AFFC
	ldr r0, [r0, #0]
	ldr r3, _0802B000
	adds r1, r0, r3
	movs r2, #0
_0802AEFA:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _0802AE9C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AEFA
	bl sub_080003F0
	movs r0, #0
_0802AF0E:
	cmp r0, #0
	beq _0802AF14
	str r4, [r0, #0x44]
_0802AF14:
	movs r0, #0xa
	movs r1, #0x3c
	movs r2, #0x90
	bl sub_080289C0
	str r0, [sp, #4]
	ldr r0, _0802AFFC
	ldr r0, [r0, #0]
	ldr r2, _0802B000
	adds r1, r0, r2
	movs r2, #0
_0802AF2A:
	ldr r0, [r1, #0]
	ldr r3, [sp, #4]
	cmp r0, r3
	beq _0802AEA0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AF2A
	bl sub_080003F0
	movs r2, #0
_0802AF40:
	cmp r2, #0
	beq _0802AF54
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802AF54:
	ldr r4, _0802B008
	ldr r0, _0802AFFC
	ldr r0, [r0, #0]
	ldr r2, _0802B000
	adds r1, r0, r2
	movs r2, #0
_0802AF60:
	ldr r0, [r1, #0]
	ldr r3, [sp, #4]
	cmp r0, r3
	beq _0802AEA4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AF60
	bl sub_080003F0
	movs r0, #0
_0802AF76:
	cmp r0, #0
	beq _0802AF7C
	str r4, [r0, #0x44]
_0802AF7C:
	movs r0, #0x3f
	movs r1, #0xbe
	movs r2, #0xbe
	bl sub_080289C0
	mov sl, r0
	ldr r0, _0802AFFC
	ldr r0, [r0, #0]
	ldr r2, _0802B000
	adds r1, r0, r2
	movs r2, #0
_0802AF92:
	ldr r0, [r1, #0]
	cmp r0, sl
	beq _0802AEA8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AF92
	bl sub_080003F0
	movs r2, #0
_0802AFA6:
	cmp r2, #0
	beq _0802AFBA
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802AFBA:
	ldr r4, _0802B00C
	ldr r0, _0802AFFC
	ldr r0, [r0, #0]
	ldr r3, _0802B000
	adds r1, r0, r3
	movs r2, #0
_0802AFC6:
	ldr r0, [r1, #0]
	cmp r0, sl
	bne _0802AFCE
	b _0802AEAC
_0802AFCE:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802AFC6
	bl sub_080003F0
	movs r0, #0
_0802AFDC:
	cmp r0, #0
	beq _0802AFE2
	str r4, [r0, #0x44]
_0802AFE2:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B010
	ldr r0, _0802AFFC
	ldr r0, [r0, #0]
	movs r1, #0xdf
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0802B01A
	.2byte 0x0000
_0802AFF8: .4byte 0x0000270F
_0802AFFC: .4byte gUnk_03005CF4
_0802B000: .4byte 0x000007A4
_0802B004: .4byte sub_0802FEA0
_0802B008: .4byte sub_08030480
_0802B00C: .4byte sub_08030B28
_0802B010:
	ldr r0, _0802B02C
	ldr r0, [r0, #0]
	movs r2, #0xd9
	lsls r2, r2, #1
	adds r0, r0, r2
_0802B01A:
	ldrb r0, [r0, #0]
	adds r5, r0, #0
	cmp r5, #4
	bhi _0802B078
	lsls r0, r5, #2
	ldr r1, _0802B030
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0802B02C: .4byte gUnk_03005CF4
_0802B030: .4byte _0802B034
_0802B034:
	.4byte _0802B048
_0802B038: .4byte _0802B050
_0802B03C: .4byte _0802B054
_0802B040: .4byte _0802B05C
_0802B044: .4byte _0802B06C
_0802B048:
	ldr r0, _0802B04C
	b _0802B06E
_0802B04C: .4byte 0x0001003B
_0802B050:
	movs r0, #0x3a
	b _0802B06E
_0802B054:
	ldr r0, _0802B058
	b _0802B06E
_0802B058: .4byte 0x0002003C
_0802B05C:
	ldr r0, _0802B060
	b _0802B06E
_0802B060: .4byte 0x0003003D
_0802B064:
	adds r2, r1, #0
	b _0802B096
_0802B068:
	adds r0, r1, #0
	b _0802B0CA
_0802B06C:
	ldr r0, _0802B0E4
_0802B06E:
	movs r1, #0x78
	movs r2, #0x52
	bl sub_080289C0
	adds r6, r0, #0
_0802B078:
	ldr r0, _0802B0E8
	ldr r0, [r0, #0]
	ldr r3, _0802B0EC
	adds r1, r0, r3
	movs r2, #0
_0802B082:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802B064
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B082
	bl sub_080003F0
	movs r2, #0
_0802B096:
	cmp r2, #0
	beq _0802B0AA
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x10
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802B0AA:
	ldr r4, _0802B0F0
	ldr r0, _0802B0E8
	ldr r0, [r0, #0]
	ldr r2, _0802B0EC
	adds r1, r0, r2
	movs r2, #0
_0802B0B6:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802B068
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B0B6
	bl sub_080003F0
	movs r0, #0
_0802B0CA:
	cmp r0, #0
	beq _0802B0D0
	str r4, [r0, #0x44]
_0802B0D0:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B0F8
	ldr r0, _0802B0E8
	ldr r0, [r0, #0]
	ldr r3, _0802B0F4
	adds r0, r0, r3
	b _0802B100
	.2byte 0x0000
_0802B0E4: .4byte 0x00040040
_0802B0E8: .4byte gUnk_03005CF4
_0802B0EC: .4byte 0x000007A4
_0802B0F0: .4byte sub_080308B4
_0802B0F4: .4byte 0x000001C5
_0802B0F8:
	ldr r0, _0802B118
	ldr r0, [r0, #0]
	ldr r1, _0802B11C
	adds r0, r0, r1
_0802B100:
	ldrb r5, [r0, #0]
	movs r0, #1
	ands r5, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B124
	ldr r1, _0802B118
	ldr r0, [r1, #0]
	ldr r2, _0802B120
	adds r0, r0, r2
	b _0802B12C
_0802B118: .4byte gUnk_03005CF4
_0802B11C: .4byte 0x000001B9
_0802B120: .4byte 0x000001C5
_0802B124:
	ldr r1, _0802B14C
	ldr r0, [r1, #0]
	ldr r3, _0802B150
	adds r0, r0, r3
_0802B12C:
	ldrb r0, [r0, #0]
	asrs r4, r0, #6
	movs r0, #1
	ands r4, r0
	cmp r5, #0
	beq _0802B1A0
	cmp r4, #0
	bne _0802B1A0
	ldr r0, _0802B154
	mov r9, r0
	ldr r0, [r1, #0]
	ldr r1, _0802B158
	adds r4, r0, r1
	movs r5, #0
	b _0802B160
	.2byte 0x0000
_0802B14C: .4byte gUnk_03005CF4
_0802B150: .4byte 0x000001B9
_0802B154: .4byte sub_08045B68
_0802B158: .4byte 0x00000E34
_0802B15C:
	adds r5, #1
	adds r4, #0x28
_0802B160:
	cmp r5, #0x1d
	bhi _0802B1A0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802B15C
	b _0802B174
_0802B170:
	bl sub_080003F0
_0802B174:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802B170
	movs r0, #0x3c
	str r0, [r4, #8]
	mov r2, r9
	str r2, [r4, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r0, r1, r3
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08000274
_0802B1A0:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B1BC
	ldr r0, _0802B1B4
	ldr r0, [r0, #0]
	ldr r1, _0802B1B8
	adds r0, r0, r1
	b _0802B1C4
	.2byte 0x0000
_0802B1B4: .4byte gUnk_03005CF4
_0802B1B8: .4byte 0x000001C3
_0802B1BC:
	ldr r0, _0802B1E4
	ldr r0, [r0, #0]
	ldr r2, _0802B1E8
	adds r0, r0, r2
_0802B1C4:
	ldrb r5, [r0, #0]
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	beq _0802B20C
	bl sub_080400D4
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B1F0
	ldr r0, _0802B1E4
	ldr r0, [r0, #0]
	ldr r3, _0802B1EC
	adds r2, r0, r3
	b _0802B1F8
_0802B1E4: .4byte gUnk_03005CF4
_0802B1E8: .4byte 0x000001B7
_0802B1EC: .4byte 0x000001C3
_0802B1F0:
	ldr r0, _0802B204
	ldr r0, [r0, #0]
	ldr r1, _0802B208
	adds r2, r0, r1
_0802B1F8:
	movs r0, #2
	negs r0, r0
	ldrb r1, [r2, #0]
	ands r0, r1
	strb r0, [r2, #0]
	b _0802B88A
_0802B204: .4byte gUnk_03005CF4
_0802B208: .4byte 0x000001B7
_0802B20C:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B220
	ldr r1, _0802B21C
	ldr r0, [r1, #0]
	ldr r5, [r0, #0x7c]
	b _0802B226
_0802B21C: .4byte gUnk_03005CF4
_0802B220:
	ldr r1, _0802B254
	ldr r0, [r1, #0]
	ldr r5, [r0, #0x74]
_0802B226:
	ldr r0, [r1, #0]
	ldr r4, [r0, #0x50]
	cmp r5, r4
	bne _0802B230
	b _0802B7A4
_0802B230:
	bl sub_0800CE30
	adds r1, r5, #0
	eors r1, r4
	ldr r0, _0802B258
	ands r1, r0
	cmp r1, #0x10
	bne _0802B242
	b _0802B3DC
_0802B242:
	cmp r1, #0x10
	bgt _0802B268
	cmp r1, #2
	beq _0802B2E0
	cmp r1, #2
	bgt _0802B25C
	cmp r1, #1
	beq _0802B296
	b _0802B754
_0802B254: .4byte gUnk_03005CF4
_0802B258: .4byte 0x000003FF
_0802B25C:
	cmp r1, #4
	beq _0802B33C
	cmp r1, #8
	bne _0802B266
	b _0802B398
_0802B266:
	b _0802B754
_0802B268:
	cmp r1, #0x80
	bne _0802B26E
	b _0802B50C
_0802B26E:
	cmp r1, #0x80
	bgt _0802B280
	cmp r1, #0x20
	bne _0802B278
	b _0802B468
_0802B278:
	cmp r1, #0x40
	bne _0802B27E
	b _0802B4B0
_0802B27E:
	b _0802B754
_0802B280:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _0802B28A
	b _0802B56C
_0802B28A:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r1, r0
	bne _0802B294
	b _0802B5D8
_0802B294:
	b _0802B754
_0802B296:
	bl sub_080402F4
	movs r4, #2
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B2B8
	ldr r0, _0802B2B4
	ldr r1, [r0, #0]
	adds r1, #0x80
	ldr r0, [r1, #0]
	orrs r0, r4
	str r0, [r1, #0]
	b _0802B2C2
	.2byte 0x0000
_0802B2B4: .4byte gUnk_03005CF4
_0802B2B8:
	ldr r0, _0802B2D8
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x78]
	orrs r0, r4
	str r0, [r1, #0x78]
_0802B2C2:
	bl sub_0800CE30
	cmp r0, #0
	bne _0802B2CC
	b _0802B5B8
_0802B2CC:
	ldr r0, _0802B2D8
	ldr r0, [r0, #0]
	ldr r2, _0802B2DC
	adds r0, r0, r2
	b _0802B5C0
	.2byte 0x0000
_0802B2D8: .4byte gUnk_03005CF4
_0802B2DC: .4byte 0x000001C5
_0802B2E0:
	bl sub_08040530
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B300
	ldr r0, _0802B2FC
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #4
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0802B30C
_0802B2FC: .4byte gUnk_03005CF4
_0802B300:
	ldr r0, _0802B320
	ldr r2, [r0, #0]
	movs r1, #4
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0802B30C:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B328
	ldr r0, _0802B320
	ldr r0, [r0, #0]
	ldr r1, _0802B324
	adds r0, r0, r1
	b _0802B5C0
	.2byte 0x0000
_0802B320: .4byte gUnk_03005CF4
_0802B324: .4byte 0x000001C5
_0802B328:
	ldr r0, _0802B334
	ldr r0, [r0, #0]
	ldr r2, _0802B338
	adds r0, r0, r2
	b _0802B5C0
	.2byte 0x0000
_0802B334: .4byte gUnk_03005CF4
_0802B338: .4byte 0x000001B9
_0802B33C:
	adds r0, r6, #0
	bl sub_0804076C
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B360
	ldr r0, _0802B35C
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #8
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0802B36C
	.2byte 0x0000
_0802B35C: .4byte gUnk_03005CF4
_0802B360:
	ldr r0, _0802B37C
	ldr r2, [r0, #0]
	movs r1, #8
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0802B36C:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B384
	ldr r0, _0802B37C
	ldr r0, [r0, #0]
	ldr r3, _0802B380
	b _0802B5BE
_0802B37C: .4byte gUnk_03005CF4
_0802B380: .4byte 0x000001C5
_0802B384:
	ldr r0, _0802B390
	ldr r0, [r0, #0]
	ldr r1, _0802B394
	adds r0, r0, r1
	b _0802B5C0
	.2byte 0x0000
_0802B390: .4byte gUnk_03005CF4
_0802B394: .4byte 0x000001B9
_0802B398:
	ldr r0, _0802B3D4
	ldr r0, [r0, #0]
	ldr r2, _0802B3D8
	adds r1, r0, r2
	movs r2, #0
_0802B3A2:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802B3B6
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B3A2
	bl sub_080003F0
	movs r1, #0
_0802B3B6:
	cmp r1, #0
	beq _0802B3BE
	movs r0, #4
	strh r0, [r1, #0x36]
_0802B3BE:
	mov r0, r8
	adds r1, r7, #0
	bl sub_08041030
	bl sub_0800CE30
	movs r0, #1
	bl sub_0805C7B8
	b _0802B796
	.2byte 0x0000
_0802B3D4: .4byte gUnk_03005CF4
_0802B3D8: .4byte 0x000007A4
_0802B3DC:
	adds r0, r6, #0
	bl sub_08041B7C
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B400
	ldr r0, _0802B3FC
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x20
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0802B40C
	.2byte 0x0000
_0802B3FC: .4byte gUnk_03005CF4
_0802B400:
	ldr r0, _0802B428
	ldr r2, [r0, #0]
	movs r1, #0x20
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0802B40C:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B42C
	ldr r0, _0802B428
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0802B43A
	.2byte 0x0000
_0802B428: .4byte gUnk_03005CF4
_0802B42C:
	ldr r0, _0802B44C
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0802B43A:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B454
	ldr r0, _0802B44C
	ldr r0, [r0, #0]
	ldr r3, _0802B450
	b _0802B5BE
	.2byte 0x0000
_0802B44C: .4byte gUnk_03005CF4
_0802B450: .4byte 0x000001C5
_0802B454:
	ldr r0, _0802B460
	ldr r0, [r0, #0]
	ldr r1, _0802B464
	adds r0, r0, r1
	b _0802B5C0
	.2byte 0x0000
_0802B460: .4byte gUnk_03005CF4
_0802B464: .4byte 0x000001B9
_0802B468:
	bl sub_08041E8C
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B488
	ldr r0, _0802B484
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x40
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0802B494
_0802B484: .4byte gUnk_03005CF4
_0802B488:
	ldr r0, _0802B4A8
	ldr r2, [r0, #0]
	movs r1, #0x40
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0802B494:
	bl sub_0800CE30
	cmp r0, #0
	bne _0802B49E
	b _0802B5B8
_0802B49E:
	ldr r0, _0802B4A8
	ldr r0, [r0, #0]
	ldr r2, _0802B4AC
	adds r0, r0, r2
	b _0802B5C0
_0802B4A8: .4byte gUnk_03005CF4
_0802B4AC: .4byte 0x000001C5
_0802B4B0:
	bl sub_080420C8
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B4D0
	ldr r0, _0802B4CC
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0802B4DC
_0802B4CC: .4byte gUnk_03005CF4
_0802B4D0:
	ldr r0, _0802B4F0
	ldr r2, [r0, #0]
	movs r1, #0x80
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0802B4DC:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B4F8
	ldr r0, _0802B4F0
	ldr r0, [r0, #0]
	ldr r1, _0802B4F4
	adds r0, r0, r1
	b _0802B5C0
	.2byte 0x0000
_0802B4F0: .4byte gUnk_03005CF4
_0802B4F4: .4byte 0x000001C5
_0802B4F8:
	ldr r0, _0802B504
	ldr r0, [r0, #0]
	ldr r2, _0802B508
	adds r0, r0, r2
	b _0802B5C0
	.2byte 0x0000
_0802B504: .4byte gUnk_03005CF4
_0802B508: .4byte 0x000001B9
_0802B50C:
	bl sub_08042390
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B530
	ldr r0, _0802B52C
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0802B53E
	.2byte 0x0000
_0802B52C: .4byte gUnk_03005CF4
_0802B530:
	ldr r0, _0802B550
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0802B53E:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B558
	ldr r0, _0802B550
	ldr r0, [r0, #0]
	ldr r3, _0802B554
	b _0802B5BE
	.2byte 0x0000
_0802B550: .4byte gUnk_03005CF4
_0802B554: .4byte 0x000001C5
_0802B558:
	ldr r0, _0802B564
	ldr r0, [r0, #0]
	ldr r1, _0802B568
	adds r0, r0, r1
	b _0802B5C0
	.2byte 0x0000
_0802B564: .4byte gUnk_03005CF4
_0802B568: .4byte 0x000001B9
_0802B56C:
	adds r0, r6, #0
	bl sub_080425CC
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B590
	ldr r0, _0802B58C
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #2
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0802B59E
_0802B58C: .4byte gUnk_03005CF4
_0802B590:
	ldr r0, _0802B5B0
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0802B59E:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B5B8
	ldr r0, _0802B5B0
	ldr r0, [r0, #0]
	ldr r2, _0802B5B4
	adds r0, r0, r2
	b _0802B5C0
_0802B5B0: .4byte gUnk_03005CF4
_0802B5B4: .4byte 0x000001C5
_0802B5B8:
	ldr r0, _0802B5D0
	ldr r0, [r0, #0]
	ldr r3, _0802B5D4
_0802B5BE:
	adds r0, r0, r3
_0802B5C0:
	ldrb r0, [r0, #0]
	asrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	adds r0, r1, #0
	bl sub_0805C7B8
	b _0802B796
_0802B5D0: .4byte gUnk_03005CF4
_0802B5D4: .4byte 0x000001B9
_0802B5D8:
	adds r0, r6, #0
	bl sub_08042938
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B5F8
	ldr r0, _0802B5F0
	ldr r0, [r0, #0]
	ldr r1, _0802B5F4
	adds r0, r0, r1
	b _0802B600
_0802B5F0: .4byte gUnk_03005CF4
_0802B5F4: .4byte 0x000001C5
_0802B5F8:
	ldr r0, _0802B61C
	ldr r0, [r0, #0]
	ldr r2, _0802B620
	adds r0, r0, r2
_0802B600:
	ldrb r0, [r0, #0]
	asrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	adds r0, r1, #0
	bl sub_0805C7B8
	ldr r0, _0802B61C
	ldr r0, [r0, #0]
	str r5, [r0, #0x50]
	movs r0, #0x1e
	bl sub_0801AA8C
	b _0802B628
_0802B61C: .4byte gUnk_03005CF4
_0802B620: .4byte 0x000001B9
_0802B624:
	bl sub_080003F0
_0802B628:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802B624
	ldr r0, _0802B72C
	ldr r0, [r0, #0]
	ldr r3, _0802B730
	adds r1, r0, r3
	movs r2, #0
_0802B63A:
	ldr r0, [r1, #0]
	cmp r0, r8
	beq _0802B64E
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B63A
	bl sub_080003F0
	movs r1, #0
_0802B64E:
	cmp r1, #0
	beq _0802B656
	movs r0, #4
	strh r0, [r1, #0x36]
_0802B656:
	ldr r0, _0802B72C
	ldr r0, [r0, #0]
	ldr r2, _0802B730
	adds r1, r0, r2
	movs r2, #0
_0802B660:
	ldr r0, [r1, #0]
	ldr r3, [sp, #0]
	cmp r0, r3
	beq _0802B676
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B660
	bl sub_080003F0
	movs r1, #0
_0802B676:
	cmp r1, #0
	beq _0802B67E
	movs r0, #4
	strh r0, [r1, #0x36]
_0802B67E:
	ldr r0, _0802B72C
	ldr r0, [r0, #0]
	ldr r2, _0802B730
	adds r1, r0, r2
	movs r2, #0
_0802B688:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _0802B69C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B688
	bl sub_080003F0
	movs r1, #0
_0802B69C:
	cmp r1, #0
	beq _0802B6A4
	movs r0, #4
	strh r0, [r1, #0x36]
_0802B6A4:
	ldr r0, _0802B72C
	ldr r0, [r0, #0]
	ldr r3, _0802B730
	adds r1, r0, r3
	movs r2, #0
_0802B6AE:
	ldr r0, [r1, #0]
	ldr r3, [sp, #4]
	cmp r0, r3
	beq _0802B6C4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B6AE
	bl sub_080003F0
	movs r1, #0
_0802B6C4:
	cmp r1, #0
	beq _0802B6CC
	movs r0, #4
	strh r0, [r1, #0x36]
_0802B6CC:
	ldr r0, _0802B72C
	ldr r0, [r0, #0]
	ldr r2, _0802B730
	adds r1, r0, r2
	movs r2, #0
_0802B6D6:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802B6EA
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B6D6
	bl sub_080003F0
	movs r1, #0
_0802B6EA:
	cmp r1, #0
	beq _0802B6F2
	movs r0, #4
	strh r0, [r1, #0x36]
_0802B6F2:
	ldr r0, _0802B72C
	ldr r0, [r0, #0]
	ldr r3, _0802B730
	adds r1, r0, r3
	movs r2, #0
_0802B6FC:
	ldr r0, [r1, #0]
	cmp r0, sl
	beq _0802B710
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B6FC
	bl sub_080003F0
	movs r1, #0
_0802B710:
	cmp r1, #0
	beq _0802B718
	movs r0, #4
	strh r0, [r1, #0x36]
_0802B718:
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B738
	ldr r0, _0802B72C
	ldr r0, [r0, #0]
	ldr r1, _0802B734
	adds r0, r0, r1
	b _0802B740
_0802B72C: .4byte gUnk_03005CF4
_0802B730: .4byte 0x000007A4
_0802B734: .4byte 0x000001BF
_0802B738:
	ldr r0, _0802B74C
	ldr r0, [r0, #0]
	ldr r2, _0802B750
	adds r0, r0, r2
_0802B740:
	strb r4, [r0, #0]
	movs r0, #0
	movs r1, #3
	bl sub_0802A228
	b _0802B88A
_0802B74C: .4byte gUnk_03005CF4
_0802B750: .4byte 0x000001B3
_0802B754:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802B796
	bl sub_0801AB24
	cmp r0, #1
	beq _0802B77A
	cmp r0, #1
	bgt _0802B76E
	cmp r0, #0
	beq _0802B774
	b _0802B78E
_0802B76E:
	cmp r0, #2
	beq _0802B782
	b _0802B78E
_0802B774:
	bl sub_080576A8
	b _0802B78E
_0802B77A:
	movs r0, #6
	bl sub_0801AB50
	b _0802B78E
_0802B782:
	movs r0, #6
	bl sub_0801AB90
	b _0802B78E
_0802B78A:
	bl sub_080003F0
_0802B78E:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802B78A
_0802B796:
	ldr r0, _0802B7A0
	ldr r0, [r0, #0]
	str r5, [r0, #0x50]
	b _0802B800
	.2byte 0x0000
_0802B7A0: .4byte gUnk_03005CF4
_0802B7A4:
	movs r4, #1
	b _0802B7B2
_0802B7A8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802B7BE
_0802B7B2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802B7A8
_0802B7BE:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802B800
	bl sub_0801AB24
	cmp r0, #1
	beq _0802B7E4
	cmp r0, #1
	bgt _0802B7D8
	cmp r0, #0
	beq _0802B7DE
	b _0802B7F8
_0802B7D8:
	cmp r0, #2
	beq _0802B7EC
	b _0802B7F8
_0802B7DE:
	bl sub_080576A8
	b _0802B7F8
_0802B7E4:
	movs r0, #6
	bl sub_0801AB50
	b _0802B7F8
_0802B7EC:
	movs r0, #6
	bl sub_0801AB90
	b _0802B7F8
_0802B7F4:
	bl sub_080003F0
_0802B7F8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802B7F4
_0802B800:
	ldr r6, _0802B810
	ldr r0, _0802B814
	ldr r0, [r0, #0]
	ldr r3, _0802B818
	adds r4, r0, r3
	movs r5, #0
	b _0802B820
	.2byte 0x0000
_0802B810: .4byte sub_08044EB4
_0802B814: .4byte gUnk_03005CF4
_0802B818: .4byte 0x00000E34
_0802B81C:
	adds r5, #1
	adds r4, #0x28
_0802B820:
	cmp r5, #0x1d
	bhi _0802B88A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802B81C
	b _0802B834
_0802B830:
	bl sub_080003F0
_0802B834:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802B830
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
	adds r1, r7, #0
	bl sub_08000274
	b _0802B88A
_0802B860:
	movs r4, #5
	bl sub_0800CE30
	cmp r0, #0
	beq _0802B87C
	ldr r0, _0802B874
	ldr r0, [r0, #0]
	ldr r3, _0802B878
	adds r0, r0, r3
	b _0802B884
_0802B874: .4byte gUnk_03005CF4
_0802B878: .4byte 0x000001BF
_0802B87C:
	ldr r0, _0802B89C
	ldr r0, [r0, #0]
	ldr r1, _0802B8A0
	adds r0, r0, r1
_0802B884:
	strb r4, [r0, #0]
	bl sub_08042BB0
_0802B88A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0802B89C: .4byte gUnk_03005CF4
_0802B8A0: .4byte 0x000001B3
	thumb_func_end sub_0802AA28
