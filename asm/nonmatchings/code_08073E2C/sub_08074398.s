	thumb_func_start sub_08074398
sub_08074398: @ 0x08074398
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r2, [sp, #4]
	str r3, [sp, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0]
	bl sub_0800CF80
	cmp r0, #0
	beq _0807446C
	ldr r0, _08074464
	mov r9, r0
	movs r1, #1
	negs r1, r1
	mov r8, r1
	bl sub_08002164
	adds r7, r0, #0
	movs r4, #0
	cmp r4, r7
	bhs _08074448
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r1, _08074468
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r1
	adds r0, #0x68
	str r0, [sp, #0xc]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r6, r1, r3
	adds r5, r1, #0
	adds r5, #0x68
_080743EE:
	cmp sl, r4
	beq _0807443A
	ldr r1, [sp, #0xc]
	ldrb r0, [r1, #0]
	ldrb r1, [r5, #0]
	cmp r0, r1
	beq _0807443A
	cmp r1, #0
	beq _0807443A
	ldr r2, [r6, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldr r3, [sp, #4]
	asrs r1, r3, #8
	subs r3, r0, r1
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r2, [sp, #8]
	asrs r1, r2, #8
	subs r1, r0, r1
	adds r0, r3, #0
	muls r0, r3, r0
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x30]
	cmp r1, r0
	ble _0807443A
	cmp r9, r0
	bls _0807443A
	mov r9, r0
	mov r8, r4
_0807443A:
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r6, r6, r2
	adds r5, r5, r2
	adds r4, #1
	cmp r4, r7
	blo _080743EE
_08074448:
	movs r0, #1
	negs r0, r0
	cmp r8, r0
	beq _0807446C
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r1, _08074468
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	b _0807451E
	.2byte 0x0000
_08074464: .4byte 0x0000FFFF
_08074468: .4byte gUnk_03003CE0
_0807446C:
	ldr r0, _08074510
	mov r9, r0
	movs r1, #1
	negs r1, r1
	mov r8, r1
	movs r4, #0
	ldr r6, _08074514
	movs r5, #0
_0807447C:
	ldr r0, _08074518
	movs r1, #1
	lsls r1, r4
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _080744E6
	ldr r0, [r6, #0]
	adds r1, r0, r5
	ldrh r0, [r1, #2]
	ldr r2, [sp, #0]
	cmp r0, r2
	beq _080744E6
	ldrh r0, [r1, #0xc]
	cmp r0, #0xb
	beq _080744E6
	adds r0, r1, #0
	adds r0, #0x5c
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _080744E6
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080744E6
	ldr r0, [r1, #0x14]
	ldr r3, [sp, #4]
	subs r0, r0, r3
	asrs r3, r0, #8
	ldr r0, [r1, #0x18]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	asrs r1, r0, #8
	adds r0, r3, #0
	muls r0, r3, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [sp, #0x30]
	cmp r3, r0
	ble _080744E6
	cmp r9, r0
	bls _080744E6
	mov r9, r0
	mov r8, r4
_080744E6:
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #4
	bls _0807447C
	movs r0, #1
	negs r0, r0
	cmp r8, r0
	beq _0807451C
	ldr r1, _08074514
	mov r2, r8
	lsls r0, r2, #1
	add r0, r8
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	b _0807451E
_08074510: .4byte 0x0000FFFF
_08074514: .4byte gUnk_030056F4
_08074518: .4byte gUnk_030056FC
_0807451C:
	movs r0, #0xff
_0807451E:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08074398
