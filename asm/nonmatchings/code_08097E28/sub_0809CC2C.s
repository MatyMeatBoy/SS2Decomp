	thumb_func_start sub_0809CC2C
sub_0809CC2C: @ 0x0809CC2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x7c]
	ldr r1, _0809CC80
	lsls r0, r0, #1
	ldr r2, [sp, #0x7c]
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	movs r3, #0xb8
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r1, [r1, #0]
	adds r7, r1, r0
	adds r0, r7, #0
	bl sub_0801A0A4
	ldr r2, _0809CC84
	ldr r0, [sp, #0x7c]
	adds r0, #1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
	ldr r1, _0809CC88
	ldr r4, [sp, #0x7c]
	lsls r0, r4, #2
	adds r0, r0, r1
	str r7, [r0, #0]
	cmp r4, #0
	beq _0809CC8C
	cmp r4, #1
	beq _0809CC94
	b _0809CC98
_0809CC80: .4byte gUnk_030056F4
_0809CC84: .4byte gUnk_030056FC
_0809CC88: .4byte gUnk_03000300
_0809CC8C:
	ldr r0, _0809CC90
	b _0809CC96
_0809CC90: .4byte 0x0000890E
_0809CC94:
	ldr r0, _0809CD9C
_0809CC96:
	str r0, [r7, #0x14]
_0809CC98:
	ldr r0, _0809CDA0
	str r0, [r7, #0x18]
	ldr r1, _0809CDA4
	ldr r4, [sp, #0x7c]
	adds r4, #1
	adds r0, r7, #0
	adds r2, r4, #0
	bl sub_0801623C
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x80]
	bl sub_08019F60
	ldr r0, _0809CDA8
	adds r0, #0x90
	ldrh r1, [r0, #0]
	adds r0, r7, #0
	adds r0, #0x48
	movs r5, #0
	strh r1, [r0, #0]
	strh r4, [r7, #0]
	ldr r0, [sp, #0x7c]
	adds r0, #5
	strh r0, [r7, #2]
	movs r0, #1
	str r0, [r7, #0x50]
	str r5, [r7, #0x54]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r2, r7, r1
	movs r0, #0xf
	ands r4, r0
	ldrb r1, [r2, #0]
	subs r0, #0x1f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0]
	ldrh r1, [r7, #2]
	ldr r2, _0809CDAC
	adds r0, r7, r2
	strh r1, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1, #0]
	ldr r4, _0809CDB0
	adds r1, r7, r4
	movs r0, #2
	strb r0, [r1, #0]
	ldr r1, _0809CDB4
	movs r4, #1
	negs r4, r4
	str r5, [sp, #0]
	add r0, sp, #0x10
	movs r2, #6
	adds r3, r4, #0
	bl sub_08065158
	add r0, sp, #0x44
	mov sl, r0
	ldr r1, _0809CDB8
	str r5, [sp, #0]
	movs r2, #6
	adds r3, r4, #0
	bl sub_08065158
	ldr r2, [sp, #0x80]
	movs r3, #6
	ldrsh r1, [r2, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r4, #0xeb
	lsls r4, r4, #1
	adds r1, r7, r4
	strh r0, [r1, #0]
	movs r1, #0x5c
	adds r1, r1, r7
	mov r9, r1
	strh r0, [r1, #0]
	movs r3, #4
	ldrsh r0, [r2, r3]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r4, #2
	adds r1, r7, r4
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	movs r0, #0x6c
	adds r0, r0, r7
	mov r8, r0
	strh r5, [r0, #0]
	adds r6, r7, #0
	adds r6, #0x6a
	strh r5, [r6, #0]
	adds r4, r7, #0
	adds r4, #0x68
	strh r5, [r4, #0]
	strh r5, [r7, #0xc]
	movs r1, #0
	str r1, [sp, #0x98]
	ldr r2, _0809CDBC
	str r2, [sp, #0x9c]
	str r2, [sp, #0xa0]
	movs r3, #0
	str r3, [sp, #0xa8]
	movs r0, #0
	str r0, [sp, #0xa4]
	str r1, [sp, #0xbc]
	bl sub_0800CE30
	mov r2, r9
	str r2, [sp, #0xc8]
	mov sl, r8
	adds r5, r4, #0
	cmp r0, #1
	bne _0809CDC6
	movs r3, #0x5a
	str r3, [sp, #0xb4]
	movs r4, #0x80
	lsls r4, r4, #1
	str r4, [sp, #0x94]
	b _0809CDCE
	.2byte 0x0000
_0809CD9C: .4byte 0x00014945
_0809CDA0: .4byte 0x0000DC50
_0809CDA4: .4byte gUnk_084A1910
_0809CDA8: .4byte gUnk_03003170
_0809CDAC: .4byte 0x00000202
_0809CDB0: .4byte 0x000001FD
_0809CDB4: .4byte 0x0005004C
_0809CDB8: .4byte 0x0005004B
_0809CDBC: .4byte 0x0000FFFF
_0809CDC0:
	bl sub_080003F0
	b _0809D1E2
_0809CDC6:
	movs r0, #0xb4
	str r0, [sp, #0xb4]
	movs r1, #0x80
	str r1, [sp, #0x94]
_0809CDCE:
	ldr r2, [sp, #0x7c]
	lsls r2, r2, #2
	str r2, [sp, #0xc0]
	movs r3, #6
	adds r3, #0x10
	str r3, [sp, #0xc4]
	ldr r4, [sp, #0x80]
	adds r4, #0xd6
	str r4, [sp, #0xcc]
	add r0, sp, #0x78
	mov r9, r0
	movs r1, #0x7a
	add r1, sp
	mov r8, r1
	b _0809D1AC
_0809CDEC:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _0809CDFC
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bne _0809CDFC
	movs r3, #8
	str r3, [sp, #0xa4]
_0809CDFC:
	bl sub_08058DB0
	cmp r0, #0
	beq _0809CE06
	b _0809CFA2
_0809CE06:
	adds r0, r7, #0
	bl sub_0801C8F0
	ldr r4, _0809CE24
	adds r0, r7, r4
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #7
	bls _0809CE1A
	b _0809CFA2
_0809CE1A:
	lsls r0, r0, #2
	ldr r1, _0809CE28
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0809CE24: .4byte 0x000001FD
_0809CE28: .4byte _0809CE2C
_0809CE2C:
	.4byte _0809CE4C
_0809CE30: .4byte _0809CE78
_0809CE34: .4byte _0809CFA2
_0809CE38: .4byte _0809CE9C
_0809CE3C: .4byte _0809CFA2
_0809CE40: .4byte _0809CF1C
_0809CE44: .4byte _0809CFA2
_0809CE48: .4byte _0809CF74
_0809CE4C:
	movs r0, #0
	strh r0, [r7, #0xc]
	ldrh r0, [r7, #0]
	bl sub_080682B8
	cmp r0, #0
	bne _0809CE5C
	b _0809CFA2
_0809CE5C:
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r1, [r0, #0]
	ldr r2, _0809CE74
	adds r0, r7, r2
	strb r1, [r0, #0]
	ldrh r0, [r7, #0]
	bl sub_08065E38
	b _0809CFA2
	.2byte 0x0000
_0809CE74: .4byte 0x000001FD
_0809CE78:
	movs r3, #0
	str r3, [sp, #0x98]
	bl sub_08056F78
	cmp r0, #0
	bne _0809CE86
	b _0809CFA2
_0809CE86:
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #4
	strb r0, [r1, #0]
	ldr r0, _0809CE98
	adds r1, r7, r0
	b _0809CF62
	.2byte 0x0000
_0809CE98: .4byte 0x000001FD
_0809CE9C:
	movs r1, #1
	str r1, [sp, #0x98]
	movs r4, #1
	strh r1, [r7, #0xc]
	ldr r0, [sp, #0x7c]
	bl sub_08096594
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r3, r7, r1
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x1c
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r1, r0
	ldr r1, _0809CF14
	adds r0, r0, r1
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #0x88]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x8c]
	movs r0, #0x30
	str r0, [sp, #0]
	ldr r3, [sp, #0x98]
	str r3, [sp, #4]
	adds r0, r7, #0
	ldr r1, [sp, #0x88]
	ldr r2, [sp, #0x8c]
	ldr r3, [sp, #0x94]
	bl sub_08097AC0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0809CFA2
	ldr r0, [sp, #0x7c]
	bl sub_08097A38
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #6
	strb r0, [r1, #0]
	ldr r1, _0809CF18
	adds r0, r7, r1
	strb r4, [r0, #0]
	b _0809CF66
	.2byte 0x0000
_0809CF14: .4byte gUnk_03003CE0
_0809CF18: .4byte 0x000001FD
_0809CF1C:
	movs r2, #2
	str r2, [sp, #0x98]
	strh r2, [r7, #0xc]
	ldrh r0, [r6, #0]
	cmp r0, #1
	bne _0809CF42
	mov r4, sl
	ldrh r0, [r4, #0]
	cmp r0, #0
	bne _0809CF42
	ldr r0, [sp, #0xbc]
	cmp r0, #0
	bne _0809CF42
	adds r0, r7, #0
	bl sub_0809D374
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xbc]
_0809CF42:
	adds r0, r7, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0809CFA2
	movs r1, #0
	str r1, [sp, #0xbc]
	movs r2, #0
	str r2, [sp, #0xb0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #8
	strb r0, [r1, #0]
	ldr r4, _0809CF70
	adds r1, r7, r4
_0809CF62:
	movs r0, #1
	strb r0, [r1, #0]
_0809CF66:
	ldrh r0, [r7, #0]
	bl sub_08068330
	b _0809CFA2
	.2byte 0x0000
_0809CF70: .4byte 0x000001FD
_0809CF74:
	movs r0, #0
	str r0, [sp, #0x98]
	strh r0, [r7, #0xc]
	ldr r1, [sp, #0xb0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb0]
	ldr r2, [sp, #0xb4]
	cmp r1, r2
	blo _0809CFA2
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #4
	strb r0, [r1, #0]
	ldr r4, _0809CFB8
	adds r1, r7, r4
	movs r0, #1
	strb r0, [r1, #0]
	ldrh r0, [r7, #0]
	bl sub_08068330
_0809CFA2:
	adds r0, r7, #0
	bl sub_08096640
	ldr r0, [sp, #0x98]
	cmp r0, #1
	beq _0809CFD4
	cmp r0, #1
	bgt _0809CFBC
	cmp r0, #0
	beq _0809CFC4
	b _0809CFF4
_0809CFB8: .4byte 0x000001FD
_0809CFBC:
	ldr r1, [sp, #0x98]
	cmp r1, #2
	beq _0809CFE6
	b _0809CFF4
_0809CFC4:
	mov r2, sp
	adds r2, #0x10
	str r2, [sp, #0x84]
	ldrh r0, [r7, #8]
	strh r0, [r5, #0]
	movs r3, #1
	str r3, [sp, #0xac]
	b _0809CFF4
_0809CFD4:
	mov r4, sp
	adds r4, #0x10
	str r4, [sp, #0x84]
	ldrh r0, [r7, #8]
	adds r0, #8
	strh r0, [r5, #0]
	movs r0, #1
	str r0, [sp, #0xac]
	b _0809CFF4
_0809CFE6:
	mov r1, sp
	adds r1, #0x44
	str r1, [sp, #0x84]
	ldrh r0, [r7, #8]
	strh r0, [r5, #0]
	movs r2, #0
	str r2, [sp, #0xac]
_0809CFF4:
	ldr r3, [sp, #0x9c]
	ldrh r4, [r5, #0]
	cmp r3, r4
	bne _0809D004
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0x98]
	cmp r0, r1
	beq _0809D014
_0809D004:
	ldr r2, [sp, #0x98]
	str r2, [sp, #0xa0]
	ldrh r3, [r5, #0]
	str r3, [sp, #0x9c]
	movs r0, #0
	mov r4, sl
	strh r0, [r4, #0]
	strh r0, [r6, #0]
_0809D014:
	movs r1, #6
	ldr r0, [sp, #0x84]
	strb r1, [r0, #0x1c]
	ldr r2, [sp, #0xcc]
	ldrh r0, [r2, #0]
	lsls r0, r0, #5
	ldr r3, [sp, #0x84]
	ldr r1, [r3, #0xc]
	adds r1, r1, r0
	ldr r0, [sp, #0xc4]
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0809D040
	bl sub_08097FF8
	b _0809D04E
_0809D040:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_0809D04E:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809D070
	ldrh r1, [r5, #0]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0]
	ldr r0, [sp, #0x84]
	adds r2, r6, #0
	mov r3, sl
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_0809D070:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	mov r2, r9
	mov r3, r8
	bl sub_0800BC08
	ldr r1, [sp, #0xa4]
	cmp r1, #0
	beq _0809D0E8
	adds r0, r1, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xa4]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0809D12C
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809D12C
	bl sub_0800CC98
	cmp r0, #0
	bne _0809D12C
	bl sub_0800CD34
	cmp r0, #0
	bne _0809D12C
	mov r2, r9
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r5, #0]
	ldrh r3, [r6, #0]
	str r3, [sp, #0xd0]
	str r4, [sp, #0]
	ldr r4, [sp, #0x84]
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [sp, #0x84]
	ldr r4, [r4, #8]
	str r4, [sp, #8]
	ldr r3, [sp, #0x84]
	ldr r3, [r3, #0]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0xd0]
	bl sub_08007870
	b _0809D12C
_0809D0E8:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809D12C
	bl sub_0800CC98
	cmp r0, #0
	bne _0809D12C
	bl sub_0800CD34
	cmp r0, #0
	bne _0809D12C
	mov r1, r9
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r2, [r5, #0]
	ldrh r3, [r6, #0]
	str r3, [sp, #0xd0]
	str r4, [sp, #0]
	ldr r4, [sp, #0x84]
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [sp, #0x84]
	ldr r4, [r4, #8]
	str r4, [sp, #8]
	ldr r3, [sp, #0x84]
	ldr r3, [r3, #0]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0xd0]
	bl sub_08007870
_0809D12C:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _0809D142
	ldr r4, [sp, #0x90]
	cmp r4, r0
	beq _0809D142
	str r0, [sp, #0x90]
	movs r0, #0xa
	str r0, [sp, #0xa8]
	movs r1, #0
	str r1, [sp, #0xb8]
_0809D142:
	ldr r2, [sp, #0xa8]
	cmp r2, #0
	beq _0809D194
	bl sub_0800CC98
	cmp r0, #0
	bne _0809D16E
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809D16E
	bl sub_0800CD34
	cmp r0, #0
	bne _0809D16E
	ldr r3, [sp, #0xb8]
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x90]
	bl sub_0801A120
_0809D16E:
	movs r0, #2
	ldr r4, [sp, #0xa8]
	ands r0, r4
	cmp r0, #0
	beq _0809D184
	ldr r1, [sp, #0xb8]
	lsls r0, r1, #0x10
	ldr r2, _0809D190
	adds r0, r0, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0xb8]
_0809D184:
	ldr r0, [sp, #0xa8]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa8]
	b _0809D19A
_0809D190: .4byte 0xFFFF0000
_0809D194:
	movs r3, #0
	str r3, [sp, #0x90]
	str r3, [r7, #0x4c]
_0809D19A:
	adds r0, r7, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0809D1A8
	b _0809CDC0
_0809D1A8:
	bl sub_080003F0
_0809D1AC:
	ldr r0, _0809D1C0
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0809D1C4
	adds r0, r7, #0
	bl sub_0801A0B0
	b _0809D1CA
_0809D1C0: .4byte gUnk_030002E8
_0809D1C4:
	adds r0, r7, #0
	bl sub_0801A0A4
_0809D1CA:
	ldr r0, _0809D228
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	beq _0809D1DA
	b _0809CDEC
_0809D1DA:
	ldr r1, [sp, #0xc8]
	strh r0, [r1, #0]
	movs r0, #0xb
	strh r0, [r7, #0xc]
_0809D1E2:
	ldr r2, _0809D22C
	ldr r0, _0809D230
	ldr r3, [sp, #0xc0]
	adds r0, r3, r0
	ldr r0, [r0, #0]
	movs r1, #1
	ldrh r0, [r0, #0]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	movs r4, #0x14
	str r4, [sp, #0xa4]
_0809D1FC:
	movs r1, #6
	ldr r0, [sp, #0x84]
	strb r1, [r0, #0x1c]
	ldr r2, [sp, #0xcc]
	ldrh r0, [r2, #0]
	lsls r0, r0, #5
	ldr r3, [sp, #0x84]
	ldr r1, [r3, #0xc]
	adds r1, r1, r0
	ldr r0, [sp, #0xc4]
	movs r2, #1
	bl sub_08000AF0
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0809D234
	bl sub_08097FF8
	b _0809D242
_0809D228: .4byte gUnk_030002EC
_0809D22C: .4byte gUnk_030056FC
_0809D230: .4byte gUnk_03000300
_0809D234:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_0809D242:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809D264
	ldrh r1, [r5, #0]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0]
	ldr r0, [sp, #0x84]
	adds r2, r6, #0
	mov r3, sl
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_0809D264:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	mov r2, r9
	mov r3, r8
	bl sub_0800BC08
	movs r0, #1
	ldr r1, [sp, #0xa4]
	ands r0, r1
	cmp r0, #0
	beq _0809D2CC
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809D2CC
	bl sub_0800CC98
	cmp r0, #0
	bne _0809D2CC
	bl sub_0800CD34
	cmp r0, #0
	bne _0809D2CC
	mov r2, r9
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldrh r2, [r5, #0]
	ldrh r3, [r6, #0]
	str r3, [sp, #0xd0]
	str r4, [sp, #0]
	ldr r4, [sp, #0x84]
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [sp, #0x84]
	ldr r4, [r4, #8]
	str r4, [sp, #8]
	ldr r3, [sp, #0x84]
	ldr r3, [r3, #0]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0xd0]
	bl sub_08007870
_0809D2CC:
	bl sub_080003F0
	ldr r0, [sp, #0xa4]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
	ldr r0, _0809D360
	ldr r4, [sp, #0xa4]
	cmp r4, r0
	bne _0809D1FC
	bl sub_080020F4
	ldr r1, _0809D364
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0809D350
	ldr r0, _0809D368
	ldr r1, [sp, #0xc0]
	adds r5, r1, r0
	ldr r0, [r5, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0809D350
	ldr r0, _0809D36C
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x80]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r2, #0x1d
	str r2, [sp, #0xb8]
	movs r6, #1
	negs r6, r6
_0809D322:
	ldr r0, [r5, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r3, [sp, #0xb8]
	lsls r0, r3, #0x10
	ldr r1, _0809D370
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	str r2, [sp, #0xb8]
	asrs r0, r0, #0x10
	cmp r0, r6
	bne _0809D322
	ldr r0, _0809D36C
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_0809D350:
	add sp, #0xd4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809D360: .4byte 0x0000FFFF
_0809D364: .4byte gUnk_03003CE0
_0809D368: .4byte gUnk_03000300
_0809D36C: .4byte gUnk_030034E0
_0809D370: .4byte 0xFFFF0000
	thumb_func_end sub_0809CC2C
