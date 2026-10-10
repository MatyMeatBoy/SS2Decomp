	thumb_func_start sub_08049EBC
sub_08049EBC: @ 0x08049EBC
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
	ldr r0, _08049EF0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _08049EF4
	movs r5, #0
	b _08049F22
_08049EF0: .4byte gUnk_03003CE0
_08049EF4:
	bl sub_080020F4
	cmp r0, #1
	beq _08049F16
	cmp r0, #1
	bgt _08049F06
	cmp r0, #0
	beq _08049F10
	b _08049F22
_08049F06:
	cmp r0, #2
	beq _08049F1A
	cmp r0, #3
	beq _08049F20
	b _08049F22
_08049F10:
	movs r5, #0xc
	negs r5, r5
	b _08049F22
_08049F16:
	movs r5, #0xc
	b _08049F22
_08049F1A:
	movs r5, #0x24
	negs r5, r5
	b _08049F22
_08049F20:
	movs r5, #0x24
_08049F22:
	adds r1, r5, #0
	adds r1, #0xf0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0xf0
	movs r3, #0
	bl sub_08028AAC
	movs r4, #1
	negs r5, r5
	add r0, sp, #0xc
	mov r8, r0
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x18]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x1c]
	b _08049F54
_08049F4A:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08049F60
_08049F54:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08049F4A
_08049F60:
	bl sub_0800CC98
	cmp r0, #0
	bne _08049FA2
	bl sub_0801AB24
	cmp r0, #1
	beq _08049F86
	cmp r0, #1
	bgt _08049F7A
	cmp r0, #0
	beq _08049F80
	b _08049F9A
_08049F7A:
	cmp r0, #2
	beq _08049F8E
	b _08049F9A
_08049F80:
	bl sub_080576A8
	b _08049F9A
_08049F86:
	movs r0, #6
	bl sub_0801AB50
	b _08049F9A
_08049F8E:
	movs r0, #6
	bl sub_0801AB90
	b _08049F9A
_08049F96:
	bl sub_080003F0
_08049F9A:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08049F96
_08049FA2:
	movs r1, #0xd9
	ldr r0, _08049FC0
	str r1, [r0, #0]
	ldr r0, _08049FC4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08049FBA
	movs r0, #0xd9
	bl sub_08006CB4
_08049FBA:
	movs r4, #0x14
	b _08049FD2
	.2byte 0x0000
_08049FC0: .4byte gUnk_03005CF8
_08049FC4: .4byte gUnk_030027D0
_08049FC8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08049FDE
_08049FD2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08049FC8
_08049FDE:
	movs r3, #0x11
	mov sl, r3
	ldr r0, _0804A044
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	lsls r5, r5, #0x10
	ldr r0, _0804A048
	mov r9, r0
_08049FFA:
	add r0, sp, #8
	adds r1, r7, #0
	asrs r2, r5, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, r8
	adds r1, r6, #0
	mov r3, r9
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
	ble _08049FFA
	ldr r0, _0804A04C
	ldr r0, [r0, #0]
	movs r1, #0x40
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	bne _0804A07C
	b _0804A054
	.2byte 0x0000
_0804A044: .4byte gUnk_03003170
_0804A048: .4byte 0xFF940000
_0804A04C: .4byte gUnk_03005CF4
_0804A050:
	bl sub_080003F0
_0804A054:
	bl sub_0805F184
	cmp r0, #0
	bne _0804A050
	b _0804A062
_0804A05E:
	bl sub_080003F0
_0804A062:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804A05E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804A074
	b _0804A098
	.2byte 0x0000
_0804A074: .4byte 0x00140030
_0804A078:
	bl sub_080003F0
_0804A07C:
	bl sub_0805F184
	cmp r0, #0
	bne _0804A078
	b _0804A08A
_0804A086:
	bl sub_080003F0
_0804A08A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804A086
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804A0B8
_0804A098:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r3, r0, #0
	ldr r0, _0804A0BC
	ldr r2, [r0, #0]
	movs r1, #0x40
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	adds r4, r3, #0
	b _0804A0C4
_0804A0B8: .4byte 0x00140031
_0804A0BC: .4byte gUnk_03005CF4
_0804A0C0:
	bl sub_080003F0
_0804A0C4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804A0C0
	movs r0, #0x22
	mov r9, r0
	ldr r0, _0804A174
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
_0804A0E8:
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
	ble _0804A0E8
	movs r1, #0xb
	ldr r0, _0804A178
	str r1, [r0, #0]
	ldr r0, _0804A17C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804A138
	movs r0, #0xb
	bl sub_08006CB4
_0804A138:
	ldr r0, _0804A180
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2, #4]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804A184
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
_0804A174: .4byte gUnk_03003170
_0804A178: .4byte gUnk_03005CF8
_0804A17C: .4byte gUnk_030027D0
_0804A180: .4byte gUnk_03005CF4
_0804A184: .4byte gUnk_03003CE0
	thumb_func_end sub_08049EBC
