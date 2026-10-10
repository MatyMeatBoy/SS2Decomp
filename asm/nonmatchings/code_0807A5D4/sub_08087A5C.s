	thumb_func_start sub_08087A5C
sub_08087A5C: @ 0x08087A5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10c
	adds r4, r0, #0
	mov r8, r1
	movs r6, #0
	mov r0, r8
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r3, #0xfd
_08087A76:
	movs r2, #0
	lsls r0, r6, #5
	adds r1, r6, #1
	add r0, sp
	adds r0, #8
_08087A80:
	strb r3, [r0, #0]
	adds r0, #1
	adds r2, #1
	cmp r2, #0x1f
	bls _08087A80
	adds r6, r1, #0
	cmp r6, #7
	bls _08087A76
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r0, r4
	bl sub_08007290
	adds r3, r0, #2
	movs r6, #0
	movs r2, #0
	ldrb r0, [r0, #2]
	cmp r0, #0xfd
	beq _08087B5E
	ldr r5, _08087ACC
	adds r1, r5, #2
	mov sl, r1
	movs r4, #0
	movs r7, #0xfd
	mov ip, r7
_08087AB2:
	ldrb r1, [r3, #0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08087AD0
	adds r0, r2, r4
	add r0, sp
	adds r0, #8
	mov r1, ip
	strb r1, [r0, #0]
	adds r4, #0x20
	adds r6, #1
	movs r2, #0
	b _08087B56
_08087ACC: .4byte gUnk_03003CE0
_08087AD0:
	cmp r0, #0xfe
	bne _08087AE8
	adds r0, r2, r4
	add r0, sp
	adds r0, #8
	mov r7, ip
	strb r7, [r0, #0]
	adds r4, #0x20
	adds r6, #1
	movs r2, #0
	adds r3, #2
	b _08087B56
_08087AE8:
	cmp r0, #0xf6
	bne _08087AFA
	adds r0, r2, r4
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	mov r7, sl
	adds r0, r2, r7
	b _08087B32
_08087AFA:
	cmp r0, #0xf4
	bne _08087B0C
	adds r0, r2, r4
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	movs r7, #0xa7
	lsls r7, r7, #1
	b _08087B2E
_08087B0C:
	cmp r0, #0xf3
	bne _08087B20
	adds r0, r2, r4
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	ldr r7, _08087B1C
	b _08087B2E
_08087B1C: .4byte 0x0000029A
_08087B20:
	cmp r0, #0xf2
	bne _08087B4C
	adds r0, r2, r4
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	ldr r7, _08087B48
_08087B2E:
	adds r0, r5, r7
	adds r0, r2, r0
_08087B32:
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _08087B56
	cmp r0, #0xfd
	beq _08087B56
	adds r2, #1
	subs r3, #1
	b _08087B56
_08087B48: .4byte 0x000003E6
_08087B4C:
	adds r0, r2, r4
	add r0, sp
	adds r0, #8
	strb r1, [r0, #0]
	adds r2, #1
_08087B56:
	adds r3, #1
	ldrb r0, [r3, #0]
	cmp r0, #0xfd
	bne _08087AB2
_08087B5E:
	lsls r0, r6, #5
	adds r0, r2, r0
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	movs r0, #0xfd
	strb r0, [r1, #0]
	mov sl, r9
	ldr r0, _08087BE8
	mov r1, r8
	ands r1, r0
	mov r8, r1
	movs r7, #0
	str r7, [sp, #0x108]
	movs r0, #0x10
	mov r9, r0
	movs r1, #1
	negs r1, r1
	add r8, r1
	adds r0, r1, #0
	cmp r8, r0
	bne _08087B8C
	b _08087CA8
_08087B8C:
	movs r7, #0xf
_08087B8E:
	ldr r0, [sp, #0x108]
	lsls r4, r0, #0x10
	lsrs r3, r4, #0x10
	mov r1, r9
	lsls r5, r1, #0x10
	str r1, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0x3f
	movs r2, #1
	bl sub_0800903C
	ldr r0, _08087BEC
	ldr r0, [r0, #0]
	ands r0, r7
	cmp r0, #0
	beq _08087BD8
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r1, r0, #0x10
	str r1, [sp, #0x108]
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08087BC6
	movs r0, #0x10
	str r0, [sp, #0x108]
_08087BC6:
	ldr r1, _08087BF0
	adds r0, r5, r1
	lsrs r1, r0, #0x10
	mov r9, r1
	asrs r0, r0, #0x10
	cmp r0, #0
	bgt _08087BD8
	movs r0, #0
	mov r9, r0
_08087BD8:
	mov r1, sl
	cmp r1, #1
	beq _08087C26
	cmp r1, #1
	blo _08087BF4
	cmp r1, #2
	beq _08087C5A
	b _08087C88
_08087BE8: .4byte 0x0000FFFF
_08087BEC: .4byte gUnk_03002344
_08087BF0: .4byte 0xFFFF0000
_08087BF4:
	movs r6, #0
	movs r5, #0xc0
	lsls r5, r5, #0xc
	add r4, sp, #8
_08087BFC:
	adds r0, r4, #0
	bl sub_0801A638
	cmp r0, #0
	beq _08087C16
	lsrs r1, r0, #1
	subs r1, r7, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r2, r5, #0x10
	adds r0, r4, #0
	bl sub_0801A3D0
_08087C16:
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r5, r5, r0
	adds r4, #0x20
	adds r6, #1
	cmp r6, #3
	bls _08087BFC
	b _08087C88
_08087C26:
	add r0, sp, #8
	bl sub_0801A638
	adds r1, r0, #0
	lsrs r1, r1, #1
	subs r1, r7, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r0, sp, #8
	movs r2, #0x10
	bl sub_0801A3D0
	add r4, sp, #0x28
	adds r0, r4, #0
	bl sub_0801A638
	adds r1, r0, #0
	lsrs r1, r1, #1
	subs r1, r7, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	b _08087C88
_08087C5A:
	movs r6, #0
	movs r5, #0x80
	lsls r5, r5, #0xa
	add r4, sp, #8
_08087C62:
	adds r0, r4, #0
	bl sub_0801A638
	adds r1, r0, #0
	lsrs r1, r1, #1
	subs r1, r7, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r2, r5, #0x10
	adds r0, r4, #0
	bl sub_0801A3D0
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r5, r5, r1
	adds r4, #0x20
	adds r6, #1
	cmp r6, #7
	bls _08087C62
_08087C88:
	bl sub_080021A8
	cmp r0, #0
	bne _08087CA8
	bl sub_0801AAF8
	cmp r0, #0
	bne _08087CA8
	bl sub_080003F0
	movs r0, #1
	negs r0, r0
	add r8, r0
	cmp r8, r0
	beq _08087CA8
	b _08087B8E
_08087CA8:
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	add sp, #0x10c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08087A5C
