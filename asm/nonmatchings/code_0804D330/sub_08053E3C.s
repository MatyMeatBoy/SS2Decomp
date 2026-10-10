	thumb_func_start sub_08053E3C
sub_08053E3C: @ 0x08053E3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08053E74
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r5, #1
	orrs r0, r5
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _08053E80
	ldr r0, _08053E78
	ldr r0, [r0, #0]
	ldr r1, _08053E7C
	adds r0, r0, r1
	b _08053E88
_08053E74: .4byte gUnk_03003CE0
_08053E78: .4byte gUnk_03005CF4
_08053E7C: .4byte 0x000001C7
_08053E80:
	ldr r0, _08053EA0
	ldr r0, [r0, #0]
	ldr r2, _08053EA4
	adds r0, r0, r2
_08053E88:
	ldrb r0, [r0, #0]
	asrs r4, r0, #1
	ands r4, r5
	bl sub_0800CE30
	cmp r0, #0
	beq _08053EAC
	ldr r1, _08053EA0
	ldr r0, [r1, #0]
	ldr r3, _08053EA8
	adds r0, r0, r3
	b _08053EB4
_08053EA0: .4byte gUnk_03005CF4
_08053EA4: .4byte 0x000001BB
_08053EA8: .4byte 0x000001C3
_08053EAC:
	ldr r1, _08053EE8
	ldr r0, [r1, #0]
	ldr r2, _08053EEC
	adds r0, r0, r2
_08053EB4:
	ldrb r0, [r0, #0]
	asrs r2, r0, #5
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08053F1E
	ldr r2, _08053EF0
	movs r0, #1
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	bl sub_0800CC98
	cmp r0, #0
	beq _08053ED6
	b _08054290
_08053ED6:
	bl sub_0801AB24
	cmp r0, #1
	beq _08053F00
	cmp r0, #1
	bgt _08053EF4
	cmp r0, #0
	beq _08053EFA
	b _08053F14
_08053EE8: .4byte gUnk_03005CF4
_08053EEC: .4byte 0x000001B7
_08053EF0: .4byte 0x0000270F
_08053EF4:
	cmp r0, #2
	beq _08053F08
	b _08053F14
_08053EFA:
	bl sub_080576A8
	b _08053F14
_08053F00:
	movs r0, #6
	bl sub_0801AB50
	b _08053F14
_08053F08:
	movs r0, #6
	bl sub_0801AB90
	b _08053F14
_08053F10:
	bl sub_080003F0
_08053F14:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08053F10
	b _08054290
_08053F1E:
	cmp r4, #0
	beq _08053FD2
	ldr r2, _08053F98
	movs r0, #1
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	movs r1, #0x9c
	lsls r1, r1, #1
	movs r0, #2
	movs r2, #0xc8
	movs r3, #0
	bl sub_08028AAC
	ldr r3, _08053F9C
	mov r8, r3
	movs r7, #2
	movs r5, #1
	ldr r1, _08053FA0
	ldr r0, [r1, #0]
	ands r0, r7
	cmp r0, #0
	bne _08053F5E
	adds r6, r1, #0
	movs r4, #2
_08053F52:
	bl sub_080003F0
	ldr r0, [r6, #0]
	ands r0, r4
	cmp r0, #0
	beq _08053F52
_08053F5E:
	ldr r1, _08053FA4
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	mov r0, r8
	str r0, [r1, #0x38]
	str r7, [r1, #0x3c]
	movs r0, #0
	str r0, [r1, #0x30]
	str r0, [r1, #0x34]
	bl sub_0800CC98
	cmp r0, #0
	beq _08053F84
	b _08054290
_08053F84:
	bl sub_0801AB24
	cmp r0, #1
	beq _08053FB4
	cmp r0, #1
	bgt _08053FA8
	cmp r0, #0
	beq _08053FAE
	b _08053FC8
	.2byte 0x0000
_08053F98: .4byte 0x0000270F
_08053F9C: .4byte sub_0805442C
_08053FA0: .4byte gUnk_030056FC
_08053FA4: .4byte gUnk_030056F4
_08053FA8:
	cmp r0, #2
	beq _08053FBC
	b _08053FC8
_08053FAE:
	bl sub_080576A8
	b _08053FC8
_08053FB4:
	movs r0, #6
	bl sub_0801AB50
	b _08053FC8
_08053FBC:
	movs r0, #6
	bl sub_0801AB90
	b _08053FC8
_08053FC4:
	bl sub_080003F0
_08053FC8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08053FC4
	b _08054290
_08053FD2:
	ldr r1, [r1, #0]
	movs r3, #1
	ldr r2, [r1, #0x38]
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08053FE2
	movs r0, #1
_08053FE2:
	cmp r0, #0
	beq _08053FE8
	b _080541D4
_08053FE8:
	orrs r2, r3
	str r2, [r1, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	mov sl, r1
	ldr r0, _0805405C
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	add r5, sp, #0xc
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x18]
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x1c]
	movs r2, #0xc8
	lsls r2, r2, #0x10
	mov r9, r2
	movs r3, #0xc8
	lsls r3, r3, #0xe
	mov r8, r3
_0805401E:
	add r0, sp, #8
	adds r1, r7, #0
	mov r3, r9
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
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0805401E
	movs r4, #1
	b _0805406A
_0805405C: .4byte gUnk_03003170
_08054060:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08054076
_0805406A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08054060
_08054076:
	ldr r7, _080540FC
	movs r6, #1
	ldr r1, _08054100
	ldr r0, [r1, #0]
	ands r0, r6
	cmp r0, #0
	bne _08054094
	adds r5, r1, #0
	movs r4, #1
_08054088:
	bl sub_080003F0
	ldr r0, [r5, #0]
	ands r0, r4
	cmp r0, #0
	beq _08054088
_08054094:
	ldr r0, _08054104
	ldr r0, [r0, #0]
	str r7, [r0, #0x38]
	str r6, [r0, #0x3c]
	movs r1, #0
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	ldr r0, _08054108
	mov r8, r0
	movs r7, #2
	movs r5, #1
	ldr r1, _08054100
	ldr r0, [r1, #0]
	ands r0, r7
	cmp r0, #0
	bne _080540C4
	adds r6, r1, #0
	movs r4, #2
_080540B8:
	bl sub_080003F0
	ldr r0, [r6, #0]
	ands r0, r4
	cmp r0, #0
	beq _080540B8
_080540C4:
	ldr r1, _08054104
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	mov r2, r8
	str r2, [r1, #0x38]
	str r7, [r1, #0x3c]
	movs r0, #0
	str r0, [r1, #0x30]
	str r0, [r1, #0x34]
	bl sub_0800CC98
	cmp r0, #0
	bne _0805413A
	bl sub_0801AB24
	cmp r0, #1
	beq _08054118
	cmp r0, #1
	bgt _0805410C
	cmp r0, #0
	beq _08054112
	b _0805412C
	.2byte 0x0000
_080540FC: .4byte sub_080542C4
_08054100: .4byte gUnk_030056FC
_08054104: .4byte gUnk_030056F4
_08054108: .4byte sub_0805442C
_0805410C:
	cmp r0, #2
	beq _08054120
	b _0805412C
_08054112:
	bl sub_080576A8
	b _0805412C
_08054118:
	movs r0, #6
	bl sub_0801AB50
	b _0805412C
_08054120:
	movs r0, #6
	bl sub_0801AB90
	b _0805412C
_08054128:
	bl sub_080003F0
_0805412C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08054128
	b _0805413A
_08054136:
	bl sub_080003F0
_0805413A:
	bl sub_0805F184
	cmp r0, #0
	bne _08054136
	b _08054148
_08054144:
	bl sub_080003F0
_08054148:
	bl sub_0805EF90
	cmp r0, #0
	bne _08054144
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08054168
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08054170
_08054168: .4byte 0x00140283
_0805416C:
	bl sub_080003F0
_08054170:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0805416C
	movs r3, #0x19
	mov r9, r3
	ldr r0, _080541D0
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
_08054194:
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
	ble _08054194
	b _08054290
	.2byte 0x0000
_080541D0: .4byte gUnk_03003170
_080541D4:
	ldr r7, _08054258
	movs r6, #1
	ldr r1, _0805425C
	ldr r0, [r1, #0]
	ands r0, r6
	cmp r0, #0
	bne _080541F2
	adds r5, r1, #0
	movs r4, #1
_080541E6:
	bl sub_080003F0
	ldr r0, [r5, #0]
	ands r0, r4
	cmp r0, #0
	beq _080541E6
_080541F2:
	ldr r0, _08054260
	ldr r0, [r0, #0]
	str r7, [r0, #0x38]
	str r6, [r0, #0x3c]
	movs r1, #0
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	ldr r0, _08054264
	mov r8, r0
	movs r7, #2
	movs r5, #1
	ldr r1, _0805425C
	ldr r0, [r1, #0]
	ands r0, r7
	cmp r0, #0
	bne _08054222
	adds r6, r1, #0
	movs r4, #2
_08054216:
	bl sub_080003F0
	ldr r0, [r6, #0]
	ands r0, r4
	cmp r0, #0
	beq _08054216
_08054222:
	ldr r1, _08054260
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	mov r2, r8
	str r2, [r1, #0x38]
	str r7, [r1, #0x3c]
	movs r0, #0
	str r0, [r1, #0x30]
	str r0, [r1, #0x34]
	bl sub_0800CC98
	cmp r0, #0
	bne _08054290
	bl sub_0801AB24
	cmp r0, #1
	beq _08054274
	cmp r0, #1
	bgt _08054268
	cmp r0, #0
	beq _0805426E
	b _08054288
_08054258: .4byte sub_080542C4
_0805425C: .4byte gUnk_030056FC
_08054260: .4byte gUnk_030056F4
_08054264: .4byte sub_0805442C
_08054268:
	cmp r0, #2
	beq _0805427C
	b _08054288
_0805426E:
	bl sub_080576A8
	b _08054288
_08054274:
	movs r0, #6
	bl sub_0801AB50
	b _08054288
_0805427C:
	movs r0, #6
	bl sub_0801AB90
	b _08054288
_08054284:
	bl sub_080003F0
_08054288:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08054284
_08054290:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080542C0
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
_080542C0: .4byte gUnk_03003CE0
	thumb_func_end sub_08053E3C
