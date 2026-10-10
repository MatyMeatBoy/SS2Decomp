	thumb_func_start sub_0800AD04
sub_0800AD04: @ 0x0800AD04
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	ldr r1, [r6, #0]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r1, [r7, #0]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	mov r9, r1
	ldr r3, _0800AD88
	adds r1, r3, #0
	adds r1, #0x9c
	ldr r1, [r1, #0]
	movs r2, #0x10
	ands r1, r2
	cmp r1, #0
	bne _0800AD5C
	adds r2, r3, #0
	adds r2, #0x80
	mov r5, r8
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2, #0]
	adds r1, r1, r2
	subs r1, #0x78
	adds r2, r3, #0
	adds r2, #0x7c
	strh r1, [r2, #0]
	adds r2, #6
	mov r5, r9
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2, #0]
	adds r1, r1, r2
	subs r1, #0x60
	adds r2, r3, #0
	adds r2, #0x7e
	strh r1, [r2, #0]
_0800AD5C:
	cmp r4, #0
	beq _0800AD8C
	adds r4, r3, #0
	adds r4, #0x7c
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x74
	ldrh r1, [r1, #0]
	subs r1, #0x1e
	lsls r1, r1, #3
	cmp r2, r1
	ble _0800AD78
	strh r1, [r4, #0]
_0800AD78:
	adds r4, r3, #0
	adds r4, #0x7e
	movs r5, #0
	ldrsh r2, [r4, r5]
	adds r1, r3, #0
	adds r1, #0x76
	b _0800ADB0
	.2byte 0x0000
_0800AD88: .4byte gUnk_03003170
_0800AD8C:
	adds r4, r3, #0
	adds r4, #0x7c
	movs r1, #0
	ldrsh r2, [r4, r1]
	adds r1, r3, #0
	adds r1, #0x70
	ldrh r1, [r1, #0]
	subs r1, #0x1e
	lsls r1, r1, #3
	cmp r2, r1
	ble _0800ADA4
	strh r1, [r4, #0]
_0800ADA4:
	adds r4, r3, #0
	adds r4, #0x7e
	movs r5, #0
	ldrsh r2, [r4, r5]
	adds r1, r3, #0
	adds r1, #0x72
_0800ADB0:
	ldrh r1, [r1, #0]
	subs r1, #0x14
	lsls r1, r1, #3
	cmp r2, r1
	ble _0800ADBC
	strh r1, [r4, #0]
_0800ADBC:
	mov ip, r3
	mov r4, ip
	adds r4, #0x7c
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _0800ADCE
	movs r1, #0
	strh r1, [r4, #0]
_0800ADCE:
	mov r5, ip
	adds r5, #0x7e
	movs r2, #0
	ldrsh r1, [r5, r2]
	cmp r1, #0
	bge _0800ADDE
	movs r1, #0
	strh r1, [r5, #0]
_0800ADDE:
	mov r1, ip
	adds r1, #0x9c
	ldr r1, [r1, #0]
	movs r2, #0x10
	ands r1, r2
	cmp r1, #0
	bne _0800AE0C
	mov r2, ip
	adds r2, #0x80
	ldrh r1, [r4, #0]
	ldrh r2, [r2, #0]
	subs r1, r1, r2
	mov r2, ip
	adds r2, #0x88
	strh r1, [r2, #0]
	subs r2, #6
	ldrh r1, [r5, #0]
	ldrh r2, [r2, #0]
	subs r1, r1, r2
	mov r2, ip
	adds r2, #0x8a
	strh r1, [r2, #0]
	b _0800AE2A
_0800AE0C:
	adds r2, r3, #0
	adds r2, #0x80
	adds r1, r3, #0
	adds r1, #0x88
	ldrh r1, [r1, #0]
	ldrh r2, [r2, #0]
	adds r1, r1, r2
	strh r1, [r4, #0]
	movs r4, #0x82
	adds r1, r3, #0
	adds r1, #0x8a
	ldrh r1, [r1, #0]
	ldrh r2, [r4, r3]
	adds r1, r1, r2
	strh r1, [r5, #0]
_0800AE2A:
	ldrb r2, [r6, #0]
	ldrb r3, [r7, #0]
	mov r4, r8
	lsls r1, r4, #0x10
	asrs r1, r1, #8
	adds r2, r2, r1
	str r2, [r6, #0]
	mov r5, r9
	lsls r1, r5, #0x10
	asrs r1, r1, #8
	adds r3, r3, r1
	str r3, [r7, #0]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0800AD04
