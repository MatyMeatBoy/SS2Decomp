	thumb_func_start sub_08014E68
sub_08014E68: @ 0x08014E68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _08014ECC
	adds r5, r1, r0
	ldrh r6, [r5, #0x26]
	ldrh r0, [r5, #0x20]
	cmp r0, #0xd
	beq _08014EA0
	bl sub_0800CCCC
	cmp r0, #0
	bne _08014EA0
	bl sub_0800CD34
	cmp r0, #0
	bne _08014EA0
	ldr r1, _08014ED0
	adds r0, r6, r1
	bl sub_0805865C
_08014EA0:
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r2, [r0, #0]
	ldr r0, [r2, #4]
	lsls r0, r0, #0xf
	lsrs r6, r0, #0x1d
	mov sl, r6
	ldrb r0, [r2, #6]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1d
	mov r9, r0
	adds r6, #2
	adds r0, r5, #0
	adds r0, #0xb6
	ldrh r1, [r0, #0]
	mov r8, r0
	cmp r1, #0
	beq _08014EC8
	b _08014FC8
_08014EC8:
	ldrb r0, [r2, #0]
	b _08014FC0
_08014ECC: .4byte gUnk_03003CE0
_08014ED0: .4byte 0x00000107
_08014ED4:
	bl sub_080020F4
	cmp r0, r7
	bne _08014F4C
	movs r2, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08014EEC
	movs r2, #5
	b _08014EF6
_08014EEC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08014EF6
	movs r2, #1
_08014EF6:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08014F12
	cmp r2, #5
	bne _08014F06
	movs r2, #4
	b _08014F30
_08014F06:
	cmp r2, #1
	bne _08014F0E
	movs r2, #2
	b _08014F30
_08014F0E:
	movs r2, #3
	b _08014F30
_08014F12:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08014F2C
	cmp r2, #5
	bne _08014F22
	movs r2, #6
	b _08014F30
_08014F22:
	cmp r2, #1
	bne _08014F2A
	movs r2, #8
	b _08014F30
_08014F2A:
	movs r2, #7
_08014F2C:
	cmp r2, #0
	beq _08014F4C
_08014F30:
	subs r0, r2, #1
	strh r0, [r5, #0x1c]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r5, r3
	ldr r3, [r0, #0]
	movs r0, #0x1c
	ldrsh r1, [r5, r0]
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
_08014F4C:
	adds r0, r5, #0
	adds r0, #0xb2
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08014FAA
	adds r0, r5, #0
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _08014FAA
	cmp r6, #0
	beq _08014FAA
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0, #0]
	ldrb r1, [r0, #3]
	lsrs r1, r1, #4
	adds r2, r5, #0
	adds r2, #0xb0
	mov r3, sl
	lsls r0, r3, #3
	adds r1, r1, r0
	strh r1, [r2, #0]
	adds r0, r5, #0
	adds r0, #0xb8
	strh r1, [r0, #0]
	adds r1, r5, #0
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	ldrh r4, [r5, #0]
	movs r0, #1
	bl sub_0807A028
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r9
	bl sub_080760E8
	subs r6, #1
_08014FAA:
	bl sub_080003F0
	mov r1, r8
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _08014FC8
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
_08014FC0:
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	beq _08014ED4
_08014FC8:
	bl sub_080020F4
	cmp r0, r7
	bne _08014FEC
	ldrh r0, [r5, #0x20]
	cmp r0, #0xe
	beq _08014FEC
	cmp r0, #0xa
	beq _08014FEC
	cmp r0, #0xb
	beq _08014FEC
	ldr r1, [r5, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08014FEC
	strh r1, [r5, #0x20]
_08014FEC:
	movs r1, #0
	strh r1, [r5, #0x24]
	ldrh r0, [r5, #0x26]
	strh r0, [r5, #0x28]
	strh r1, [r5, #0x26]
	movs r3, #0x91
	lsls r3, r3, #1
	adds r0, r5, r3
	strh r1, [r0, #0]
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08014E68
