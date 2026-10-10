	thumb_func_start sub_0805CB8C
sub_0805CB8C: @ 0x0805CB8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	movs r0, #0
	mov r8, r0
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x30]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x34]
	mov r5, sp
	adds r5, #0x1c
	str r5, [sp, #0x38]
	adds r4, r1, #0
	movs r3, #0
	mov r1, sp
_0805CBB4:
	mov r5, r8
	adds r0, r4, r5
	strb r3, [r0, #0]
	strh r3, [r2, #0]
	strh r3, [r1, #0x1c]
	adds r1, #4
	adds r2, #2
	movs r0, #1
	add r8, r0
	mov r5, r8
	cmp r5, #3
	bls _0805CBB4
	ldr r0, _0805CD04
	str r0, [sp, #0x2c]
_0805CBD0:
	movs r1, #0
	mov ip, r1
	ldr r2, [sp, #0x30]
	mov sl, r2
_0805CBD8:
	ldr r5, _0805CD08
	ldr r6, [r5, #0]
	mov r1, sl
	add r1, ip
	movs r0, #0
	strb r0, [r1, #0]
	mov r8, r0
	movs r0, #1
	add r0, ip
	mov r9, r0
	adds r7, r1, #0
_0805CBEE:
	ldrh r0, [r6, #0xa]
	cmp r0, #0
	beq _0805CC3A
	ldr r1, [r6, #0]
	lsls r1, r1, #5
	ldr r0, [r6, #4]
	lsls r0, r0, #5
	lsrs r4, r0, #0x10
	ldr r5, _0805CD0C
	mov r0, ip
	lsls r2, r0, #4
	adds r0, r2, r5
	asrs r3, r1, #0x10
	ldr r0, [r0, #0]
	cmp r0, r3
	bhi _0805CC3A
	adds r0, r5, #4
	adds r0, r2, r0
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r0, #0]
	cmp r0, r1
	bhi _0805CC3A
	adds r0, r5, #0
	adds r0, #8
	adds r0, r2, r0
	ldr r0, [r0, #0]
	cmp r0, r3
	blo _0805CC3A
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r2, r0
	ldr r0, [r0, #0]
	cmp r0, r1
	blo _0805CC3A
	ldrb r0, [r7, #0]
	adds r0, #1
	strb r0, [r7, #0]
_0805CC3A:
	movs r1, #1
	add r8, r1
	adds r6, #0x20
	mov r2, r8
	cmp r2, #0xf
	bls _0805CBEE
	mov ip, r9
	mov r5, ip
	cmp r5, #3
	bls _0805CBD8
	movs r0, #0
	mov r8, r0
	movs r1, #0x1f
	mov sl, r1
	movs r2, #0x18
	mov r9, r2
	ldr r4, [sp, #0x38]
	movs r5, #0
	str r5, [sp, #0x3c]
	mov r7, sp
	subs r0, #0x7d
	mov ip, r0
	ldr r6, [sp, #0x34]
_0805CC68:
	ldr r0, [sp, #0x30]
	add r0, r8
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne _0805CD1C
	ldrh r0, [r6, #0]
	adds r0, #4
	movs r1, #0x7f
	ands r0, r1
	strh r0, [r6, #0]
	ldr r3, _0805CD10
	ldr r1, [sp, #0x3c]
	adds r3, r1, r3
	ldrb r1, [r3, #0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	movs r2, #0
	ldrsh r0, [r6, r2]
	lsls r0, r0, #1
	ldr r5, _0805CD14
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r1, r0, r1
	asrs r1, r1, #8
	mov r5, sl
	ands r1, r5
	ldrb r2, [r4, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #0]
	ldrh r1, [r3, #0]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x1b
	movs r2, #0
	ldrsh r0, [r6, r2]
	lsls r0, r0, #1
	ldr r5, _0805CD14
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r1, r0, r1
	asrs r1, r1, #8
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r4, #0]
	ldr r0, _0805CD18
	ands r0, r2
	orrs r0, r1
	strh r0, [r4, #0]
	ldrb r1, [r3, #1]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #1
	ldr r2, _0805CD14
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r1, r0, r1
	asrs r1, r1, #8
	mov r0, sl
	ands r1, r0
	lsls r1, r1, #2
	ldrb r0, [r4, #1]
	mov r2, ip
	ands r0, r2
	orrs r0, r1
	strb r0, [r4, #1]
	ldr r5, [sp, #0x2c]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r5, r1
	b _0805CDD0
_0805CD04: .4byte gUnk_03001F40
_0805CD08: .4byte gUnk_03005D58
_0805CD0C: .4byte gUnk_084EBCE8
_0805CD10: .4byte gUnk_084EBD28
_0805CD14: .4byte gUnk_080B9704
_0805CD18: .4byte 0xFFFFFC1F
_0805CD1C:
	ldrb r2, [r4, #0]
	lsls r1, r2, #0x1b
	lsrs r0, r1, #0x1b
	movs r3, #8
	subs r0, r3, r0
	asrs r0, r0, #1
	cmp r0, #0
	bne _0805CD3A
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	movs r1, #8
	orrs r0, r1
	strb r0, [r4, #0]
	b _0805CD52
_0805CD3A:
	lsrs r0, r1, #0x1b
	adds r1, r0, #0
	subs r1, r3, r1
	asrs r1, r1, #1
	adds r0, r0, r1
	mov r5, sl
	ands r0, r5
	movs r1, #0x20
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0]
_0805CD52:
	ldrh r3, [r4, #0]
	lsls r2, r3, #0x16
	lsrs r0, r2, #0x1b
	movs r5, #8
	subs r0, r5, r0
	asrs r0, r0, #1
	cmp r0, #0
	bne _0805CD74
	ldr r0, _0805CD70
	ands r0, r3
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	b _0805CD88
	.2byte 0x0000
_0805CD70: .4byte 0xFFFFFC1F
_0805CD74:
	lsrs r1, r2, #0x1b
	adds r0, r1, #0
	subs r0, r5, r0
	asrs r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldr r0, _0805CDA8
	ands r0, r3
_0805CD88:
	orrs r0, r1
	strh r0, [r4, #0]
	ldrb r2, [r4, #1]
	lsls r1, r2, #0x19
	lsrs r0, r1, #0x1b
	movs r3, #8
	subs r0, r3, r0
	asrs r0, r0, #1
	cmp r0, #0
	bne _0805CDAC
	mov r0, ip
	ands r0, r2
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #1]
	b _0805CDC4
_0805CDA8: .4byte 0xFFFFFC1F
_0805CDAC:
	lsrs r0, r1, #0x1b
	adds r1, r0, #0
	subs r1, r3, r1
	asrs r1, r1, #1
	adds r0, r0, r1
	mov r5, sl
	ands r0, r5
	lsls r0, r0, #2
	mov r1, ip
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #1]
_0805CDC4:
	movs r0, #0
	strh r0, [r6, #0]
	ldr r1, [sp, #0x2c]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r1, r2
_0805CDD0:
	add r0, r9
	ldrh r1, [r7, #0x1c]
	strh r1, [r0, #0]
	movs r5, #2
	add r9, r5
	adds r4, #4
	ldr r0, [sp, #0x3c]
	adds r0, #4
	str r0, [sp, #0x3c]
	adds r7, #4
	adds r6, #2
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #3
	bhi _0805CDF2
	b _0805CC68
_0805CDF2:
	bl sub_080003F0
	b _0805CBD0
	thumb_func_end sub_0805CB8C
