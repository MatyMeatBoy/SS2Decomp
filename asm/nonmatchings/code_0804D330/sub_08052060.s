	thumb_func_start sub_08052060
sub_08052060: @ 0x08052060
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r6, _08052074
	ldr r0, _08052078
	ldr r0, [r0, #0]
	ldr r1, _0805207C
	adds r4, r0, r1
	movs r5, #0
	b _08052084
	.2byte 0x0000
_08052074: .4byte sub_0805664C
_08052078: .4byte gUnk_03005CF4
_0805207C: .4byte 0x00000E34
_08052080:
	adds r5, #1
	adds r4, #0x28
_08052084:
	cmp r5, #0x1d
	bhi _080520C2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08052080
	b _08052098
_08052094:
	bl sub_080003F0
_08052098:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08052094
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
	movs r1, #0x3b
	bl sub_08000274
_080520C2:
	ldr r6, _080520D0
	ldr r0, _080520D4
	ldr r0, [r0, #0]
	ldr r1, _080520D8
	adds r4, r0, r1
	movs r5, #0
	b _080520E0
_080520D0: .4byte sub_0805664C
_080520D4: .4byte gUnk_03005CF4
_080520D8: .4byte 0x00000E34
_080520DC:
	adds r5, #1
	adds r4, #0x28
_080520E0:
	cmp r5, #0x1d
	bhi _0805211E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080520DC
	b _080520F4
_080520F0:
	bl sub_080003F0
_080520F4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080520F0
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
	movs r1, #0x3c
	bl sub_08000274
_0805211E:
	ldr r6, _0805212C
	ldr r0, _08052130
	ldr r0, [r0, #0]
	ldr r1, _08052134
	adds r4, r0, r1
	movs r5, #0
	b _0805213C
_0805212C: .4byte sub_0805664C
_08052130: .4byte gUnk_03005CF4
_08052134: .4byte 0x00000E34
_08052138:
	adds r5, #1
	adds r4, #0x28
_0805213C:
	cmp r5, #0x1d
	bhi _0805217A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08052138
	b _08052150
_0805214C:
	bl sub_080003F0
_08052150:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0805214C
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
	movs r1, #0x3d
	bl sub_08000274
_0805217A:
	bl sub_080020F4
	cmp r0, #1
	beq _080521FA
	cmp r0, #1
	bgt _0805218C
	cmp r0, #0
	beq _08052198
	b _08052316
_0805218C:
	cmp r0, #2
	beq _08052258
	cmp r0, #3
	bne _08052196
	b _080522B8
_08052196:
	b _08052316
_08052198:
	ldr r6, _080521A8
	ldr r0, _080521AC
	ldr r0, [r0, #0]
	ldr r1, _080521B0
	adds r4, r0, r1
	movs r5, #0
	b _080521B8
	.2byte 0x0000
_080521A8: .4byte sub_0805664C
_080521AC: .4byte gUnk_03005CF4
_080521B0: .4byte 0x00000E34
_080521B4:
	adds r5, #1
	adds r4, #0x28
_080521B8:
	cmp r5, #0x1d
	bls _080521BE
	b _08052316
_080521BE:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080521B4
	b _080521CE
_080521CA:
	bl sub_080003F0
_080521CE:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080521CA
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
	movs r1, #0x3e
	bl sub_08000274
	b _08052316
_080521FA:
	ldr r6, _08052208
	ldr r0, _0805220C
	ldr r0, [r0, #0]
	ldr r1, _08052210
	adds r4, r0, r1
	movs r5, #0
	b _08052218
_08052208: .4byte sub_0805664C
_0805220C: .4byte gUnk_03005CF4
_08052210: .4byte 0x00000E34
_08052214:
	adds r5, #1
	adds r4, #0x28
_08052218:
	cmp r5, #0x1d
	bhi _08052316
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08052214
	b _0805222C
_08052228:
	bl sub_080003F0
_0805222C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08052228
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
	movs r1, #0x3f
	bl sub_08000274
	b _08052316
_08052258:
	ldr r6, _08052268
	ldr r0, _0805226C
	ldr r0, [r0, #0]
	ldr r1, _08052270
	adds r4, r0, r1
	movs r5, #0
	b _08052278
	.2byte 0x0000
_08052268: .4byte sub_0805664C
_0805226C: .4byte gUnk_03005CF4
_08052270: .4byte 0x00000E34
_08052274:
	adds r5, #1
	adds r4, #0x28
_08052278:
	cmp r5, #0x1d
	bhi _08052316
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08052274
	b _0805228C
_08052288:
	bl sub_080003F0
_0805228C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08052288
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
	movs r1, #0x40
	bl sub_08000274
	b _08052316
_080522B8:
	ldr r6, _080522C8
	ldr r0, _080522CC
	ldr r0, [r0, #0]
	ldr r1, _080522D0
	adds r4, r0, r1
	movs r5, #0
	b _080522D8
	.2byte 0x0000
_080522C8: .4byte sub_0805664C
_080522CC: .4byte gUnk_03005CF4
_080522D0: .4byte 0x00000E34
_080522D4:
	adds r5, #1
	adds r4, #0x28
_080522D8:
	cmp r5, #0x1d
	bhi _08052316
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080522D4
	b _080522EC
_080522E8:
	bl sub_080003F0
_080522EC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080522E8
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
	movs r1, #0x41
	bl sub_08000274
_08052316:
	ldr r0, _08052334
	ldr r2, [r0, #0]
	movs r0, #0x10
	ldr r1, [r2, #0x38]
	ands r1, r0
	cmp r1, #0
	beq _08052326
	movs r1, #1
_08052326:
	cmp r1, #0
	bne _08052388
	ldr r7, _08052338
	ldr r0, _0805233C
	adds r4, r2, r0
	movs r6, #0
	b _08052344
_08052334: .4byte gUnk_03005CF4
_08052338: .4byte sub_080523D8
_0805233C: .4byte 0x00000E34
_08052340:
	adds r6, #1
	adds r4, #0x28
_08052344:
	cmp r6, #0x1d
	bhi _08052388
	adds r0, r4, #0
	bl sub_08000470
	adds r5, r0, #0
	cmp r5, #0
	bne _08052340
	str r7, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _080523A4
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #6
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_08052388:
	bl sub_0800CC98
	cmp r0, #0
	bne _080523D0
	bl sub_0801AB24
	cmp r0, #1
	beq _080523B4
	cmp r0, #1
	bgt _080523A8
	cmp r0, #0
	beq _080523AE
	b _080523C8
	.2byte 0x0000
_080523A4: .4byte sub_0802A104
_080523A8:
	cmp r0, #2
	beq _080523BC
	b _080523C8
_080523AE:
	bl sub_080576A8
	b _080523C8
_080523B4:
	movs r0, #6
	bl sub_0801AB50
	b _080523C8
_080523BC:
	movs r0, #6
	bl sub_0801AB90
	b _080523C8
_080523C4:
	bl sub_080003F0
_080523C8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080523C4
_080523D0:
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08052060
