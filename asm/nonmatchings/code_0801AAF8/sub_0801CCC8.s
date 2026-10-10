	thumb_func_start sub_0801CCC8
sub_0801CCC8: @ 0x0801CCC8
	push {lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0801CCF8
	adds r2, r1, r0
	ldr r0, _0801CCFC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xa]
	cmp r0, #8
	bne _0801CCE4
	movs r0, #6
_0801CCE4:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0801CCEE
	b _0801D020
_0801CCEE:
	lsls r0, r0, #2
	ldr r1, _0801CD00
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801CCF8: .4byte gUnk_03003CE0
_0801CCFC: .4byte gUnk_030034E0
_0801CD00: .4byte _0801CD04
_0801CD04:
	.4byte _0801CD24
_0801CD08: .4byte _0801CDB2
_0801CD0C: .4byte _0801CD3A
_0801CD10: .4byte _0801CDA2
_0801CD14: .4byte _0801CEB8
_0801CD18: .4byte _0801CF5C
_0801CD1C: .4byte _0801CE34
_0801CD20: .4byte _0801CF68
_0801CD24:
	ldrh r1, [r2, #0x10]
	cmp r1, #2
	bne _0801CD2C
	b _0801CF8C
_0801CD2C:
	cmp r1, #2
	bgt _0801CD32
	b _0801CF72
_0801CD32:
	cmp r1, #3
	beq _0801CD38
	b _0801D020
_0801CD38:
	b _0801CF40
_0801CD3A:
	ldrh r1, [r2, #0x10]
	cmp r1, #7
	bne _0801CD42
	b _0801CF7E
_0801CD42:
	cmp r1, #7
	bgt _0801CD4E
	cmp r1, #3
	bne _0801CD4C
	b _0801CF8C
_0801CD4C:
	b _0801D020
_0801CD4E:
	cmp r1, #9
	beq _0801CD54
	b _0801D020
_0801CD54:
	ldr r0, _0801CD70
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801CD74
	movs r1, #0
	b _0801CD86
_0801CD70: .4byte gUnk_030034E0
_0801CD74:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801CD86:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801CD98
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801CD9A
_0801CD98:
	movs r0, #0
_0801CD9A:
	cmp r0, #7
	beq _0801CDA0
	b _0801D020
_0801CDA0:
	b _0801D010
_0801CDA2:
	ldrh r1, [r2, #0x10]
	cmp r1, #2
	bne _0801CDAA
	b _0801CF7E
_0801CDAA:
	cmp r1, #4
	beq _0801CDB0
	b _0801D020
_0801CDB0:
	b _0801CF8C
_0801CDB2:
	ldrh r1, [r2, #0x10]
	cmp r1, #5
	bne _0801CDBA
	b _0801CF7E
_0801CDBA:
	cmp r1, #9
	beq _0801CDC0
	b _0801D020
_0801CDC0:
	ldr r0, _0801CDDC
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801CDE0
	movs r1, #0
	b _0801CDF2
_0801CDDC: .4byte gUnk_030034E0
_0801CDE0:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801CDF2:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801CE04
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801CE06
_0801CE04:
	movs r0, #0
_0801CE06:
	subs r0, #1
	cmp r0, #5
	bls _0801CE0E
	b _0801D020
_0801CE0E:
	lsls r0, r0, #2
	ldr r1, _0801CE18
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801CE18: .4byte _0801CE1C
_0801CE1C:
	.4byte _0801CF8C
_0801CE20: .4byte _0801CF40
_0801CE24: .4byte _0801CFF2
_0801CE28: .4byte _0801D000
_0801CE2C: .4byte _0801D010
_0801CE30: .4byte _0801CF4C
_0801CE34:
	ldrh r1, [r2, #0x10]
	cmp r1, #5
	bne _0801CE3C
	b _0801CF7E
_0801CE3C:
	cmp r1, #9
	beq _0801CE42
	b _0801D020
_0801CE42:
	ldr r0, _0801CE60
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801CE64
	movs r1, #0
	b _0801CE76
	.2byte 0x0000
_0801CE60: .4byte gUnk_030034E0
_0801CE64:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801CE76:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801CE88
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801CE8A
_0801CE88:
	movs r0, #0
_0801CE8A:
	subs r0, #0xd
	cmp r0, #5
	bls _0801CE92
	b _0801D020
_0801CE92:
	lsls r0, r0, #2
	ldr r1, _0801CE9C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801CE9C: .4byte _0801CEA0
_0801CEA0:
	.4byte _0801CF8C
_0801CEA4: .4byte _0801CF40
_0801CEA8: .4byte _0801CFF2
_0801CEAC: .4byte _0801D000
_0801CEB0: .4byte _0801D010
_0801CEB4: .4byte _0801CF4C
_0801CEB8:
	ldrh r1, [r2, #0x10]
	cmp r1, #5
	beq _0801CF7E
	cmp r1, #5
	bgt _0801CEC8
	cmp r1, #4
	beq _0801CF8C
	b _0801D020
_0801CEC8:
	cmp r1, #9
	beq _0801CECE
	b _0801D020
_0801CECE:
	ldr r0, _0801CEEC
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801CEF0
	movs r1, #0
	b _0801CF02
	.2byte 0x0000
_0801CEEC: .4byte gUnk_030034E0
_0801CEF0:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801CF02:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801CF14
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801CF16
_0801CF14:
	movs r0, #0
_0801CF16:
	subs r0, #8
	cmp r0, #4
	bls _0801CF1E
	b _0801D020
_0801CF1E:
	lsls r0, r0, #2
	ldr r1, _0801CF28
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801CF28: .4byte _0801CF2C
_0801CF2C:
	.4byte _0801CF40
_0801CF30: .4byte _0801CFF2
_0801CF34: .4byte _0801D000
_0801CF38: .4byte _0801D010
_0801CF3C: .4byte _0801CF4C
_0801CF40:
	ldr r0, _0801CF48
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x3c]
	b _0801D022
_0801CF48: .4byte gUnk_030034E0
_0801CF4C:
	ldr r0, _0801CF58
	ldr r0, [r0, #0]
	adds r0, #0x4c
	ldrh r0, [r0, #0]
	b _0801D022
	.2byte 0x0000
_0801CF58: .4byte gUnk_030034E0
_0801CF5C:
	ldrh r1, [r2, #0x10]
	cmp r1, #6
	beq _0801CF7E
	cmp r1, #8
	bne _0801D020
	b _0801CF8C
_0801CF68:
	ldrh r1, [r2, #0x10]
	cmp r1, #8
	beq _0801CF8C
	cmp r1, #8
	bgt _0801CF78
_0801CF72:
	cmp r1, #1
	beq _0801CF7E
	b _0801D020
_0801CF78:
	cmp r1, #9
	beq _0801CF98
	b _0801D020
_0801CF7E:
	ldr r0, _0801CF88
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x34]
	b _0801D022
	.2byte 0x0000
_0801CF88: .4byte gUnk_030034E0
_0801CF8C:
	ldr r0, _0801CF94
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x38]
	b _0801D022
_0801CF94: .4byte gUnk_030034E0
_0801CF98:
	ldr r0, _0801CFB4
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x79
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0801CFB8
	movs r1, #0
	b _0801CFCA
_0801CFB4: .4byte gUnk_030034E0
_0801CFB8:
	adds r0, r1, #0
	adds r0, #0x72
	ldrh r0, [r0, #0]
	movs r1, #0xb0
	lsls r1, r1, #0xc
	orrs r0, r1
	bl sub_08007290
	adds r1, r0, #0
_0801CFCA:
	adds r0, r1, #0
	adds r0, #0x9b
	ldrb r0, [r0, #0]
	cmp r0, #9
	bne _0801CFDC
	adds r0, r1, #0
	adds r0, #0xa7
	ldrb r0, [r0, #0]
	b _0801CFDE
_0801CFDC:
	movs r0, #0
_0801CFDE:
	cmp r0, #0x14
	beq _0801D010
	cmp r0, #0x14
	bgt _0801CFEC
	cmp r0, #0x13
	beq _0801CFF2
	b _0801D020
_0801CFEC:
	cmp r0, #0x15
	beq _0801D000
	b _0801D020
_0801CFF2:
	ldr r0, _0801CFFC
	ldr r0, [r0, #0]
	adds r0, #0x40
	ldrh r0, [r0, #0]
	b _0801D022
_0801CFFC: .4byte gUnk_030034E0
_0801D000:
	ldr r0, _0801D00C
	ldr r0, [r0, #0]
	adds r0, #0x44
	ldrh r0, [r0, #0]
	b _0801D022
	.2byte 0x0000
_0801D00C: .4byte gUnk_030034E0
_0801D010:
	ldr r0, _0801D01C
	ldr r0, [r0, #0]
	adds r0, #0x48
	ldrh r0, [r0, #0]
	b _0801D022
	.2byte 0x0000
_0801D01C: .4byte gUnk_030034E0
_0801D020:
	movs r0, #0
_0801D022:
	pop {r1}
	bx r1
	thumb_func_end sub_0801CCC8
