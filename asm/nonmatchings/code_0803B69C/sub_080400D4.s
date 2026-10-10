	thumb_func_start sub_080400D4
sub_080400D4: @ 0x080400D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08040110
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	adds r1, r0, #0
	cmp r0, #1
	beq _08040124
	cmp r0, #1
	bgt _08040114
	cmp r0, #0
	beq _0804011E
	b _08040144
_08040110: .4byte gUnk_03003CE0
_08040114:
	cmp r1, #2
	beq _0804012A
	cmp r1, #3
	beq _08040138
	b _08040144
_0804011E:
	movs r0, #0
	movs r1, #0x6c
	b _0804012E
_08040124:
	movs r0, #0
	movs r1, #0x84
	b _0804012E
_0804012A:
	movs r0, #0
	movs r1, #0x54
_0804012E:
	movs r2, #0xf5
	movs r3, #0
	bl sub_08028AAC
	b _08040144
_08040138:
	movs r0, #0
	movs r1, #0x9c
	movs r2, #0xf5
	movs r3, #0
	bl sub_08028AAC
_08040144:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	movs r0, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #0x1e
	add r5, sp, #0xc
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x18]
	add r1, sp, #0x14
	mov r9, r1
	b _0804016E
_08040164:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804017A
_0804016E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08040164
_0804017A:
	movs r0, #0x1e
	bl sub_0801AA34
	b _08040186
_08040182:
	bl sub_080003F0
_08040186:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08040182
	movs r0, #0
	movs r1, #8
	bl sub_0802939C
	movs r2, #0x75
	negs r2, r2
	movs r0, #0
	movs r1, #0
	movs r3, #0x75
	bl sub_08028D98
	movs r0, #0
	movs r1, #0
	bl sub_0802939C
	ldr r0, _08040200
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	mov sl, r4
	ldr r0, _08040204
	mov r8, r0
_080401C4:
	add r0, sp, #8
	adds r1, r7, #0
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
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
	adds r4, #0xa
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080401C4
	b _0804020C
_08040200: .4byte gUnk_03003170
_08040204: .4byte 0xFFE80000
_08040208:
	bl sub_080003F0
_0804020C:
	bl sub_0805F184
	cmp r0, #0
	bne _08040208
	b _0804021A
_08040216:
	bl sub_080003F0
_0804021A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08040216
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0804023C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08040244
_0804023C: .4byte 0x001400E1
_08040240:
	bl sub_080003F0
_08040244:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804025A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08040240
	bl sub_0805EFBC
_0804025A:
	movs r0, #0x22
	mov sl, r0
	ldr r0, _080402EC
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
_08040274:
	ldr r0, [sp, #0x18]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, r9
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
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08040274
	bl sub_0800CFA4
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _080402F0
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0, #0x20]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080402EC: .4byte gUnk_03003170
_080402F0: .4byte gUnk_03003CE0
	thumb_func_end sub_080400D4
