	thumb_func_start sub_08017E34
sub_08017E34: @ 0x08017E34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r1, r0, #0
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0xa
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_0800BC08
	movs r5, #0
	bl sub_08002164
	adds r3, r0, #0
	movs r2, #0
	mov ip, r4
	cmp r5, r3
	bhs _08017EB6
	ldr r0, _08017EC4
	mov r8, r0
	movs r6, #0xb5
	lsls r6, r6, #1
	movs r4, #0x40
	negs r4, r4
_08017E7A:
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r2, r0
	add r0, r8
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08017EB0
	add r0, sp, #8
	ldrh r0, [r0, #0]
	adds r0, #0x3f
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r6
	bhi _08017EB0
	mov r1, ip
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, r4
	ble _08017EB0
	cmp r0, #0xc7
	bgt _08017EB0
	movs r5, #1
_08017EB0:
	adds r2, #1
	cmp r2, r3
	blo _08017E7A
_08017EB6:
	adds r0, r5, #0
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08017EC4: .4byte gUnk_03003E28
	thumb_func_end sub_08017E34
