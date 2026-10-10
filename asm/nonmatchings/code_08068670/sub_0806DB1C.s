	thumb_func_start sub_0806DB1C
sub_0806DB1C: @ 0x0806DB1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_080020F4
	mov r9, r0
	ldr r0, [r5, #0]
	str r0, [sp, #0x1c]
	ldr r1, [r5, #4]
	str r1, [sp, #0x20]
	ldrh r2, [r5, #0x14]
	str r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r0, #3
	bhi _0806DB50
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r3, [sp, #0x1c]
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, _0806DBD0
	adds r7, r1, r0
_0806DB50:
	ldr r0, [sp, #0x1c]
	cmp r9, r0
	bne _0806DB86
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806DBD0
	adds r4, r4, r0
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x14]
	bl sub_0806898C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc2
	ldrh r1, [r4, #0]
	subs r1, r1, r0
	strh r1, [r4, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0806DB86
	movs r0, #0
	strh r0, [r4, #0]
_0806DB86:
	adds r0, r7, #0
	adds r0, #0xb4
	ldrh r1, [r0, #0]
	adds r4, r0, #0
	ldr r2, [sp, #0x1c]
	lsls r2, r2, #2
	str r2, [sp, #0x24]
	cmp r1, #6
	bhi _0806DBAA
_0806DB98:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xa
	bne _0806DBA0
	b _0806DD88
_0806DBA0:
	bl sub_080003F0
	ldrh r0, [r4, #0]
	cmp r0, #6
	bls _0806DB98
_0806DBAA:
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #0x14]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [sp, #0x18]
	movs r5, #0
	mov r8, r5
	movs r4, #0
	movs r0, #0xb6
	adds r0, r0, r7
	mov sl, r0
	b _0806DC72
	.2byte 0x0000
_0806DBD0: .4byte gUnk_03003CE0
_0806DBD4:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0806DD28
	adds r5, r1, r0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r2, [r0, #0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _0806DC6C
	adds r0, r5, #0
	adds r0, #0x68
	adds r1, r7, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _0806DC6C
	cmp r0, #0
	beq _0806DC6C
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldr r3, [sp, #0x14]
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r5, [sp, #0x18]
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0806DC6C
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0806DC30
	negs r0, r0
_0806DC30:
	cmp r0, #0xc
	bgt _0806DC6C
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0806DC40
	negs r0, r0
_0806DC40:
	cmp r0, #0xc
	bgt _0806DC6C
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	add r2, sp, #4
	mov r3, r8
	lsls r1, r3, #1
	adds r2, r2, r1
	strh r0, [r2, #0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r5, sp
	adds r0, r5, r3
	strb r4, [r0, #0]
_0806DC6C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0806DC72:
	bl sub_08002164
	cmp r4, r0
	blo _0806DBD4
	movs r4, #0
	cmp r4, r8
	bhs _0806DC96
_0806DC80:
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0, #0]
	movs r1, #9
	bl sub_08074DE8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r8
	blo _0806DC80
_0806DC96:
	mov r2, sl
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _0806DCAA
_0806DC9E:
	bl sub_080003F0
	mov r3, sl
	ldrh r0, [r3, #0]
	cmp r0, #0
	beq _0806DC9E
_0806DCAA:
	ldr r5, [sp, #0x1c]
	cmp r9, r5
	beq _0806DCB4
	cmp r5, #3
	bls _0806DCCA
_0806DCB4:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806DCCA
	bl sub_0800CD34
	cmp r0, #0
	bne _0806DCCA
	ldr r0, _0806DD2C
	bl sub_0805865C
_0806DCCA:
	ldr r0, [sp, #0x1c]
	cmp r9, r0
	bne _0806DDB6
	movs r1, #0
	mov ip, r1
	ldr r3, [r7, #0x34]
	movs r4, #0
	mov r8, r3
	ldr r1, _0806DD28
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r1
	adds r2, r0, #0
	adds r2, #0x64
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r5, r0, #2
	mov r9, r5
	lsls r0, r0, #1
	adds r0, #0x28
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
_0806DCFE:
	movs r5, #0
	ldrsh r0, [r3, r5]
	cmp r0, #0
	ble _0806DD30
	ldrh r0, [r2, #0]
	cmp r0, #4
	bne _0806DD30
	ldrh r0, [r3, #4]
	cmp r0, #3
	bne _0806DD30
	ldrh r0, [r3, #2]
	cmp r0, #0x63
	bhi _0806DD30
	ldrh r0, [r3, #6]
	cmp r0, r6
	bhs _0806DD5E
	strh r6, [r3, #6]
	strh r1, [r3, #0]
	mov r0, r9
	strh r0, [r3, #0x10]
	b _0806DD5E
_0806DD28: .4byte gUnk_03003CE0
_0806DD2C: .4byte 0x00000167
_0806DD30:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #0x28
	cmp r4, #7
	bls _0806DCFE
	mov r1, ip
	cmp r1, #0
	bne _0806DD5E
	mov r3, r8
	movs r4, #0
	movs r1, #1
	negs r1, r1
_0806DD4A:
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, r1
	beq _0806DD66
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #0x28
	cmp r4, #7
	bls _0806DD4A
_0806DD5E:
	movs r0, #0
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	b _0806DE6C
_0806DD66:
	mov r5, sp
	ldrh r5, [r5, #0x1c]
	strh r5, [r3, #2]
	lsls r2, r6, #2
	adds r2, r2, r6
	lsls r1, r2, #1
	adds r1, #0x28
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	strh r0, [r3, #0]
	movs r0, #3
	strh r0, [r3, #4]
	strh r6, [r3, #6]
	lsls r2, r2, #2
	strh r2, [r3, #0x10]
	b _0806DD5E
_0806DD88:
	ldr r2, _0806DD90
	ldr r7, [sp, #0x24]
	adds r2, r7, r2
	b _0806DE72
_0806DD90: .4byte gUnk_030063E0
_0806DD94:
	mov r1, sp
	ldrh r1, [r1, #0x1c]
	strh r1, [r3, #2]
	lsls r2, r6, #2
	adds r2, r2, r6
	lsls r1, r2, #1
	adds r1, #0x28
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	strh r0, [r3, #0]
	movs r0, #3
	strh r0, [r3, #4]
	strh r6, [r3, #6]
	lsls r2, r2, #2
	strh r2, [r3, #0x10]
	b _0806DE6C
_0806DDB6:
	movs r4, #0
	cmp r4, r8
	bhs _0806DE6C
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _0806DE6C
	movs r3, #0xa6
	lsls r3, r3, #1
	mov sl, r3
	mov r1, r9
	muls r1, r3, r1
	lsls r0, r6, #2
	adds r2, r0, r6
_0806DDD0:
	mov r5, sp
	adds r0, r5, r4
	ldrb r0, [r0, #0]
	cmp r0, r9
	bne _0806DE5C
	ldr r0, _0806DE28
	adds r5, r1, r0
	movs r7, #0
	mov ip, r7
	ldr r3, [r5, #0x34]
	movs r4, #0
	mov r8, r0
	lsls r1, r2, #1
	adds r1, #0x28
	lsls r2, r2, #2
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r1, r0, #2
_0806DDF4:
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r0, #0
	ble _0806DE2C
	ldrh r0, [r3, #2]
	cmp r0, #3
	bhi _0806DE2C
	mov r7, sl
	muls r7, r0, r7
	adds r0, r7, #0
	add r0, r8
	adds r0, #0x64
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806DE2C
	ldrh r0, [r3, #4]
	cmp r0, #3
	bne _0806DE2C
	ldrh r0, [r3, #6]
	cmp r0, r6
	bhs _0806DE6C
	strh r1, [r3, #0]
	strh r6, [r3, #6]
	strh r2, [r3, #0x10]
	b _0806DE6C
	.2byte 0x0000
_0806DE28: .4byte gUnk_03003CE0
_0806DE2C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #0x28
	cmp r4, #7
	bls _0806DDF4
	mov r0, ip
	cmp r0, #0
	bne _0806DE6C
	ldr r3, [r5, #0x34]
	movs r4, #0
	movs r1, #1
	negs r1, r1
_0806DE46:
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, r1
	beq _0806DD94
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r3, #0x28
	cmp r4, #7
	bls _0806DE46
	b _0806DE6C
_0806DE5C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r8
	bhs _0806DE6C
	ldr r3, [sp, #0x10]
	cmp r3, #0
	bne _0806DDD0
_0806DE6C:
	ldr r5, [sp, #0x24]
	ldr r7, _0806DE90
	adds r2, r5, r7
_0806DE72:
	movs r1, #1
	ldr r0, [sp, #0x20]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0806DE90: .4byte gUnk_030063E0
	thumb_func_end sub_0806DB1C
