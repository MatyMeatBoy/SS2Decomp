	thumb_func_start sub_08092F58
sub_08092F58: @ 0x08092F58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xcc
	lsls r1, r1, #0x18
	movs r2, #0xff
	lsls r2, r2, #0x18
	adds r1, r1, r2
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc8]
	movs r0, #0
	str r0, [sp, #0xc4]
	lsrs r2, r1, #0x18
	str r2, [sp, #0xb0]
	asrs r7, r1, #0x18
	ldr r0, _08092FD4
	adds r1, r7, r0
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x18
	movs r2, #7
	adds r3, r5, #0
	bl sub_08065158
	add r6, sp, #0x4c
	ldr r1, _08092FD8
	str r4, [sp, #0]
	adds r0, r6, #0
	movs r2, #8
	adds r3, r5, #0
	bl sub_08065158
	mov r0, sp
	adds r0, #0x3b
	add r1, sp, #0xc4
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	add r0, sp, #0x70
	strb r4, [r0, #0]
	add r4, sp, #0x80
	ldr r1, [sp, #0x24]
	adds r1, #0xe0
	adds r0, r4, #0
	bl sub_08097F70
	adds r0, r4, #0
	movs r1, #0x1f
	bl sub_08096EFC
	cmp r7, #1
	beq _08092FF4
	cmp r7, #1
	bgt _08092FDC
	cmp r7, #0
	beq _08092FE6
	b _08093012
	.2byte 0x0000
_08092FD4: .4byte 0x0005003C
_08092FD8: .4byte 0x00050040
_08092FDC:
	cmp r7, #2
	beq _08092FFC
	cmp r7, #3
	beq _08093008
	b _08093012
_08092FE6:
	ldr r0, _08092FF0
	ldr r2, [r0, #0]
	str r2, [sp, #0xb4]
	b _0809300E
	.2byte 0x0000
_08092FF0: .4byte gUnk_0851845C
_08092FF4:
	ldr r0, _08092FF8
	b _0809300A
_08092FF8: .4byte gUnk_0851848C
_08092FFC:
	ldr r0, _08093004
	ldr r2, [r0, #0]
	str r2, [sp, #0xb4]
	b _0809300E
_08093004: .4byte gUnk_085184BC
_08093008:
	ldr r0, _08093044
_0809300A:
	ldr r1, [r0, #0]
	str r1, [sp, #0xb4]
_0809300E:
	ldr r0, [r0, #4]
	str r0, [sp, #0xb8]
_08093012:
	movs r2, #0x80
	lsls r2, r2, #8
	str r2, [sp, #0xbc]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp, #0xc0]
	add r6, sp, #0xa4
	movs r0, #0
	strh r0, [r6, #0]
	mov r5, sp
	adds r5, #0xa2
	strh r0, [r5, #0]
	add r4, sp, #0xa0
	strh r0, [r4, #0]
	mov r9, r0
	mov sl, r0
	movs r7, #0
	movs r1, #6
	mov r8, r1
	movs r0, #6
	bl sub_0801AB50
	adds r6, r4, #0
	b _0809304C
	.2byte 0x0000
_08093044: .4byte gUnk_085184EC
_08093048:
	bl sub_080003F0
_0809304C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08093048
	ldr r0, _08093070
	bl sub_0805865C
_0809305A:
	mov r0, r8
	subs r0, #1
	cmp r0, #5
	bls _08093064
	b _08093212
_08093064:
	lsls r0, r0, #2
	ldr r1, _08093074
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08093070: .4byte 0x00000195
_08093074: .4byte _08093078
_08093078:
	.4byte _08093202
_0809307C: .4byte _08093166
_08093080: .4byte _08093140
_08093084: .4byte _08093120
_08093088: .4byte _08093104
_0809308C: .4byte _08093090
_08093090:
	adds r1, r7, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r1, #0x3c
	bhi _0809309E
	b _08093212
_0809309E:
	movs r7, #0
	movs r2, #5
	mov r8, r2
	ldr r1, [sp, #0xb0]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080930D4
	cmp r0, #1
	bgt _080930B8
	cmp r0, #0
	beq _080930C2
	b _08093212
_080930B8:
	cmp r0, #2
	beq _080930E8
	cmp r0, #3
	beq _080930F0
	b _08093212
_080930C2:
	ldr r0, _080930D0
	movs r1, #6
	movs r2, #2
	movs r3, #0x14
	bl sub_08097EB0
	b _08093212
_080930D0: .4byte gUnk_0851845C
_080930D4:
	ldr r0, _080930E4
	movs r1, #6
	movs r2, #2
	movs r3, #0x16
	bl sub_08097EB0
	b _08093212
	.2byte 0x0000
_080930E4: .4byte gUnk_0851848C
_080930E8:
	ldr r0, _080930EC
	b _080930F2
_080930EC: .4byte gUnk_085184BC
_080930F0:
	ldr r0, _08093100
_080930F2:
	movs r1, #6
	movs r2, #2
	movs r3, #0x18
	bl sub_08097EB0
	b _08093212
	.2byte 0x0000
_08093100: .4byte gUnk_085184EC
_08093104:
	add r4, sp, #0xa8
	movs r0, #0
	adds r1, r4, #0
	bl sub_08097EF0
	cmp r0, #0
	beq _08093116
	movs r2, #4
	b _08093210
_08093116:
	ldr r0, [r4, #0]
	str r0, [sp, #0xb4]
	ldr r4, [r4, #4]
	str r4, [sp, #0xb8]
	b _08093212
_08093120:
	adds r1, r7, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r1, #0x1e
	bls _08093212
	ldr r0, _0809313C
	bl sub_0805865C
	movs r7, #0
	movs r1, #3
	mov r8, r1
	b _08093212
	.2byte 0x0000
_0809313C: .4byte 0x00000197
_08093140:
	adds r1, r7, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r1, #0xb4
	bls _0809315A
	movs r0, #0xcb
	lsls r0, r0, #1
	bl sub_0805865C
	movs r7, #0
	movs r2, #2
	b _08093210
_0809315A:
	movs r1, #0xd0
	lsls r1, r1, #1
	ldr r0, [sp, #0xb4]
	adds r1, r0, r1
	str r1, [sp, #0xb4]
	b _08093212
_08093166:
	movs r0, #1
	ldr r2, [sp, #0xc4]
	ands r0, r2
	cmp r0, #0
	beq _08093180
	ldr r1, _0809317C
	ldr r0, [sp, #0xc0]
	adds r1, r0, r1
	str r1, [sp, #0xc0]
	b _0809318A
	.2byte 0x0000
_0809317C: .4byte 0xFFFFFE80
_08093180:
	movs r0, #0xc0
	lsls r0, r0, #1
	ldr r2, [sp, #0xc0]
	adds r0, r2, r0
	str r0, [sp, #0xc0]
_0809318A:
	ldr r0, _080931CC
	ldr r1, [sp, #0xc0]
	cmp r1, r0
	bgt _0809319C
	movs r0, #0xc0
	lsls r0, r0, #6
	ldr r2, [sp, #0xc0]
	cmp r2, r0
	bgt _080931A6
_0809319C:
	ldr r0, [sp, #0xc4]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc4]
_080931A6:
	ldr r0, [sp, #0xc4]
	ldr r1, [sp, #0xc8]
	cmp r0, r1
	blo _080931E0
	mov r2, sl
	cmp r2, #0
	beq _080931D0
	adds r0, r7, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq _08093212
	mov r0, sl
	subs r0, #1
	b _080931FA
	.2byte 0x0000
_080931CC: .4byte 0x00008FFF
_080931D0:
	movs r0, #0xcb
	lsls r0, r0, #1
	bl sub_0805867C
	movs r7, #0
	movs r0, #1
	mov r8, r0
	b _08093212
_080931E0:
	mov r1, sl
	cmp r1, #0xc
	bhi _08093212
	adds r0, r7, #0
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _08093212
	mov r0, sl
	adds r0, #1
_080931FA:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	b _08093212
_08093202:
	adds r1, r7, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r1, #0x78
	bls _08093212
	movs r2, #0
_08093210:
	mov r8, r2
_08093212:
	mov r0, r9
	cmp r0, #3
	beq _08093220
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08093222
_08093220:
	movs r0, #0
_08093222:
	mov r9, r0
	cmp r0, #1
	beq _08093244
	cmp r0, #1
	bgt _08093232
	cmp r0, #0
	beq _0809323E
	b _08093264
_08093232:
	mov r1, r9
	cmp r1, #2
	beq _0809324A
	cmp r1, #3
	beq _08093258
	b _08093264
_0809323E:
	movs r0, #0
	movs r1, #0
	b _0809324E
_08093244:
	movs r0, #1
	movs r1, #0
	b _0809324E
_0809324A:
	movs r0, #1
	movs r1, #1
_0809324E:
	movs r2, #0
	movs r3, #0
	bl sub_08009088
	b _08093264
_08093258:
	movs r0, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl sub_08009088
_08093264:
	ldr r1, _0809334C
	ldrh r0, [r1, #0]
	adds r0, #1
	movs r5, #0
	strh r0, [r1, #0]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	movs r0, #0x10
	str r0, [sp, #0]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0x23
	movs r2, #0
	mov r3, sl
	bl sub_0800903C
	mov r2, r8
	cmp r2, #2
	bne _080932E2
	ldr r1, [sp, #0x58]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x11
	movs r2, #1
	bl sub_08000AF0
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x4c
	movs r1, #0
	adds r2, r6, #0
	mov r3, sp
	adds r3, #0xa2
	bl sub_08065370
	ldr r1, [sp, #0xbc]
	asrs r0, r1, #8
	ldrh r3, [r6, #0]
	str r5, [sp, #0]
	str r5, [sp, #4]
	str r4, [sp, #8]
	add r1, sp, #0x68
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x54]
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x4c]
	str r1, [sp, #0x14]
	movs r1, #0
	movs r2, #0
	bl sub_08007974
	adds r1, r0, #0
	ldr r2, [sp, #0xc0]
	asrs r0, r2, #8
	str r0, [r1, #0xc]
_080932E2:
	mov r0, r8
	cmp r0, #2
	bls _0809332C
	ldr r1, [sp, #0x24]
	adds r1, #0xe0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x18
	movs r1, #0
	add r2, sp, #0xa4
	mov r3, sp
	adds r3, #0xa2
	bl sub_08065370
	ldr r1, [sp, #0xb4]
	asrs r0, r1, #8
	add r2, sp, #0xa4
	ldrh r3, [r2, #0]
	str r5, [sp, #0]
	add r1, sp, #0x34
	str r1, [sp, #4]
	ldr r1, [sp, #0x20]
	str r1, [sp, #8]
	ldr r1, [sp, #0x18]
	str r1, [sp, #0xc]
	movs r1, #0x9f
	movs r2, #0
	bl sub_08007870
	adds r1, r0, #0
	ldr r2, [sp, #0xb8]
	asrs r0, r2, #8
	str r0, [r1, #0xc]
_0809332C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _0809333C
	movs r0, #0
	mov r8, r0
_0809333C:
	mov r1, r8
	cmp r1, #0
	beq _08093344
	b _0809305A
_08093344:
	movs r0, #6
	bl sub_0801ABE8
	b _08093354
_0809334C: .4byte gUnk_03001250
_08093350:
	bl sub_080003F0
_08093354:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08093350
	movs r0, #3
	bl sub_080586D0
	bl sub_08093404
	bl sub_0800CC18
	bl sub_0800CC68
	bl sub_08098028
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08009088
	movs r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	add sp, #0xcc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08092F58
