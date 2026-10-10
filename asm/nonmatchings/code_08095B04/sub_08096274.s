	thumb_func_start sub_08096274
sub_08096274: @ 0x08096274
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r4, r0, #0
	mov sl, r1
	bl sub_08002164
	mov ip, r0
	ldr r0, [r4, #0x14]
	asrs r0, r0, #8
	mov r9, r0
	ldr r0, [r4, #0x18]
	asrs r0, r0, #8
	mov r8, r0
	ldr r4, _08096374
	movs r2, #0
	cmp r2, ip
	bhs _08096302
	mov r3, sp
_080962A0:
	lsls r0, r2, #3
	str r0, [sp, #0x20]
	ldr r0, _08096378
	str r0, [r3, #0]
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080962F4
	ldr r0, _0809637C
	ands r1, r0
	cmp r1, #0
	bne _080962F4
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xb
	beq _080962EC
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	mov r7, r9
	subs r5, r7, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r1, r8
	subs r6, r1, r0
	adds r0, r5, #0
	muls r0, r5, r0
	adds r1, r6, #0
	muls r1, r6, r1
	adds r0, r0, r1
	str r0, [r3, #0]
_080962EC:
	add r0, sp, #4
	ldr r7, [sp, #0x20]
	adds r0, r0, r7
	str r2, [r0, #0]
_080962F4:
	adds r3, #8
	adds r2, #1
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r4, r0
	cmp r2, ip
	blo _080962A0
_08096302:
	movs r2, #0
	cmp r2, ip
	bhs _0809635A
_08096308:
	adds r7, r2, #1
	adds r6, r7, #0
	cmp r7, ip
	bhs _08096354
	lsls r0, r2, #3
	mov r1, sp
	adds r5, r1, r0
	add r1, sp, #4
	adds r4, r1, r0
	lsls r0, r7, #3
	mov r2, sp
	adds r3, r0, r2
_08096320:
	ldr r1, [r5, #0]
	ldr r0, [r3, #0]
	cmp r1, r0
	bge _0809634C
	eors r0, r1
	str r0, [r5, #0]
	ldr r1, [r3, #0]
	eors r1, r0
	str r1, [r3, #0]
	ldr r0, [r5, #0]
	eors r0, r1
	str r0, [r5, #0]
	ldr r2, [r4, #0]
	ldr r0, [r3, #4]
	eors r2, r0
	str r2, [r4, #0]
	ldr r1, [r3, #4]
	eors r1, r2
	str r1, [r3, #4]
	ldr r0, [r4, #0]
	eors r0, r1
	str r0, [r4, #0]
_0809634C:
	adds r3, #8
	adds r6, #1
	cmp r6, ip
	blo _08096320
_08096354:
	adds r2, r7, #0
	cmp r2, ip
	blo _08096308
_0809635A:
	ldr r0, [sp, #0]
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r7, sl
	ldr r0, [r7, #0]
	cmp r1, r0
	bgt _08096380
	str r1, [r7, #0]
	ldr r0, [sp, #4]
	b _08096382
	.2byte 0x0000
_08096374: .4byte gUnk_03003CE0
_08096378: .4byte 0x7FFFFFFF
_0809637C: .4byte 0x00040002
_08096380:
	movs r0, #0xa
_08096382:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08096274
