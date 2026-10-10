	thumb_func_start sub_080A9950
sub_080A9950: @ 0x080A9950
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xec
	adds r6, r0, #0
	ldr r0, _080A9A40
	mov r9, r0
	str r6, [r0, #0]
	ldr r1, _080A9A44
	mov sl, r1
	ldr r0, [r1, #0]
	movs r1, #2
	orrs r0, r1
	mov r2, sl
	str r0, [r2, #0]
	ldr r3, _080A9A48
	mov r8, r3
	ldr r0, _080A9A4C
	ldr r4, [r0, #0]
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r0, r4, r5
	str r0, [r3, #0]
	movs r7, #0x81
	lsls r7, r7, #2
	adds r7, r6, r7
	str r7, [sp, #0x80]
	ldr r0, _080A9A50
	adds r7, r4, r0
	ldr r5, _080A9A54
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_0801623C
	mov r1, r8
	ldr r0, [r1, #0]
	adds r1, r5, #0
	movs r2, #1
	bl sub_0801623C
	adds r0, r7, #0
	bl sub_08019F60
	ldr r0, [sp, #0x80]
	bl sub_08019F60
	mov r2, r8
	ldr r0, [r2, #0]
	bl sub_0801A0B0
	mov r3, r9
	ldr r0, [r3, #0]
	bl sub_0801A0B0
	ldr r5, _080A9A58
	adds r4, r4, r5
	movs r0, #1
	strb r0, [r4, #0]
	mov r1, r8
	ldr r2, [r1, #0]
	strh r0, [r2, #0]
	movs r0, #5
	strh r0, [r2, #2]
	ldr r0, _080A9A5C
	adds r0, #0x90
	ldrh r1, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x48
	strh r1, [r0, #0]
	mov r3, r9
	ldr r1, [r3, #0]
	ldr r0, _080A9A60
	str r0, [r1, #0x14]
	str r0, [r2, #0x14]
	movs r0, #0x97
	lsls r0, r0, #8
	str r0, [r1, #0x18]
	str r0, [r2, #0x18]
	ldr r4, _080A9A64
	movs r5, #0xb6
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrh r0, [r0, #0]
	ldr r1, _080A9A68
	adds r6, r6, r1
	ldrh r1, [r6, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _080A9A6C
	cmp r1, r0
	bne _080A9A7C
	mov r4, r9
	mov r5, sl
	adds r6, r1, #0
_080A9A18:
	ldr r0, [r4, #0]
	movs r1, #0xb
	strh r1, [r0, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _080A9A2E
	bl sub_08056E90
	cmp r0, #0
	beq _080A9A70
_080A9A2E:
	ldr r0, [r4, #0]
	movs r1, #1
	ldrh r0, [r0, #0]
	lsls r1, r0
	ldr r0, [r5, #0]
	bics r0, r1
	str r0, [r5, #0]
	bl _080AB044
_080A9A40: .4byte gUnk_0300042C
_080A9A44: .4byte gUnk_030056FC
_080A9A48: .4byte gUnk_03000428
_080A9A4C: .4byte gUnk_030056F4
_080A9A50: .4byte 0x000004E4
_080A9A54: .4byte gUnk_084AA970
_080A9A58: .4byte 0x0000050B
_080A9A5C: .4byte gUnk_03003170
_080A9A60: .4byte 0x0000ED88
_080A9A64: .4byte gUnk_03000430
_080A9A68: .4byte 0x000002DA
_080A9A6C: .4byte 0x0000FFFF
_080A9A70:
	bl sub_080003F0
	ldr r0, _080A9C7C
	ldrh r0, [r0, #0]
	cmp r0, r6
	beq _080A9A18
_080A9A7C:
	ldr r2, _080A9C80
	mov r8, r2
	ldr r3, [r2, #0]
	movs r4, #6
	ldrsh r0, [r7, r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r5, #0xeb
	lsls r5, r5, #1
	adds r0, r3, r5
	movs r2, #0
	mov r9, r2
	strh r1, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x5c
	strh r1, [r0, #0]
	movs r4, #4
	ldrsh r0, [r7, r4]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r4, #0xea
	lsls r4, r4, #1
	adds r1, r3, r4
	strh r0, [r1, #0]
	adds r1, r3, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	ldr r6, _080A9C84
	ldr r2, [r6, #0]
	ldr r7, [sp, #0x80]
	movs r0, #6
	ldrsh r1, [r7, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r5, r2, r5
	strh r0, [r5, #0]
	adds r1, r2, #0
	adds r1, #0x5c
	strh r0, [r1, #0]
	movs r1, #4
	ldrsh r0, [r7, r1]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, r2, r4
	strh r0, [r4, #0]
	adds r1, r2, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	mov r4, r9
	strh r4, [r3, #0xc]
	strh r4, [r2, #0xc]
	movs r5, #0
	str r5, [sp, #0x9c]
	movs r7, #0
	str r7, [sp, #0x98]
	movs r0, #0
	str r0, [sp, #0xa0]
	movs r1, #0
	str r1, [sp, #0xcc]
	ldr r4, _080A9C88
	adds r3, r3, r4
	movs r1, #3
	strb r1, [r3, #0]
	mov r2, r8
	ldr r0, [r2, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r1, [r0, #0]
	ldr r0, [r6, #0]
	adds r0, r0, r4
	strb r1, [r0, #0]
	ldr r0, [r6, #0]
	adds r0, r0, r2
	strb r1, [r0, #0]
	mov r3, r8
	ldr r0, [r3, #0]
	movs r1, #1
	str r1, [r0, #0x50]
	ldr r0, [r6, #0]
	str r1, [r0, #0x50]
	movs r1, #0
	mov sl, r8
	ldr r4, _080A9C7C
	mov r9, r4
	ldr r7, _080A9C8C
	mov r5, sp
	adds r5, #0x44
	str r5, [sp, #0xe4]
	ldr r0, [sp, #0x80]
	adds r0, #0xd6
	str r0, [sp, #0xe8]
	subs r2, #0xb2
	mov r8, r2
	ldr r6, _080A9C90
	movs r5, #0
_080A9B44:
	movs r2, #0
	lsls r4, r1, #0x10
	asrs r0, r4, #0x10
	mov r3, r8
	muls r3, r0, r3
_080A9B4E:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r3
	adds r0, r0, r6
	str r5, [r0, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _080A9B4E
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r4, r3
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080A9B44
	movs r4, #0
	str r4, [sp, #0xc0]
	movs r5, #0
	str r5, [sp, #0xc8]
	movs r0, #0
	str r0, [sp, #0xc4]
	movs r1, #0
	str r1, [sp, #0xa8]
	movs r2, #0
	str r2, [sp, #0xb0]
	movs r3, #0xff
	str r3, [sp, #0xb4]
	str r4, [sp, #0xb8]
	movs r5, #0xff
	str r5, [sp, #0xbc]
	mov r0, sl
	ldr r2, [r0, #0]
	ldrb r1, [r7, #1]
	adds r0, r2, #0
	adds r0, #0x68
	strh r1, [r0, #0]
	ldr r1, _080A9C84
	ldr r3, [r1, #0]
	ldrb r1, [r7, #3]
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x6a
	add r4, sp, #0xb0
	ldrh r4, [r4, #0]
	strh r4, [r0, #0]
	adds r0, #2
	add r5, sp, #0xb0
	ldrh r5, [r5, #0]
	strh r5, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x6a
	add r1, sp, #0xb0
	ldrh r1, [r1, #0]
	strh r1, [r0, #0]
	adds r0, #2
	add r2, sp, #0xb0
	ldrh r2, [r2, #0]
	strh r2, [r0, #0]
	ldrb r0, [r7, #0]
	lsls r0, r0, #2
	ldr r3, _080A9C94
	adds r0, r0, r3
	ldr r1, [r0, #0]
	mov r4, r9
	ldrh r2, [r4, #0]
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x10
	adds r3, r5, #0
	bl sub_08065158
	ldrb r0, [r7, #2]
	lsls r0, r0, #2
	ldr r7, _080A9C94
	adds r0, r0, r7
	ldr r1, [r0, #0]
	mov r0, r9
	ldrh r2, [r0, #0]
	str r4, [sp, #0]
	ldr r0, [sp, #0xe4]
	adds r3, r5, #0
	bl sub_08065158
	add r1, sp, #0x10
	mov r2, r9
	ldrh r0, [r2, #0]
	strb r0, [r1, #0x1c]
	ldr r3, [sp, #0xe4]
	strb r0, [r3, #0x1c]
	mov r4, sl
	ldr r3, [r4, #0]
	ldrb r0, [r3, #0]
	movs r6, #0xfe
	lsls r6, r6, #1
	adds r3, r3, r6
	movs r5, #0xf
	adds r1, r5, #0
	ands r1, r0
	ldrb r4, [r3, #0]
	movs r2, #0x10
	negs r2, r2
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0]
	mov r7, sl
	ldr r1, [r7, #0]
	ldrh r3, [r1, #2]
	ldr r4, _080A9C98
	adds r0, r1, r4
	strh r3, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r0, #0xff
	strb r0, [r1, #0]
	ldr r1, _080A9C84
	ldr r0, [r1, #0]
	ldrb r1, [r0, #0]
	adds r0, r0, r6
	ands r5, r1
	ldrb r1, [r0, #0]
	ands r2, r1
	orrs r2, r5
	strb r2, [r0, #0]
	ldr r2, _080A9C84
	ldr r0, [r2, #0]
	ldrh r1, [r0, #2]
	adds r4, r0, r4
	strh r1, [r4, #0]
	adds r0, r0, r3
	movs r1, #1
	negs r1, r1
	strb r1, [r0, #0]
	bl sub_08097FE4
	bl sub_08097A4C
	movs r3, #0
	str r3, [sp, #0xd0]
	bl sub_08067C18
	b _080A9CA0
_080A9C7C: .4byte gUnk_03000430
_080A9C80: .4byte gUnk_03000428
_080A9C84: .4byte gUnk_0300042C
_080A9C88: .4byte 0x000001FD
_080A9C8C: .4byte gUnk_08518898
_080A9C90: .4byte gUnk_03003DC4
_080A9C94: .4byte gUnk_085188E8
_080A9C98: .4byte 0x00000202
_080A9C9C:
	bl sub_080003F0
_080A9CA0:
	bl sub_08067C08
	cmp r0, #0
	beq _080A9C9C
	bl sub_08067BF8
	bl sub_0806849C
	bl _080AA8A6
_080A9CB4:
	ldr r0, _080A9D14
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xa
	bne _080A9CC8
	ldr r4, [sp, #0x9c]
	cmp r4, #0
	bne _080A9CC8
	movs r5, #8
	str r5, [sp, #0x9c]
_080A9CC8:
	ldr r0, _080A9D18
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xa
	bne _080A9CDC
	ldr r7, [sp, #0x98]
	cmp r7, #0
	bne _080A9CDC
	movs r0, #8
	str r0, [sp, #0x98]
_080A9CDC:
	bl sub_08058DB0
	cmp r0, #0
	beq _080A9CE8
	bl _080AA4B8
_080A9CE8:
	ldr r0, _080A9D18
	ldr r0, [r0, #0]
	bl sub_0801C8F0
	ldr r4, _080A9D14
	ldr r0, [r4, #0]
	bl sub_0801C8F0
	ldr r0, [r4, #0]
	ldr r1, _080A9D1C
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #0xd
	bls _080A9D08
	b _080AA4A8
_080A9D08:
	lsls r0, r0, #2
	ldr r1, _080A9D20
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080A9D14: .4byte gUnk_0300042C
_080A9D18: .4byte gUnk_03000428
_080A9D1C: .4byte 0x000001FD
_080A9D20: .4byte _080A9D24
_080A9D24:
	.4byte _080AA1D8
_080A9D28: .4byte _080A9D5C
_080A9D2C: .4byte _080A9E24
_080A9D30: .4byte _080A9D98
_080A9D34: .4byte _080A9E4C
_080A9D38: .4byte _080A9EE8
_080A9D3C: .4byte _080A9F74
_080A9D40: .4byte _080A9FC8
_080A9D44: .4byte _080AA298
_080A9D48: .4byte _080AA064
_080A9D4C: .4byte _080AA10C
_080A9D50: .4byte _080AA340
_080A9D54: .4byte _080AA378
_080A9D58: .4byte _080AA470
_080A9D5C:
	ldr r0, _080A9D8C
	ldr r0, [r0, #0]
	movs r1, #0
	strh r1, [r0, #0xc]
	ldr r4, _080A9D90
	ldr r0, [r4, #0]
	strh r1, [r0, #0xc]
	bl sub_08067C08
	cmp r0, #0
	bne _080A9D74
	b _080AA4A8
_080A9D74:
	ldr r0, [r4, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r1, [r1, #0]
	ldr r3, _080A9D94
	adds r0, r0, r3
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _080AA4A8
	.2byte 0x0000
_080A9D8C: .4byte gUnk_03000428
_080A9D90: .4byte gUnk_0300042C
_080A9D94: .4byte 0x000001FD
_080A9D98:
	ldr r0, _080A9DD8
	ldr r0, [r0, #0]
	movs r1, #0
	strh r1, [r0, #0xc]
	ldr r4, _080A9DDC
	ldr r0, [r4, #0]
	strh r1, [r0, #0xc]
	movs r5, #0
	str r5, [sp, #0xc4]
	movs r7, #0
	str r7, [sp, #0xc0]
	bl sub_08068490
	ldr r1, [r4, #0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r1, r2
	strb r0, [r1, #0]
	ldr r1, [r4, #0]
	adds r2, r1, r2
	ldrb r0, [r2, #0]
	cmp r0, #0xff
	bne _080A9DC8
	b _080AA4A8
_080A9DC8:
	cmp r0, #1
	beq _080A9DF0
	cmp r0, #1
	bgt _080A9DE0
	cmp r0, #0
	beq _080A9DE6
	b _080A9E04
	.2byte 0x0000
_080A9DD8: .4byte gUnk_03000428
_080A9DDC: .4byte gUnk_0300042C
_080A9DE0:
	cmp r0, #2
	beq _080A9DFA
	b _080A9E04
_080A9DE6:
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #6
	b _080A9E02
_080A9DF0:
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #7
	b _080A9E02
_080A9DFA:
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #8
_080A9E02:
	strb r0, [r1, #0]
_080A9E04:
	ldr r2, _080A9E1C
	ldr r0, [r2, #0]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldr r5, _080A9E20
	adds r0, r0, r5
	b _080AA3D0
	.2byte 0x0000
_080A9E1C: .4byte gUnk_0300042C
_080A9E20: .4byte 0x000001FD
_080A9E24:
	bl sub_08056F78
	cmp r0, #0
	bne _080A9E2E
	b _080AA4A8
_080A9E2E:
	ldr r2, _080A9E44
	ldr r0, [r2, #0]
	movs r7, #0xff
	lsls r7, r7, #1
	adds r0, r0, r7
	movs r1, #5
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldr r1, _080A9E48
	adds r0, r0, r1
	b _080AA3D0
_080A9E44: .4byte gUnk_0300042C
_080A9E48: .4byte 0x000001FD
_080A9E4C:
	ldr r0, _080A9ED8
	ldr r0, [r0, #0]
	movs r1, #1
	strh r1, [r0, #0xc]
	ldr r5, _080A9EDC
	ldr r0, [r5, #0]
	strh r1, [r0, #0xc]
	movs r2, #1
	str r2, [sp, #0xb8]
	movs r0, #0
	bl sub_08096594
	ldr r3, [r5, #0]
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r3, r3, r4
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	ldr r0, [r5, #0]
	adds r4, r0, r4
	ldrb r1, [r4, #0]
	lsrs r1, r1, #4
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r1, r2
	ldr r1, _080A9EE0
	adds r6, r2, r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r6, #0
	movs r3, #0x20
	bl sub_08097A74
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9EC4
	movs r0, #0
	bl sub_08097A38
	movs r3, #0
	str r3, [sp, #0xc0]
	movs r4, #0
	str r4, [sp, #0xb8]
	ldr r0, [r5, #0]
	movs r7, #0xff
	lsls r7, r7, #1
	adds r0, r0, r7
	movs r1, #0xd
	strb r1, [r0, #0]
	ldr r0, [r5, #0]
	ldr r1, _080A9EE4
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #0]
	bl sub_08067C18
_080A9EC4:
	movs r4, #0
	ldr r0, [r5, #0]
	movs r2, #8
	ldrsh r0, [r0, r2]
	cmp r0, #3
	ble _080A9ED2
	movs r4, #1
_080A9ED2:
	str r4, [sp, #0xb0]
	b _080AA4A8
	.2byte 0x0000
_080A9ED8: .4byte gUnk_03000428
_080A9EDC: .4byte gUnk_0300042C
_080A9EE0: .4byte gUnk_03003CE0
_080A9EE4: .4byte 0x000001FD
_080A9EE8:
	ldr r0, _080A9F28
	ldr r1, [r0, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	ldr r4, _080A9F2C
	ldr r1, [r4, #0]
	movs r5, #2
	movs r0, #2
	strh r0, [r1, #0xc]
	movs r3, #4
	str r3, [sp, #0xb8]
	ldr r7, [sp, #0xc4]
	cmp r7, #0
	bne _080A9F10
	movs r0, #1
	str r0, [sp, #0xc4]
	movs r0, #0xd4
	lsls r0, r0, #1
	bl sub_0805865C
_080A9F10:
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080A9F54
	ldr r1, [sp, #0xb0]
	cmp r1, #0
	bne _080A9F30
	movs r2, #0x20
	str r2, [sp, #0x8c]
	b _080A9F36
_080A9F28: .4byte gUnk_03000428
_080A9F2C: .4byte gUnk_0300042C
_080A9F30:
	movs r3, #0x20
	negs r3, r3
	str r3, [sp, #0x8c]
_080A9F36:
	movs r4, #0x10
	negs r4, r4
	str r4, [sp, #0x90]
	ldr r5, [sp, #0xc0]
	cmp r5, #0
	beq _080A9F44
	b _080AA4A8
_080A9F44:
	ldr r0, _080A9F50
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x8c]
	ldr r2, [sp, #0x90]
	movs r3, #0x18
	b _080AA030
_080A9F50: .4byte gUnk_0300042C
_080A9F54:
	movs r7, #0
	str r7, [sp, #0xc0]
	movs r0, #0
	str r0, [sp, #0xb8]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0xd
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r3, _080A9F70
	adds r0, r0, r3
	b _080AA058
	.2byte 0x0000
_080A9F70: .4byte 0x000001FD
_080A9F74:
	ldr r0, _080A9FB8
	ldr r1, [r0, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	ldr r4, _080A9FBC
	ldr r1, [r4, #0]
	movs r5, #2
	movs r0, #2
	strh r0, [r1, #0xc]
	movs r7, #5
	str r7, [sp, #0xb8]
	ldr r0, [sp, #0xc4]
	cmp r0, #0
	bne _080A9F9C
	movs r1, #1
	str r1, [sp, #0xc4]
	movs r0, #0xd4
	lsls r0, r0, #1
	bl sub_0805865C
_080A9F9C:
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080AA040
	ldr r2, [sp, #0xb0]
	cmp r2, #0
	bne _080A9FC0
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0x8c]
	b _080A9FC4
	.2byte 0x0000
_080A9FB8: .4byte gUnk_03000428
_080A9FBC: .4byte gUnk_0300042C
_080A9FC0:
	movs r4, #8
	str r4, [sp, #0x8c]
_080A9FC4:
	movs r5, #8
	b _080AA01C
_080A9FC8:
	ldr r0, _080AA00C
	ldr r1, [r0, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	ldr r4, _080AA010
	ldr r1, [r4, #0]
	movs r5, #2
	movs r0, #2
	strh r0, [r1, #0xc]
	movs r7, #6
	str r7, [sp, #0xb8]
	ldr r0, [sp, #0xc4]
	cmp r0, #0
	bne _080A9FF0
	movs r1, #1
	str r1, [sp, #0xc4]
	movs r0, #0xd4
	lsls r0, r0, #1
	bl sub_0805865C
_080A9FF0:
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080AA040
	ldr r2, [sp, #0xb0]
	cmp r2, #0
	bne _080AA014
	movs r3, #0x10
	negs r3, r3
	str r3, [sp, #0x8c]
	b _080AA018
	.2byte 0x0000
_080AA00C: .4byte gUnk_03000428
_080AA010: .4byte gUnk_0300042C
_080AA014:
	movs r4, #0x10
	str r4, [sp, #0x8c]
_080AA018:
	movs r5, #8
	negs r5, r5
_080AA01C:
	str r5, [sp, #0x90]
	ldr r7, [sp, #0xc0]
	cmp r7, #0
	beq _080AA026
	b _080AA4A8
_080AA026:
	ldr r0, _080AA03C
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x8c]
	ldr r2, [sp, #0x90]
	movs r3, #0x10
_080AA030:
	bl sub_080AB054
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc0]
	b _080AA4A8
_080AA03C: .4byte gUnk_0300042C
_080AA040:
	movs r0, #0
	str r0, [sp, #0xc0]
	movs r2, #0
	str r2, [sp, #0xb8]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0xd
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r4, _080AA060
	adds r0, r0, r4
_080AA058:
	strb r5, [r0, #0]
	bl sub_08067C18
	b _080AA4A8
_080AA060: .4byte 0x000001FD
_080AA064:
	ldr r0, _080AA0FC
	ldr r0, [r0, #0]
	movs r7, #2
	movs r1, #2
	strh r1, [r0, #0xc]
	ldr r5, _080AA100
	ldr r0, [r5, #0]
	strh r1, [r0, #0xc]
	movs r0, #3
	str r0, [sp, #0xb8]
	movs r0, #0
	bl sub_08096594
	ldr r3, [r5, #0]
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r3, r3, r4
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	ldr r0, [r5, #0]
	adds r4, r0, r4
	ldrb r1, [r4, #0]
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x1c
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r3, r2, r3
	ldr r2, _080AA104
	adds r6, r3, r2
	lsrs r1, r1, #0x1c
	bl sub_08095F10
	movs r4, #0
	ldr r0, [r5, #0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	cmp r0, #3
	ble _080AA0BA
	movs r4, #1
_080AA0BA:
	str r4, [sp, #0xb0]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #0x84]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x88]
	movs r3, #0
	str r3, [sp, #0xcc]
	movs r4, #0
	str r4, [sp, #0xc0]
	movs r0, #0
	bl sub_08097A38
	ldr r0, [r5, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0xb
	strb r1, [r0, #0]
	ldr r0, [r5, #0]
	ldr r2, _080AA108
	adds r0, r0, r2
	strb r7, [r0, #0]
	bl sub_08067C18
	b _080AA4A8
	.2byte 0x0000
_080AA0FC: .4byte gUnk_03000428
_080AA100: .4byte gUnk_0300042C
_080AA104: .4byte gUnk_03003CE0
_080AA108: .4byte 0x000001FD
_080AA10C:
	ldr r0, _080AA1A0
	ldr r0, [r0, #0]
	movs r6, #2
	movs r1, #2
	strh r1, [r0, #0xc]
	ldr r4, _080AA1A4
	ldr r0, [r4, #0]
	strh r1, [r0, #0xc]
	movs r3, #3
	str r3, [sp, #0xb8]
	ldr r1, [sp, #0xc4]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc4]
	cmp r1, #0x1e
	bls _080AA138
	movs r5, #0
	str r5, [sp, #0xc4]
	ldr r0, _080AA1A8
	bl sub_0805865C
_080AA138:
	movs r7, #0
	str r7, [sp, #0x8c]
	movs r0, #0x18
	negs r0, r0
	str r0, [sp, #0x90]
	ldr r1, [sp, #0xc0]
	cmp r1, #0
	bne _080AA15A
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x8c]
	ldr r2, [sp, #0x90]
	movs r3, #0x28
	bl sub_080AB054
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc0]
_080AA15A:
	ldr r2, [sp, #0xcc]
	cmp r2, #0xb3
	bhi _080AA1AC
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xcc]
	ldr r0, [r4, #0]
	movs r3, #0xa0
	lsls r3, r3, #3
	movs r1, #0x18
	str r1, [sp, #0]
	movs r5, #1
	str r5, [sp, #4]
	ldr r1, [sp, #0x84]
	ldr r2, [sp, #0x88]
	bl sub_08097AC0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080AA188
	b _080AA4A8
_080AA188:
	movs r3, #0
	str r3, [sp, #0xc0]
	movs r7, #0
	str r7, [sp, #0xc4]
	movs r0, #2
	str r0, [sp, #0xb8]
	ldr r0, [r4, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r5, [r0, #0]
	b _080AA1C4
_080AA1A0: .4byte gUnk_03000428
_080AA1A4: .4byte gUnk_0300042C
_080AA1A8: .4byte 0x000001A7
_080AA1AC:
	movs r3, #0
	str r3, [sp, #0xc0]
	movs r5, #0
	str r5, [sp, #0xc4]
	movs r7, #2
	str r7, [sp, #0xb8]
	ldr r0, [r4, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
_080AA1C4:
	ldr r0, [r4, #0]
	ldr r2, _080AA1D4
	adds r0, r0, r2
	strb r6, [r0, #0]
	bl sub_08067C18
	b _080AA4A8
	.2byte 0x0000
_080AA1D4: .4byte 0x000001FD
_080AA1D8:
	ldr r5, _080AA28C
	ldr r0, [r5, #0]
	movs r2, #0
	strh r2, [r0, #0xc]
	ldr r4, _080AA290
	ldr r1, [r4, #0]
	strh r2, [r1, #0xc]
	movs r3, #0
	str r3, [sp, #0x9c]
	movs r7, #2
	str r7, [sp, #0xb8]
	bl sub_0801A0A4
	ldr r0, [r4, #0]
	bl sub_0801A0B0
	ldr r1, [sp, #0xa8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa8]
	cmp r1, #0xb3
	bhi _080AA208
	b _080AA4A8
_080AA208:
	movs r0, #0
	str r0, [sp, #0xc0]
	movs r1, #0
	str r1, [sp, #0xb8]
	ldr r0, [r5, #0]
	bl sub_0801A0B0
	ldr r0, [r4, #0]
	bl sub_0801A0B0
	movs r2, #0
	str r2, [sp, #0xa8]
	ldr r2, [r4, #0]
	adds r0, r2, #0
	adds r0, #0x4a
	add r3, sp, #0x9c
	ldrh r3, [r3, #0]
	strh r3, [r0, #0]
	ldr r7, [sp, #0x80]
	movs r1, #6
	ldrsh r0, [r7, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r3, #0xeb
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r1, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x5c
	strh r1, [r0, #0]
	movs r1, #4
	ldrsh r0, [r7, r1]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r3, #2
	adds r1, r2, r3
	strh r0, [r1, #0]
	adds r1, r2, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0]
	adds r0, #4
	movs r5, #0xfe
	lsls r5, r5, #1
	adds r1, r2, r5
	ldrb r2, [r1, #0]
	lsrs r2, r2, #4
	movs r1, #4
	str r1, [sp, #0]
	movs r3, #4
	bl sub_0807386C
	ldr r0, [r4, #0]
	movs r7, #0xff
	lsls r7, r7, #1
	adds r0, r0, r7
	movs r1, #9
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r1, _080AA294
	adds r0, r0, r1
	b _080AA3D0
	.2byte 0x0000
_080AA28C: .4byte gUnk_03000428
_080AA290: .4byte gUnk_0300042C
_080AA294: .4byte 0x000001FD
_080AA298:
	ldr r4, _080AA2D8
	ldr r1, [r4, #0]
	movs r2, #0
	movs r0, #2
	strh r0, [r1, #0xc]
	ldr r0, _080AA2DC
	ldr r0, [r0, #0]
	strh r2, [r0, #0xc]
	movs r2, #7
	str r2, [sp, #0xb8]
	ldr r3, [sp, #0xc4]
	cmp r3, #0
	bne _080AA2BE
	movs r5, #1
	str r5, [sp, #0xc4]
	movs r0, #0xd3
	lsls r0, r0, #1
	bl sub_0805865C
_080AA2BE:
	ldr r0, [r4, #0]
	adds r0, #0x6a
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _080AA302
	ldr r7, [sp, #0xb0]
	cmp r7, #0
	bne _080AA2E0
	movs r0, #0x40
	negs r0, r0
	str r0, [sp, #0x8c]
	b _080AA2E4
	.2byte 0x0000
_080AA2D8: .4byte gUnk_03000428
_080AA2DC: .4byte gUnk_0300042C
_080AA2E0:
	movs r1, #0x40
	str r1, [sp, #0x8c]
_080AA2E4:
	movs r2, #0x10
	str r2, [sp, #0x90]
	ldr r3, [sp, #0xc0]
	cmp r3, #0
	bne _080AA302
	ldr r0, _080AA334
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x8c]
	ldr r2, [sp, #0x90]
	movs r3, #0x30
	bl sub_080AB054
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc0]
_080AA302:
	ldr r0, _080AA334
	ldr r0, [r0, #0]
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080AA310
	b _080AA4A8
_080AA310:
	movs r4, #0
	str r4, [sp, #0xc0]
	movs r5, #0
	str r5, [sp, #0xc4]
	movs r7, #0
	str r7, [sp, #0xb8]
	ldr r2, _080AA338
	ldr r0, [r2, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0xc
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldr r2, _080AA33C
	adds r0, r0, r2
	b _080AA3D0
	.2byte 0x0000
_080AA334: .4byte gUnk_03000428
_080AA338: .4byte gUnk_0300042C
_080AA33C: .4byte 0x000001FD
_080AA340:
	ldr r0, _080AA36C
	ldr r2, [r0, #0]
	movs r3, #0
	movs r0, #9
	strh r0, [r2, #0xc]
	ldr r4, _080AA370
	ldr r1, [r4, #0]
	strh r3, [r1, #0xc]
	str r3, [sp, #0xb8]
	ldr r0, [r2, #0x50]
	adds r0, #1
	str r0, [r2, #0x50]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r1, r1, r5
	movs r0, #0xe
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r7, _080AA374
	adds r0, r0, r7
	b _080AA3D0
	.2byte 0x0000
_080AA36C: .4byte gUnk_03000428
_080AA370: .4byte gUnk_0300042C
_080AA374: .4byte 0x000001FD
_080AA378:
	ldr r0, _080AA3DC
	ldr r0, [r0, #0]
	movs r1, #0
	strh r1, [r0, #0xc]
	ldr r4, _080AA3E0
	ldr r0, [r4, #0]
	strh r1, [r0, #0xc]
	movs r0, #0
	str r0, [sp, #0xc0]
	bl sub_08096594
	ldr r2, [r4, #0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r2, r2, r1
	lsls r0, r0, #4
	ldrb r3, [r2, #0]
	movs r1, #0xf
	ands r1, r3
	orrs r1, r0
	strb r1, [r2, #0]
	movs r0, #0
	bl sub_08097A38
	ldr r1, [sp, #0xc8]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc8]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080AA3E8
	movs r2, #3
	str r2, [sp, #0xb8]
	ldr r0, [r4, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r0, r3
	movs r1, #0xa
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r4, _080AA3E4
	adds r0, r0, r4
_080AA3D0:
	movs r1, #2
	strb r1, [r0, #0]
	bl sub_08067C18
	b _080AA4A8
	.2byte 0x0000
_080AA3DC: .4byte gUnk_03000428
_080AA3E0: .4byte gUnk_0300042C
_080AA3E4: .4byte 0x000001FD
_080AA3E8:
	bl sub_08002204
	cmp r0, #1
	bne _080AA440
	bl sub_0800086C
	ldr r5, [r4, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #3
	bl sub_080B942C
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bge _080AA40A
	negs r2, r2
_080AA40A:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r5, r1
	strb r2, [r0, #0]
	ldr r0, [r4, #0]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	bl sub_08068450
	cmp r0, #1
	bne _080AA466
	ldr r0, [r4, #0]
	movs r5, #0xff
	lsls r5, r5, #1
	adds r0, r0, r5
	movs r1, #4
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r7, _080AA43C
	adds r0, r0, r7
	movs r1, #2
	strb r1, [r0, #0]
	bl sub_08067C18
	b _080AA466
_080AA43C: .4byte 0x000001FD
_080AA440:
	ldr r0, [r4, #0]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #4
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r3, _080AA46C
	adds r0, r0, r3
	movs r1, #2
	strb r1, [r0, #0]
	bl sub_08067C18
_080AA466:
	movs r4, #0
	str r4, [sp, #0xb8]
	b _080AA4A8
_080AA46C: .4byte 0x000001FD
_080AA470:
	ldr r0, _080AA57C
	ldr r0, [r0, #0]
	movs r1, #0
	strh r1, [r0, #0xc]
	ldr r3, _080AA580
	ldr r2, [r3, #0]
	strh r1, [r2, #0xc]
	movs r5, #0
	str r5, [sp, #0xb8]
	ldr r1, [sp, #0xa4]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	cmp r1, #0x3c
	bls _080AA4A8
	movs r7, #0xff
	lsls r7, r7, #1
	adds r1, r2, r7
	movs r0, #0xd
	strb r0, [r1, #0]
	ldr r0, [r3, #0]
	ldr r1, _080AA584
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #0]
	bl sub_08067C18
_080AA4A8:
	ldr r0, _080AA57C
	ldr r2, [r0, #0]
	ldr r0, _080AA580
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	str r0, [r2, #0x14]
	ldr r0, [r1, #0x18]
	str r0, [r2, #0x18]
_080AA4B8:
	ldr r2, [sp, #0xb4]
	ldr r3, [sp, #0xb0]
	cmp r2, r3
	bne _080AA4C8
	ldr r4, [sp, #0xbc]
	ldr r5, [sp, #0xb8]
	cmp r4, r5
	beq _080AA562
_080AA4C8:
	ldr r7, [sp, #0xb0]
	str r7, [sp, #0xb4]
	ldr r0, [sp, #0xb8]
	str r0, [sp, #0xbc]
	ldr r0, _080AA57C
	ldr r3, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x6c
	movs r2, #0
	strh r2, [r0, #0]
	subs r0, #2
	strh r2, [r0, #0]
	ldr r7, _080AA580
	ldr r1, [r7, #0]
	adds r0, r1, #0
	adds r0, #0x6c
	strh r2, [r0, #0]
	adds r1, #0x6a
	strh r2, [r1, #0]
	ldr r5, _080AA588
	ldr r1, [sp, #0xb0]
	lsls r4, r1, #2
	adds r4, r4, r1
	ldr r2, [sp, #0xb8]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r5, #1
	adds r0, r4, r0
	ldrb r1, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0, #0]
	ldr r3, _080AA58C
	mov sl, r3
	adds r0, r4, r5
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #0]
	ldr r6, _080AA590
	ldrh r2, [r6, #0]
	movs r0, #1
	negs r0, r0
	mov r9, r0
	movs r3, #1
	mov r8, r3
	str r3, [sp, #0]
	add r0, sp, #0x10
	mov r3, r9
	bl sub_08065158
	ldr r1, [r7, #0]
	adds r0, r5, #3
	adds r0, r4, r0
	ldrb r0, [r0, #0]
	adds r1, #0x68
	strh r0, [r1, #0]
	adds r5, #2
	adds r4, r4, r5
	ldrb r0, [r4, #0]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #0]
	ldrh r2, [r6, #0]
	mov r4, r8
	str r4, [sp, #0]
	ldr r0, [sp, #0xe4]
	mov r3, r9
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r6, #0]
	strb r0, [r1, #0x1c]
	ldr r5, [sp, #0xe4]
	strb r0, [r5, #0x1c]
_080AA562:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080AA594
	bl sub_08097FF8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	bl sub_08097FF8
	b _080AA5BC
_080AA57C: .4byte gUnk_03000428
_080AA580: .4byte gUnk_0300042C
_080AA584: .4byte 0x000001FD
_080AA588: .4byte gUnk_08518898
_080AA58C: .4byte gUnk_085188E8
_080AA590: .4byte gUnk_03000430
_080AA594:
	ldr r0, _080AA6A0
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _080AA6A4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080AA5BC:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r4, _080AA6A8
	ldrh r0, [r4, #0]
	adds r0, #0x10
	ldr r1, [sp, #0xe8]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldrh r0, [r4, #0]
	adds r0, #0x10
	ldr r3, [sp, #0xe8]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r4, [sp, #0xe4]
	ldr r1, [r4, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AA64E
	ldr r6, _080AA6A0
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	ldr r4, _080AA6AC
	ldr r0, [sp, #0xb0]
	lsls r5, r0, #2
	adds r5, r5, r0
	mov r9, r5
	ldr r5, [sp, #0xb8]
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	add r0, r9
	adds r4, #4
	adds r5, r0, r4
	ldrb r0, [r5, #0]
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r4, _080AA6A4
	ldr r3, [r4, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	ldrb r0, [r5, #0]
	str r0, [sp, #0]
	ldr r0, [sp, #0xe4]
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
_080AA64E:
	ldr r0, _080AA6A0
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r5, sp
	adds r5, #0x7a
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, _080AA6A4
	ldr r1, [r0, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	adds r4, r5, #0
	cmp r0, #1
	beq _080AA68E
	ldr r3, _080AA6B0
	adds r0, r1, r3
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne _080AA6C2
_080AA68E:
	ldr r5, [sp, #0xb0]
	cmp r5, #0
	beq _080AA6B4
	add r1, sp, #0x78
	ldrh r0, [r1, #0]
	subs r0, #9
	strh r0, [r1, #0]
	b _080AA6BC
	.2byte 0x0000
_080AA6A0: .4byte gUnk_03000428
_080AA6A4: .4byte gUnk_0300042C
_080AA6A8: .4byte gUnk_03000430
_080AA6AC: .4byte gUnk_08518898
_080AA6B0: .4byte 0x000001FD
_080AA6B4:
	add r2, sp, #0x78
	ldrh r0, [r2, #0]
	adds r0, #9
	strh r0, [r2, #0]
_080AA6BC:
	ldrh r0, [r4, #0]
	adds r0, #0x15
	strh r0, [r4, #0]
_080AA6C2:
	ldr r3, _080AA790
	mov r9, r3
	ldr r1, [r3, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r6, sp, #0x7c
	mov r5, sp
	adds r5, #0x7e
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0800BC08
	mov sl, r6
	ldr r0, [sp, #0x98]
	cmp r0, #0
	beq _080AA798
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x98]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080AA742
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AA742
	bl sub_0800CC98
	cmp r0, #0
	bne _080AA742
	bl sub_0800CD34
	cmp r0, #0
	bne _080AA742
	add r2, sp, #0x78
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r2, _080AA794
	ldr r3, [r2, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AA742:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AA806
	bl sub_0800CC98
	cmp r0, #0
	bne _080AA806
	bl sub_0800CD34
	cmp r0, #0
	bne _080AA806
	mov r4, sl
	movs r5, #0
	ldrsh r0, [r4, r5]
	movs r2, #0x7e
	add r2, sp
	movs r7, #0
	ldrsh r1, [r2, r7]
	ldr r2, _080AA790
	ldr r3, [r2, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x60
	str r4, [sp, #4]
	ldr r5, [sp, #0xe4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x44]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080AA806
	.2byte 0x0000
_080AA790: .4byte gUnk_0300042C
_080AA794: .4byte gUnk_03000428
_080AA798:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AA806
	bl sub_0800CC98
	cmp r0, #0
	bne _080AA806
	bl sub_0800CD34
	cmp r0, #0
	bne _080AA806
	add r2, sp, #0x78
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r2, _080AA878
	ldr r3, [r2, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	movs r4, #0
	ldrsh r0, [r6, r4]
	movs r7, #0
	ldrsh r1, [r5, r7]
	mov r2, r9
	ldr r3, [r2, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x60
	str r4, [sp, #4]
	ldr r5, [sp, #0xe4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x44]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AA806:
	ldr r1, _080AA878
	ldr r0, [r1, #0]
	ldr r0, [r0, #0x4c]
	mov sl, r1
	cmp r0, #0
	beq _080AA822
	ldr r7, [sp, #0x94]
	cmp r7, r0
	beq _080AA822
	str r0, [sp, #0x94]
	movs r0, #0xa
	str r0, [sp, #0xa0]
	movs r1, #0
	str r1, [sp, #0xac]
_080AA822:
	ldr r2, [sp, #0xa0]
	cmp r2, #0
	beq _080AA880
	bl sub_0800CC98
	cmp r0, #0
	bne _080AA850
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AA850
	bl sub_0800CD34
	cmp r0, #0
	bne _080AA850
	ldr r0, _080AA878
	ldr r0, [r0, #0]
	ldr r3, [sp, #0xac]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r1, [sp, #0x94]
	bl sub_0801A120
_080AA850:
	movs r0, #2
	ldr r4, [sp, #0xa0]
	ands r0, r4
	cmp r0, #0
	beq _080AA866
	ldr r5, [sp, #0xac]
	lsls r0, r5, #0x10
	ldr r7, _080AA87C
	adds r0, r0, r7
	lsrs r0, r0, #0x10
	str r0, [sp, #0xac]
_080AA866:
	ldr r0, [sp, #0xa0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	ldr r0, _080AA878
	mov sl, r0
	b _080AA88A
	.2byte 0x0000
_080AA878: .4byte gUnk_03000428
_080AA87C: .4byte 0xFFFF0000
_080AA880:
	movs r1, #0
	str r1, [sp, #0x94]
	mov r2, sl
	ldr r0, [r2, #0]
	str r1, [r0, #0x4c]
_080AA88A:
	mov r3, sl
	ldr r0, [r3, #0]
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080AA89C
	movs r4, #1
	str r4, [sp, #0xd0]
_080AA89C:
	bl sub_080003F0
	ldr r5, [sp, #0xd0]
	cmp r5, #0
	bne _080AA8BA
_080AA8A6:
	bl sub_0800CB78
	cmp r0, #0
	bne _080AA8BA
	bl sub_08056E90
	cmp r0, #0
	bne _080AA8BA
	bl _080A9CB4
_080AA8BA:
	ldr r0, _080AA978
	movs r6, #0
	str r6, [r0, #0]
	bl sub_080020F4
	ldr r1, _080AA97C
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r7, #1
	mov sl, r7
	mov r1, sl
	orrs r0, r1
	str r0, [r2, #0]
	ldr r7, _080AA980
	ldr r3, [r7, #0]
	ldr r5, _080AA984
	ldr r2, [sp, #0xb0]
	lsls r4, r2, #2
	adds r4, r4, r2
	adds r4, #0x14
	adds r0, r5, #1
	adds r0, r4, r0
	ldrb r1, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x68
	strh r1, [r0, #0]
	ldr r0, _080AA988
	ldr r2, [r0, #0]
	adds r0, r5, #3
	adds r0, r4, r0
	ldrb r1, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x68
	strh r1, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x6a
	strh r6, [r0, #0]
	adds r0, #2
	strh r6, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x6a
	strh r6, [r0, #0]
	adds r0, #2
	strh r6, [r0, #0]
	ldr r1, _080AA98C
	mov r9, r1
	adds r0, r4, r5
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	add r0, r9
	ldr r1, [r0, #0]
	ldr r6, _080AA990
	ldrh r2, [r6, #0]
	movs r3, #1
	negs r3, r3
	mov r8, r3
	mov r0, sl
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	adds r5, #2
	adds r4, r4, r5
	ldrb r0, [r4, #0]
	lsls r0, r0, #2
	add r0, r9
	ldr r1, [r0, #0]
	ldrh r2, [r6, #0]
	mov r3, sl
	str r3, [sp, #0]
	ldr r0, [sp, #0xe4]
	mov r3, r8
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r6, #0]
	strb r0, [r1, #0x1c]
	ldr r4, [sp, #0xe4]
	strb r0, [r4, #0x1c]
	bl sub_080683CC
	ldr r0, [r7, #0]
	ldrh r0, [r0, #2]
	bl sub_08067CA8
	ldr r0, _080AA994
	bl sub_08068330
	str r4, [sp, #0xd4]
	mov sl, r7
	b _080AAB44
_080AA978: .4byte gUnk_030056FC
_080AA97C: .4byte gUnk_03003CE0
_080AA980: .4byte gUnk_03000428
_080AA984: .4byte gUnk_08518898
_080AA988: .4byte gUnk_0300042C
_080AA98C: .4byte gUnk_085188E8
_080AA990: .4byte gUnk_03000430
_080AA994: .4byte 0xDEADFACE
_080AA998:
	bl sub_080020F4
	ldr r2, _080AAA78
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	ldr r4, _080AAA7C
	ldrh r0, [r4, #0]
	adds r0, #0x10
	ldr r7, [sp, #0xe8]
	ldrh r2, [r7, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldrh r0, [r4, #0]
	adds r0, #0x10
	ldrh r2, [r7, #0]
	lsls r2, r2, #5
	ldr r3, [sp, #0xd4]
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r4, sl
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _080AAA80
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r3, [r4, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r5, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r1, _080AAA80
	ldr r3, [r1, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r5, [sp, #0]
	ldr r0, [sp, #0xd4]
	bl sub_08065370
	ldr r2, _080AAA80
	ldr r1, [r2, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r4, #0
	mov r3, sp
	adds r3, #0x7a
	bl sub_0800BC08
	mov r4, sp
	adds r4, #0x7a
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _080AAA84
	add r5, sp, #0x78
	ldrh r0, [r5, #0]
	subs r0, #9
	strh r0, [r5, #0]
	b _080AAA8C
_080AAA78: .4byte gUnk_03003CE0
_080AAA7C: .4byte gUnk_03000430
_080AAA80: .4byte gUnk_0300042C
_080AAA84:
	add r1, sp, #0x78
	ldrh r0, [r1, #0]
	adds r0, #9
	strh r0, [r1, #0]
_080AAA8C:
	ldrh r0, [r4, #0]
	adds r0, #0x15
	strh r0, [r4, #0]
	ldr r2, _080AAB64
	mov r9, r2
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r5, sp, #0x7c
	mov r6, sp
	adds r6, #0x7e
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AAB40
	bl sub_0800CC98
	cmp r0, #0
	bne _080AAB40
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AAB40
	bl sub_0800CD34
	cmp r0, #0
	bne _080AAB40
	ldr r0, [sp, #0x9c]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x9c]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080AAB40
	add r1, sp, #0x78
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	mov r4, sl
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	movs r7, #0
	ldrsh r0, [r5, r7]
	movs r2, #0
	ldrsh r1, [r6, r2]
	mov r4, r9
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r5, r8
	str r5, [sp, #0]
	add r4, sp, #0x60
	str r4, [sp, #4]
	ldr r7, [sp, #0xe4]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x44]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AAB40:
	bl sub_080003F0
_080AAB44:
	ldr r0, _080AAB68
	bl sub_080682B8
	adds r5, r0, #0
	cmp r5, #0
	bne _080AAB52
	b _080AA998
_080AAB52:
	ldr r0, _080AAB68
	bl sub_08065E38
	ldr r0, [sp, #0xe4]
	str r0, [sp, #0xd8]
	movs r1, #0
	mov r9, r1
	b _080AAD28
	.2byte 0x0000
_080AAB64: .4byte gUnk_0300042C
_080AAB68: .4byte 0xDEADFACE
_080AAB6C:
	bl sub_080020F4
	ldr r2, _080AAC58
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	ldr r4, _080AAC5C
	ldrh r0, [r4, #0]
	adds r0, #0x10
	ldr r3, [sp, #0xe8]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldrh r0, [r4, #0]
	adds r0, #0x10
	ldr r4, [sp, #0xe8]
	ldrh r2, [r4, #0]
	lsls r2, r2, #5
	ldr r5, [sp, #0xd8]
	ldr r1, [r5, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r7, _080AAC60
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _080AAC64
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _080AAC60
	ldr r3, [r1, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	mov r4, r9
	str r4, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	ldr r5, _080AAC60
	ldr r1, [r5, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r0, _080AAC64
	ldr r3, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r4, [sp, #0]
	ldr r0, [sp, #0xd8]
	bl sub_08065370
	ldr r2, _080AAC64
	ldr r1, [r2, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	mov r3, r9
	str r3, [sp, #0]
	str r3, [sp, #4]
	adds r2, r4, #0
	mov r3, sp
	adds r3, #0x7a
	bl sub_0800BC08
	mov r4, sp
	adds r4, #0x7a
	ldr r5, [sp, #0xb0]
	cmp r5, #0
	beq _080AAC68
	add r1, sp, #0x78
	ldrh r0, [r1, #0]
	subs r0, #9
	strh r0, [r1, #0]
	b _080AAC70
	.2byte 0x0000
_080AAC58: .4byte gUnk_03003CE0
_080AAC5C: .4byte gUnk_03000430
_080AAC60: .4byte gUnk_03000428
_080AAC64: .4byte gUnk_0300042C
_080AAC68:
	add r2, sp, #0x78
	ldrh r0, [r2, #0]
	adds r0, #9
	strh r0, [r2, #0]
_080AAC70:
	ldrh r0, [r4, #0]
	adds r0, #0x15
	strh r0, [r4, #0]
	ldr r3, _080AAD88
	mov sl, r3
	ldr r1, [r3, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r5, sp, #0x7c
	mov r6, sp
	adds r6, #0x7e
	mov r2, r9
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	bl sub_0800CCCC
	cmp r0, #0
	bne _080AAD24
	bl sub_0800CC98
	cmp r0, #0
	bne _080AAD24
	bl sub_0800CD8C
	cmp r0, #0
	bne _080AAD24
	bl sub_0800CD34
	cmp r0, #0
	bne _080AAD24
	ldr r0, [sp, #0x9c]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x9c]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080AAD24
	add r1, sp, #0x78
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r4, _080AAD8C
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	movs r7, #0
	ldrsh r0, [r5, r7]
	movs r2, #0
	ldrsh r1, [r6, r2]
	mov r4, sl
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r5, r8
	str r5, [sp, #0]
	add r4, sp, #0x60
	str r4, [sp, #4]
	ldr r7, [sp, #0xe4]
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x44]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AAD24:
	bl sub_080003F0
_080AAD28:
	bl sub_08058DB0
	cmp r0, #0
	beq _080AAD32
	b _080AAB6C
_080AAD32:
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _080AAD90
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080AAD94
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _080AAD98
	ldr r1, [r1, #0]
	movs r2, #0xe4
	lsls r2, r2, #3
	adds r1, r1, r2
	str r0, [r1, #0]
	ldr r3, [sp, #0xe4]
	str r3, [sp, #0xdc]
	ldr r4, _080AAD8C
	mov r9, r4
	ldr r6, _080AAD88
	mov r5, sp
	adds r5, #0x7c
	str r5, [sp, #0xe0]
	movs r7, #0x7e
	add r7, sp
	mov sl, r7
	b _080AAF36
_080AAD88: .4byte gUnk_0300042C
_080AAD8C: .4byte gUnk_03000428
_080AAD90: .4byte gUnk_03003CE0
_080AAD94: .4byte 0x0014009F
_080AAD98: .4byte gUnk_03005CF4
_080AAD9C:
	bl sub_080020F4
	ldr r2, _080AAEA8
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r3, r0, #0
	muls r3, r1, r3
	adds r2, #0x30
	adds r3, r3, r2
	ldr r0, [r3, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #0]
	bl sub_0800CCCC
	cmp r0, #0
	beq _080AADC0
	b _080AAF32
_080AADC0:
	bl sub_0800CC98
	cmp r0, #0
	beq _080AADCA
	b _080AAF32
_080AADCA:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080AADD4
	b _080AAF32
_080AADD4:
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	beq _080AADE0
	b _080AAF32
_080AADE0:
	ldr r4, _080AAEAC
	ldrh r0, [r4, #0]
	adds r0, #0x10
	ldr r1, [sp, #0xe8]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldrh r0, [r4, #0]
	adds r0, #0x10
	ldr r3, [sp, #0xe8]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r4, [sp, #0xdc]
	ldr r1, [r4, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r7, r9
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r0, r9
	ldr r3, [r0, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r5, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065370
	mov r2, r9
	ldr r1, [r2, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
	ldr r3, [r6, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r5, [sp, #0]
	ldr r0, [sp, #0xdc]
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
	mov r3, r9
	ldr r1, [r3, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x78
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r4, #0
	mov r3, sp
	adds r3, #0x7a
	bl sub_0800BC08
	mov r4, sp
	adds r4, #0x7a
	ldr r5, [sp, #0xb0]
	cmp r5, #0
	beq _080AAEB0
	add r1, sp, #0x78
	ldrh r0, [r1, #0]
	subs r0, #9
	strh r0, [r1, #0]
	b _080AAEB8
_080AAEA8: .4byte gUnk_03003CE0
_080AAEAC: .4byte gUnk_03000430
_080AAEB0:
	add r2, sp, #0x78
	ldrh r0, [r2, #0]
	adds r0, #9
	strh r0, [r2, #0]
_080AAEB8:
	ldrh r0, [r4, #0]
	adds r0, #0x15
	strh r0, [r4, #0]
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	ldr r2, [sp, #0xe0]
	mov r3, sl
	bl sub_0800BC08
	add r5, sp, #0x78
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r2, #0
	ldrsh r1, [r4, r2]
	mov r4, r9
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r5, [sp, #0xe0]
	movs r7, #0
	ldrsh r0, [r5, r7]
	mov r2, sl
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r8
	str r4, [sp, #0]
	add r4, sp, #0x60
	str r4, [sp, #4]
	ldr r5, [sp, #0xe4]
	ldr r4, [r5, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x44]
	str r4, [sp, #0xc]
	bl sub_08007870
_080AAF32:
	bl sub_080003F0
_080AAF36:
	ldr r0, _080AB014
	ldr r0, [r0, #0]
	movs r7, #0xe4
	lsls r7, r7, #3
	adds r0, r0, r7
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	bne _080AAF4C
	b _080AAD9C
_080AAF4C:
	bl sub_080020F4
	ldr r4, _080AB018
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	movs r0, #0xd
	bl sub_08058688
	ldr r6, _080AB01C
	ldr r0, [r6, #0]
	ldr r1, _080AB020
	ldr r1, [r1, #0]
	ldr r3, [sp, #0xe8]
	ldrh r2, [r3, #0]
	str r2, [sp, #0]
	ldr r2, _080AB024
	ldrh r2, [r2, #0]
	str r2, [sp, #4]
	ldr r7, [sp, #0xb0]
	str r7, [sp, #8]
	add r2, sp, #0x10
	ldr r3, [sp, #0xe4]
	bl sub_08097658
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080AAFF0
	ldr r0, [r6, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080AAFF0
	ldr r0, _080AB028
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x80]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r0, #0x1d
	str r0, [sp, #0xac]
	movs r5, #1
	negs r5, r5
_080AAFC0:
	ldr r0, _080AB020
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r1, [sp, #0xac]
	lsls r0, r1, #0x10
	ldr r2, _080AB02C
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0xac]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080AAFC0
	ldr r0, _080AB028
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080AAFF0:
	movs r4, #0x6f
	str r4, [sp, #0xac]
	subs r4, #0x70
_080AAFF6:
	bl sub_080003F0
	ldr r5, [sp, #0xac]
	lsls r0, r5, #0x10
	ldr r7, _080AB02C
	adds r0, r0, r7
	lsrs r1, r0, #0x10
	str r1, [sp, #0xac]
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _080AAFF6
	bl sub_08067C18
	b _080AB034
	.2byte 0x0000
_080AB014: .4byte gUnk_03005CF4
_080AB018: .4byte gUnk_03003CE0
_080AB01C: .4byte gUnk_03000428
_080AB020: .4byte gUnk_0300042C
_080AB024: .4byte gUnk_03000430
_080AB028: .4byte gUnk_030034E0
_080AB02C: .4byte 0xFFFF0000
_080AB030:
	bl sub_080003F0
_080AB034:
	bl sub_08067C08
	cmp r0, #0
	beq _080AB030
	bl sub_08067BF8
	bl sub_08056E24
_080AB044:
	add sp, #0xec
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080A9950
