	thumb_func_start sub_08017F7C
sub_08017F7C: @ 0x08017F7C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	mov r9, r0
	ldr r1, _0801800C
	ldr r2, _08018010
	ldr r0, _08018014
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [sp, #0xc]
	movs r7, #0
	bl sub_08002164
	adds r5, r0, #0
	ldr r4, _08018018
	movs r6, #0
	cmp r7, r5
	bhs _08017FFC
	mov r8, sp
_08017FB4:
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r3, r4, r0
	ldr r2, [r3, #0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08017FF0
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0]
	ldr r0, [r3, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	mov r1, r8
	str r0, [r1, #4]
	mov r0, sp
	mov r1, r9
	add r2, sp, #8
	add r3, sp, #0xc
	bl sub_08021FE0
	cmp r0, #0
	beq _08017FF0
	movs r7, #1
_08017FF0:
	adds r6, #1
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r4, r0
	cmp r6, r5
	blo _08017FB4
_08017FFC:
	adds r0, r7, #0
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0801800C: .4byte 0xFFFF0000
_08018010: .4byte 0x0000FFFF
_08018014: .4byte 0x014001E0
_08018018: .4byte gUnk_03003CE0
	thumb_func_end sub_08017F7C
