	thumb_func_start sub_0800C9F4
sub_0800C9F4: @ 0x0800C9F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r1, [sp, #0]
	lsls r1, r0, #0x10
	lsrs r4, r1, #0x10
	lsrs r5, r0, #0x10
	b _0800CA0E
_0800CA0A:
	bl sub_080003F0
_0800CA0E:
	lsls r0, r5, #5
	bl sub_08001494
	adds r7, r0, #0
	cmp r7, #0
	beq _0800CA0A
	lsls r4, r4, #5
	ldr r0, _0800CB20
	adds r0, r4, r0
	lsls r2, r5, #3
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r2, r1
	adds r1, r7, #0
	bl sub_080B8578
	lsls r5, r5, #4
	mov r8, r5
	movs r0, #0x64
	mov ip, r0
	movs r1, #0
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	str r4, [sp, #4]
	cmp r0, #0
	bne _0800CB08
_0800CA42:
	ldr r0, _0800CB20
	ldr r5, [sp, #4]
	adds r3, r5, r0
	adds r4, r7, #0
	movs r6, #0
	lsls r0, r1, #1
	mov r9, r0
	adds r1, #4
	mov sl, r1
	cmp r6, r8
	bhs _0800CAD0
_0800CA58:
	ldr r0, [r4, #0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	lsrs r2, r0, #0xa
	cmp r2, #0x1f
	bls _0800CA6C
	movs r2, #0x1f
_0800CA6C:
	movs r5, #0x1f
	ands r2, r5
	ldrb r1, [r3, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	lsrs r2, r0, #0xa
	cmp r2, #0x1f
	bls _0800CA90
	movs r2, #0x1f
_0800CA90:
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #5
	ldrh r1, [r3, #0]
	ldr r0, _0800CB24
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	lsrs r2, r0, #0xa
	cmp r2, #0x1f
	bls _0800CAB4
	movs r2, #0x1f
_0800CAB4:
	ands r2, r5
	lsls r0, r2, #2
	ldrb r1, [r3, #1]
	movs r5, #0x7d
	negs r5, r5
	adds r2, r5, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #1]
	adds r6, #1
	adds r3, #2
	adds r4, #2
	cmp r6, r8
	blo _0800CA58
_0800CAD0:
	bl sub_08000B38
	bl sub_080003F0
	ldr r0, _0800CB28
	add r0, r9
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xc8
	muls r0, r1, r0
	asrs r0, r0, #8
	ldr r5, _0800CB2C
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	mov r1, sl
	lsls r0, r1, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bls _0800CB00
	movs r1, #0
_0800CB00:
	ldr r2, [sp, #0]
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _0800CA42
_0800CB08:
	adds r0, r7, #0
	bl sub_08001538
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0800CB20: .4byte gUnk_03001F40
_0800CB24: .4byte 0xFFFFFC1F
_0800CB28: .4byte gUnk_080B9704
_0800CB2C: .4byte 0x00000464
	thumb_func_end sub_0800C9F4
