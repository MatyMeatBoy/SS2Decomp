	thumb_func_start sub_080850C0
sub_080850C0: @ 0x080850C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r3, r0, #0
	mov r9, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	adds r3, #2
	movs r0, #0
	mov r8, r0
	b _08085146
_080850DE:
	cmp r2, #0xf7
	bne _08085134
	mov r0, sl
	str r0, [sp, #0]
	ldr r6, _08085130
	mov r4, r9
	add r4, r8
	movs r7, #0
	movs r5, #0
	adds r2, r3, #1
_080850F2:
	ldr r1, [r6, #0]
	mov r0, sp
	str r2, [sp, #4]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #4]
	cmp r7, #0
	bne _08085112
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _08085112
	cmp r5, #5
	bne _08085120
_08085112:
	adds r4, #1
	movs r7, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08085120:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #4
	cmp r5, #5
	bls _080850F2
	b _08085144
	.2byte 0x0000
_08085130: .4byte gUnk_084EBD5C
_08085134:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	add r1, r9
	strb r2, [r1, #0]
	adds r2, r3, #1
_08085144:
	adds r3, r2, #0
_08085146:
	ldrb r2, [r3, #0]
	cmp r2, #0xfd
	bne _080850DE
	mov r1, r9
	add r1, r8
	movs r0, #0xfd
	strb r0, [r1, #0]
	mov r0, r8
	subs r0, #1
	add r0, r9
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080850C0
