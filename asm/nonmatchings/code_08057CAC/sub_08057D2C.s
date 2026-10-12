	thumb_func_start sub_08057D2C
sub_08057D2C: @ 0x08057D2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r9, r0
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r0, _08057D54
	ldr r0, [r0, #0]
	ldr r1, _08057D58
	adds r4, r0, r1
	movs r5, #0
	b _08057D60
	.2byte 0x0000
_08057D54: .4byte gUnk_03005CF4
_08057D58: .4byte 0x00000E34
_08057D5C:
	adds r5, #1
	adds r4, #0x28
_08057D60:
	cmp r5, #0x1d
	bhi _08057DBA
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _08057D5C
	mov r1, r9
	lsls r0, r1, #8
	str r0, [sp, #0]
	mov r1, sl
	lsls r0, r1, #8
	str r0, [sp, #4]
	mov r0, sp
	strh r7, [r0, #8]
	mov r1, r8
	strh r1, [r0, #0xa]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x10]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _08057DCC
	str r1, [r4, #0xc]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #1
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_08057DBA:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08057DCC: .4byte sub_0805A874
	thumb_func_end sub_08057D2C
