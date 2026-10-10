	thumb_func_start sub_0804DDBC
sub_0804DDBC: @ 0x0804DDBC
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
	ldr r0, _0804DDF0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _0804DDF4
	movs r4, #0
	b _0804DE24
_0804DDF0: .4byte gUnk_03003CE0
_0804DDF4:
	bl sub_080020F4
	adds r6, r0, #0
	cmp r6, #1
	beq _0804DE18
	cmp r6, #1
	bgt _0804DE08
	cmp r6, #0
	beq _0804DE12
	b _0804DE24
_0804DE08:
	cmp r6, #2
	beq _0804DE1C
	cmp r6, #3
	beq _0804DE22
	b _0804DE24
_0804DE12:
	movs r4, #0xc
	negs r4, r4
	b _0804DE24
_0804DE18:
	movs r4, #0xc
	b _0804DE24
_0804DE1C:
	movs r4, #0x24
	negs r4, r4
	b _0804DE24
_0804DE22:
	movs r4, #0x24
_0804DE24:
	adds r1, r4, #0
	adds r1, #0x78
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0xc0
	movs r3, #0
	bl sub_08028AAC
	movs r0, #0x11
	movs r1, #0x78
	movs r2, #0x96
	bl sub_080289C0
	mov sl, r0
	movs r1, #0
	bl sub_0802939C
	movs r0, #1
	movs r1, #0x78
	movs r2, #0
	movs r3, #0
	bl sub_08028AAC
	ldr r7, _0804DE70
	ldr r0, _0804DE74
	ldr r0, [r0, #0]
	ldr r1, _0804DE78
	adds r4, r0, r1
	movs r5, #0
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x20]
	mov r3, sp
	adds r3, #0x1c
	str r3, [sp, #0x24]
	b _0804DE80
	.2byte 0x0000
_0804DE70: .4byte sub_0805A194
_0804DE74: .4byte gUnk_03005CF4
_0804DE78: .4byte 0x00000E34
_0804DE7C:
	adds r5, #1
	adds r4, #0x28
_0804DE80:
	cmp r5, #0x1d
	bhi _0804DEC0
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804DE7C
	b _0804DE94
_0804DE90:
	bl sub_080003F0
_0804DE94:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804DE90
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sl
	bl sub_08000274
	adds r6, r4, #0
_0804DEC0:
	movs r4, #1
	b _0804DECE
_0804DEC4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804DEDA
_0804DECE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804DEC4
_0804DEDA:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804DF1C
	bl sub_0801AB24
	cmp r0, #1
	beq _0804DF00
	cmp r0, #1
	bgt _0804DEF4
	cmp r0, #0
	beq _0804DEFA
	b _0804DF14
_0804DEF4:
	cmp r0, #2
	beq _0804DF08
	b _0804DF14
_0804DEFA:
	bl sub_080576A8
	b _0804DF14
_0804DF00:
	movs r0, #6
	bl sub_0801AB50
	b _0804DF14
_0804DF08:
	movs r0, #6
	bl sub_0801AB90
	b _0804DF14
_0804DF10:
	bl sub_080003F0
_0804DF14:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804DF10
_0804DF1C:
	movs r1, #0xd9
	ldr r0, _0804DF48
	str r1, [r0, #0]
	ldr r0, _0804DF4C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804DF34
	movs r0, #0xd9
	bl sub_08006CB4
_0804DF34:
	ldr r0, _0804DF50
	ldr r0, [r0, #0]
	movs r1, #2
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	beq _0804DF44
	b _0804E10C
_0804DF44:
	add r5, sp, #0xc
	b _0804DF58
_0804DF48: .4byte gUnk_03005CF8
_0804DF4C: .4byte gUnk_030027D0
_0804DF50: .4byte gUnk_03005CF4
_0804DF54:
	bl sub_080003F0
_0804DF58:
	bl sub_0805F184
	cmp r0, #0
	bne _0804DF54
	b _0804DF66
_0804DF62:
	bl sub_080003F0
_0804DF66:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804DF62
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804DF88
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804DF90
	.2byte 0x0000
_0804DF88: .4byte 0x00140048
_0804DF8C:
	bl sub_080003F0
_0804DF90:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804DF8C
	ldr r0, _0804DFFC
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r3, [r1, r2]
	mov r8, r3
	adds r0, #0x82
	movs r3, #0
	ldrsh r7, [r0, r3]
	movs r4, #0
	ldr r0, _0804E000
	mov r9, r0
_0804DFB2:
	add r0, sp, #8
	mov r1, r8
	movs r3, #0
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	adds r1, r7, #0
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
	adds r4, #0x11
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804DFB2
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x5a
	movs r3, #0xb4
	bl sub_08028AAC
	b _0804E008
	.2byte 0x0000
_0804DFFC: .4byte gUnk_03003170
_0804E000: .4byte 0xFFA60000
_0804E004:
	bl sub_080003F0
_0804E008:
	bl sub_0805F184
	cmp r0, #0
	bne _0804E004
	b _0804E016
_0804E012:
	bl sub_080003F0
_0804E016:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804E012
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804E038
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804E040
	.2byte 0x0000
_0804E038: .4byte 0x00140049
_0804E03C:
	bl sub_080003F0
_0804E040:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804E03C
	cmp r6, #0
	beq _0804E05E
	adds r0, r6, #0
	bl sub_08000470
	cmp r0, #0
	beq _0804E05E
	adds r0, r6, #0
	bl sub_080003A8
_0804E05E:
	mov r0, sl
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0x2d
	bl sub_08028AAC
	ldr r0, _0804E094
	ldr r0, [r0, #0]
	ldr r2, _0804E098
	adds r1, r0, r2
	movs r2, #0
_0804E074:
	ldr r0, [r1, #0]
	cmp r0, sl
	beq _0804E088
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804E074
	bl sub_080003F0
	movs r1, #0
_0804E088:
	cmp r1, #0
	beq _0804E090
	movs r0, #4
	strh r0, [r1, #0x36]
_0804E090:
	movs r4, #0x3c
	b _0804E0A6
_0804E094: .4byte gUnk_03005CF4
_0804E098: .4byte 0x000007A4
_0804E09C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804E0B8
_0804E0A6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804E09C
	b _0804E0B8
_0804E0B4:
	bl sub_080003F0
_0804E0B8:
	bl sub_0805F184
	cmp r0, #0
	bne _0804E0B4
	b _0804E0C6
_0804E0C2:
	bl sub_080003F0
_0804E0C6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804E0C2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804E0E8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804E0F0
	.2byte 0x0000
_0804E0E8: .4byte 0x0014004A
_0804E0EC:
	bl sub_080003F0
_0804E0F0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804E0EC
	ldr r0, _0804E108
	ldr r2, [r0, #0]
	movs r1, #2
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	b _0804E26E
_0804E108: .4byte gUnk_03005CF4
_0804E10C:
	ldr r0, _0804E170
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r3, [r1, r2]
	mov r9, r3
	adds r0, #0x82
	movs r1, #0
	ldrsh r3, [r0, r1]
	mov r8, r3
	movs r4, #0
	add r7, sp, #0x10
	add r5, sp, #0x14
_0804E126:
	adds r0, r7, #0
	mov r1, r9
	movs r3, #0
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r5, #0
	mov r1, r8
	ldr r3, _0804E174
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
	adds r4, #0x11
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804E126
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x5a
	movs r3, #0xb4
	bl sub_08028AAC
	b _0804E17C
	.2byte 0x0000
_0804E170: .4byte gUnk_03003170
_0804E174: .4byte 0xFFA60000
_0804E178:
	bl sub_080003F0
_0804E17C:
	bl sub_0805F184
	cmp r0, #0
	bne _0804E178
	b _0804E18A
_0804E186:
	bl sub_080003F0
_0804E18A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804E186
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804E1AC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804E1B4
	.2byte 0x0000
_0804E1AC: .4byte 0x0014004C
_0804E1B0:
	bl sub_080003F0
_0804E1B4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804E1B0
	cmp r6, #0
	beq _0804E1D2
	adds r0, r6, #0
	bl sub_08000470
	cmp r0, #0
	beq _0804E1D2
	adds r0, r6, #0
	bl sub_080003A8
_0804E1D2:
	mov r0, sl
	movs r1, #0x78
	movs r2, #0x50
	movs r3, #0x2d
	bl sub_08028AAC
	ldr r0, _0804E208
	ldr r0, [r0, #0]
	ldr r2, _0804E20C
	adds r1, r0, r2
	movs r2, #0
_0804E1E8:
	ldr r0, [r1, #0]
	cmp r0, sl
	beq _0804E1FC
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804E1E8
	bl sub_080003F0
	movs r1, #0
_0804E1FC:
	cmp r1, #0
	beq _0804E204
	movs r0, #4
	strh r0, [r1, #0x36]
_0804E204:
	movs r4, #0x3c
	b _0804E21A
_0804E208: .4byte gUnk_03005CF4
_0804E20C: .4byte 0x000007A4
_0804E210:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804E22C
_0804E21A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804E210
	b _0804E22C
_0804E228:
	bl sub_080003F0
_0804E22C:
	bl sub_0805F184
	cmp r0, #0
	bne _0804E228
	b _0804E23A
_0804E236:
	bl sub_080003F0
_0804E23A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804E236
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804E25C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804E264
	.2byte 0x0000
_0804E25C: .4byte 0x0014004D
_0804E260:
	bl sub_080003F0
_0804E264:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804E260
_0804E26E:
	movs r3, #0x22
	mov r9, r3
	ldr r0, _0804E344
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
_0804E288:
	ldr r0, [sp, #0x20]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x24]
	adds r1, r5, #0
	asrs r2, r7, #0x10
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
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804E288
	movs r1, #0xb
	ldr r0, _0804E348
	str r1, [r0, #0]
	ldr r0, _0804E34C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804E2D8
	movs r0, #0xb
	bl sub_08006CB4
_0804E2D8:
	ldr r0, _0804E350
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _0804E354
	movs r6, #1
	movs r4, #0
_0804E2E4:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _0804E2F8
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _0804E2F8
	strh r4, [r2, #0xc]
_0804E2F8:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _0804E2E4
	bl sub_08019F04
	ldr r0, _0804E358
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
	ldr r0, _0804E35C
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
_0804E344: .4byte gUnk_03003170
_0804E348: .4byte gUnk_03005CF8
_0804E34C: .4byte gUnk_030027D0
_0804E350: .4byte gUnk_030056F4
_0804E354: .4byte gUnk_030056FC
_0804E358: .4byte gUnk_03005CF4
_0804E35C: .4byte gUnk_03003CE0
	thumb_func_end sub_0804DDBC
