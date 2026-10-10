	thumb_func_start sub_08094F3C
sub_08094F3C: @ 0x08094F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	lsls r1, r1, #0x18
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x9c]
	movs r0, #0xff
	lsls r0, r0, #0x18
	adds r1, r1, r0
	asrs r1, r1, #0x18
	ldr r2, _08094FCC
	adds r1, r1, r2
	movs r6, #1
	negs r6, r6
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x18
	movs r2, #7
	adds r3, r6, #0
	bl sub_08065158
	mov r0, sp
	adds r0, #0x3b
	movs r5, #0
	strb r5, [r0, #0]
	add r0, sp, #0x4c
	mov sl, r0
	ldr r1, _08094FD0
	str r4, [sp, #0]
	movs r2, #8
	adds r3, r6, #0
	bl sub_08065158
	add r0, sp, #0x70
	strb r4, [r0, #0]
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [sp, #0x88]
	movs r2, #0xa0
	lsls r2, r2, #7
	str r2, [sp, #0x8c]
	movs r4, #0x86
	add r4, sp
	strh r5, [r4, #0]
	add r0, sp, #0x84
	strh r5, [r0, #0]
	mov r6, sp
	adds r6, #0x82
	strh r5, [r6, #0]
	add r4, sp, #0x80
	strh r5, [r4, #0]
	movs r1, #0
	str r1, [sp, #0xa0]
	movs r2, #0
	str r2, [sp, #0x90]
	movs r0, #0x10
	str r0, [sp, #0x94]
	str r1, [sp, #0x98]
	movs r0, #6
	bl sub_0801AB50
	mov r9, r4
	b _08094FD8
	.2byte 0x0000
_08094FCC: .4byte 0x0005002C
_08094FD0: .4byte 0x00050030
_08094FD4:
	bl sub_080003F0
_08094FD8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08094FD4
	ldr r0, _08095054
	movs r1, #0xd0
	lsls r1, r1, #6
	strh r1, [r0, #0x3a]
	movs r2, #4
	str r2, [sp, #0xa4]
	movs r4, #0x30
	str r4, [sp, #0xa8]
	movs r0, #7
	mov r8, r0
	movs r0, #0xcc
	lsls r0, r0, #1
	bl sub_0805865C
_08094FFC:
	ldr r1, [sp, #0x98]
	str r1, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xa4]
	ldr r1, [sp, #0xa8]
	movs r2, #1
	ldr r3, [sp, #0x94]
	bl sub_0800903C
	ldr r0, [sp, #0xa0]
	adds r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xa0]
	bl sub_08095610
	bl sub_080953F8
	ldr r1, [sp, #0x24]
	adds r1, #0xe0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x18
	movs r1, #0
	mov r2, r9
	mov r3, sp
	adds r3, #0x82
	bl sub_08065370
	mov r0, r8
	subs r0, #1
	cmp r0, #6
	bls _0809504A
	b _08095382
_0809504A:
	lsls r0, r0, #2
	ldr r1, _08095058
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08095054: .4byte gUnk_03001250
_08095058: .4byte _0809505C
_0809505C:
	.4byte _08095370
_08095060: .4byte _08095278
_08095064: .4byte _0809519E
_08095068: .4byte _08095158
_0809506C: .4byte _08095116
_08095070: .4byte _080950A6
_08095074: .4byte _08095078
_08095078:
	ldr r1, [sp, #0x90]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x90]
	cmp r1, #0x78
	bls _0809508E
	movs r2, #0
	str r2, [sp, #0x90]
	movs r4, #6
	mov r8, r4
_0809508E:
	ldr r1, [sp, #0x88]
	asrs r0, r1, #8
	ldr r2, [sp, #0x8c]
	asrs r1, r2, #8
	mov r4, r9
	ldrh r3, [r4, #0]
	movs r4, #2
	str r4, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	str r4, [sp, #8]
	b _08095264
_080950A6:
	movs r0, #4
	ldr r1, [sp, #0x90]
	ands r0, r1
	cmp r0, #0
	beq _080950F4
	movs r2, #0
	str r2, [sp, #0x90]
	ldr r4, [sp, #0x94]
	cmp r4, #0
	beq _080950C6
	adds r0, r4, #0
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x94]
	b _080950FE
_080950C6:
	ldr r0, _080950F0
	add r1, sp, #0x90
	ldrh r1, [r1, #0]
	strh r1, [r0, #0x3a]
	movs r1, #0x80
	lsls r1, r1, #8
	movs r0, #0
	movs r2, #1
	bl sub_080009F8
	movs r2, #0
	str r2, [sp, #0xa4]
	movs r4, #0x24
	str r4, [sp, #0xa8]
	movs r0, #0
	str r0, [sp, #0x94]
	movs r1, #0
	str r1, [sp, #0x98]
	movs r2, #5
	mov r8, r2
	b _080950FE
_080950F0: .4byte gUnk_03001250
_080950F4:
	ldr r0, [sp, #0x90]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x90]
_080950FE:
	ldr r4, [sp, #0x88]
	asrs r0, r4, #8
	ldr r2, [sp, #0x8c]
	asrs r1, r2, #8
	mov r4, r9
	ldrh r3, [r4, #0]
	movs r4, #2
	str r4, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	str r4, [sp, #8]
	b _08095264
_08095116:
	ldr r0, [sp, #0x94]
	cmp r0, #9
	bhi _08095124
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x94]
_08095124:
	movs r0, #4
	ldr r1, [sp, #0x90]
	ands r0, r1
	cmp r0, #0
	bne _08095130
	b _08095244
_08095130:
	movs r2, #0
	str r2, [sp, #0x90]
	ldr r4, [sp, #0x98]
	cmp r4, #0xf
	bhi _08095146
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x98]
	b _0809524E
_08095146:
	ldr r0, _08095154
	bl sub_0805865C
	movs r0, #4
	mov r8, r0
	b _0809524E
	.2byte 0x0000
_08095154: .4byte 0x00000199
_08095158:
	ldr r4, [sp, #0x94]
	cmp r4, #0xf
	bhi _08095168
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x94]
_08095168:
	ldr r0, [sp, #0x90]
	cmp r0, #0x78
	bls _08095180
	movs r1, #0
	str r1, [sp, #0x90]
	movs r2, #0x10
	str r2, [sp, #0x94]
	movs r4, #0x10
	str r4, [sp, #0x98]
	movs r0, #3
	mov r8, r0
	b _0809518A
_08095180:
	ldr r0, [sp, #0x90]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x90]
_0809518A:
	ldr r1, [sp, #0x88]
	asrs r0, r1, #8
	ldr r2, [sp, #0x8c]
	asrs r1, r2, #8
	mov r4, r9
	ldrh r3, [r4, #0]
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	b _08095262
_0809519E:
	movs r0, #4
	ldr r4, [sp, #0x90]
	ands r0, r4
	cmp r0, #0
	beq _08095244
	movs r0, #0
	str r0, [sp, #0x90]
	ldr r1, [sp, #0x94]
	cmp r1, #0
	beq _080951BE
	adds r0, r1, #0
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x94]
	b _0809524E
_080951BE:
	bl sub_0800086C
	ldr r5, _08095238
	ldr r1, [sp, #0xa0]
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r4, [r1, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x30
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080951E4
	negs r0, r0
_080951E4:
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0809523C
	ands r7, r1
	orrs r7, r0
	bl sub_0800086C
	ldr r4, [sp, #0xa0]
	lsls r1, r4, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r4, [r1, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x30
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08095216
	negs r0, r0
_08095216:
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, #0x50
	lsls r0, r0, #0x10
	ldr r1, _08095240
	ands r7, r1
	orrs r7, r0
	movs r4, #0x10
	str r4, [sp, #0x94]
	movs r0, #2
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #1
	bl sub_0805865C
	b _0809524E
	.2byte 0x0000
_08095238: .4byte gUnk_080B9704
_0809523C: .4byte 0xFFFF0000
_08095240: .4byte 0x0000FFFF
_08095244:
	ldr r0, [sp, #0x90]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x90]
_0809524E:
	ldr r1, [sp, #0x88]
	asrs r0, r1, #8
	ldr r2, [sp, #0x8c]
	asrs r1, r2, #8
	mov r4, r9
	ldrh r3, [r4, #0]
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	movs r2, #1
_08095262:
	str r2, [sp, #8]
_08095264:
	add r2, sp, #0x34
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x20]
	str r2, [sp, #0x10]
	ldr r2, [sp, #0x18]
	str r2, [sp, #0x14]
	movs r2, #0
	bl sub_08007974
	b _08095382
_08095278:
	add r4, sp, #0x84
	mov r3, sp
	adds r3, #0x86
	movs r5, #0
	str r5, [sp, #0]
	mov r0, sl
	movs r1, #0
	adds r2, r4, #0
	bl sub_08065370
	adds r6, r0, #0
	ldr r0, _08095360
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080952CA
	mov r0, sl
	ldr r1, [r0, #0xc]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x11
	movs r2, #1
	bl sub_08000AF0
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	asrs r1, r7, #0x10
	ldrh r3, [r4, #0]
	str r5, [sp, #0]
	add r2, sp, #0x68
	str r2, [sp, #4]
	mov r4, sl
	ldr r2, [r4, #8]
	str r2, [sp, #8]
	ldr r2, [sp, #0x4c]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
_080952CA:
	cmp r6, #0
	beq _08095354
	movs r0, #0x86
	add r0, sp
	strh r5, [r0, #0]
	add r1, sp, #0x84
	strh r5, [r1, #0]
	bl sub_0800086C
	ldr r5, _08095364
	ldr r1, [sp, #0xa0]
	adds r1, #0x40
	lsls r1, r1, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r4, [r1, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x30
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080952FE
	negs r0, r0
_080952FE:
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, #0x78
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08095368
	ands r7, r1
	orrs r7, r0
	bl sub_0800086C
	ldr r4, [sp, #0xa0]
	lsls r1, r4, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r4, [r1, r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x30
	bl __modsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08095330
	negs r0, r0
_08095330:
	muls r0, r4, r0
	asrs r0, r0, #8
	adds r0, #0x50
	lsls r0, r0, #0x10
	ldr r1, _0809536C
	ands r7, r1
	orrs r7, r0
	ldr r0, [sp, #0x9c]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x9c]
	cmp r0, #0
	beq _0809535A
	movs r0, #0xcd
	lsls r0, r0, #1
	bl sub_0805865C
_08095354:
	ldr r4, [sp, #0x9c]
	cmp r4, #0
	bne _08095382
_0809535A:
	movs r0, #1
	mov r8, r0
	b _08095382
_08095360: .4byte gUnk_03002344
_08095364: .4byte gUnk_080B9704
_08095368: .4byte 0xFFFF0000
_0809536C: .4byte 0x0000FFFF
_08095370:
	ldr r1, [sp, #0x90]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x90]
	cmp r1, #0x78
	bls _08095382
	movs r1, #0
	mov r8, r1
_08095382:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _08095392
	movs r2, #0
	mov r8, r2
_08095392:
	mov r4, r8
	cmp r4, #0
	beq _0809539A
	b _08094FFC
_0809539A:
	movs r0, #6
	bl sub_0801ABE8
	b _080953A6
_080953A2:
	bl sub_080003F0
_080953A6:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080953A2
	movs r0, #3
	bl sub_080586D0
	bl sub_0800CC18
	bl sub_0800CC68
	bl sub_08098028
	ldr r1, _080953F4
	movs r0, #0
	strh r0, [r1, #0x3a]
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #8
	movs r2, #0
	bl sub_080009F8
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080953F4: .4byte gUnk_03001250
	thumb_func_end sub_08094F3C
