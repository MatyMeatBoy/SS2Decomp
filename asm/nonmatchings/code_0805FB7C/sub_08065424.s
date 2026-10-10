	thumb_func_start sub_08065424
sub_08065424: @ 0x08065424
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	str r1, [sp, #0x20]
	ldr r0, [sp, #0x4c]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r2, #0
	bge _08065444
	ldr r2, _080654F8
_08065444:
	cmp r3, #1
	beq _08065456
	cmp r3, #1
	ble _08065456
	cmp r3, #2
	beq _08065456
	cmp r3, #3
	bne _08065456
	movs r3, #0xd
_08065456:
	str r2, [sp, #0x1c]
	movs r0, #0xa
	subs r0, r0, r7
	lsls r0, r0, #2
	ldr r1, _080654FC
	adds r6, r0, r1
	add r4, sp, #0x10
	movs r5, #0
	subs r0, r7, #1
	mov r9, r0
	cmp r5, r7
	bhs _08065484
_0806546E:
	ldm r6!, {r1}
	add r0, sp, #0x1c
	str r3, [sp, #0x28]
	bl sub_08000498
	strb r0, [r4, #0]
	adds r5, #1
	adds r4, #1
	ldr r3, [sp, #0x28]
	cmp r5, r7
	blo _0806546E
_08065484:
	movs r1, #0
	mov sl, r1
	mov r1, r9
	lsls r0, r1, #1
	add r0, r9
	lsls r0, r0, #1
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	add r4, sp, #0x10
	movs r5, #0
	cmp r5, r7
	bhs _080654E8
	ldr r6, _08065500
	lsls r3, r3, #0x10
	str r3, [sp, #0x24]
_080654A4:
	mov r3, sl
	cmp r3, #0
	bne _080654B4
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne _080654B4
	cmp r5, r9
	bne _080654DC
_080654B4:
	movs r0, #1
	mov sl, r0
	ldrb r1, [r4, #0]
	mov ip, r1
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r6, #0
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r6, #8]
	str r0, [sp, #8]
	ldr r0, [r6, #0]
	str r0, [sp, #0xc]
	mov r0, r8
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x24]
	lsrs r2, r3, #0x10
	mov r3, ip
	bl sub_08007CF0
_080654DC:
	adds r5, #1
	movs r0, #6
	add r8, r0
	adds r4, #1
	cmp r5, r7
	blo _080654A4
_080654E8:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080654F8: .4byte 0x7FFFFFFF
_080654FC: .4byte gUnk_084EBD4C
_08065500: .4byte gUnk_03005D80
	thumb_func_end sub_08065424
