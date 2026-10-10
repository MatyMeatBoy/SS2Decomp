	thumb_func_start sub_08095D1C
sub_08095D1C: @ 0x08095D1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	asrs r1, r1, #0xb
	str r1, [sp, #0xc]
	asrs r2, r2, #0xb
	mov r8, r2
	ldr r0, _08095D8C
	ldr r1, [r0, #0x68]
	str r1, [sp, #0x10]
	movs r5, #1
	negs r5, r5
	mov ip, r0
	movs r3, #0x70
	add r3, ip
	mov sl, r3
_08095D4E:
	ldr r7, [sp, #0xc]
	adds r4, r7, r5
	movs r2, #1
	negs r2, r2
	adds r6, r5, #1
_08095D58:
	mov r0, r8
	adds r3, r0, r2
	cmp r4, #0
	ble _08095D76
	cmp r3, #0
	ble _08095D76
	mov r7, sl
	ldrh r1, [r7, #0]
	cmp r4, r1
	bge _08095D76
	mov r0, ip
	adds r0, #0x72
	ldrh r0, [r0, #0]
	cmp r3, r0
	blt _08095D90
_08095D76:
	adds r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r0, #1
	adds r0, r5, r0
	mov r3, sp
	adds r1, r3, r0
	movs r0, #1
	strb r0, [r1, #0]
	b _08095DB0
	.2byte 0x0000
_08095D8C: .4byte gUnk_03003170
_08095D90:
	muls r1, r3, r1
	adds r1, r4, r1
	lsls r1, r1, #1
	ldr r7, [sp, #0x10]
	adds r1, r7, r1
	adds r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r0, #1
	adds r0, r5, r0
	mov r7, sp
	adds r3, r7, r0
	ldr r0, [r1, #0]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1c
	strb r0, [r3, #0]
_08095DB0:
	cmp r2, #1
	ble _08095D58
	adds r5, r6, #0
	cmp r5, #1
	ble _08095D4E
	mov r0, sp
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08095E5C
	cmp r0, #1
	bne _08095E5C
	mov r0, r9
	cmp r0, #7
	bhi _08095E5C
	lsls r0, r0, #2
	ldr r1, _08095DD8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08095DD8: .4byte _08095DDC
_08095DDC:
	.4byte _08095E58
_08095DE0: .4byte _08095E08
_08095DE4: .4byte _08095DFC
_08095DE8: .4byte _08095E1A
_08095DEC: .4byte _08095E00
_08095DF0: .4byte _08095E2C
_08095DF4: .4byte _08095E04
_08095DF8: .4byte _08095E40
_08095DFC:
	movs r0, #7
	b _08095E60
_08095E00:
	movs r0, #1
	b _08095E60
_08095E04:
	movs r0, #3
	b _08095E60
_08095E08:
	mov r0, sp
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08095E58
	mov r0, sp
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _08095E3C
	b _08095E54
_08095E1A:
	mov r0, sp
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _08095E48
	mov r0, sp
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _08095E54
	b _08095E3C
_08095E2C:
	mov r0, sp
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08095E58
	mov r0, sp
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _08095E48
_08095E3C:
	movs r0, #8
	b _08095E60
_08095E40:
	mov r0, sp
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _08095E4C
_08095E48:
	movs r0, #2
	b _08095E60
_08095E4C:
	mov r0, sp
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _08095E58
_08095E54:
	movs r0, #6
	b _08095E60
_08095E58:
	movs r0, #4
	b _08095E60
_08095E5C:
	mov r0, r9
	adds r0, #1
_08095E60:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08095D1C
