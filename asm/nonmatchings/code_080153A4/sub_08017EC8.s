	thumb_func_start sub_08017EC8
sub_08017EC8: @ 0x08017EC8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	adds r0, #0x7a
	ldrh r1, [r0, #0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08017EE4
	movs r0, #1
	b _08017F5C
_08017EE4:
	ldr r0, _08017F6C
	str r0, [sp, #8]
	ldr r0, _08017F70
	adds r2, r7, r0
	ldr r1, _08017F74
	adds r0, r7, r1
	ldrb r1, [r0, #0]
	lsls r1, r1, #0x10
	ldrb r0, [r2, #0]
	orrs r0, r1
	str r0, [sp, #0xc]
	movs r0, #0
	mov r8, r0
	bl sub_08002164
	adds r5, r0, #0
	ldr r4, _08017F78
	movs r6, #0
	cmp r8, r5
	bhs _08017F5A
	mov r9, sp
_08017F0E:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r3, r4, r1
	ldr r2, [r3, #0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08017F4E
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0]
	ldr r0, [r3, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	mov r1, r9
	str r0, [r1, #4]
	mov r0, sp
	adds r1, r7, #0
	adds r1, #0x14
	add r2, sp, #8
	add r3, sp, #0xc
	bl sub_08021FE0
	cmp r0, #0
	beq _08017F4E
	movs r0, #1
	mov r8, r0
_08017F4E:
	adds r6, #1
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r4, r1
	cmp r6, r5
	blo _08017F0E
_08017F5A:
	mov r0, r8
_08017F5C:
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08017F6C: .4byte 0x014001E0
_08017F70: .4byte 0x0000022E
_08017F74: .4byte 0x0000022F
_08017F78: .4byte gUnk_03003CE0
	thumb_func_end sub_08017EC8
