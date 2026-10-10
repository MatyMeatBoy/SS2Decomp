	thumb_func_start sub_080420C8
sub_080420C8: @ 0x080420C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08042104
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	cmp r0, #1
	beq _08042118
	cmp r0, #1
	bgt _08042108
	cmp r0, #0
	beq _08042112
	b _08042138
	.2byte 0x0000
_08042104: .4byte gUnk_03003CE0
_08042108:
	cmp r0, #2
	beq _0804211E
	cmp r0, #3
	beq _0804212C
	b _08042138
_08042112:
	movs r0, #0
	movs r1, #0x6c
	b _08042122
_08042118:
	movs r0, #0
	movs r1, #0x84
	b _08042122
_0804211E:
	movs r0, #0
	movs r1, #0x54
_08042122:
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
	b _08042138
_0804212C:
	movs r0, #0
	movs r1, #0x9c
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
_08042138:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08042170
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08067D74
	movs r4, #2
	add r6, sp, #0xc
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x18]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x1c]
	b _0804217E
_08042170: .4byte gUnk_03003CE0
_08042174:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804218A
_0804217E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08042174
_0804218A:
	bl sub_0800CC98
	cmp r0, #0
	bne _080421CC
	bl sub_0801AB24
	cmp r0, #1
	beq _080421B0
	cmp r0, #1
	bgt _080421A4
	cmp r0, #0
	beq _080421AA
	b _080421C4
_080421A4:
	cmp r0, #2
	beq _080421B8
	b _080421C4
_080421AA:
	bl sub_080576A8
	b _080421C4
_080421B0:
	movs r0, #6
	bl sub_0801AB50
	b _080421C4
_080421B8:
	movs r0, #6
	bl sub_0801AB90
	b _080421C4
_080421C0:
	bl sub_080003F0
_080421C4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080421C0
_080421CC:
	movs r2, #0xa
	mov sl, r2
	ldr r0, _08042238
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r7, [r1, r3]
	adds r0, #0x82
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r4, #0
	mov r9, r4
	ldr r2, _0804223C
	mov r8, r2
_080421E8:
	add r0, sp, #8
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r6, #0
	adds r1, r5, #0
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
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _080421E8
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08042244
	ldr r0, _08042240
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0804224E
_08042238: .4byte gUnk_03003170
_0804223C: .4byte 0xFFE80000
_08042240: .4byte gUnk_03005CF4
_08042244:
	ldr r0, _0804225C
	ldr r0, [r0, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r0, r0, r2
_0804224E:
	ldrb r0, [r0, #0]
	asrs r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _080422B8
	b _08042264
	.2byte 0x0000
_0804225C: .4byte gUnk_03005CF4
_08042260:
	bl sub_080003F0
_08042264:
	bl sub_0805F184
	cmp r0, #0
	bne _08042260
	b _08042272
_0804226E:
	bl sub_080003F0
_08042272:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804226E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08042294
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804229C
_08042294: .4byte 0x00140102
_08042298:
	bl sub_080003F0
_0804229C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08042306
	bl sub_0800CDF8
	cmp r0, #0
	beq _08042298
	bl sub_0805EFBC
	b _08042306
_080422B4:
	bl sub_080003F0
_080422B8:
	bl sub_0805F184
	cmp r0, #0
	bne _080422B4
	b _080422C6
_080422C2:
	bl sub_080003F0
_080422C6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080422C2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080422E8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080422F0
_080422E8: .4byte 0x00140101
_080422EC:
	bl sub_080003F0
_080422F0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08042306
	bl sub_0800CDF8
	cmp r0, #0
	beq _080422EC
	bl sub_0805EFBC
_08042306:
	movs r3, #0x22
	mov r9, r3
	ldr r0, _08042388
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
_08042320:
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
	ble _08042320
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804238C
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
_08042388: .4byte gUnk_03003170
_0804238C: .4byte gUnk_03003CE0
	thumb_func_end sub_080420C8
