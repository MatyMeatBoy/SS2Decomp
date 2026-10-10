	thumb_func_start sub_0805B688
sub_0805B688: @ 0x0805B688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x78]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x7c]
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0x78]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _0805B7B8
	adds r1, r1, r0
	str r1, [sp, #0x80]
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa8]
	ldr r1, _0805B7BC
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldr r3, [sp, #0x80]
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r5, r3, r0
	ldr r0, [r5, #0]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x17
	lsrs r7, r0, #0x1b
	add r4, sp, #0x44
	movs r0, #1
	strh r0, [r4, #0]
	add r1, sp, #0x7c
	ldrh r1, [r1, #0]
	strh r1, [r4, #2]
	movs r0, #0x80
	lsls r0, r0, #0xd
	ldr r2, [sp, #0x7c]
	orrs r0, r2
	bl sub_08007290
	str r0, [sp, #0x84]
	adds r0, #0xa8
	ldrb r0, [r0, #0]
	str r0, [sp, #0xa4]
	ldr r1, [r5, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x70]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [sp, #0x74]
	movs r3, #0x80
	lsls r3, r3, #5
	str r3, [sp, #0x90]
	ldr r2, _0805B7C0
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r6, [r0, #0]
	ldr r1, [sp, #0x80]
	ldrh r0, [r1, #0x20]
	cmp r0, #0xd
	beq _0805B73E
	bl sub_0800CCCC
	cmp r0, #0
	bne _0805B73E
	bl sub_0800CD34
	cmp r0, #0
	bne _0805B73E
	movs r0, #0x17
	bl sub_0805865C
_0805B73E:
	ldr r2, [sp, #0x80]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0xa0]
	lsls r0, r7, #2
	adds r0, #8
	str r0, [sp, #0x8c]
	movs r0, #0
	str r0, [sp, #0x94]
	ldr r1, _0805B7C4
	str r1, [sp, #0x98]
	ldr r5, _0805B7C8
	lsls r4, r6, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #1
	ldr r3, [sp, #0x8c]
	muls r0, r3, r0
	movs r1, #0xa
	bl __divsi3
	ldr r1, [sp, #0x70]
	adds r1, r1, r0
	str r1, [sp, #0x70]
	lsls r4, r4, #1
	adds r4, r4, r5
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #1
	ldr r2, [sp, #0x8c]
	muls r0, r2, r0
	movs r1, #0xa
	bl __divsi3
	ldr r1, [sp, #0x74]
	adds r1, r1, r0
	str r1, [sp, #0x74]
	bl sub_0801DE60
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0805B7D0
	ldr r0, _0805B7CC
	ldr r0, [r0, #0]
	adds r0, #0x30
	movs r1, #5
	bl sub_0801E0AC
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _0805BC0E
	.2byte 0x0000
_0805B7B8: .4byte gUnk_03003CE0
_0805B7BC: .4byte 0x000500F1
_0805B7C0: .4byte gUnk_0847AD0A
_0805B7C4: .4byte 0xFFFFFF00
_0805B7C8: .4byte gUnk_080B9704
_0805B7CC: .4byte gUnk_030034E0
_0805B7D0:
	movs r7, #0
	b _0805BC0E
_0805B7D4:
	ldr r0, [sp, #0x70]
	str r0, [sp, #0x58]
	add r3, sp, #0x58
	ldr r0, [sp, #0x74]
	str r0, [r3, #4]
	ldr r0, _0805B800
	str r0, [sp, #0x68]
	ldr r0, _0805B804
	str r0, [sp, #0x6c]
	ldr r2, [sp, #0x84]
	adds r2, #0xa4
	ldr r1, [r2, #0]
	movs r0, #1
	ands r1, r0
	mov r8, r3
	mov r9, r2
	movs r2, #0
	cmp r1, #0
	bne _0805B7FC
	b _0805B934
_0805B7FC:
	movs r6, #0
	b _0805B922
_0805B800: .4byte 0x00080008
_0805B804: .4byte 0x00200018
_0805B808:
	ldr r3, [sp, #0x78]
	cmp r6, r3
	bne _0805B810
	b _0805B91C
_0805B810:
	ldr r5, _0805B890
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r3, r6, #0
	muls r3, r0, r3
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r4, r3, r0
	ldr r2, [r4, #0]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _0805B91C
	cmp r0, #0xc
	beq _0805B91C
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805B91C
	adds r0, r5, #0
	adds r0, #0x30
	adds r5, r3, r0
	ldr r0, [r5, #0]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0805B91C
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x60]
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	add r1, sp, #0x60
	str r0, [r1, #4]
	mov r0, r8
	add r2, sp, #0x68
	add r3, sp, #0x6c
	bl sub_08021FE0
	cmp r0, #0
	beq _0805B91C
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0xa8]
	cmp r2, r3
	bne _0805B918
	ldr r0, [sp, #0x84]
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	cmp r0, #0xd
	beq _0805B8CC
	cmp r0, #0xd
	bgt _0805B894
	cmp r0, #5
	beq _0805B89E
	b _0805B908
_0805B890: .4byte gUnk_03003CE0
_0805B894:
	cmp r0, #0xe
	beq _0805B8E0
	cmp r0, #0xf
	beq _0805B8F4
	b _0805B908
_0805B89E:
	ldr r0, _0805B8BC
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0xb
	beq _0805B912
	ldr r0, [r5, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0805B8C0
	adds r0, r6, #0
	bl sub_08068144
	b _0805B912
_0805B8BC: .4byte gUnk_03003170
_0805B8C0:
	ldr r0, [sp, #0x7c]
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_08067F4C
	b _0805B912
_0805B8CC:
	ldr r1, [sp, #0x80]
	ldrh r0, [r1, #0]
	ldr r2, [sp, #0x58]
	mov r1, r8
	ldr r3, [r1, #4]
	str r7, [sp, #0]
	movs r1, #4
	bl sub_0806818C
	b _0805B912
_0805B8E0:
	ldr r2, [sp, #0x80]
	ldrh r0, [r2, #0]
	ldr r2, [sp, #0x58]
	mov r1, r8
	ldr r3, [r1, #4]
	str r7, [sp, #0]
	movs r1, #5
	bl sub_0806818C
	b _0805B912
_0805B8F4:
	ldr r2, [sp, #0x80]
	ldrh r0, [r2, #0]
	ldr r2, [sp, #0x58]
	mov r1, r8
	ldr r3, [r1, #4]
	str r7, [sp, #0]
	movs r1, #0
	bl sub_0806823C
	b _0805B912
_0805B908:
	ldr r0, [sp, #0x7c]
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_08067F4C
_0805B912:
	movs r2, #1
	str r2, [sp, #0x9c]
	b _0805B91C
_0805B918:
	movs r3, #1
	str r3, [sp, #0x9c]
_0805B91C:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0805B922:
	bl sub_08002164
	ldr r1, [sp, #0x9c]
	lsls r2, r1, #0x10
	cmp r6, r0
	bhs _0805B934
	cmp r2, #0
	bne _0805B934
	b _0805B808
_0805B934:
	cmp r2, #0
	beq _0805B93A
	b _0805BD46
_0805B93A:
	mov r2, r9
	ldr r0, [r2, #0]
	movs r1, #0x3e
	ands r0, r1
	cmp r0, #0
	bne _0805B948
	b _0805BAEA
_0805B948:
	movs r6, #0
	add r3, sp, #0x6c
	mov sl, r3
_0805B94E:
	ldr r0, _0805B9E8
	movs r1, #1
	lsls r1, r6
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _0805B95E
	b _0805BADE
_0805B95E:
	ldr r1, _0805B9EC
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	subs r0, r0, r6
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r4, r1, r0
	ldrh r0, [r4, #0xc]
	cmp r0, #0xc
	bne _0805B976
	b _0805BADE
_0805B976:
	movs r0, #0xee
	lsls r0, r0, #1
	adds r5, r4, r0
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne _0805B990
	mov r1, r9
	ldr r0, [r1, #0]
	movs r1, #0x3c
	ands r0, r1
	cmp r0, #0
	bne _0805B990
	b _0805BADE
_0805B990:
	ldr r2, _0805B9F0
	adds r0, r4, r2
	ldrb r0, [r0, #0]
	mov r3, sl
	strh r0, [r3, #0]
	ldr r1, _0805B9F4
	adds r0, r4, r1
	ldrb r0, [r0, #0]
	strh r0, [r3, #2]
	adds r1, r4, #0
	adds r1, #0x14
	mov r0, r8
	add r2, sp, #0x68
	bl sub_08021FE0
	cmp r0, #0
	bne _0805B9B4
	b _0805BADE
_0805B9B4:
	ldrh r0, [r4, #0xc]
	movs r1, #0
	cmp r0, #0xb
	beq _0805B9C8
	ldr r1, [r4, #0x54]
	ldr r2, [sp, #0x88]
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r1, r0, #0x1f
_0805B9C8:
	cmp r1, #0
	bne _0805B9CE
	b _0805BADE
_0805B9CE:
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne _0805BA66
	ldr r3, _0805B9F8
	adds r0, r4, r3
	ldrb r1, [r0, #0]
	cmp r1, #5
	beq _0805BA16
	cmp r1, #5
	bgt _0805B9FC
	cmp r1, #4
	beq _0805BA06
	b _0805BA50
_0805B9E8: .4byte gUnk_030056FC
_0805B9EC: .4byte gUnk_030056F4
_0805B9F0: .4byte 0x0000022E
_0805B9F4: .4byte 0x0000022F
_0805B9F8: .4byte 0x00000226
_0805B9FC:
	cmp r1, #6
	beq _0805BA2A
	cmp r1, #7
	beq _0805BA3C
	b _0805BA50
_0805BA06:
	mov r2, r9
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _0805BADE
	movs r3, #0xc
	strh r3, [r4, #0xc]
	b _0805BA4C
_0805BA16:
	mov r1, r9
	ldr r0, [r1, #0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0805BADE
	movs r2, #0xc
	strh r2, [r4, #0xc]
	strh r1, [r4, #0xe]
	b _0805BA50
_0805BA2A:
	mov r3, r9
	ldr r0, [r3, #0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0805BADE
	movs r0, #0xc
	strh r0, [r4, #0xc]
	b _0805BA4C
_0805BA3C:
	mov r1, r9
	ldr r0, [r1, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0805BADE
	movs r2, #0xc
	strh r2, [r4, #0xc]
_0805BA4C:
	movs r0, #8
	strh r0, [r4, #0xe]
_0805BA50:
	ldrh r0, [r4, #0xc]
	cmp r0, #0xc
	bne _0805BADE
	ldr r3, [sp, #0x9c]
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x9c]
	b _0805BAEA
_0805BA66:
	movs r2, #1
	str r2, [sp, #0x9c]
	bl sub_080020F4
	ldr r3, [sp, #0x78]
	cmp r3, r0
	bne _0805BADE
	ldr r0, [sp, #0x84]
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	cmp r0, #0xe
	beq _0805BA98
	cmp r0, #0xe
	bgt _0805BA88
	cmp r0, #0xd
	beq _0805BA92
	b _0805BAD4
_0805BA88:
	cmp r0, #0xf
	beq _0805BAAC
	cmp r0, #0x12
	beq _0805BAC0
	b _0805BAD4
_0805BA92:
	ldr r1, [sp, #0x80]
	ldrh r0, [r1, #0]
	b _0805BAC4
_0805BA98:
	ldr r2, [sp, #0x80]
	ldrh r0, [r2, #0]
	ldr r2, [sp, #0x58]
	mov r1, r8
	ldr r3, [r1, #4]
	str r7, [sp, #0]
	movs r1, #5
	bl sub_0806818C
	b _0805BADE
_0805BAAC:
	ldr r2, [sp, #0x80]
	ldrh r0, [r2, #0]
	ldr r2, [sp, #0x58]
	mov r1, r8
	ldr r3, [r1, #4]
	str r7, [sp, #0]
	movs r1, #0
	bl sub_0806823C
	b _0805BADE
_0805BAC0:
	ldr r2, [sp, #0x80]
	ldrh r0, [r2, #0]
_0805BAC4:
	ldr r2, [sp, #0x58]
	mov r1, r8
	ldr r3, [r1, #4]
	str r7, [sp, #0]
	movs r1, #4
	bl sub_0806818C
	b _0805BADE
_0805BAD4:
	ldrh r1, [r4, #2]
	ldr r0, [sp, #0x7c]
	adds r2, r7, #0
	bl sub_08067F04
_0805BADE:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #4
	bhi _0805BAEA
	b _0805B94E
_0805BAEA:
	ldr r2, [sp, #0x9c]
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _0805BAF6
	b _0805BD46
_0805BAF6:
	ldr r0, [sp, #0x84]
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	cmp r0, #0xf
	bgt _0805BB20
	cmp r0, #0xd
	blt _0805BB20
	ldr r3, [sp, #0x8c]
	lsls r0, r3, #8
	movs r1, #0xa
	bl __divsi3
	ldr r1, [sp, #0xa0]
	lsls r2, r1, #0x10
	str r4, [sp, #0]
	mov r1, r8
	lsrs r2, r2, #0x10
	movs r3, #4
	bl sub_08013E90
	b _0805BB3C
_0805BB20:
	ldr r2, [sp, #0x8c]
	lsls r0, r2, #8
	movs r1, #0xa
	bl __divsi3
	ldr r3, [sp, #0xa0]
	lsls r2, r3, #0x10
	movs r1, #0
	str r1, [sp, #0]
	mov r1, r8
	lsrs r2, r2, #0x10
	movs r3, #0
	bl sub_08013E90
_0805BB3C:
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x70]
	mov r1, r8
	ldr r0, [r1, #4]
	str r0, [sp, #0x74]
	cmp r7, #0
	beq _0805BB4C
	subs r7, #1
_0805BB4C:
	ldr r2, [sp, #0x90]
	ldr r3, [sp, #0x98]
	subs r2, r2, r3
	str r2, [sp, #0x90]
	adds r3, #0x40
	str r3, [sp, #0x98]
	cmp r2, #0
	bge _0805BB76
	ldr r0, [sp, #0x8c]
	asrs r0, r0, #2
	str r0, [sp, #0x8c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldr r2, [sp, #0x94]
	asrs r0, r2
	negs r0, r0
	str r0, [sp, #0x98]
	adds r2, #1
	str r2, [sp, #0x94]
	str r1, [sp, #0x90]
_0805BB76:
	bl sub_0800CC98
	cmp r0, #0
	bne _0805BC0A
	bl sub_0800CD8C
	cmp r0, #0
	bne _0805BC0A
	bl sub_0800CCCC
	adds r3, r0, #0
	cmp r3, #0
	bne _0805BC0A
	ldr r0, [sp, #0x70]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x74]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r6, sp, #0x54
	movs r2, #0x56
	add r2, sp
	mov r8, r2
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r2, r6, #0
	mov r3, r8
	bl sub_0800BC08
	ldr r0, [sp, #0x70]
	asrs r0, r0, #8
	ldr r1, [sp, #0x74]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	adds r4, r0, #0
	movs r3, #0
	ldrsh r0, [r6, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r3, [sp, #0x90]
	asrs r2, r3, #8
	subs r1, r1, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0]
	add r5, sp, #0x2c
	str r5, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	ldr r3, [sp, #0xa4]
	bl sub_08007870
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	str r4, [sp, #0]
	str r5, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0xfe
	bl sub_08007870
_0805BC0A:
	bl sub_080003F0
_0805BC0E:
	ldr r0, [sp, #0x94]
	cmp r0, #1
	bgt _0805BC26
	movs r1, #0
	str r1, [sp, #0x9c]
	bl sub_08056E90
	cmp r0, #0
	bne _0805BC22
	b _0805B7D4
_0805BC22:
	movs r2, #1
	str r2, [sp, #0x9c]
_0805BC26:
	ldr r3, [sp, #0x9c]
	lsls r0, r3, #0x10
	cmp r0, #0
	beq _0805BC30
	b _0805BD46
_0805BC30:
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0xa8]
	cmp r0, r1
	beq _0805BC3A
	b _0805BD46
_0805BC3A:
	ldr r0, [sp, #0x84]
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	cmp r0, #0xe
	beq _0805BC62
	cmp r0, #0xe
	bgt _0805BC4E
	cmp r0, #0xd
	beq _0805BC54
	b _0805BC8A
_0805BC4E:
	cmp r0, #0xf
	beq _0805BC76
	b _0805BC8A
_0805BC54:
	ldr r2, [sp, #0x80]
	ldrh r0, [r2, #0]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	str r7, [sp, #0]
	movs r1, #2
	b _0805BC6E
_0805BC62:
	ldr r3, [sp, #0x80]
	ldrh r0, [r3, #0]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	str r7, [sp, #0]
	movs r1, #3
_0805BC6E:
	bl sub_0806818C
	movs r7, #5
	b _0805BC9C
_0805BC76:
	ldr r1, [sp, #0x80]
	ldrh r0, [r1, #0]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	str r7, [sp, #0]
	movs r1, #0
	bl sub_0806823C
	movs r7, #5
	b _0805BC9C
_0805BC8A:
	ldr r0, _0805BD58
	adds r0, #0x90
	ldrh r2, [r0, #0]
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	add r3, sp, #0x44
	bl sub_08066520
	movs r7, #0x1e
_0805BC9C:
	add r0, sp, #0x70
	add r1, sp, #0x74
	bl sub_0805B4CC
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	beq _0805BD46
	add r6, sp, #0x54
	mov r5, sp
	adds r5, #0x56
	add r2, sp, #0x2c
	mov r8, r2
_0805BCB6:
	bl sub_0800CC98
	cmp r0, #0
	bne _0805BD3A
	bl sub_0800CD8C
	cmp r0, #0
	bne _0805BD3A
	bl sub_0800CCCC
	adds r3, r0, #0
	cmp r3, #0
	bne _0805BD3A
	ldr r0, [sp, #0x70]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x74]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, [sp, #0x70]
	asrs r0, r0, #8
	ldr r1, [sp, #0x74]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	adds r4, r0, #0
	movs r3, #0
	ldrsh r0, [r6, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0]
	mov r3, r8
	str r3, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	ldr r3, [sp, #0xa4]
	bl sub_08007870
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	str r4, [sp, #0]
	mov r3, r8
	str r3, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0
	movs r3, #0xfe
	bl sub_08007870
_0805BD3A:
	bl sub_080003F0
	adds r0, r7, #0
	subs r7, #1
	cmp r0, #0
	bne _0805BCB6
_0805BD46:
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805BD58: .4byte gUnk_03003170
	thumb_func_end sub_0805B688
