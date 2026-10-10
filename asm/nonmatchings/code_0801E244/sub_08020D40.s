	thumb_func_start sub_08020D40
sub_08020D40: @ 0x08020D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	str r1, [sp, #0x10]
	bl sub_080653CC
	adds r6, r0, #0
	add r2, sp, #0xc
	movs r0, #0
	strh r0, [r2, #0]
	mov r1, sp
	adds r1, #0xe
	strh r0, [r1, #0]
	movs r5, #0
	ldr r0, _08020D78
	ands r0, r4
	lsls r0, r0, #8
	mov sl, r0
	asrs r4, r4, #0x10
	lsls r4, r4, #8
	mov r9, r4
	adds r7, r2, #0
	mov r8, r1
	b _08020DDA
_08020D78: .4byte 0x0000FFFF
_08020D7C:
	bl sub_0800CC98
	cmp r0, #0
	bne _08020DD6
	bl sub_0800CD8C
	cmp r0, #0
	bne _08020DD6
	bl sub_0800CCCC
	cmp r0, #0
	bne _08020DD6
	mov r1, sl
	lsls r0, r1, #8
	asrs r0, r0, #0x10
	mov r2, r9
	asrs r1, r2, #8
	mov r4, sp
	adds r4, #0xa
	movs r2, #0x10
	str r2, [sp, #0]
	str r5, [sp, #4]
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_0800BC08
	str r5, [sp, #0]
	adds r0, r6, #0
	movs r1, #0x20
	adds r2, r7, #0
	mov r3, r8
	bl sub_08065370
	adds r5, r0, #0
	add r0, sp, #8
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldrh r0, [r7, #0]
	str r0, [sp, #0]
	adds r0, r6, #0
	movs r3, #0x20
	bl sub_08065230
_08020DD6:
	bl sub_080003F0
_08020DDA:
	bl sub_0800CB78
	cmp r0, #0
	bne _08020DE6
	cmp r5, #0
	beq _08020D7C
_08020DE6:
	ldr r2, _08020E04
	movs r1, #1
	ldr r0, [sp, #0x10]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08020E04: .4byte gUnk_03005CE4
	thumb_func_end sub_08020D40
