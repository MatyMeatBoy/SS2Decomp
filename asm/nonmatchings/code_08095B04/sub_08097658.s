	thumb_func_start sub_08097658
sub_08097658: @ 0x08097658
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xac
	mov sl, r0
	mov r9, r1
	str r2, [sp, #0x5c]
	str r3, [sp, #0x60]
	ldr r0, [sp, #0xcc]
	ldr r1, [sp, #0xd0]
	ldr r2, [sp, #0xd4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x64]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x68]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x6c]
	ldr r0, [sp, #0x5c]
	strb r1, [r0, #0x1c]
	add r1, sp, #0x68
	ldrb r2, [r1, #0]
	ldr r1, [sp, #0x60]
	strb r2, [r1, #0x1c]
	movs r0, #0
	mov r2, sp
	adds r2, #0x38
	str r2, [sp, #0x98]
	add r3, sp, #0x58
	mov r8, r3
	mov r1, sp
	adds r1, #0x5a
	str r1, [sp, #0xa8]
	movs r2, #0x1f
	mov ip, r2
_080976A6:
	ldr r3, [sp, #0x64]
	lsls r4, r3, #4
	lsls r3, r0, #0x10
	asrs r3, r3, #0x10
	adds r4, r4, r3
	lsls r4, r4, #1
	ldr r1, [sp, #0x5c]
	ldr r0, [r1, #0xc]
	adds r7, r0, r4
	lsls r5, r3, #1
	mov r6, sp
	adds r6, r6, r5
	adds r6, #0x18
	ldr r1, [r7, #0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	mov r2, ip
	ands r1, r2
	ldrb r2, [r6, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0]
	ldr r0, [r7, #0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	movs r1, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r6, #0]
	ldr r0, _080977DC
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #0]
	ldr r1, [r7, #0]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	mov r0, ip
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r6, #1]
	movs r0, #0x7d
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #1]
	ldr r1, [sp, #0x60]
	ldr r0, [r1, #0xc]
	adds r7, r0, r4
	adds r5, #0x20
	mov r6, sp
	adds r6, r6, r5
	adds r6, #0x18
	ldr r1, [r7, #0]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1b
	mov r2, ip
	ands r1, r2
	ldrb r2, [r6, #0]
	movs r0, #0x20
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #0]
	ldr r0, [r7, #0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	movs r1, #0x1f
	ands r1, r0
	lsls r1, r1, #5
	ldrh r2, [r6, #0]
	ldr r0, _080977DC
	ands r0, r2
	orrs r0, r1
	strh r0, [r6, #0]
	ldr r1, [r7, #0]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x1b
	mov r0, ip
	ands r1, r0
	lsls r1, r1, #2
	ldrb r2, [r6, #1]
	movs r0, #0x7d
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r6, #1]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #0xf
	ble _080976A6
	movs r1, #0
	str r1, [sp, #0x74]
	movs r2, #0
	str r2, [sp, #0x70]
	movs r6, #0
	movs r3, #2
	str r3, [sp, #0x78]
	ldr r0, [sp, #0x68]
	adds r0, #0x10
	str r0, [sp, #0x9c]
	mov r1, sl
	adds r1, #0x68
	str r1, [sp, #0x88]
	mov r2, sl
	adds r2, #0x6a
	str r2, [sp, #0x8c]
	mov r3, sl
	adds r3, #0x6c
	str r3, [sp, #0x90]
	ldr r0, [sp, #0x5c]
	adds r0, #0x1c
	str r0, [sp, #0xa0]
	mov r1, r9
	adds r1, #0x6c
	str r1, [sp, #0x94]
	ldr r2, [sp, #0x60]
	adds r2, #0x1c
	str r2, [sp, #0xa4]
	movs r7, #0
	ldr r5, [sp, #0xa8]
	mov r3, r8
	str r3, [sp, #0x7c]
	mov r0, r9
	adds r0, #0x68
	str r0, [sp, #0x80]
	subs r1, #2
	str r1, [sp, #0x84]
_080977AC:
	ldr r1, [sp, #0x70]
	adds r1, #1
	lsls r1, r1, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x74]
	movs r2, #1
	ands r1, r2
	cmp r1, #0
	beq _080977E0
	movs r0, #0
	movs r1, #0
	ldr r2, [sp, #0x70]
	movs r3, #0
	bl sub_08009088
	b _080977EC
_080977DC: .4byte 0xFFFFFC1F
_080977E0:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	ldr r3, [sp, #0x70]
	bl sub_08009088
_080977EC:
	ldr r3, [sp, #0x78]
	cmp r3, #1
	beq _0809780A
	cmp r3, #2
	bne _08097834
	adds r1, r6, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r1, #0x3c
	bls _08097834
	movs r6, #0
	movs r0, #1
	str r0, [sp, #0x78]
	b _08097834
_0809780A:
	add r0, sp, #0x18
	movs r1, #2
	adds r2, r6, #0
	movs r3, #0x3c
	bl sub_08096E20
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, [sp, #0x98]
	movs r1, #2
	adds r2, r6, #0
	movs r3, #0x3c
	bl sub_08096E20
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08097834
	movs r6, #0
	movs r1, #0
	str r1, [sp, #0x78]
_08097834:
	ldr r0, [sp, #0x9c]
	add r1, sp, #0x18
	movs r2, #1
	bl sub_08000AF0
	ldr r2, [sp, #0x88]
	ldrh r1, [r2, #0]
	movs r3, #1
	str r3, [sp, #0]
	ldr r0, [sp, #0x5c]
	ldr r2, [sp, #0x8c]
	ldr r3, [sp, #0x90]
	bl sub_08065370
	mov r1, sl
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r7, [sp, #0]
	str r7, [sp, #4]
	mov r2, r8
	ldr r3, [sp, #0xa8]
	bl sub_0800BC08
	mov r2, sl
	ldr r0, [r2, #0x14]
	asrs r0, r0, #8
	ldr r1, [r2, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r3, [sp, #0x6c]
	cmp r3, #0
	beq _0809788E
	mov r1, r8
	ldrh r0, [r1, #0]
	subs r0, #9
	strh r0, [r1, #0]
	b _08097896
_0809788E:
	mov r2, r8
	ldrh r0, [r2, #0]
	adds r0, #9
	strh r0, [r2, #0]
_08097896:
	ldrh r0, [r5, #0]
	adds r0, #0x15
	strh r0, [r5, #0]
	ldr r3, [sp, #0x7c]
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x88]
	ldrh r2, [r3, #0]
	ldr r3, [sp, #0x8c]
	ldrh r3, [r3, #0]
	mov ip, r3
	str r4, [sp, #0]
	movs r3, #1
	str r3, [sp, #4]
	str r7, [sp, #8]
	ldr r3, [sp, #0xa0]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x5c]
	ldr r3, [r3, #8]
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x5c]
	ldr r3, [r3, #0]
	str r3, [sp, #0x14]
	mov r3, ip
	bl sub_08007974
	ldr r0, [sp, #0x9c]
	ldr r1, [sp, #0x98]
	movs r2, #1
	bl sub_08000AF0
	ldr r0, [sp, #0x80]
	ldrh r1, [r0, #0]
	movs r2, #1
	str r2, [sp, #0]
	ldr r0, [sp, #0x60]
	ldr r2, [sp, #0x84]
	ldr r3, [sp, #0x94]
	bl sub_08065370
	mov r3, r9
	ldr r0, [r3, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r3, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r7, [sp, #0]
	str r7, [sp, #4]
	ldr r2, [sp, #0x7c]
	adds r3, r5, #0
	bl sub_0800BC08
	mov r1, r9
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, [sp, #0x7c]
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x80]
	ldrh r2, [r3, #0]
	ldr r3, [sp, #0x84]
	ldrh r3, [r3, #0]
	mov ip, r3
	str r4, [sp, #0]
	movs r3, #1
	str r3, [sp, #4]
	str r7, [sp, #8]
	ldr r3, [sp, #0xa4]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x60]
	ldr r3, [r3, #8]
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x60]
	ldr r3, [r3, #0]
	str r3, [sp, #0x14]
	mov r3, ip
	bl sub_08007974
	bl sub_08000B38
	bl sub_080003F0
	ldr r0, [sp, #0x78]
	cmp r0, #0
	beq _0809795A
	b _080977AC
_0809795A:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08009088
	movs r0, #1
	add sp, #0xac
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08097658
