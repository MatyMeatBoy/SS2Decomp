	thumb_func_start sub_08013CEC
sub_08013CEC: @ 0x08013CEC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08013D90
	str r0, [sp, #0]
	ldr r0, [r5, #0x30]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08013D02
	b _08013E86
_08013D02:
	bl sub_0800CCCC
	adds r6, r5, #0
	adds r6, #0x8c
	cmp r0, #0
	beq _08013D10
	b _08013E68
_08013D10:
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08013D1E
	b _08013E68
_08013D1E:
	ldr r0, _08013D94
	ldr r4, [r0, #0]
	movs r7, #0
_08013D24:
	ldr r0, _08013D98
	movs r1, #1
	lsls r1, r7
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _08013D34
	b _08013E56
_08013D34:
	ldrh r0, [r4, #0xc]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _08013D42
	b _08013E56
_08013D42:
	ldr r1, _08013D9C
	adds r0, r4, r1
	ldrb r1, [r0, #0]
	ldr r0, _08013DA0
	ldr r2, [sp, #4]
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #4]
	add r3, sp, #4
	ldrh r0, [r3, #0]
	cmp r0, #0
	bne _08013D5C
	b _08013E56
_08013D5C:
	ldr r1, _08013DA4
	adds r0, r4, r1
	ldrb r1, [r0, #0]
	lsls r1, r1, #0x10
	ldr r0, _08013DA8
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #4]
	adds r1, r4, #0
	adds r1, #0x14
	adds r0, r6, #0
	mov r2, sp
	bl sub_08021FE0
	cmp r0, #0
	beq _08013E56
	movs r2, #0
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	cmp r0, #7
	bhi _08013E3E
	lsls r0, r0, #2
	ldr r1, _08013DAC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08013D90: .4byte 0x00100010
_08013D94: .4byte gUnk_030056F4
_08013D98: .4byte gUnk_030056FC
_08013D9C: .4byte 0x0000022E
_08013DA0: .4byte 0xFFFF0000
_08013DA4: .4byte 0x0000022F
_08013DA8: .4byte 0x0000FFFF
_08013DAC: .4byte _08013DB0
_08013DB0:
	.4byte _08013DD0
_08013DB4: .4byte _08013DDA
_08013DB8: .4byte _08013DEC
_08013DBC: .4byte _08013DF2
_08013DC0: .4byte _08013E04
_08013DC4: .4byte _08013E12
_08013DC8: .4byte _08013E1E
_08013DCC: .4byte _08013E28
_08013DD0:
	adds r0, r5, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, [r4, #0x18]
	b _08013E22
_08013DDA:
	adds r0, r5, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bge _08013E3E
	ldr r1, [r6, #0]
	ldr r0, [r4, #0x14]
	b _08013E0C
_08013DEC:
	ldr r1, [r6, #0]
	ldr r0, [r4, #0x14]
	b _08013E0C
_08013DF2:
	adds r0, r5, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	ble _08013E3E
	ldr r1, [r6, #0]
	ldr r0, [r4, #0x14]
	b _08013E0C
_08013E04:
	adds r0, r5, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, [r4, #0x18]
_08013E0C:
	cmp r1, r0
	ble _08013E3E
	b _08013E42
_08013E12:
	adds r0, r5, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	ble _08013E3E
_08013E1E:
	ldr r1, [r6, #0]
	ldr r0, [r4, #0x14]
_08013E22:
	cmp r1, r0
	bge _08013E3E
	b _08013E42
_08013E28:
	adds r0, r5, #0
	adds r0, #0x90
	ldr r1, [r0, #0]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bge _08013E3E
	ldr r1, [r6, #0]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bge _08013E3E
	movs r2, #1
_08013E3E:
	cmp r2, #0
	beq _08013E56
_08013E42:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0, #0]
	str r0, [r6, #0]
	adds r1, r5, #0
	adds r1, #0x90
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0, #0]
	str r0, [r1, #0]
_08013E56:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r4, r4, r0
	cmp r7, #4
	bhi _08013E68
	b _08013D24
_08013E68:
	adds r0, r6, #0
	bl sub_08057068
	cmp r0, #0
	beq _08013E86
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0, #0]
	str r0, [r6, #0]
	adds r1, r5, #0
	adds r1, #0x90
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0, #0]
	str r0, [r1, #0]
_08013E86:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08013CEC
