	thumb_func_start sub_080B5B90
sub_080B5B90: @ 0x080B5B90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r8, r7
	bl sub_080020F4
	ldr r6, _080B5CB0
	ldr r2, [r6, #0]
	ldr r5, _080B5CB4
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r5, #0
	adds r0, #0x8c
	adds r1, r1, r0
	ldr r0, [r2, #0x14]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r9, r0
	bl sub_080020F4
	ldr r2, [r6, #0]
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r1, [r2, #0x18]
	ldr r0, [r0, #0]
	subs r1, r1, r0
	lsls r1, r1, #8
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, #0
	muls r2, r0, r2
	adds r0, r2, #0
	lsrs r2, r1, #0x10
	str r2, [sp, #0]
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	mov sl, r1
	cmp r0, #0x13
	bls _080B5C08
	b _080B5E4C
_080B5C08:
	ldr r2, [r6, #0]
	adds r0, r2, #0
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080B5C18
	b _080B5E4C
_080B5C18:
	ldrh r0, [r2, #0xc]
	cmp r0, #0xb
	bne _080B5C20
	b _080B5E4C
_080B5C20:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080B5C2A
	b _080B5E4C
_080B5C2A:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080B5C34
	b _080B5E4C
_080B5C34:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080B5C3E
	b _080B5E4C
_080B5C3E:
	bl sub_080020F4
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080B5C58
	b _080B5E4C
_080B5C58:
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080B5C6A
	b _080B5E4C
_080B5C6A:
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	bne _080B5C7A
	b _080B5E4C
_080B5C7A:
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	bne _080B5C8A
	b _080B5E4C
_080B5C8A:
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	bne _080B5C9A
	b _080B5E4C
_080B5C9A:
	bl sub_0800CE30
	cmp r0, #1
	bne _080B5D08
	cmp r7, #7
	bhi _080B5CFC
	lsls r0, r7, #2
	ldr r1, _080B5CB8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080B5CB0: .4byte gUnk_030007DC
_080B5CB4: .4byte gUnk_03003CE0
_080B5CB8: .4byte _080B5CBC
_080B5CBC:
	.4byte _080B5CFC
_080B5CC0: .4byte _080B5CDC
_080B5CC4: .4byte _080B5CE2
_080B5CC8: .4byte _080B5CE6
_080B5CCC: .4byte _080B5CEA
_080B5CD0: .4byte _080B5CF0
_080B5CD4: .4byte _080B5CF4
_080B5CD8: .4byte _080B5CF8
_080B5CDC:
	movs r0, #0
	movs r1, #0xc8
	b _080B5D00
_080B5CE2:
	movs r0, #1
	b _080B5CFE
_080B5CE6:
	movs r0, #2
	b _080B5CFE
_080B5CEA:
	movs r0, #0
	movs r1, #0xc8
	b _080B5D00
_080B5CF0:
	movs r0, #3
	b _080B5CFE
_080B5CF4:
	movs r0, #4
	b _080B5CFE
_080B5CF8:
	movs r0, #6
	b _080B5CFE
_080B5CFC:
	movs r0, #5
_080B5CFE:
	movs r1, #0x96
_080B5D00:
	movs r2, #4
	bl sub_08029A7C
	b _080B5D72
_080B5D08:
	mov r2, r8
	cmp r2, #7
	bhi _080B5D68
	lsls r0, r2, #2
	ldr r1, _080B5D18
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080B5D18: .4byte _080B5D1C
_080B5D1C:
	.4byte _080B5D3C
_080B5D20: .4byte _080B5D40
_080B5D24: .4byte _080B5D46
_080B5D28: .4byte _080B5D4A
_080B5D2C: .4byte _080B5D4E
_080B5D30: .4byte _080B5D54
_080B5D34: .4byte _080B5D58
_080B5D38: .4byte _080B5D5C
_080B5D3C:
	movs r0, #5
	b _080B5D5E
_080B5D40:
	movs r0, #0
	movs r1, #0x5a
	b _080B5D60
_080B5D46:
	movs r0, #1
	b _080B5D5E
_080B5D4A:
	movs r0, #2
	b _080B5D5E
_080B5D4E:
	movs r0, #0
	movs r1, #0x5a
	b _080B5D60
_080B5D54:
	movs r0, #3
	b _080B5D5E
_080B5D58:
	movs r0, #4
	b _080B5D5E
_080B5D5C:
	movs r0, #6
_080B5D5E:
	movs r1, #0x3c
_080B5D60:
	movs r2, #2
	bl sub_08029A7C
	b _080B5D72
_080B5D68:
	movs r0, #5
	movs r1, #0x3c
	movs r2, #2
	bl sub_08029A7C
_080B5D72:
	bl sub_080020F4
	ldr r4, _080B5DCC
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r0, r0, r4
	adds r0, #0xb0
	ldr r1, _080B5DD0
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r1, _080B5DD4
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r4, #0xe4
	adds r1, r1, r4
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	movs r0, #0x28
	mov sl, r0
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r4, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _080B5DDA
	cmp r4, #6
	bhi _080B5DD8
	adds r4, #1
	b _080B5DDA
_080B5DCC: .4byte gUnk_03003CE0
_080B5DD0: .4byte 0x0000FFFE
_080B5DD4: .4byte gUnk_030007DC
_080B5DD8:
	movs r4, #0
_080B5DDA:
	cmp r4, #0
	beq _080B5DFC
	cmp r4, #1
	beq _080B5E14
	bl sub_080020F4
	ldr r2, _080B5DF8
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	subs r1, r4, #2
	adds r0, #0xca
	b _080B5E26
	.2byte 0x0000
_080B5DF8: .4byte gUnk_03003CE0
_080B5DFC:
	bl sub_080020F4
	ldr r2, _080B5E10
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #6
	b _080B5E26
_080B5E10: .4byte gUnk_03003CE0
_080B5E14:
	bl sub_080020F4
	ldr r2, _080B5E60
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #7
_080B5E26:
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r5, _080B5E60
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xcc
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc8
	movs r1, #8
	strh r1, [r0, #0]
_080B5E4C:
	mov r0, sl
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_080B5E60: .4byte gUnk_03003CE0
	thumb_func_end sub_080B5B90
