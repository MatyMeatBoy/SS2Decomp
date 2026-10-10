	thumb_func_start sub_08001DF0
sub_08001DF0: @ 0x08001DF0
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _08001E24
	ldr r2, [r1, #0]
	lsrs r0, r2, #1
	movs r3, #1
	ands r0, r3
	mov r9, r1
	cmp r0, #0
	bne _08001E10
	b _0800206E
_08001E10:
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _08001E2C
	ldr r0, _08001E28
	ldr r0, [r0, #0]
	lsrs r0, r0, #7
	ands r0, r3
	b _08001E2E
	.2byte 0x0000
_08001E24: .4byte gUnk_030027D0
_08001E28: .4byte gUnk_03002730
_08001E2C:
	movs r0, #1
_08001E2E:
	cmp r0, #0
	bne _08001E34
	b _08001F98
_08001E34:
	movs r0, #0
	mov ip, r0
	mov r1, r9
	ldr r0, [r1, #0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001E6C
	movs r1, #0
	movs r2, #0
	ldr r0, _08001E68
	movs r4, #0x80
	lsls r4, r4, #1
	ldr r3, [r0, #0]
_08001E52:
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08001E5E
	adds r2, #1
_08001E5E:
	adds r1, #1
	cmp r1, #3
	bls _08001E52
	b _08001E6E
	.2byte 0x0000
_08001E68: .4byte gUnk_03002730
_08001E6C:
	movs r2, #1
_08001E6E:
	adds r7, r2, #0
	movs r2, #1
	cmp r2, r7
	bhs _08001EE0
	ldr r0, _08001E8C
	ldr r6, [r0, #0]
	movs r0, #2
	ands r6, r0
_08001E7E:
	cmp r6, #0
	beq _08001E9C
	ldr r0, _08001E90
	ldr r0, [r0, #0]
	lsls r0, r0, #0x1a
	lsrs r3, r0, #0x1e
	b _08001E9E
_08001E8C: .4byte gUnk_030027D0
_08001E90: .4byte 0x04000128
_08001E94:
	ldr r1, _08001E98
	b _08001EC4
_08001E98: .4byte gUnk_03002710
_08001E9C:
	movs r3, #0
_08001E9E:
	movs r1, #0
	adds r5, r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r4, _08001EB8
_08001EAA:
	cmp r2, r1
	bne _08001EBC
	cmp r2, r3
	beq _08001E94
	adds r1, r0, r4
	b _08001EC4
	.2byte 0x0000
_08001EB8: .4byte gUnk_03002770
_08001EBC:
	adds r1, #1
	cmp r1, #3
	bls _08001EAA
	movs r1, #0
_08001EC4:
	ldrb r0, [r1, #8]
	cmp r0, #0x4f
	bne _08001EDA
	ldrb r0, [r1, #9]
	cmp r0, #0x4b
	bne _08001EDA
	ldrb r0, [r1, #0xa]
	cmp r0, r8
	bne _08001EDA
	movs r0, #1
	add ip, r0
_08001EDA:
	adds r2, r5, #0
	cmp r2, r7
	blo _08001E7E
_08001EE0:
	subs r0, r7, #1
	cmp ip, r0
	blo _08001F40
	movs r3, #0
	mov r1, r9
	ldr r0, [r1, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08001F0C
	ldr r0, _08001F00
	ldr r0, [r0, #0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	b _08001F0E
	.2byte 0x0000
_08001F00: .4byte 0x04000128
_08001F04:
	ldr r1, _08001F08
	b _08001F2E
_08001F08: .4byte gUnk_03002710
_08001F0C:
	movs r0, #0
_08001F0E:
	movs r1, #0
	ldr r2, _08001F20
_08001F12:
	cmp r3, r1
	bne _08001F24
	cmp r1, r0
	beq _08001F04
	adds r1, r2, #0
	b _08001F2E
	.2byte 0x0000
_08001F20: .4byte gUnk_03002770
_08001F24:
	adds r2, #0x18
	adds r1, #1
	cmp r1, #3
	bls _08001F12
	movs r1, #0
_08001F2E:
	movs r0, #0x4e
	strb r0, [r1, #8]
	movs r0, #0x4f
	strb r0, [r1, #9]
	movs r0, #0x53
	strb r0, [r1, #0xa]
	strb r0, [r1, #0xb]
	movs r0, #0
	b _08002070
_08001F40:
	movs r3, #0
	mov r1, r9
	ldr r0, [r1, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08001F64
	ldr r0, _08001F58
	ldr r0, [r0, #0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	b _08001F66
_08001F58: .4byte 0x04000128
_08001F5C:
	ldr r1, _08001F60
	b _08001F86
_08001F60: .4byte gUnk_03002710
_08001F64:
	movs r0, #0
_08001F66:
	movs r1, #0
	ldr r2, _08001F78
_08001F6A:
	cmp r3, r1
	bne _08001F7C
	cmp r1, r0
	beq _08001F5C
	adds r1, r2, #0
	b _08001F86
	.2byte 0x0000
_08001F78: .4byte gUnk_03002770
_08001F7C:
	adds r2, #0x18
	adds r1, #1
	cmp r1, #3
	bls _08001F6A
	movs r1, #0
_08001F86:
	movs r0, #0x4f
	strb r0, [r1, #8]
	movs r0, #0x4b
	strb r0, [r1, #9]
	movs r0, #0x53
	strb r0, [r1, #0xa]
	mov r0, r8
	strb r0, [r1, #0xb]
	b _0800206E
_08001F98:
	mov r1, r9
	ldr r0, [r1, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08001FB4
	ldr r0, _08001FB0
	ldr r0, [r0, #0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	b _08001FB6
	.2byte 0x0000
_08001FB0: .4byte 0x04000128
_08001FB4:
	movs r0, #0
_08001FB6:
	adds r3, r0, #0
	mov r1, r9
	ldr r0, [r1, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08001FDC
	ldr r0, _08001FD0
	ldr r0, [r0, #0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	b _08001FDE
	.2byte 0x0000
_08001FD0: .4byte 0x04000128
_08001FD4:
	ldr r1, _08001FD8
	b _08001FFE
_08001FD8: .4byte gUnk_03002710
_08001FDC:
	movs r0, #0
_08001FDE:
	movs r1, #0
	ldr r2, _08001FF0
_08001FE2:
	cmp r3, r1
	bne _08001FF4
	cmp r1, r0
	beq _08001FD4
	adds r1, r2, #0
	b _08001FFE
	.2byte 0x0000
_08001FF0: .4byte gUnk_03002770
_08001FF4:
	adds r2, #0x18
	adds r1, #1
	cmp r1, #3
	bls _08001FE2
	movs r1, #0
_08001FFE:
	movs r0, #0x4f
	strb r0, [r1, #8]
	movs r0, #0x4b
	strb r0, [r1, #9]
	mov r0, r8
	strb r0, [r1, #0xa]
	movs r3, #0
	mov r1, r9
	ldr r0, [r1, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08002030
	ldr r0, _08002024
	ldr r0, [r0, #0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	b _08002032
	.2byte 0x0000
_08002024: .4byte 0x04000128
_08002028:
	ldr r1, _0800202C
	b _08002052
_0800202C: .4byte gUnk_03002710
_08002030:
	movs r0, #0
_08002032:
	movs r1, #0
	ldr r2, _08002044
_08002036:
	cmp r3, r1
	bne _08002048
	cmp r1, r0
	beq _08002028
	adds r1, r2, #0
	b _08002052
	.2byte 0x0000
_08002044: .4byte gUnk_03002770
_08002048:
	adds r2, #0x18
	adds r1, #1
	cmp r1, #3
	bls _08002036
	movs r1, #0
_08002052:
	ldrb r0, [r1, #8]
	cmp r0, #0x4f
	beq _0800206E
	ldrb r0, [r1, #9]
	cmp r0, #0x4b
	beq _0800206E
	ldrb r0, [r1, #0xa]
	cmp r0, #0x53
	beq _0800206E
	ldrb r0, [r1, #0xb]
	cmp r0, r8
	beq _0800206E
	movs r0, #0
	b _08002070
_0800206E:
	movs r0, #1
_08002070:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08001DF0
