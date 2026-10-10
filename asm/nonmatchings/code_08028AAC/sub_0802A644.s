	thumb_func_start sub_0802A644
sub_0802A644: @ 0x0802A644
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	adds r1, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r7, r0, #2
	movs r1, #0
	mov r8, r1
	mov sl, r1
	movs r3, #0
	movs r2, #0
	str r2, [sp, #0x80]
	mov r1, sp
	movs r2, #0xfd
	strb r2, [r1, #0]
	add r1, sp, #0x20
	strb r2, [r1, #0]
	ldrb r0, [r0, #2]
	cmp r0, #0xfd
	bne _0802A67C
	b _0802A78A
_0802A67C:
	mov r9, r2
_0802A67E:
	adds r0, r3, #0
	adds r3, #1
	cmp r0, #5
	bls _0802A758
	ldrb r2, [r7, #0]
	adds r0, r2, #0
	cmp r0, #0xff
	bne _0802A6B8
	movs r3, #0
	mov sl, r3
	movs r4, #1
	add r8, r4
	mov r0, r8
	cmp r0, #1
	bls _0802A6AA
	mov r0, sp
	mov r1, r9
	strb r1, [r0, #0]
	add r2, sp, #0x20
	strb r1, [r2, #0]
	mov r8, r3
	b _0802A6B4
_0802A6AA:
	mov r3, r8
	lsls r0, r3, #5
	add r0, sp
	mov r4, r9
	strb r4, [r0, #0]
_0802A6B4:
	adds r7, #1
	b _0802A756
_0802A6B8:
	cmp r0, #0xfc
	bne _0802A708
	mov r0, r8
	lsls r1, r0, #5
	mov r2, sl
	adds r0, r2, r1
	mov r3, sp
	adds r2, r3, r0
	ldr r4, _0802A704
	ldr r3, [sp, #0x80]
	adds r0, r4, r3
	ldrb r0, [r0, #0]
	strb r0, [r2, #0]
	movs r4, #1
	add sl, r4
	add r1, sl
	mov r2, sp
	adds r0, r2, r1
	mov r3, r9
	strb r3, [r0, #0]
	ldr r0, [sp, #0x80]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x80]
	ldr r4, _0802A704
	adds r0, r4, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0802A756
	adds r7, #1
	movs r0, #0
	str r0, [sp, #0x80]
	movs r1, #1
	negs r1, r1
	add sl, r1
	b _0802A756
	.2byte 0x0000
_0802A704: .4byte gUnk_03003CE2
_0802A708:
	cmp r0, #0xfe
	bne _0802A73A
	mov r0, sp
	mov r2, r9
	strb r2, [r0, #0]
	add r3, sp, #0x20
	strb r2, [r3, #0]
	movs r4, #0
	mov r8, r4
	mov sl, r4
	adds r7, #3
	movs r4, #0xb4
	b _0802A72C
_0802A722:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802A756
_0802A72C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802A722
	b _0802A756
_0802A73A:
	mov r0, r8
	lsls r1, r0, #5
	mov r3, sl
	adds r0, r3, r1
	add r0, sp
	strb r2, [r0, #0]
	adds r7, #1
	movs r4, #1
	add sl, r4
	add r1, sl
	mov r2, sp
	adds r0, r2, r1
	mov r3, r9
	strb r3, [r0, #0]
_0802A756:
	movs r3, #0
_0802A758:
	movs r5, #0
	movs r6, #0xf0
	lsls r6, r6, #0xc
	mov r4, sp
_0802A760:
	lsrs r2, r6, #0x10
	adds r0, r4, #0
	movs r1, #1
	str r3, [sp, #0x84]
	bl sub_0801A3D0
	movs r0, #0x80
	lsls r0, r0, #0xa
	adds r6, r6, r0
	adds r4, #0x20
	adds r5, #1
	ldr r3, [sp, #0x84]
	cmp r5, #1
	bls _0802A760
	bl sub_080003F0
	ldrb r0, [r7, #0]
	ldr r3, [sp, #0x84]
	cmp r0, #0xfd
	beq _0802A78A
	b _0802A67E
_0802A78A:
	movs r3, #0xb3
_0802A78C:
	movs r5, #0
	subs r7, r3, #1
	cmp r5, r8
	bhs _0802A7B2
	movs r6, #0xf0
	lsls r6, r6, #0xc
	mov r4, sp
_0802A79A:
	lsrs r2, r6, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801A3D0
	movs r1, #0x80
	lsls r1, r1, #0xa
	adds r6, r6, r1
	adds r4, #0x20
	adds r5, #1
	cmp r5, r8
	blo _0802A79A
_0802A7B2:
	bl sub_080003F0
	adds r3, r7, #0
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne _0802A78C
	movs r0, #0xf
	movs r1, #4
	bl sub_0801A664
	bl sub_080003F0
	add sp, #0x88
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0802A644
