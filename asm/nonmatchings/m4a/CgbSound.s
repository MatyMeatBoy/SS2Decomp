	thumb_func_start CgbSound
CgbSound: @ 0x080B7C3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _080B7C5C
	ldr r0, [r0, #0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _080B7C60
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _080B7C66
_080B7C5C: .4byte gUnk_03007FF0
_080B7C60:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_080B7C66:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_080B7C6C:
	ldrb r1, [r4, #0]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov r9, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov r8, r2
	cmp r0, #0
	bne _080B7C82
	b _080B8066
_080B7C82:
	cmp r6, #2
	beq _080B7CB4
	cmp r6, #2
	bgt _080B7C90
	cmp r6, #1
	beq _080B7C96
	b _080B7CEC
_080B7C90:
	cmp r6, #3
	beq _080B7CCC
	b _080B7CEC
_080B7C96:
	ldr r0, _080B7CA8
	str r0, [sp, #8]
	ldr r7, _080B7CAC
	ldr r2, _080B7CB0
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080B7CFC
_080B7CA8: .4byte 0x04000060
_080B7CAC: .4byte 0x04000062
_080B7CB0: .4byte 0x04000063
_080B7CB4:
	ldr r0, _080B7CC0
	str r0, [sp, #8]
	ldr r7, _080B7CC4
	ldr r2, _080B7CC8
	b _080B7CF4
	.2byte 0x0000
_080B7CC0: .4byte 0x04000061
_080B7CC4: .4byte 0x04000068
_080B7CC8: .4byte 0x04000069
_080B7CCC:
	ldr r0, _080B7CE0
	str r0, [sp, #8]
	ldr r7, _080B7CE4
	ldr r2, _080B7CE8
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _080B7CFC
	.2byte 0x0000
_080B7CE0: .4byte 0x04000070
_080B7CE4: .4byte 0x04000072
_080B7CE8: .4byte 0x04000073
_080B7CEC:
	ldr r0, _080B7D48
	str r0, [sp, #8]
	ldr r7, _080B7D4C
	ldr r2, _080B7D50
_080B7CF4:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_080B7CFC:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp, #0]
	adds r2, r1, #0
	movs r0, #0x80
	mov sl, r0
	ands r0, r2
	cmp r0, #0
	beq _080B7DF6
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r1, r6, #1
	mov r9, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov r8, r2
	cmp r5, #0
	bne _080B7E1A
	movs r0, #3
	strb r0, [r4, #0]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x1c]
	bl CgbModVol
	ldr r3, [sp, #0x1c]
	cmp r6, #2
	beq _080B7D60
	cmp r6, #2
	bgt _080B7D54
	cmp r6, #1
	beq _080B7D5A
	b _080B7DB8
	.2byte 0x0000
_080B7D48: .4byte 0x04000071
_080B7D4C: .4byte 0x04000078
_080B7D50: .4byte 0x04000079
_080B7D54:
	cmp r6, #3
	beq _080B7D6C
	b _080B7DB8
_080B7D5A:
	ldrb r0, [r4, #0x1f]
	ldr r1, [sp, #8]
	strb r0, [r1, #0]
_080B7D60:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r2, [r4, #0x1e]
	adds r0, r2, r0
	strb r0, [r7, #0]
	b _080B7DC4
_080B7D6C:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _080B7D94
	ldr r0, [sp, #8]
	strb r3, [r0, #0]
	ldr r1, _080B7DAC
	ldr r2, [r4, #0x24]
	ldr r0, [r2, #0]
	str r0, [r1, #0]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1, #0]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1, #0]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1, #0]
	str r2, [r4, #0x28]
_080B7D94:
	ldr r1, [sp, #8]
	strb r5, [r1, #0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7, #0]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080B7DB0
	movs r0, #0xc0
	strb r0, [r4, #0x1a]
	ldrb r1, [r4, #4]
	b _080B7DDA
	.2byte 0x0000
_080B7DAC: .4byte 0x04000090
_080B7DB0:
	mov r2, sl
	strb r2, [r4, #0x1a]
	ldrb r1, [r4, #4]
	b _080B7DDA
_080B7DB8:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7, #0]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r1, [sp, #0x10]
	strb r0, [r1, #0]
_080B7DC4:
	ldrb r1, [r4, #4]
	adds r0, r1, #0
	adds r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _080B7DD8
	movs r0, #0x40
_080B7DD8:
	strb r0, [r4, #0x1a]
_080B7DDA:
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov r9, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov r8, r1
	cmp r0, #0
	bne _080B7DF2
	b _080B7F26
_080B7DF2:
	strb r2, [r4, #9]
	b _080B7F54
_080B7DF6:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _080B7E28
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov r9, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov r8, r2
	cmp r0, #0
	ble _080B7E1A
	b _080B7F66
_080B7E1A:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4, #0]
	b _080B8062
_080B7E28:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov r9, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov r8, r2
	cmp r0, #0
	beq _080B7E68
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080B7E68
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4, #0]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080B7E9A
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080B7F54
	ldrb r2, [r4, #7]
	str r2, [sp, #0x18]
	b _080B7F54
_080B7E68:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _080B7F54
	cmp r6, #3
	bne _080B7E7A
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_080B7E7A:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4, #0]
	ands r0, r2
	cmp r0, #0
	bne _080B7EC6
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _080B7EC2
_080B7E9A:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B7E1A
	movs r0, #4
	ldrb r2, [r4, #0]
	orrs r0, r2
	strb r0, [r4, #0]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	b _080B7F66
_080B7EC2:
	ldrb r0, [r4, #7]
	b _080B7F52
_080B7EC6:
	cmp r0, #1
	bne _080B7ED2
_080B7ECA:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _080B7F52
_080B7ED2:
	cmp r0, #2
	bne _080B7F16
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _080B7F12
_080B7EEA:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _080B7EFA
	movs r0, #0xfc
	ldrb r1, [r4, #0]
	ands r0, r1
	strb r0, [r4, #0]
	b _080B7E9A
_080B7EFA:
	ldrb r0, [r4, #0]
	subs r0, #1
	strb r0, [r4, #0]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _080B7ECA
	movs r0, #8
	str r0, [sp, #0x18]
	b _080B7ECA
_080B7F12:
	ldrb r0, [r4, #5]
	b _080B7F52
_080B7F16:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _080B7F50
_080B7F26:
	ldrb r0, [r4, #0]
	subs r0, #1
	movs r2, #0
	strb r0, [r4, #0]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _080B7EEA
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _080B7F54
	ldrb r2, [r4, #5]
	str r2, [sp, #0x18]
	b _080B7F54
_080B7F50:
	ldrb r0, [r4, #4]
_080B7F52:
	strb r0, [r4, #0xb]
_080B7F54:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp, #0]
	cmp r0, #0
	bne _080B7F66
	subs r0, #1
	str r0, [sp, #0]
	b _080B7E68
_080B7F66:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _080B7FDE
	cmp r6, #3
	bgt _080B7FA6
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _080B7FA6
	ldr r0, _080B7F90
	ldrb r0, [r0, #0]
	cmp r0, #0x3f
	bgt _080B7F98
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _080B7F94
	b _080B7FA2
	.2byte 0x0000
_080B7F90: .4byte 0x04000089
_080B7F94: .4byte 0x000007FC
_080B7F98:
	cmp r0, #0x7f
	bgt _080B7FA6
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _080B7FB4
_080B7FA2:
	ands r0, r1
	str r0, [r4, #0x20]
_080B7FA6:
	cmp r6, #4
	beq _080B7FB8
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1, #0]
	b _080B7FC6
	.2byte 0x0000
_080B7FB4: .4byte 0x000007FE
_080B7FB8:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2, #0]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2, #0]
_080B7FC6:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1, #0]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1, #0]
_080B7FDE:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _080B8062
	ldr r1, _080B8028
	ldrb r0, [r1, #0]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1, #0]
	cmp r6, #3
	bne _080B8030
	ldr r0, _080B802C
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0, #0]
	ldr r2, [sp, #0xc]
	strb r0, [r2, #0]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _080B8062
	ldr r0, [sp, #8]
	strb r1, [r0, #0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1, #0]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _080B8062
	.2byte 0x0000
_080B8028: .4byte 0x04000081
_080B802C: .4byte gCgb3Vol
_080B8030:
	movs r0, #0xf
	ldr r1, [sp, #0x18]
	ands r0, r1
	ldrb r2, [r4, #9]
	lsls r1, r2, #4
	adds r0, r0, r1
	ldr r1, [sp, #0xc]
	strb r0, [r1, #0]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1, #0]
	cmp r6, #1
	bne _080B8062
	ldr r0, [sp, #8]
	ldrb r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080B8062
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1, #0]
_080B8062:
	movs r0, #0
	strb r0, [r4, #0x1d]
_080B8066:
	mov r6, r9
	mov r4, r8
	cmp r6, #4
	bgt _080B8070
	b _080B7C6C
_080B8070:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end CgbSound
