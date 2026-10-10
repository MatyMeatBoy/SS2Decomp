	thumb_func_start sub_08016B30
sub_08016B30: @ 0x08016B30
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r9, r0
	str r1, [sp, #0x20]
	bl sub_08002164
	mov r8, r0
	mov r1, r9
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	str r0, [sp, #0x24]
	ldr r0, [r1, #0x18]
	asrs r0, r0, #8
	str r0, [sp, #0x28]
	ldr r6, _08016C68
	movs r2, #0
	mov ip, r2
	cmp ip, r8
	bhs _08016BF4
	mov r7, sp
	mov sl, r2
_08016B62:
	ldr r0, _08016C6C
	str r0, [r7, #0]
	ldr r2, [r6, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	bne _08016BE0
	adds r0, r6, #0
	adds r0, #0x64
	ldrh r3, [r0, #0]
	cmp r3, #9
	bls _08016B8E
	mov r0, r9
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	ldrh r1, [r6, #0]
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08016BE0
_08016B8E:
	cmp r3, #9
	beq _08016BE0
	ldr r0, _08016C70
	ands r2, r0
	cmp r2, #0
	bne _08016BE0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r2, [r0, #0]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xb
	beq _08016BD8
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08016BD8
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldr r1, [sp, #0x24]
	subs r4, r1, r0
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	ldr r2, [sp, #0x28]
	subs r5, r2, r0
	adds r0, r4, #0
	muls r0, r4, r0
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	str r0, [r7, #0]
_08016BD8:
	add r0, sp, #4
	add r0, sl
	mov r1, ip
	str r1, [r0, #0]
_08016BE0:
	adds r7, #8
	movs r2, #8
	add sl, r2
	movs r0, #1
	add ip, r0
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r6, r6, r1
	cmp ip, r8
	blo _08016B62
_08016BF4:
	movs r2, #0
	mov ip, r2
	cmp ip, r8
	bhs _08016C50
_08016BFC:
	mov r7, ip
	adds r7, #1
	adds r6, r7, #0
	cmp r7, r8
	bhs _08016C4A
	mov r1, ip
	lsls r0, r1, #3
	mov r2, sp
	adds r5, r2, r0
	add r1, sp, #4
	adds r4, r1, r0
	lsls r0, r7, #3
	adds r3, r0, r2
_08016C16:
	ldr r1, [r5, #0]
	ldr r0, [r3, #0]
	cmp r1, r0
	ble _08016C42
	eors r0, r1
	str r0, [r5, #0]
	ldr r1, [r3, #0]
	eors r1, r0
	str r1, [r3, #0]
	ldr r0, [r5, #0]
	eors r0, r1
	str r0, [r5, #0]
	ldr r2, [r4, #0]
	ldr r0, [r3, #4]
	eors r2, r0
	str r2, [r4, #0]
	ldr r1, [r3, #4]
	eors r1, r2
	str r1, [r3, #4]
	ldr r0, [r4, #0]
	eors r0, r1
	str r0, [r4, #0]
_08016C42:
	adds r3, #8
	adds r6, #1
	cmp r6, r8
	blo _08016C16
_08016C4A:
	mov ip, r7
	cmp ip, r8
	blo _08016BFC
_08016C50:
	ldr r0, [sp, #0]
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r2, [sp, #0x20]
	ldr r0, [r2, #0]
	cmp r1, r0
	bgt _08016C74
	str r1, [r2, #0]
	ldr r0, [sp, #4]
	b _08016C76
_08016C68: .4byte gUnk_03003CE0
_08016C6C: .4byte 0x7FFFFFFF
_08016C70: .4byte 0x00040002
_08016C74:
	movs r0, #0xa
_08016C76:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08016B30
