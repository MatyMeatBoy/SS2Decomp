	thumb_func_start sub_0804BEF8
sub_0804BEF8: @ 0x0804BEF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	mov r8, r0
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _0804BF1C
	ldr r0, _0804BF18
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	b _0804BF24
	.2byte 0x0000
_0804BF18: .4byte gUnk_03005CF4
_0804BF1C:
	ldr r0, _0804BF78
	ldr r0, [r0, #0]
	movs r1, #0xdc
	lsls r1, r1, #1
_0804BF24:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #6
	ands r0, r4
	cmp r0, #0
	beq _0804BF32
	b _0804C13C
_0804BF32:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804BF7C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	movs r3, #0
	movs r2, #0
	ldr r0, _0804BF80
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_0804BF5C:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _0804BF6A
	ldrh r0, [r1, #2]
	cmp r0, #0x22
	bne _0804BF6A
	adds r3, #1
_0804BF6A:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _0804BF5C
	cmp r3, #0
	beq _0804C064
	b _0804BF88
_0804BF78: .4byte gUnk_03005CF4
_0804BF7C: .4byte gUnk_03003CE0
_0804BF80: .4byte gUnk_030034E0
_0804BF84:
	bl sub_080003F0
_0804BF88:
	bl sub_0805F184
	cmp r0, #0
	bne _0804BF84
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0804BFAC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804BFB4
	.2byte 0x0000
_0804BFAC: .4byte 0x00140045
_0804BFB0:
	bl sub_080003F0
_0804BFB4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804BFB0
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #1
	bne _0804BFDC
	bl sub_080020F4
	adds r1, r0, #0
	ldr r0, _0804BFD8
	bl sub_08068070
	b _0804C11E
	.2byte 0x0000
_0804BFD8: .4byte sub_0804C150
_0804BFDC:
	ldr r7, _0804BFEC
	ldr r0, _0804BFF0
	ldr r0, [r0, #0]
	ldr r1, _0804BFF4
	adds r4, r0, r1
	movs r5, #0
	b _0804BFFC
	.2byte 0x0000
_0804BFEC: .4byte sub_0804BEF8
_0804BFF0: .4byte gUnk_03005CF4
_0804BFF4: .4byte 0x00000E34
_0804BFF8:
	adds r5, #1
	adds r4, #0x28
_0804BFFC:
	cmp r5, #0x1d
	bls _0804C002
	b _0804C11E
_0804C002:
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _0804BFF8
	movs r0, #0xb7
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r0, #0xc8
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	add r1, sp, #8
	movs r0, #0x14
	strh r0, [r1, #8]
	movs r0, #0xe
	strh r0, [r1, #0xa]
	str r7, [sp, #0x14]
	mov r0, r8
	str r0, [sp, #0x18]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0804C05C
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	add r1, sp, #8
	movs r2, #1
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
	b _0804C11E
	.2byte 0x0000
_0804C05C: .4byte sub_0805A874
_0804C060:
	bl sub_080003F0
_0804C064:
	bl sub_0805F184
	cmp r0, #0
	bne _0804C060
	b _0804C072
_0804C06E:
	bl sub_080003F0
_0804C072:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804C06E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804C094
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804C09C
	.2byte 0x0000
_0804C094: .4byte 0x00140044
_0804C098:
	bl sub_080003F0
_0804C09C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804C098
	ldr r7, _0804C0B4
	ldr r0, _0804C0B8
	ldr r0, [r0, #0]
	ldr r1, _0804C0BC
	adds r4, r0, r1
	movs r5, #0
	b _0804C0C4
_0804C0B4: .4byte sub_0804BEF8
_0804C0B8: .4byte gUnk_03005CF4
_0804C0BC: .4byte 0x00000E34
_0804C0C0:
	adds r5, #1
	adds r4, #0x28
_0804C0C4:
	cmp r5, #0x1d
	bhi _0804C11E
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _0804C0C0
	movs r0, #0xb7
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r0, #0xc8
	lsls r0, r0, #8
	str r0, [sp, #0xc]
	add r1, sp, #8
	movs r0, #0x14
	strh r0, [r1, #8]
	movs r0, #0xe
	strh r0, [r1, #0xa]
	str r7, [sp, #0x14]
	mov r0, r8
	str r0, [sp, #0x18]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0804C148
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	add r1, sp, #8
	movs r2, #1
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_0804C11E:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804C14C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_0804C13C:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0804C148: .4byte sub_0805A874
_0804C14C: .4byte gUnk_03003CE0
	thumb_func_end sub_0804BEF8
