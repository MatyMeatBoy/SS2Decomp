	thumb_func_start sub_08041B7C
sub_08041B7C: @ 0x08041B7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r4, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08041BBC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	adds r1, r0, #0
	cmp r0, #1
	beq _08041BD0
	cmp r0, #1
	bgt _08041BC0
	cmp r0, #0
	beq _08041BCA
	b _08041BF8
	.2byte 0x0000
_08041BBC: .4byte gUnk_03003CE0
_08041BC0:
	cmp r1, #2
	beq _08041BD6
	cmp r1, #3
	beq _08041BEC
	b _08041BF8
_08041BCA:
	movs r0, #0
	movs r1, #0x6c
	b _08041BDA
_08041BD0:
	movs r0, #0
	movs r1, #0x84
	b _08041BDA
_08041BD6:
	movs r0, #0
	movs r1, #0x54
_08041BDA:
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
	b _08041BF8
_08041BE4:
	adds r2, r1, #0
	b _08041C60
_08041BE8:
	adds r0, r1, #0
	b _08041C94
_08041BEC:
	movs r0, #0
	movs r1, #0x9c
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
_08041BF8:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	ldr r0, _08041CB4
	ldr r0, [r0, #0]
	ldr r2, _08041CB8
	adds r1, r0, r2
	movs r2, #0
	add r3, sp, #0xc
	mov sl, r3
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x18]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x1c]
_08041C1A:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08041C2E
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08041C1A
	bl sub_080003F0
	movs r1, #0
_08041C2E:
	cmp r1, #0
	beq _08041C36
	movs r0, #4
	strh r0, [r1, #0x36]
_08041C36:
	ldr r0, _08041CBC
	movs r1, #0x78
	movs r2, #0x52
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08041CB4
	ldr r0, [r0, #0]
	ldr r2, _08041CB8
	adds r1, r0, r2
	movs r2, #0
_08041C4C:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08041BE4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08041C4C
	bl sub_080003F0
	movs r2, #0
_08041C60:
	cmp r2, #0
	beq _08041C74
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x10
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08041C74:
	ldr r5, _08041CC0
	ldr r0, _08041CB4
	ldr r0, [r0, #0]
	ldr r3, _08041CB8
	adds r1, r0, r3
	movs r2, #0
_08041C80:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08041BE8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08041C80
	bl sub_080003F0
	movs r0, #0
_08041C94:
	cmp r0, #0
	beq _08041C9A
	str r5, [r0, #0x44]
_08041C9A:
	bl sub_0800CE30
	adds r1, r0, #0
	cmp r1, #0
	beq _08041CC4
	ldr r0, _08041CB4
	ldr r0, [r0, #0]
	movs r2, #0xdf
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r0, #0
	strb r0, [r1, #0]
	b _08041CD0
_08041CB4: .4byte gUnk_03005CF4
_08041CB8: .4byte 0x000007A4
_08041CBC: .4byte 0x0001003B
_08041CC0: .4byte sub_080308B4
_08041CC4:
	ldr r0, _08041CF4
	ldr r0, [r0, #0]
	movs r3, #0xd9
	lsls r3, r3, #1
	adds r0, r0, r3
	strb r1, [r0, #0]
_08041CD0:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08041CF8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08067D74
	movs r4, #2
	b _08041D06
	.2byte 0x0000
_08041CF4: .4byte gUnk_03005CF4
_08041CF8: .4byte gUnk_03003CE0
_08041CFC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08041D12
_08041D06:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08041CFC
_08041D12:
	bl sub_0800CC98
	cmp r0, #0
	bne _08041D54
	bl sub_0801AB24
	cmp r0, #1
	beq _08041D38
	cmp r0, #1
	bgt _08041D2C
	cmp r0, #0
	beq _08041D32
	b _08041D4C
_08041D2C:
	cmp r0, #2
	beq _08041D40
	b _08041D4C
_08041D32:
	bl sub_080576A8
	b _08041D4C
_08041D38:
	movs r0, #6
	bl sub_0801AB50
	b _08041D4C
_08041D40:
	movs r0, #6
	bl sub_0801AB90
	b _08041D4C
_08041D48:
	bl sub_080003F0
_08041D4C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08041D48
_08041D54:
	movs r0, #0xa
	mov r9, r0
	ldr r0, _08041DA8
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	ldr r7, _08041DAC
_08041D6E:
	add r0, sp, #8
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, sl
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08041D6E
	b _08041DB4
_08041DA8: .4byte gUnk_03003170
_08041DAC: .4byte 0xFFE80000
_08041DB0:
	bl sub_080003F0
_08041DB4:
	bl sub_0805F184
	cmp r0, #0
	bne _08041DB0
	b _08041DC2
_08041DBE:
	bl sub_080003F0
_08041DC2:
	bl sub_0805EF90
	cmp r0, #0
	bne _08041DBE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08041DE4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08041DEC
_08041DE4: .4byte 0x001400FF
_08041DE8:
	bl sub_080003F0
_08041DEC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08041E02
	bl sub_0800CDF8
	cmp r0, #0
	beq _08041DE8
	bl sub_0805EFBC
_08041E02:
	movs r0, #0x22
	mov r9, r0
	ldr r0, _08041E84
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	movs r7, #0
_08041E1C:
	ldr r0, [sp, #0x18]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x1c]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08041E1C
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08041E88
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08041E84: .4byte gUnk_03003170
_08041E88: .4byte gUnk_03003CE0
	thumb_func_end sub_08041B7C
