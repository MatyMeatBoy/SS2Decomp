	thumb_func_start sub_08028830
sub_08028830: @ 0x08028830
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	movs r2, #0
	str r2, [sp, #0x10]
	ldr r2, [r0, #0]
	ldr r3, [r0, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r0, #8]
	str r2, [sp, #0x14]
	ldr r2, [r0, #0xc]
	str r2, [sp, #0x18]
	ldr r0, [r0, #0x10]
	str r0, [sp, #0x1c]
	add r0, sp, #8
	mov r9, r0
	add r2, sp, #0x10
	mov r8, r2
	add r7, sp, #0x14
	cmp r1, #0
	beq _080288B6
	ldr r0, _08028870
	mov sl, r0
	mov r5, sp
_08028868:
	movs r6, #0
	movs r4, #0
	b _080288A6
	.2byte 0x0000
_08028870: .4byte gUnk_03003E28
_08028874:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	add r1, sl
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0]
	ldr r0, [r1, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [r5, #4]
	mov r0, sp
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0
	bl sub_08021FE0
	cmp r0, #0
	beq _080288A4
	movs r6, #1
_080288A4:
	adds r4, #1
_080288A6:
	bl sub_08002164
	cmp r4, r0
	blo _08028874
	bl sub_080003F0
	cmp r6, #0
	bne _08028868
_080288B6:
	ldr r6, _080288C0
	mov r5, sp
_080288BA:
	movs r4, #0
	b _080288F0
	.2byte 0x0000
_080288C0: .4byte gUnk_03003E28
_080288C4:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r4, r0
	adds r0, r0, r6
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [r5, #4]
	mov r0, sp
	mov r1, r9
	mov r2, r8
	adds r3, r7, #0
	bl sub_08021FE0
	cmp r0, #0
	bne _080288FE
	adds r4, #1
_080288F0:
	bl sub_08002164
	cmp r4, r0
	blo _080288C4
	bl sub_080003F0
	b _080288BA
_080288FE:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	bl sub_08057328
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08028830
