	thumb_func_start sub_08037B04
sub_08037B04: @ 0x08037B04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08037B34
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	mov r0, r8
	movs r1, #0
	bl sub_0802949C
	b _08037B3C
_08037B34: .4byte gUnk_03003CE0
_08037B38:
	bl sub_080003F0
_08037B3C:
	bl sub_0805F184
	cmp r0, #0
	bne _08037B38
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037B60
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037B68
	.2byte 0x0000
_08037B60: .4byte 0x001401DF
_08037B64:
	bl sub_080003F0
_08037B68:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08037B64
	adds r0, r4, #0
	bl sub_0805EF14
	adds r4, r0, #0
	cmp r4, #1
	beq _08037B80
	b _08037DB6
_08037B80:
	bl sub_080020F4
	adds r1, r0, #0
	cmp r0, #1
	beq _08037BA4
	cmp r0, #1
	bgt _08037B94
	cmp r0, #0
	beq _08037B9E
	b _08037BBC
_08037B94:
	cmp r1, #2
	beq _08037BAC
	cmp r1, #3
	beq _08037BB8
	b _08037BBC
_08037B9E:
	movs r4, #0x96
	lsls r4, r4, #1
	b _08037BBC
_08037BA4:
	ldr r4, _08037BA8
	b _08037BBC
_08037BA8: .4byte 0x00000121
_08037BAC:
	ldr r4, _08037BB0
	b _08037BBC
_08037BB0: .4byte 0x00000137
_08037BB4:
	adds r0, r1, #0
	b _08037DB0
_08037BB8:
	movs r4, #0x8b
	lsls r4, r4, #1
_08037BBC:
	movs r0, #0
	movs r1, #8
	bl sub_0802939C
	movs r0, #0
	movs r1, #2
	bl sub_080290E4
	lsls r4, r4, #0x10
	lsrs r1, r4, #0x10
	movs r0, #0
	movs r2, #0x54
	movs r3, #0x3c
	bl sub_08028AAC
	ldr r7, _08037BE8
	ldr r0, _08037BEC
	ldr r0, [r0, #0]
	ldr r1, _08037BF0
	adds r5, r0, r1
	movs r6, #0
	b _08037BF8
_08037BE8: .4byte sub_0805A9F4
_08037BEC: .4byte gUnk_03005CF4
_08037BF0: .4byte 0x00000E34
_08037BF4:
	adds r6, #1
	adds r5, #0x28
_08037BF8:
	cmp r6, #0x1d
	bhi _08037C36
	adds r0, r5, #0
	bl sub_08000470
	cmp r0, #0
	bne _08037BF4
	b _08037C0C
_08037C08:
	bl sub_080003F0
_08037C0C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r5, #0x20]
	cmp r1, #0
	beq _08037C08
	movs r0, #0x3c
	str r0, [r5, #8]
	str r7, [r5, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r5, #0x10]
	movs r0, #0
	str r0, [r5, #0x24]
	adds r0, r5, #0
	ldr r1, _08037C4C
	bl sub_08000274
_08037C36:
	movs r0, #0
	movs r1, #0
	bl sub_080290E4
	movs r0, #0
	movs r1, #0x23
	bl sub_08029174
	movs r5, #0x3c
	b _08037C5A
	.2byte 0x0000
_08037C4C: .4byte 0x01E00042
_08037C50:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08037C66
_08037C5A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08037C50
_08037C66:
	lsrs r1, r4, #0x10
	movs r0, #0
	movs r2, #0x51
	movs r3, #0x3c
	bl sub_08028AAC
	movs r5, #0x1e
	b _08037C80
_08037C76:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08037C8C
_08037C80:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08037C76
_08037C8C:
	lsrs r1, r4, #0x10
	movs r0, #0
	movs r2, #0x54
	movs r3, #0x3c
	bl sub_08028AAC
	movs r5, #0x1e
	b _08037CA6
_08037C9C:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08037CB2
_08037CA6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08037C9C
_08037CB2:
	lsrs r1, r4, #0x10
	movs r0, #0
	movs r2, #0x51
	movs r3, #0x3c
	bl sub_08028AAC
	movs r5, #0x1e
	b _08037CCC
_08037CC2:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08037CD8
_08037CCC:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08037CC2
_08037CD8:
	lsrs r1, r4, #0x10
	movs r0, #0
	movs r2, #0x54
	movs r3, #0x3c
	bl sub_08028AAC
	movs r5, #0x1e
	b _08037CF2
_08037CE8:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08037CFE
_08037CF2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08037CE8
_08037CFE:
	bl sub_0802996C
	ldr r0, _08037D18
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08037D14
	movs r0, #0x91
	bl sub_08006D08
_08037D14:
	movs r5, #0x1e
	b _08037D26
_08037D18: .4byte gUnk_030027D0
_08037D1C:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08037D32
_08037D26:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08037D1C
_08037D32:
	movs r0, #0
	movs r1, #0
	bl sub_08029174
	movs r0, #0
	movs r1, #1
	bl sub_080290E4
	lsrs r1, r4, #0x10
	movs r0, #0
	movs r2, #0x4c
	movs r3, #0
	bl sub_08028AAC
	movs r5, #3
	b _08037D5C
_08037D52:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08037D68
_08037D5C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08037D52
_08037D68:
	lsrs r1, r4, #0x10
	movs r0, #0
	movs r2, #0x4e
	movs r3, #0
	bl sub_08028AAC
	movs r4, #0x14
	b _08037D82
_08037D78:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08037D8E
_08037D82:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08037D78
_08037D8E:
	ldr r4, _08037DEC
	ldr r0, _08037DF0
	ldr r0, [r0, #0]
	ldr r2, _08037DF4
	adds r1, r0, r2
	movs r2, #0
_08037D9A:
	ldr r0, [r1, #0]
	cmp r0, r8
	bne _08037DA2
	b _08037BB4
_08037DA2:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08037D9A
	bl sub_080003F0
	movs r0, #0
_08037DB0:
	cmp r0, #0
	beq _08037DB6
	str r4, [r0, #0x44]
_08037DB6:
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08037DF8
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
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08037DEC: .4byte sub_08059250
_08037DF0: .4byte gUnk_03005CF4
_08037DF4: .4byte 0x000007A4
_08037DF8: .4byte gUnk_03003CE0
	thumb_func_end sub_08037B04
