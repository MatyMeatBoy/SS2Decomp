	thumb_func_start sub_08096494
sub_08096494: @ 0x08096494
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r5, r1, #0
	adds r4, r0, #0
	bl sub_08002164
	mov ip, r0
	asrs r0, r4, #8
	mov r9, r0
	asrs r4, r5, #8
	mov r8, r4
	ldr r4, _08096588
	movs r2, #0
	cmp r2, ip
	bhs _0809651C
	mov r3, sp
_080964BC:
	lsls r1, r2, #3
	mov sl, r1
	ldr r0, _0809658C
	str r0, [r3, #0]
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809650E
	ldr r0, _08096590
	ands r1, r0
	cmp r1, #0
	bne _0809650E
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r0, r4, r5
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xb
	beq _08096508
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	mov r5, r9
	subs r6, r5, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r1, r8
	subs r7, r1, r0
	adds r0, r6, #0
	muls r0, r6, r0
	adds r1, r7, #0
	muls r1, r7, r1
	adds r0, r0, r1
	str r0, [r3, #0]
_08096508:
	add r0, sp, #4
	add r0, sl
	str r2, [r0, #0]
_0809650E:
	adds r3, #8
	adds r2, #1
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r4, r4, r5
	cmp r2, ip
	blo _080964BC
_0809651C:
	movs r2, #0
	cmp r2, ip
	bhs _08096574
_08096522:
	adds r5, r2, #1
	adds r7, r5, #0
	cmp r5, ip
	bhs _0809656E
	lsls r0, r2, #3
	mov r1, sp
	adds r6, r1, r0
	add r1, sp, #4
	adds r4, r1, r0
	lsls r0, r5, #3
	mov r1, sp
	adds r3, r0, r1
_0809653A:
	ldr r1, [r6, #0]
	ldr r0, [r3, #0]
	cmp r1, r0
	bge _08096566
	eors r0, r1
	str r0, [r6, #0]
	ldr r1, [r3, #0]
	eors r1, r0
	str r1, [r3, #0]
	ldr r0, [r6, #0]
	eors r0, r1
	str r0, [r6, #0]
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
_08096566:
	adds r3, #8
	adds r7, #1
	cmp r7, ip
	blo _0809653A
_0809656E:
	adds r2, r5, #0
	cmp r2, ip
	blo _08096522
_08096574:
	ldr r0, [sp, #4]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08096588: .4byte gUnk_03003CE0
_0809658C: .4byte 0x7FFFFFFF
_08096590: .4byte 0x00040002
	thumb_func_end sub_08096494
