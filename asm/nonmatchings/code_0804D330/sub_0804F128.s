	thumb_func_start sub_0804F128
sub_0804F128: @ 0x0804F128
	push {r4, r5, r6, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804F154
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_08002164
	cmp r0, #1
	bne _0804F158
	movs r4, #0
	b _0804F186
_0804F154: .4byte gUnk_03003CE0
_0804F158:
	bl sub_080020F4
	cmp r0, #1
	beq _0804F17A
	cmp r0, #1
	bgt _0804F16A
	cmp r0, #0
	beq _0804F174
	b _0804F186
_0804F16A:
	cmp r0, #2
	beq _0804F17E
	cmp r0, #3
	beq _0804F184
	b _0804F186
_0804F174:
	movs r4, #0xc
	negs r4, r4
	b _0804F186
_0804F17A:
	movs r4, #0xc
	b _0804F186
_0804F17E:
	movs r4, #0x24
	negs r4, r4
	b _0804F186
_0804F184:
	movs r4, #0x24
_0804F186:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_08028D98
	movs r0, #1
	movs r1, #0x78
	movs r2, #0xf0
	movs r3, #0
	bl sub_08028AAC
	movs r4, #1
	b _0804F1AE
_0804F1A4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F1BA
_0804F1AE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F1A4
_0804F1BA:
	bl sub_0800CC98
	cmp r0, #0
	bne _0804F1FC
	bl sub_0801AB24
	cmp r0, #1
	beq _0804F1E0
	cmp r0, #1
	bgt _0804F1D4
	cmp r0, #0
	beq _0804F1DA
	b _0804F1F4
_0804F1D4:
	cmp r0, #2
	beq _0804F1E8
	b _0804F1F4
_0804F1DA:
	bl sub_080576A8
	b _0804F1F4
_0804F1E0:
	movs r0, #6
	bl sub_0801AB50
	b _0804F1F4
_0804F1E8:
	movs r0, #6
	bl sub_0801AB90
	b _0804F1F4
_0804F1F0:
	bl sub_080003F0
_0804F1F4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0804F1F0
_0804F1FC:
	movs r4, #0x3c
	b _0804F20A
_0804F200:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F216
_0804F20A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F200
_0804F216:
	ldr r6, _0804F224
	ldr r0, _0804F228
	ldr r0, [r0, #0]
	ldr r1, _0804F22C
	adds r4, r0, r1
	movs r5, #0
	b _0804F234
_0804F224: .4byte sub_0804F390
_0804F228: .4byte gUnk_03005CF4
_0804F22C: .4byte 0x00000E34
_0804F230:
	adds r5, #1
	adds r4, #0x28
_0804F234:
	cmp r5, #0x1d
	bhi _0804F272
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804F230
	b _0804F248
_0804F244:
	bl sub_080003F0
_0804F248:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0804F244
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
_0804F272:
	movs r4, #0x50
	b _0804F280
_0804F276:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804F28C
_0804F280:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804F276
_0804F28C:
	movs r4, #4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0804F2DC
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0, #0]
	ldr r5, _0804F2E0
	ldr r0, [r5, #0]
	movs r4, #0x20
	ands r0, r4
	cmp r0, #0
	bne _0804F2B6
	movs r0, #0xb7
	bl sub_08006D08
_0804F2B6:
	movs r3, #0xc8
	lsls r3, r3, #1
	movs r0, #1
	movs r1, #0x78
	movs r2, #0x50
	bl sub_08028AAC
	movs r0, #0
	movs r1, #0x10
	bl sub_08029174
	ldr r0, [r5, #0]
	ands r0, r4
	cmp r0, #0
	bne _0804F2E8
	movs r0, #0xbd
	bl sub_08006D08
	b _0804F2E8
_0804F2DC: .4byte gUnk_03003CE0
_0804F2E0: .4byte gUnk_030027D0
_0804F2E4:
	bl sub_080003F0
_0804F2E8:
	bl sub_0805F184
	cmp r0, #0
	bne _0804F2E4
	b _0804F2F6
_0804F2F2:
	bl sub_080003F0
_0804F2F6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804F2F2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804F318
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804F320
	.2byte 0x0000
_0804F318: .4byte 0x0014005D
_0804F31C:
	bl sub_080003F0
_0804F320:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804F31C
	movs r1, #0xb
	ldr r0, _0804F380
	str r1, [r0, #0]
	ldr r0, _0804F384
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804F342
	movs r0, #0xb
	bl sub_08006CB4
_0804F342:
	ldr r0, _0804F388
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r0, #0x20
	movs r6, #0
	orrs r0, r1
	strh r0, [r2, #4]
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _0804F38C
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
	strh r6, [r0, #0x20]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0804F380: .4byte gUnk_03005CF8
_0804F384: .4byte gUnk_030027D0
_0804F388: .4byte gUnk_03005CF4
_0804F38C: .4byte gUnk_03003CE0
	thumb_func_end sub_0804F128
