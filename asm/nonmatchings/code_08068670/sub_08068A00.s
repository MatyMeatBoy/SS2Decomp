	thumb_func_start sub_08068A00
sub_08068A00: @ 0x08068A00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r6, r2, #0
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	bl sub_08058DB0
	cmp r0, #0
	bne _08068A2C
	bl sub_0800CDF8
	cmp r0, #0
	beq _08068A30
_08068A2C:
	movs r0, #0
	b _08068F8C
_08068A30:
	ldr r2, [r6, #0]
	cmp r2, #3
	bhi _08068A4C
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08068A48
	adds r1, r1, r0
	str r1, [sp, #0x14]
	b _08068A62
	.2byte 0x0000
_08068A48: .4byte gUnk_03003CE0
_08068A4C:
	ldr r0, _08068A74
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	subs r1, r1, r2
	lsls r1, r1, #5
	ldr r2, _08068A78
	adds r1, r1, r2
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [sp, #0x10]
_08068A62:
	movs r3, #0
	mov r8, r3
	ldr r0, [r6, #0xc]
	cmp r0, #0xc
	beq _08068A7C
	cmp r0, #0xd
	bne _08068A82
	movs r0, #0x16
	b _08068A8C
_08068A74: .4byte gUnk_030056F4
_08068A78: .4byte 0xFFFFF480
_08068A7C:
	movs r1, #0x20
	str r1, [sp, #0x18]
	b _08068A8E
_08068A82:
	ldr r1, _08068B48
	ldr r0, [r6, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
_08068A8C:
	str r0, [sp, #0x18]
_08068A8E:
	ldr r0, [r6, #8]
	cmp r0, #3
	bhi _08068A96
	b _08068CF2
_08068A96:
	movs r2, #0
	mov r9, r2
	movs r3, #1
	mov sl, r3
	mov r0, sl
	ldr r1, [sp, #0x1c]
	lsls r0, r1
	mov sl, r0
_08068AA6:
	ldr r0, _08068B4C
	movs r1, #1
	mov r2, r9
	lsls r1, r2
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _08068AB8
	b _08068CE6
_08068AB8:
	ldr r1, _08068B50
	lsls r0, r2, #1
	add r0, r9
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r5, r1, r0
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r5, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08068AD6
	b _08068CE6
_08068AD6:
	ldrh r0, [r5, #0xc]
	cmp r0, #0xb
	bne _08068ADE
	b _08068CE6
_08068ADE:
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #8]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x18]
	ldr r2, [sp, #0xc]
	subs r0, r0, r2
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0
	bge _08068AF8
	negs r1, r1
_08068AF8:
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	asrs r2, r0, #0x10
	cmp r1, r2
	ble _08068B04
	b _08068CE6
_08068B04:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08068B0E
	negs r0, r0
_08068B0E:
	cmp r0, r2
	ble _08068B14
	b _08068CE6
_08068B14:
	ldr r0, [r6, #0]
	ldr r3, [sp, #0x1c]
	cmp r3, r0
	beq _08068B1E
	b _08068C18
_08068B1E:
	ldr r0, [sp, #0x14]
	adds r0, #0xdc
	ldr r2, [r5, #0x54]
	ldr r1, [r0, #0]
	adds r7, r0, #0
	cmp r2, r1
	bne _08068B2E
	b _08068CDE
_08068B2E:
	ldrh r0, [r5, #0]
	adds r0, #4
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	cmp r0, #4
	beq _08068B54
	cmp r0, #7
	beq _08068BB4
	adds r0, r6, #0
	bl sub_080694AC
	b _08068BE8
	.2byte 0x0000
_08068B48: .4byte gUnk_084EC17C
_08068B4C: .4byte gUnk_030056FC
_08068B50: .4byte gUnk_030056F4
_08068B54:
	ldr r1, _08068B84
	adds r0, r5, r1
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne _08068B8C
	adds r0, r6, #0
	movs r1, #0
	bl sub_08068F9C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #4
	subs r0, r0, r1
	movs r1, #0xa
	bl __divsi3
	adds r2, r0, #0
	ldrh r0, [r5, #0]
	ldr r3, _08068B88
	ldrh r1, [r3, #0]
	ldr r3, [r6, #0x14]
	b _08068BCE
	.2byte 0x0000
_08068B84: .4byte 0x00000226
_08068B88: .4byte gUnk_084EBF7E
_08068B8C:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08068F9C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r0, [r5, #0]
	ldr r3, _08068BB0
	ldrh r1, [r3, #0]
	ldr r3, [r6, #0x14]
	movs r4, #0
	str r4, [sp, #0]
	str r4, [sp, #4]
	bl sub_08029B98
	b _08068BD8
	.2byte 0x0000
_08068BB0: .4byte gUnk_084EBF7E
_08068BB4:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08068F9C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r0, [r5, #0]
	ldr r4, _08068C14
	ldr r3, [r6, #0x14]
	lsls r1, r3, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0]
_08068BCE:
	movs r4, #0
	str r4, [sp, #0]
	str r4, [sp, #4]
	bl sub_08029B98
_08068BD8:
	ldr r0, [r7, #0]
	str r0, [r5, #0x54]
	adds r2, r5, #0
	adds r2, #0x5a
	ldrh r1, [r2, #0]
	mov r0, sl
	orrs r0, r1
	strh r0, [r2, #0]
_08068BE8:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08068BFE
	bl sub_0800CD34
	cmp r0, #0
	bne _08068BFE
	movs r0, #0x1a
	bl sub_0805865C
_08068BFE:
	ldr r2, [r6, #0]
	ldrh r3, [r6, #0xc]
	ldrh r0, [r6, #0x14]
	str r0, [sp, #0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_08069A30
	movs r0, #2
	mov r8, r0
	b _08068CDE
_08068C14: .4byte gUnk_084EC14C
_08068C18:
	bl sub_08002204
	cmp r0, #0
	beq _08068CDE
	ldr r0, [r6, #0]
	cmp r0, #3
	bls _08068CDE
	ldrh r0, [r5, #0xc]
	cmp r0, #0xb
	beq _08068CDE
	ldr r0, [sp, #0x14]
	adds r0, #0xdc
	ldr r1, [r5, #0x54]
	ldr r0, [r0, #0]
	cmp r1, r0
	beq _08068CDE
	adds r0, r5, #0
	adds r0, #0x58
	movs r7, #0
	strh r7, [r0, #0]
	ldrh r0, [r5, #0]
	adds r0, #4
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	cmp r0, #4
	beq _08068C58
	cmp r0, #7
	beq _08068C80
	adds r0, r6, #0
	bl sub_080694AC
	b _08068CB4
_08068C58:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08068F9C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r0, [r5, #0]
	ldr r3, _08068C7C
	ldrh r1, [r3, #0]
	ldr r3, [r6, #0x14]
	str r7, [sp, #0]
	str r7, [sp, #4]
	bl sub_08029B98
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x50]
	b _08068CA6
_08068C7C: .4byte gUnk_084EBF7E
_08068C80:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08068F9C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrh r0, [r5, #0]
	ldr r4, _08068DE0
	ldr r3, [r6, #0x14]
	lsls r1, r3, #1
	adds r1, r1, r4
	ldrh r1, [r1, #0]
	str r7, [sp, #0]
	str r7, [sp, #4]
	bl sub_08029B98
	ldr r2, [sp, #0x10]
	ldr r0, [r2, #0x50]
_08068CA6:
	str r0, [r5, #0x54]
	adds r2, r5, #0
	adds r2, #0x5a
	ldrh r1, [r2, #0]
	mov r0, sl
	orrs r0, r1
	strh r0, [r2, #0]
_08068CB4:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08068CCA
	bl sub_0800CD34
	cmp r0, #0
	bne _08068CCA
	movs r0, #0x1a
	bl sub_0805865C
_08068CCA:
	ldr r2, [r6, #0]
	ldrh r3, [r6, #0xc]
	ldrh r0, [r6, #0x14]
	str r0, [sp, #0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_08069A30
	movs r3, #2
	mov r8, r3
_08068CDE:
	mov r0, r8
	movs r1, #1
	orrs r0, r1
	mov r8, r0
_08068CE6:
	movs r2, #1
	add r9, r2
	mov r3, r9
	cmp r3, #4
	bhi _08068CF2
	b _08068AA6
_08068CF2:
	mov r0, r8
	cmp r0, #0
	beq _08068CFA
	b _08068F8A
_08068CFA:
	bl sub_08002164
	mov sl, r0
	ldr r0, [r6, #0]
	cmp r0, #3
	bls _08068D08
	b _08068E64
_08068D08:
	movs r1, #0
	mov r9, r1
	cmp r8, sl
	blo _08068D12
	b _08068F8A
_08068D12:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _08068DE4
	adds r4, r1, r0
	adds r0, r4, #0
	adds r0, #0x68
	ldr r1, [sp, #0x14]
	adds r1, #0x68
	ldrb r2, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r2, r1
	bne _08068D30
	b _08068E52
_08068D30:
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r4, r3
	ldr r3, [r0, #0]
	ldrb r0, [r3, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _08068D44
	b _08068E52
_08068D44:
	cmp r0, #0xb
	bne _08068D4A
	b _08068E52
_08068D4A:
	cmp r0, #0xa
	bne _08068D50
	b _08068E52
_08068D50:
	cmp r2, #0
	bne _08068D56
	b _08068E52
_08068D56:
	ldrb r0, [r3, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08068E52
	ldrh r2, [r3, #0]
	lsrs r2, r2, #4
	ldr r1, [sp, #8]
	asrs r0, r1, #8
	subs r2, r2, r0
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r3, [sp, #0xc]
	asrs r1, r3, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0
	bge _08068D88
	negs r2, r2
_08068D88:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	bgt _08068E52
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08068D9C
	negs r0, r0
_08068D9C:
	cmp r0, r1
	bgt _08068E52
	ldr r2, [sp, #0x1c]
	cmp r2, r9
	bne _08068E4A
	ldrh r0, [r4, #0x20]
	cmp r0, #0xb
	beq _08068E4A
	ldr r3, [sp, #0x14]
	ldrh r0, [r3, #0]
	lsls r0, r0, #2
	adds r2, r4, #0
	adds r2, #0xf8
	adds r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xdc
	ldr r3, [r0, #0]
	ldr r0, [r1, #0]
	adds r7, r1, #0
	adds r5, r2, #0
	cmp r3, r0
	beq _08068E4A
	ldrh r0, [r4, #0]
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	cmp r0, #4
	beq _08068DE8
	cmp r0, #7
	beq _08068DF4
	adds r0, r6, #0
	bl sub_080694AC
	b _08068E14
	.2byte 0x0000
_08068DE0: .4byte gUnk_084EC14C
_08068DE4: .4byte gUnk_03003CE0
_08068DE8:
	ldr r0, _08068DF0
	adds r0, #0x62
	b _08068DFC
	.2byte 0x0000
_08068DF0: .4byte gUnk_084EBF1C
_08068DF4:
	ldr r1, _08068E60
	ldr r0, [r6, #0x14]
	lsls r0, r0, #1
	adds r0, r0, r1
_08068DFC:
	ldrh r4, [r0, #0]
	adds r0, r6, #0
	movs r1, #0
	bl sub_08068F9C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r6, #0x14]
	adds r0, r4, #0
	bl sub_08029A7C
_08068E14:
	ldr r1, [sp, #0x14]
	ldrh r0, [r1, #0]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, [r7, #0]
	str r1, [r0, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _08068E36
	bl sub_0800CD34
	cmp r0, #0
	bne _08068E36
	movs r0, #0x1a
	bl sub_0805865C
_08068E36:
	ldr r2, [r6, #0]
	ldrh r3, [r6, #0xc]
	ldrh r0, [r6, #0x14]
	str r0, [sp, #0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl sub_08069A30
	movs r2, #2
	mov r8, r2
_08068E4A:
	movs r0, #1
	mov r3, r8
	orrs r3, r0
	mov r8, r3
_08068E52:
	movs r0, #1
	add r9, r0
	cmp r9, sl
	bhs _08068E5C
	b _08068D12
_08068E5C:
	b _08068F8A
	.2byte 0x0000
_08068E60: .4byte gUnk_084EC14C
_08068E64:
	movs r1, #0
	mov r9, r1
	cmp r8, sl
	blo _08068E6E
	b _08068F8A
_08068E6E:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _08068F44
	adds r4, r1, r0
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08068F80
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	bne _08068F80
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _08068F80
	cmp r0, #0xb
	beq _08068F80
	cmp r0, #0xa
	beq _08068F80
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08068F80
	ldrh r2, [r1, #0]
	lsrs r2, r2, #4
	ldr r3, [sp, #8]
	asrs r0, r3, #8
	subs r2, r2, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r3, [sp, #0xc]
	asrs r1, r3, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0
	bge _08068ED8
	negs r2, r2
_08068ED8:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	bgt _08068F80
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08068EEC
	negs r0, r0
_08068EEC:
	cmp r0, r1
	bgt _08068F80
	ldr r2, [sp, #0x1c]
	cmp r2, r9
	bne _08068F78
	bl sub_0800CCCC
	cmp r0, #0
	bne _08068F78
	ldrh r0, [r4, #0x20]
	cmp r0, #0xb
	beq _08068F78
	ldr r3, [sp, #0x10]
	ldrh r0, [r3, #0]
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r1, #0xe4
	adds r0, r1, r0
	ldr r2, [r0, #0]
	ldr r0, [r3, #0x50]
	adds r5, r1, #0
	cmp r2, r0
	beq _08068F78
	ldrh r0, [r4, #0]
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	cmp r0, #4
	bne _08068F4C
	ldr r0, _08068F48
	adds r0, #0x62
	ldrh r4, [r0, #0]
	adds r0, r6, #0
	movs r1, #0
	bl sub_08068F9C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r2, [r6, #0x14]
	adds r0, r4, #0
	bl sub_08029A7C
	b _08068F52
	.2byte 0x0000
_08068F44: .4byte gUnk_03003CE0
_08068F48: .4byte gUnk_084EBF1C
_08068F4C:
	adds r0, r6, #0
	bl sub_080694AC
_08068F52:
	ldr r1, [sp, #0x10]
	ldrh r0, [r1, #0]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r1, [r1, #0x50]
	str r1, [r0, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _08068F74
	bl sub_0800CD34
	cmp r0, #0
	bne _08068F74
	movs r0, #0x1a
	bl sub_0805865C
_08068F74:
	movs r2, #2
	mov r8, r2
_08068F78:
	movs r0, #1
	mov r3, r8
	orrs r3, r0
	mov r8, r3
_08068F80:
	movs r0, #1
	add r9, r0
	cmp r9, sl
	bhs _08068F8A
	b _08068E6E
_08068F8A:
	mov r0, r8
_08068F8C:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08068A00
