	thumb_func_start sub_0805CDF8
sub_0805CDF8: @ 0x0805CDF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	movs r7, #0
	ldr r0, _0805CF28
	mov sl, r0
	mov ip, sp
_0805CE0C:
	mov r1, sl
	ldr r4, [r1, #0]
	movs r0, #0
	mov r8, r0
	mov r1, ip
	str r0, [r1, #0]
	mov r9, r0
_0805CE1A:
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _0805CE66
	ldr r1, [r4, #0]
	lsls r1, r1, #5
	ldr r0, [r4, #4]
	lsls r0, r0, #5
	lsrs r6, r0, #0x10
	ldr r5, _0805CF2C
	lsls r2, r7, #4
	adds r0, r2, r5
	asrs r3, r1, #0x10
	ldr r0, [r0, #0]
	cmp r0, r3
	bhi _0805CE66
	adds r0, r5, #4
	adds r0, r2, r0
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r0, #0]
	cmp r0, r1
	bhi _0805CE66
	adds r0, r5, #0
	adds r0, #8
	adds r0, r2, r0
	ldr r0, [r0, #0]
	cmp r0, r3
	blo _0805CE66
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0, #0]
	cmp r0, r1
	blo _0805CE66
	movs r0, #1
	add r8, r0
	mov r1, ip
	str r4, [r1, #0]
_0805CE66:
	movs r0, #1
	add r9, r0
	adds r4, #0x20
	mov r1, r9
	cmp r1, #0xf
	bls _0805CE1A
	mov r0, r8
	cmp r0, #1
	beq _0805CE7A
	b _0805CF8E
_0805CE7A:
	movs r1, #4
	add ip, r1
	adds r7, #1
	cmp r7, #3
	bls _0805CE0C
	ldr r1, _0805CF30
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0805CE8E
	b _0805CF8E
_0805CE8E:
	mov r8, r1
	mov sl, r8
	movs r0, #0
	mov r9, r0
	movs r1, #2
	add r1, r8
	mov ip, r1
_0805CE9C:
	movs r6, #0
	movs r7, #0
	mov r5, r9
	add r5, sl
	mov r4, r9
	mov r3, sp
_0805CEA8:
	ldr r2, [r3, #0]
	ldrh r0, [r2, #0x10]
	ldrh r1, [r5, #0]
	cmp r0, r1
	bne _0805CEC0
	mov r0, ip
	adds r1, r4, r0
	ldrh r0, [r2, #0x12]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bne _0805CEC0
	adds r6, #1
_0805CEC0:
	adds r5, #4
	adds r4, #4
	adds r3, #4
	adds r7, #1
	cmp r7, #3
	bls _0805CEA8
	cmp r6, #4
	bne _0805CF80
	movs r7, #0
	add r4, sp, #0x10
	mov r5, sp
_0805CED6:
	ldr r1, [r5, #0]
	ldr r0, [r1, #0]
	ldr r1, [r1, #4]
	movs r2, #2
	bl sub_08021EC8
	ldr r1, [r5, #0]
	ldr r0, [r1, #0]
	asrs r0, r0, #8
	ldr r1, [r1, #4]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_08058768
	movs r0, #2
	bl sub_08057624
	ldm r5!, {r0}
	movs r6, #0
	strh r6, [r0, #0xa]
	movs r0, #0xa
	bl sub_08057624
	adds r7, #1
	cmp r7, #3
	bls _0805CED6
	ldr r2, _0805CF30
	adds r0, r2, #0
	adds r0, #0x10
	add r0, r9
	ldrh r1, [r0, #0]
	cmp r1, #0xa
	bne _0805CF34
	strh r1, [r4, #0]
	adds r0, r2, #0
	adds r0, #0x12
	add r0, r9
	ldrh r0, [r0, #0]
	str r0, [r4, #4]
	b _0805CF58
	.2byte 0x0000
_0805CF28: .4byte gUnk_03005D58
_0805CF2C: .4byte gUnk_084EBCE8
_0805CF30: .4byte gUnk_084EB8D8
_0805CF34:
	str r6, [r4, #4]
	ldrh r0, [r0, #0]
	movs r1, #0
	strh r0, [r4, #0]
	adds r0, r2, #0
	adds r0, #0x12
	add r0, r9
	ldrh r0, [r0, #0]
	strh r0, [r4, #2]
	ldrh r0, [r4, #0]
	cmp r0, #5
	bgt _0805CF58
	cmp r0, #2
	blt _0805CF58
	strb r1, [r4, #8]
	strh r6, [r4, #4]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
_0805CF58:
	bl sub_08002204
	cmp r0, #0
	beq _0805CF6E
	movs r0, #0xf7
	lsls r0, r0, #8
	movs r1, #0xdc
	lsls r1, r1, #7
	adds r2, r4, #0
	bl sub_08066490
_0805CF6E:
	movs r0, #0xf7
	lsls r0, r0, #8
	movs r1, #0xdc
	lsls r1, r1, #7
	movs r2, #6
	bl sub_08021EC8
	movs r0, #1
	b _0805CF90
_0805CF80:
	movs r1, #0x14
	add r8, r1
	add r9, r1
	mov r1, r8
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0805CE9C
_0805CF8E:
	movs r0, #0
_0805CF90:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0805CDF8
