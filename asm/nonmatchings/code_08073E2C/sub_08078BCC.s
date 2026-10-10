	thumb_func_start sub_08078BCC
sub_08078BCC: @ 0x08078BCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf0
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	bl sub_080020F4
	str r0, [sp, #0xb8]
	add r4, sp, #0x18
	ldr r1, _08078D94
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #8
	bl sub_08065158
	movs r0, #7
	strb r0, [r4, #0x1c]
	movs r0, #8
	strb r0, [r4, #0x1d]
	movs r0, #0
	mov r9, r0
	mov r1, sp
	adds r1, #0x54
	str r1, [sp, #0xdc]
	mov r2, sp
	adds r2, #0x58
	str r2, [sp, #0xe0]
	mov r3, sp
	adds r3, #0x60
	str r3, [sp, #0xe4]
	movs r2, #0
	ldr r1, [sp, #0xe0]
	ldr r0, [sp, #0xdc]
_08078C1A:
	strh r2, [r1, #0]
	strh r2, [r0, #0]
	adds r1, #2
	adds r0, #2
	movs r3, #1
	add r9, r3
	mov r3, r9
	cmp r3, #1
	bls _08078C1A
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r1, [sp, #0x78]
	muls r0, r1, r0
	ldr r7, _08078D98
	adds r0, r0, r7
	str r0, [sp, #0x80]
	bl sub_08002164
	adds r5, r0, #0
	movs r2, #0
	str r2, [sp, #0xa0]
	str r2, [sp, #0x84]
	str r2, [sp, #0x88]
	str r2, [sp, #0x60]
	ldr r3, [sp, #0xe4]
	str r2, [r3, #4]
	str r2, [sp, #0x94]
	str r2, [sp, #0x98]
	ldr r0, _08078D9C
	str r0, [sp, #0x68]
	ldr r1, [sp, #0x78]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #0x13
	lsrs r0, r0, #0x10
	str r0, [sp, #0xbc]
	str r2, [sp, #0xc0]
	movs r3, #0
	str r3, [sp, #0xb0]
	movs r0, #1
	str r0, [sp, #0xc4]
	movs r4, #0
	mov r9, r4
	lsls r1, r1, #2
	str r1, [sp, #0xcc]
	cmp r2, r5
	bhs _08078CF0
	ldr r6, [sp, #0x80]
	adds r6, #0x68
	add r3, sp, #8
_08078C82:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	adds r2, r0, r7
	adds r1, r2, #0
	adds r1, #0x68
	ldrb r0, [r6, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _08078CE8
	str r2, [r3, #0]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bgt _08078CE0
	cmp r0, #0
	blt _08078CE0
	ldrb r0, [r1, #5]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08078CE0
	adds r4, #1
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	ldr r2, [sp, #0x84]
	adds r0, r2, r0
	str r0, [sp, #0x84]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	ldr r2, [sp, #0x88]
	adds r0, r2, r0
	str r0, [sp, #0x88]
	ldr r0, [r1, #4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x18
	ldr r1, [sp, #0xb0]
	adds r1, r1, r0
	str r1, [sp, #0xb0]
_08078CE0:
	adds r3, #4
	ldr r2, [sp, #0xa0]
	adds r2, #1
	str r2, [sp, #0xa0]
_08078CE8:
	movs r0, #1
	add r9, r0
	cmp r9, r5
	blo _08078C82
_08078CF0:
	ldr r0, [sp, #0x84]
	adds r1, r4, #0
	bl sub_080B956C
	str r0, [sp, #0x84]
	ldr r0, [sp, #0x88]
	adds r1, r4, #0
	bl sub_080B956C
	str r0, [sp, #0x88]
	ldr r1, [sp, #0x84]
	ldr r2, [sp, #0x88]
	str r1, [sp, #0x60]
	str r2, [sp, #0x64]
	movs r2, #0
	str r2, [sp, #0xa4]
	movs r3, #0
	str r3, [sp, #0xa8]
	movs r0, #0
	str r0, [sp, #0xb4]
	movs r0, #0x28
	bl sub_0805865C
	ldr r1, [sp, #0x80]
	adds r1, #0x68
	str r1, [sp, #0xe8]
_08078D24:
	movs r2, #0
	str r2, [sp, #0x84]
	str r2, [sp, #0x88]
	movs r4, #0
	mov r9, r4
	ldr r3, [sp, #0xa0]
	cmp r9, r3
	bhs _08078DC6
	ldr r0, [sp, #8]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08078DC6
	add r3, sp, #8
_08078D4E:
	ldr r1, [r3, #0]
	adds r0, r1, r2
	ldr r2, [r0, #0]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0
	blt _08078DA0
	cmp r0, #1
	bgt _08078DA0
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08078DA2
	ldrb r0, [r2, #5]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge _08078DA2
	adds r4, #1
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	ldr r1, [sp, #0x84]
	adds r0, r1, r0
	str r0, [sp, #0x84]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	ldr r2, [sp, #0x88]
	adds r0, r2, r0
	str r0, [sp, #0x88]
	b _08078DA2
	.2byte 0x0000
_08078D94: .4byte 0x000500A9
_08078D98: .4byte gUnk_03003CE0
_08078D9C: .4byte 0x00100010
_08078DA0:
	movs r4, #0
_08078DA2:
	adds r3, #4
	movs r0, #1
	add r9, r0
	ldr r1, [sp, #0xa0]
	cmp r9, r1
	bhs _08078DC6
	ldr r0, [r3, #0]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08078D4E
_08078DC6:
	ldr r2, [sp, #0xa0]
	cmp r4, r2
	beq _08078DCE
	b _0807933A
_08078DCE:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08078DD8
	b _0807933A
_08078DD8:
	bl sub_08056E90
	adds r7, r0, #0
	cmp r7, #0
	beq _08078DE4
	b _0807933A
_08078DE4:
	ldr r0, [sp, #0x84]
	ldr r1, [sp, #0xa0]
	bl sub_080B956C
	str r0, [sp, #0x84]
	ldr r0, [sp, #0x88]
	ldr r1, [sp, #0xa0]
	bl sub_080B956C
	str r0, [sp, #0x88]
	ldr r0, [sp, #0x60]
	ldr r3, [sp, #0x84]
	subs r0, r3, r0
	str r0, [sp, #0x8c]
	ldr r1, [sp, #0xe4]
	ldr r0, [r1, #4]
	ldr r2, [sp, #0x88]
	subs r0, r2, r0
	str r0, [sp, #0x90]
	movs r3, #0
	cmp r3, #0
	bne _08078E34
	ldr r1, [sp, #0x8c]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x90]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x18
	str r0, [sp, #0x9c]
	mov r3, sp
	adds r3, #0x4c
	str r3, [sp, #0xd4]
	mov r0, sp
	adds r0, #0x50
	str r0, [sp, #0xd8]
	b _08078E7C
_08078E34:
	add r1, sp, #0x4c
	mov r8, r1
	movs r2, #0
	ldrsh r0, [r1, r2]
	add r6, sp, #0x50
	movs r3, #0
	ldrsh r1, [r6, r3]
	add r4, sp, #0x5c
	mov r5, sp
	adds r5, #0x5e
	movs r2, #0x30
	str r2, [sp, #0]
	str r7, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldrh r0, [r4, #0]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	mov r2, r8
	str r2, [sp, #0xd4]
	str r6, [sp, #0xd8]
	cmp r0, r1
	bls _08078E6C
	b _0807933A
_08078E6C:
	ldrh r0, [r5, #0]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0x90
	lsls r1, r1, #0x11
	cmp r0, r1
	bls _08078E7C
	b _0807933A
_08078E7C:
	ldr r3, [sp, #0x8c]
	adds r0, r3, #0
	muls r0, r3, r0
	ldr r2, [sp, #0x90]
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	movs r4, #0x20
	ldr r1, _08078EA0
	cmp r0, r1
	ble _08078EA4
	ldr r3, [sp, #0xa4]
	adds r3, #0x10
	str r3, [sp, #0xa4]
	b _08078EB2
_08078EA0: .4byte 0x02FF0000
_08078EA4:
	ldr r0, [sp, #0xa4]
	subs r0, #0x10
	str r0, [sp, #0xa4]
	cmp r0, #0
	bge _08078EB2
	movs r1, #0
	str r1, [sp, #0xa4]
_08078EB2:
	movs r0, #0x80
	lsls r0, r0, #4
	ldr r2, [sp, #0xa4]
	cmp r2, r0
	ble _08078EBE
	str r0, [sp, #0xa4]
_08078EBE:
	ldr r1, _08078F38
	ldr r0, [sp, #0x9c]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r2, [sp, #0xa4]
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [sp, #0x8c]
	ldr r3, [sp, #0x9c]
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	asrs r0, r0, #8
	str r0, [sp, #0x90]
	ldr r2, [sp, #0x8c]
	ldr r3, [sp, #0x94]
	subs r0, r2, r3
	adds r1, r4, #0
	bl sub_080B9394
	ldr r1, [sp, #0x94]
	adds r0, r1, r0
	str r0, [sp, #0x94]
	ldr r2, [sp, #0x90]
	ldr r3, [sp, #0x98]
	subs r0, r2, r3
	adds r1, r4, #0
	bl sub_080B9394
	ldr r1, [sp, #0x98]
	adds r0, r1, r0
	str r0, [sp, #0x98]
	ldr r0, [sp, #0x60]
	ldr r2, [sp, #0x94]
	adds r0, r0, r2
	str r0, [sp, #0x60]
	ldr r3, [sp, #0xe4]
	ldr r0, [r3, #4]
	ldr r1, [sp, #0x98]
	adds r0, r0, r1
	str r0, [r3, #4]
	ldr r2, [sp, #0x9c]
	asrs r2, r2, #4
	str r2, [sp, #0x9c]
	cmp r2, #1
	bhi _08078F40
	ldr r3, [sp, #0xc4]
	cmp r3, #0
	beq _08078F44
	ldr r0, _08078F3C
	bl sub_0805865C
	movs r0, #0
	str r0, [sp, #0xc4]
	b _08078F44
	.2byte 0x0000
_08078F38: .4byte gUnk_080B9704
_08078F3C: .4byte 0x0000017D
_08078F40:
	movs r1, #1
	str r1, [sp, #0xc4]
_08078F44:
	bl sub_0800CC98
	ldr r2, [sp, #0xc0]
	adds r2, #1
	str r2, [sp, #0xd0]
	cmp r0, #0
	bne _08078FE4
	bl sub_0800CCCC
	cmp r0, #0
	bne _08078FE4
	bl sub_0800CD8C
	cmp r0, #0
	bne _08078FE4
	movs r3, #0
	mov r9, r3
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0xc8]
	add r1, sp, #0x5c
	mov sl, r1
	movs r2, #0x5e
	add r2, sp
	mov r8, r2
	ldr r7, [sp, #0xd8]
	ldr r6, [sp, #0xd4]
	ldr r5, [sp, #0xe0]
	ldr r4, [sp, #0xdc]
_08078F7E:
	movs r3, #1
	str r3, [sp, #0]
	ldr r0, [sp, #0xc8]
	movs r1, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_08065370
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r7, r2]
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	mov r2, sl
	mov r3, r8
	bl sub_0800BC08
	mov r3, sl
	movs r0, #0
	ldrsh r1, [r3, r0]
	mov r3, r8
	movs r0, #0
	ldrsh r2, [r3, r0]
	ldrh r0, [r4, #0]
	str r0, [sp, #0]
	ldr r0, [sp, #0xc8]
	movs r3, #0
	bl sub_08065230
	adds r7, #2
	adds r6, #2
	adds r5, #2
	adds r4, #2
	movs r1, #1
	add r9, r1
	mov r2, r9
	cmp r2, #1
	bls _08078F7E
	ldr r0, _08079020
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _08078FE4
	ldr r1, [sp, #0x24]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_08078FE4:
	ldr r0, [sp, #0x60]
	asrs r0, r0, #8
	ldr r3, [sp, #0xd4]
	strh r0, [r3, #0]
	ldr r1, [sp, #0xe4]
	ldr r0, [r1, #4]
	asrs r0, r0, #8
	ldr r2, [sp, #0xd8]
	strh r0, [r2, #0]
	ldr r3, [sp, #0xa8]
	cmp r3, #0
	beq _08079028
	movs r0, #1
	mov r9, r0
	ldr r5, _08079024
	ldr r6, [sp, #0xd8]
	ldr r1, [sp, #0xd4]
_08079006:
	ldrh r0, [r1, #0]
	strh r0, [r1, #2]
	ldrh r0, [r6, #0]
	strh r0, [r6, #2]
	subs r6, #2
	subs r1, #2
	movs r2, #1
	negs r2, r2
	add r9, r2
	mov r3, r9
	cmp r3, #0
	bne _08079006
	b _0807906C
_08079020: .4byte gUnk_03002344
_08079024: .4byte gUnk_03003CE0
_08079028:
	add r0, sp, #0xa8
	ldrh r1, [r0, #0]
	ldr r0, [sp, #0xdc]
	strh r1, [r0, #0]
	movs r1, #1
	mov r9, r1
	ldr r2, [sp, #0xd4]
	ldr r7, [sp, #0xd8]
	adds r6, r0, #0
	adds r6, #2
	adds r5, r7, #2
	adds r4, r2, #2
_08079040:
	ldrh r0, [r2, #0]
	strh r0, [r4, #0]
	ldrh r0, [r7, #0]
	strh r0, [r5, #0]
	str r2, [sp, #0xec]
	bl sub_080008C8
	movs r1, #3
	ands r0, r1
	strh r0, [r6, #0]
	adds r6, #2
	adds r5, #2
	adds r4, #2
	movs r3, #1
	add r9, r3
	ldr r2, [sp, #0xec]
	mov r0, r9
	cmp r0, #1
	bls _08079040
	movs r1, #1
	str r1, [sp, #0xa8]
	ldr r5, _0807938C
_0807906C:
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0xb8]
	muls r0, r2, r0
	adds r3, r0, r5
	adds r0, r3, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	ldr r1, [sp, #0xe8]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _080790C8
	ldr r2, [sp, #0xac]
	adds r2, #1
	str r2, [sp, #0xac]
	cmp r2, #0x3c
	bls _080790C8
	ldr r0, [sp, #0xb4]
	adds r0, #1
	str r0, [sp, #0xb4]
	movs r1, #0
	str r1, [sp, #0xac]
	adds r2, r3, #0
	adds r2, #0xc2
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	ldrh r0, [r2, #0]
	subs r0, r0, r1
	strh r0, [r2, #0]
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080790C8
	add r0, sp, #0xac
	ldrh r0, [r0, #0]
	strh r0, [r2, #0]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r3, r1
	add r2, sp, #0xac
	ldrh r2, [r2, #0]
	strh r2, [r0, #0]
_080790C8:
	ldr r3, [sp, #0x78]
	ldr r0, [sp, #0xb8]
	cmp r3, r0
	beq _08079194
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r1, [sp, #0xb8]
	muls r0, r1, r0
	adds r6, r0, r5
	ldr r0, _08079390
	str r0, [sp, #0x6c]
	adds r0, r6, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	ldr r2, [sp, #0xe8]
	ldrb r2, [r2, #0]
	cmp r0, r2
	beq _0807918A
	cmp r0, #0
	beq _0807918A
	adds r1, r6, #0
	adds r1, #0x8c
	ldr r0, [sp, #0xe4]
	add r2, sp, #0x68
	add r3, sp, #0x6c
	bl sub_08021FE0
	cmp r0, #0
	beq _0807918A
	ldrh r0, [r6, #0x20]
	movs r3, #0
	str r3, [sp, #0xa8]
	cmp r0, #0xb
	beq _08079144
	ldr r1, [sp, #0x80]
	ldrh r0, [r1, #0]
	lsls r0, r0, #2
	adds r1, r6, #0
	adds r1, #0xf8
	adds r1, r1, r0
	ldr r0, [r1, #0]
	ldr r2, [sp, #0xbc]
	cmp r0, r2
	beq _08079144
	adds r0, r6, #0
	adds r0, #0xc4
	movs r1, #0
	ldrsh r3, [r0, r1]
	subs r0, #0x3c
	ldrh r2, [r0, #0]
	subs r0, r3, r2
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _08079144
	adds r1, r3, #0
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0xa8]
_08079144:
	ldr r2, [sp, #0xa8]
	cmp r2, #0
	beq _0807918A
	bl sub_080008C8
	adds r5, r6, #0
	adds r5, #0x88
	ldr r4, [sp, #0xb0]
	adds r4, #0xa
	ldr r3, [sp, #0xb4]
	adds r4, r3, r4
	movs r1, #0x32
	bl sub_080B95E4
	adds r0, #0x64
	muls r0, r4, r0
	movs r1, #0x64
	bl sub_080B956C
	ldrh r1, [r5, #0]
	adds r1, r1, r0
	strh r1, [r5, #0]
	ldr r0, [sp, #0x80]
	ldrh r1, [r0, #0]
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r1, [sp, #0xbc]
	str r1, [r0, #0]
	movs r0, #0xa
	strh r0, [r6, #0x20]
	ldr r0, _08079394
	bl sub_0805865C
_0807918A:
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0xb8]
	cmp r2, r3
	beq _08079194
	b _08079300
_08079194:
	add r4, sp, #0x68
	ldr r1, [sp, #0xa0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [sp, #0xb0]
	adds r0, r0, r2
	movs r1, #5
	bl sub_080B956C
	adds r2, r0, #0
	ldr r0, [sp, #0xe4]
	adds r1, r4, #0
	bl sub_0801FB14
	movs r3, #0
	mov r9, r3
	add r7, sp, #0x6c
	add r6, sp, #0x70
	mov sl, r3
	movs r0, #1
	mov r8, r0
	mov r1, r8
	ldr r2, [sp, #0x78]
	lsls r1, r2
	mov r8, r1
_080791C8:
	ldr r0, _08079398
	movs r1, #1
	mov r3, r9
	lsls r1, r3
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _080791DA
	b _080792EE
_080791DA:
	ldr r0, _0807939C
	ldr r0, [r0, #0]
	mov r1, sl
	adds r5, r0, r1
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r5, r2
	ldrb r0, [r0, #0]
	ldr r3, [sp, #0xe8]
	ldrb r3, [r3, #0]
	cmp r0, r3
	beq _080792EE
	cmp r0, #0
	beq _080792EE
	ldr r1, _080793A0
	adds r0, r5, r1
	ldrb r0, [r0, #0]
	strh r0, [r7, #0]
	adds r2, #0x53
	adds r0, r5, r2
	ldrb r0, [r0, #0]
	strh r0, [r7, #2]
	adds r1, r5, #0
	adds r1, #0x14
	ldr r0, [sp, #0xe4]
	add r2, sp, #0x68
	adds r3, r7, #0
	bl sub_08021FE0
	cmp r0, #0
	beq _080792EE
	ldrh r0, [r5, #0xc]
	movs r3, #0
	str r3, [sp, #0xa8]
	cmp r0, #0xb
	beq _0807924E
	ldr r0, [r5, #0x54]
	ldr r1, [sp, #0xbc]
	cmp r0, r1
	beq _0807924E
	adds r0, r5, #0
	adds r0, #0x5c
	movs r2, #0
	ldrsh r3, [r0, r2]
	subs r0, #0x12
	ldrh r2, [r0, #0]
	subs r0, r3, r2
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0807924E
	adds r1, r3, #0
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0xa8]
_0807924E:
	ldr r3, [sp, #0xa8]
	cmp r3, #0
	beq _080792EE
	movs r0, #0xa
	strh r0, [r5, #0xc]
	bl sub_080008C8
	ldr r4, [sp, #0xb0]
	adds r4, #0xa
	ldr r1, [sp, #0xb4]
	adds r4, r1, r4
	movs r1, #0x32
	bl sub_080B95E4
	adds r0, #0x64
	muls r0, r4, r0
	movs r1, #0x64
	bl sub_080B956C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080793A4
	ldr r1, [r6, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r6, #4]
	ldrb r2, [r5, #2]
	ldr r1, _080793A8
	ldr r0, [sp, #0x70]
	ands r0, r1
	orrs r0, r2
	ldr r1, _080793AC
	ands r0, r1
	ldr r1, _080793B0
	ands r0, r1
	ldr r1, _080793B4
	ands r0, r1
	str r0, [sp, #0x70]
	ldr r2, [sp, #0xbc]
	str r2, [r5, #0x54]
	adds r1, r5, #0
	adds r1, #0x4a
	ldrh r0, [r6, #4]
	ldrh r3, [r1, #0]
	adds r0, r0, r3
	strh r0, [r1, #0]
	ldrh r0, [r6, #4]
	str r0, [r5, #0x4c]
	ldr r0, [sp, #0x70]
	lsrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0x18
	strh r0, [r1, #0]
	ldr r0, [sp, #0x70]
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0x1a
	strh r0, [r1, #0]
	ldr r0, [sp, #0x70]
	asrs r0, r0, #0x18
	adds r1, #2
	strh r0, [r1, #0]
	ldrh r1, [r5, #0]
	adds r0, r5, #0
	adds r0, #0x58
	strh r1, [r0, #0]
	adds r1, r5, #0
	adds r1, #0x5a
	ldrh r2, [r1, #0]
	mov r0, r8
	orrs r0, r2
	strh r0, [r1, #0]
	adds r0, r6, #0
	bl sub_080660EC
	ldr r0, _08079394
	bl sub_0805865C
_080792EE:
	movs r0, #0xb8
	lsls r0, r0, #2
	add sl, r0
	movs r1, #1
	add r9, r1
	mov r2, r9
	cmp r2, #4
	bhi _08079300
	b _080791C8
_08079300:
	ldr r1, [sp, #0xc0]
	ldr r3, [sp, #0xd0]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc0]
	cmp r1, #0x3c
	bls _0807931C
	movs r0, #0
	str r0, [sp, #0xc0]
	ldr r0, [sp, #0xbc]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xbc]
_0807931C:
	bl sub_080003F0
	bl sub_0800CB78
	cmp r0, #0
	bne _0807933A
	bl sub_0800CD00
	cmp r0, #0
	bne _0807933A
	bl sub_0800CD8C
	cmp r0, #0
	bne _0807933A
	b _08078D24
_0807933A:
	ldr r1, _0807938C
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0xb8]
	muls r0, r2, r0
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	ldr r3, [sp, #0xe8]
	ldrb r3, [r3, #0]
	cmp r0, r3
	bne _08079362
	bl sub_0800CFDC
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1, #0]
_08079362:
	ldr r0, _08079394
	bl sub_0805867C
	ldr r2, _080793B8
	ldr r1, [sp, #0xcc]
	adds r2, r1, r2
	movs r1, #1
	ldr r3, [sp, #0x7c]
	lsls r1, r3
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0xf0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0807938C: .4byte gUnk_03003CE0
_08079390: .4byte 0x00100010
_08079394: .4byte 0x0000017F
_08079398: .4byte gUnk_030056FC
_0807939C: .4byte gUnk_030056F4
_080793A0: .4byte 0x0000022E
_080793A4: .4byte 0xFFFF0000
_080793A8: .4byte 0xFFFFFF00
_080793AC: .4byte 0xFFFF00FF
_080793B0: .4byte 0xFF00FFFF
_080793B4: .4byte 0x00FFFFFF
_080793B8: .4byte gUnk_030063E0
	thumb_func_end sub_08078BCC
