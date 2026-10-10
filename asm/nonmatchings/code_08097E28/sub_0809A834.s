	thumb_func_start sub_0809A834
sub_0809A834: @ 0x0809A834
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	str r0, [sp, #0x4c]
	ldr r1, _0809A878
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0xd
	bl sub_08065158
	mov r1, sp
	adds r1, #0x39
	movs r4, #0
	movs r0, #5
	strb r0, [r1, #0]
	bl sub_08002164
	cmp r0, #1
	bne _0809A8E6
	ldr r0, [sp, #0x4c]
	cmp r0, #4
	bls _0809A86E
	b _0809A9CC
_0809A86E:
	lsls r0, r0, #2
	ldr r1, _0809A87C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0809A878: .4byte 0x00050004
_0809A87C: .4byte _0809A880
_0809A880:
	.4byte _0809A894
_0809A884: .4byte _0809A8A8
_0809A888: .4byte _0809A8B6
_0809A88C: .4byte _0809A8C8
_0809A890: .4byte _0809A8D8
_0809A894:
	ldr r0, _0809A8A4
	adds r1, r0, #0
	adds r1, #0x8c
	ldr r1, [r1, #0]
	str r1, [sp, #0x50]
	adds r0, #0x90
	b _0809A998
	.2byte 0x0000
_0809A8A4: .4byte gUnk_03003CE0
_0809A8A8:
	movs r1, #0xf0
	lsls r1, r1, #7
	str r1, [sp, #0x50]
	movs r2, #0xb8
	lsls r2, r2, #9
	mov r9, r2
	b _0809A9D6
_0809A8B6:
	movs r3, #0x88
	lsls r3, r3, #7
	str r3, [sp, #0x50]
	ldr r0, _0809A8C4
	mov r9, r0
	b _0809A9D6
	.2byte 0x0000
_0809A8C4: .4byte 0x00013500
_0809A8C8:
	movs r1, #0xae
	lsls r1, r1, #8
	str r1, [sp, #0x50]
	ldr r2, _0809A8D4
	mov r9, r2
	b _0809A9D6
_0809A8D4: .4byte 0x00013500
_0809A8D8:
	movs r3, #0xf6
	lsls r3, r3, #7
	str r3, [sp, #0x50]
	movs r0, #0xe4
	lsls r0, r0, #8
	mov r9, r0
	b _0809A9D6
_0809A8E6:
	ldr r1, [sp, #0x4c]
	cmp r1, #1
	beq _0809A920
	cmp r1, #1
	blo _0809A8FA
	cmp r1, #2
	beq _0809A94C
	cmp r1, #3
	beq _0809A97C
	b _0809A9CC
_0809A8FA:
	bl sub_080020F4
	cmp r0, #0
	bne _0809A914
	ldr r0, _0809A910
	adds r1, r0, #0
	adds r1, #0x8c
	ldr r1, [r1, #0]
	str r1, [sp, #0x50]
	adds r0, #0x90
	b _0809A998
_0809A910: .4byte gUnk_03003CE0
_0809A914:
	ldr r0, _0809A91C
	movs r2, #0xa4
	lsls r2, r2, #1
	b _0809A9AC
_0809A91C: .4byte gUnk_03003CE0
_0809A920:
	bl sub_080020F4
	cmp r0, #1
	bne _0809A940
	ldr r2, _0809A93C
	movs r3, #0xec
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0, #0]
	str r0, [sp, #0x50]
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r2, r1
	b _0809A998
_0809A93C: .4byte gUnk_03003CE0
_0809A940:
	ldr r0, _0809A948
	movs r2, #0xa5
	lsls r2, r2, #2
	b _0809A9AC
_0809A948: .4byte gUnk_03003CE0
_0809A94C:
	cmp r0, #2
	bls _0809A9CC
	bl sub_080020F4
	cmp r0, #2
	bne _0809A970
	ldr r2, _0809A96C
	movs r3, #0xc9
	lsls r3, r3, #2
	adds r0, r2, r3
	ldr r0, [r0, #0]
	str r0, [sp, #0x50]
	movs r1, #0xca
	lsls r1, r1, #2
	adds r0, r2, r1
	b _0809A998
_0809A96C: .4byte gUnk_03003CE0
_0809A970:
	ldr r0, _0809A978
	movs r2, #0xf8
	lsls r2, r2, #2
	b _0809A9AC
_0809A978: .4byte gUnk_03003CE0
_0809A97C:
	cmp r0, #4
	bne _0809A9CC
	bl sub_080020F4
	cmp r0, #3
	bne _0809A9A8
	ldr r0, _0809A9A0
	movs r3, #0x8e
	lsls r3, r3, #3
	adds r1, r0, r3
	ldr r1, [r1, #0]
	str r1, [sp, #0x50]
	ldr r1, _0809A9A4
	adds r0, r0, r1
_0809A998:
	ldr r0, [r0, #0]
	mov r9, r0
	b _0809A9D6
	.2byte 0x0000
_0809A9A0: .4byte gUnk_03003CE0
_0809A9A4: .4byte 0x00000474
_0809A9A8:
	ldr r0, _0809A9C4
	ldr r2, _0809A9C8
_0809A9AC:
	adds r0, r0, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x50]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	mov r9, r0
	b _0809A9D6
	.2byte 0x0000
_0809A9C4: .4byte gUnk_03003CE0
_0809A9C8: .4byte 0x0000052C
_0809A9CC:
	bl sub_0800048C
	adds r1, r0, #0
	str r4, [r1, #8]
	b _0809ADC6
_0809A9D6:
	ldr r3, [sp, #0x4c]
	cmp r3, #0
	bne _0809A9E2
	movs r0, #0xad
	bl sub_0805865C
_0809A9E2:
	bl sub_0800CE30
	movs r1, #0x3c
	str r1, [sp, #0x5c]
	cmp r0, #1
	bne _0809A9F2
	movs r2, #0x28
	str r2, [sp, #0x5c]
_0809A9F2:
	ldr r3, [sp, #0x5c]
	lsls r3, r3, #0xa
	str r3, [sp, #0x54]
	movs r0, #1
	str r0, [sp, #0x60]
	ldr r1, [sp, #0x50]
	asrs r1, r1, #8
	str r1, [sp, #0x64]
	lsls r2, r1, #0x10
	str r2, [sp, #0x6c]
	mov r3, r9
	asrs r3, r3, #8
	str r3, [sp, #0x68]
	lsls r0, r3, #0x10
	str r0, [sp, #0x70]
_0809AA10:
	ldr r1, [sp, #0x54]
	ldr r2, _0809AAE0
	adds r1, r1, r2
	str r1, [sp, #0x54]
	bl sub_0800CCCC
	cmp r0, #0
	beq _0809AA22
	b _0809AB6E
_0809AA22:
	bl sub_0800CC98
	cmp r0, #0
	beq _0809AA2C
	b _0809AB6E
_0809AA2C:
	bl sub_0800CD8C
	cmp r0, #0
	beq _0809AA36
	b _0809AB6E
_0809AA36:
	bl sub_0800CD34
	adds r6, r0, #0
	cmp r6, #0
	beq _0809AA42
	b _0809AB6E
_0809AA42:
	ldr r1, [sp, #0x1c]
	movs r3, #0xd0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	movs r0, #1
	mov sl, r0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #1
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x58]
	add r4, sp, #0x48
	mov r5, sp
	adds r5, #0x4a
	str r6, [sp, #0]
	str r6, [sp, #4]
	ldr r1, [sp, #0x6c]
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x70]
	asrs r1, r2, #0x10
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0x7c]
	ldr r0, [sp, #0x50]
	asrs r0, r0, #8
	mov r8, r0
	adds r7, r4, #0
	ldr r1, [sp, #0x5c]
	cmp r1, #0x1e
	bls _0809AAE4
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	mov r2, sl
	ands r1, r2
	add r6, sp, #0x2c
	cmp r1, #0
	beq _0809AB14
	movs r3, #0
	ldrsh r0, [r7, r3]
	subs r0, #4
	ldr r1, [sp, #0x58]
	str r1, [sp, #0]
	str r6, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #1
	movs r2, #2
	movs r3, #0
	bl sub_08007870
	adds r1, r0, #0
	movs r2, #0
	ldrsh r0, [r5, r2]
	subs r0, #1
	str r0, [r1, #0xc]
	b _0809AB14
_0809AAE0: .4byte 0xFFFFFC00
_0809AAE4:
	movs r3, #0
	ldrsh r0, [r7, r3]
	subs r0, #4
	ldr r2, [sp, #0x58]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #1
	movs r2, #2
	movs r3, #0
	bl sub_08007870
	adds r1, r0, #0
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r0, #1
	str r0, [r1, #0xc]
	adds r6, r4, #0
_0809AB14:
	mov r0, r9
	ldr r1, [sp, #0x54]
	subs r4, r0, r1
	asrs r4, r4, #8
	mov r0, r8
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x58]
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0
	str r1, [sp, #0]
	str r1, [sp, #4]
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r3, #0
	ldrsh r0, [r7, r3]
	ldr r1, [sp, #0x7c]
	ldrh r3, [r1, #0]
	ldr r2, [sp, #0x58]
	str r2, [sp, #0]
	str r6, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0x9f
	movs r2, #1
	bl sub_08007870
	adds r1, r0, #0
	movs r3, #0
	ldrsh r0, [r5, r3]
	adds r0, #1
	str r0, [r1, #0xc]
_0809AB6E:
	ldr r0, [sp, #0x54]
	cmp r0, #0
	blt _0809AB76
	b _0809ACB6
_0809AB76:
	bl sub_080020F4
	ldr r6, _0809AC70
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r4, [r0, #0]
	asrs r4, r4, #8
	ldr r1, [sp, #0x64]
	subs r4, r1, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	mov r3, r9
	ldr r1, [sp, #0x54]
	subs r2, r3, r1
	asrs r2, r2, #8
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r2, r2, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bhi _0809ACB2
	bl sub_0800CDF8
	cmp r0, #0
	bne _0809ACB2
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809ACB2
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809ACB2
	ldr r4, _0809AC74
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _0809ACB2
	bl sub_080020F4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0809ACB2
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0809ACB2
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _0809ACB2
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _0809ACB2
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _0809ACB2
	bl sub_080020F4
	ldr r2, [r4, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _0809ACB2
	bl sub_0800CE30
	cmp r0, #1
	bne _0809AC78
	movs r0, #0
	movs r1, #0xa0
	movs r2, #1
	bl sub_08029A7C
	b _0809AC82
_0809AC70: .4byte gUnk_03003CE0
_0809AC74: .4byte gUnk_030002DC
_0809AC78:
	movs r0, #0
	movs r1, #0x28
	movs r2, #1
	bl sub_08029A7C
_0809AC82:
	bl sub_080020F4
	ldr r4, _0809ADD8
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r0, r0, r4
	adds r0, #0xb0
	ldr r1, _0809ADDC
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r1, _0809ADE0
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r4, #0xe4
	adds r1, r1, r4
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
_0809ACB2:
	movs r2, #0
	str r2, [sp, #0x60]
_0809ACB6:
	bl sub_080003F0
	ldr r3, [sp, #0x60]
	cmp r3, #0
	beq _0809ACC2
	b _0809AA10
_0809ACC2:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _0809ACCE
	movs r0, #0xae
	bl sub_0805865C
_0809ACCE:
	movs r1, #0x78
	str r1, [sp, #0x5c]
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	ldr r2, [sp, #0x58]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x78]
	mov r3, r9
	asrs r0, r3, #8
	lsls r0, r0, #0x10
	str r0, [sp, #0x74]
	add r0, sp, #0x2c
	mov sl, r0
_0809ACEC:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809ADA6
	bl sub_0800CC98
	cmp r0, #0
	bne _0809ADA6
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809ADA6
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _0809ADA6
	add r1, sp, #0x44
	mov r8, r1
	movs r2, #1
	str r2, [sp, #0]
	add r0, sp, #0x10
	movs r1, #1
	mov r2, r8
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	ldr r0, [sp, #0x5c]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _0809ADA6
	ldr r0, [sp, #0x50]
	lsls r4, r0, #8
	asrs r4, r4, #0x10
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r0, r4, #0
	ldr r2, [sp, #0x74]
	asrs r1, r2, #0x10
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r3, #0
	ldrsh r0, [r7, r3]
	subs r0, #4
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r1, #1
	ldr r3, [sp, #0x78]
	str r3, [sp, #0]
	mov r2, sl
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #2
	movs r3, #0
	bl sub_08007870
	mov r3, r9
	ldr r0, [sp, #0x54]
	subs r1, r3, r0
	asrs r1, r1, #8
	lsls r1, r1, #0x10
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r0, r4, #0
	asrs r1, r1, #0x10
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	mov r2, r8
	ldrh r3, [r2, #0]
	ldr r2, [sp, #0x78]
	str r2, [sp, #0]
	mov r2, sl
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08007870
_0809ADA6:
	bl sub_080003F0
	ldr r0, [sp, #0x5c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r0, _0809ADE4
	ldr r3, [sp, #0x5c]
	cmp r3, r0
	bne _0809ACEC
	bl sub_0800048C
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #8]
_0809ADC6:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809ADD8: .4byte gUnk_03003CE0
_0809ADDC: .4byte 0x0000FFFE
_0809ADE0: .4byte gUnk_030002DC
_0809ADE4: .4byte 0x0000FFFF
	thumb_func_end sub_0809A834
