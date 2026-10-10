	thumb_func_start sub_0803EE88
sub_0803EE88: @ 0x0803EE88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803EEE4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	ldr r2, _0803EEE8
	movs r0, #0x20
	movs r1, #0x78
	bl sub_080289C0
	str r0, [sp, #0x20]
	movs r1, #1
	bl sub_0802939C
	ldr r2, _0803EEEC
	movs r0, #0x31
	movs r1, #0x8c
	bl sub_080289C0
	str r0, [sp, #0x24]
	bl sub_080020F4
	adds r1, r0, #0
	cmp r0, #1
	beq _0803EF0A
	cmp r0, #1
	bgt _0803EEF0
	cmp r0, #0
	beq _0803EEFA
	b _0803F052
	.2byte 0x0000
_0803EEE4: .4byte gUnk_03003CE0
_0803EEE8: .4byte 0x00000141
_0803EEEC: .4byte 0x0000013D
_0803EEF0:
	cmp r1, #2
	beq _0803EF7C
	cmp r1, #3
	beq _0803EFEC
	b _0803F052
_0803EEFA:
	movs r2, #0xb4
	lsls r2, r2, #1
	movs r0, #0
	movs r1, #0x78
	movs r3, #0
	bl sub_08028AAC
	b _0803F052
_0803EF0A:
	movs r2, #0xbe
	lsls r2, r2, #1
	movs r0, #0
	movs r1, #0x8c
	movs r3, #0
	bl sub_08028AAC
	movs r0, #0x80
	lsls r0, r0, #3
	mov sl, r0
	ldr r0, _0803EF74
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	add r5, sp, #0xc
	mov r9, r4
	ldr r0, _0803EF78
	mov r8, r0
_0803EF38:
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
	ble _0803EF38
	b _0803F052
_0803EF74: .4byte gUnk_03003170
_0803EF78: .4byte 0xFFEC0000
_0803EF7C:
	movs r2, #0xbe
	lsls r2, r2, #1
	movs r0, #0
	movs r1, #0x64
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _0803EFE4
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	mov r8, r2
	adds r0, #0x82
	movs r1, #0
	ldrsh r7, [r0, r1]
	movs r4, #0
	add r6, sp, #0x10
	add r5, sp, #0x14
	mov sl, r4
	ldr r2, _0803EFE8
	mov r9, r2
_0803EFA8:
	adds r0, r6, #0
	mov r1, r8
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
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
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	cmp r4, r0
	ble _0803EFA8
	b _0803F052
_0803EFE4: .4byte gUnk_03003170
_0803EFE8: .4byte 0xFFEC0000
_0803EFEC:
	movs r2, #0xbe
	lsls r2, r2, #1
	movs r0, #0
	movs r1, #0x78
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _0803F05C
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	mov r8, r2
	adds r0, #0x82
	movs r1, #0
	ldrsh r7, [r0, r1]
	movs r4, #0
	add r6, sp, #0x18
	add r5, sp, #0x1c
	mov sl, r4
	ldr r2, _0803F060
	mov r9, r2
_0803F018:
	adds r0, r6, #0
	mov r1, r8
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	cmp r4, r0
	ble _0803F018
_0803F052:
	movs r0, #0x1e
	bl sub_0801AA34
	b _0803F068
	.2byte 0x0000
_0803F05C: .4byte gUnk_03003170
_0803F060: .4byte 0xFFEC0000
_0803F064:
	bl sub_080003F0
_0803F068:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0803F064
	b _0803F076
_0803F072:
	bl sub_080003F0
_0803F076:
	bl sub_0805F184
	cmp r0, #0
	bne _0803F072
	b _0803F084
_0803F080:
	bl sub_080003F0
_0803F084:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803F080
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803F0A4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803F0AC
_0803F0A4: .4byte 0x00140481
_0803F0A8:
	bl sub_080003F0
_0803F0AC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803F0A8
	movs r0, #0x1e
	bl sub_0801AA8C
	b _0803F0C2
_0803F0BE:
	bl sub_080003F0
_0803F0C2:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0803F0BE
	ldr r0, _0803F12C
	ldr r0, [r0, #0]
	ldr r2, _0803F130
	adds r1, r0, r2
	movs r2, #0
_0803F0D4:
	ldr r0, [r1, #0]
	ldr r3, [sp, #0x20]
	cmp r0, r3
	beq _0803F0EA
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803F0D4
	bl sub_080003F0
	movs r1, #0
_0803F0EA:
	cmp r1, #0
	beq _0803F0F2
	movs r0, #4
	strh r0, [r1, #0x36]
_0803F0F2:
	ldr r0, _0803F12C
	ldr r0, [r0, #0]
	ldr r2, _0803F130
	adds r1, r0, r2
	movs r2, #0
_0803F0FC:
	ldr r0, [r1, #0]
	ldr r3, [sp, #0x24]
	cmp r0, r3
	beq _0803F112
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803F0FC
	bl sub_080003F0
	movs r1, #0
_0803F112:
	cmp r1, #0
	beq _0803F11A
	movs r0, #4
	strh r0, [r1, #0x36]
_0803F11A:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803F138
	ldr r0, _0803F12C
	ldr r0, [r0, #0]
	ldr r1, _0803F134
	adds r2, r0, r1
	b _0803F140
_0803F12C: .4byte gUnk_03005CF4
_0803F130: .4byte 0x000007A4
_0803F134: .4byte 0x000001C3
_0803F138:
	ldr r0, _0803F180
	ldr r0, [r0, #0]
	ldr r3, _0803F184
	adds r2, r0, r3
_0803F140:
	ldrb r1, [r2, #0]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2, #0]
	movs r0, #0
	movs r1, #0
	bl sub_0802A228
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803F188
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0803F180: .4byte gUnk_03005CF4
_0803F184: .4byte 0x000001B7
_0803F188: .4byte gUnk_03003CE0
	thumb_func_end sub_0803EE88
