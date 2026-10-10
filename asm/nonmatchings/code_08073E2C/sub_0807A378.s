	thumb_func_start sub_0807A378
sub_0807A378: @ 0x0807A378
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	bl sub_08013850
	movs r0, #0
	str r0, [sp, #4]
	movs r7, #0
	movs r1, #0
	mov r8, r1
	movs r2, #0xa6
	lsls r2, r2, #1
	mov sl, r2
	ldr r3, _0807A3C0
	mov r9, r3
_0807A39E:
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl sub_0807A20C
	adds r1, r0, #0
	cmp r1, #0
	bne _0807A3C8
	mov r0, sp
	strh r1, [r0, #0]
	adds r1, r5, #0
	ldr r2, _0807A3C4
	bl CpuSet
	adds r7, #1
	adds r6, r5, #0
	adds r6, #0x6c
	b _0807A492
_0807A3C0: .4byte gUnk_03003CE0
_0807A3C4: .4byte 0x01000036
_0807A3C8:
	movs r2, #1
	strb r2, [r5, #0]
	ldr r0, _0807A41C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0xa]
	strb r0, [r5, #1]
	ldrh r0, [r1, #0xc]
	strb r0, [r5, #2]
	ldr r0, [r1, #0x20]
	strb r0, [r5, #3]
	ldr r0, [r1, #0x1c]
	str r0, [r5, #8]
	ldr r0, _0807A420
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	lsrs r0, r0, #0xc
	ands r0, r2
	strb r0, [r5, #5]
	mov r6, r8
	strb r6, [r5, #6]
	strb r6, [r5, #7]
	cmp r0, #0
	beq _0807A3FA
	movs r0, #1
	str r0, [sp, #4]
_0807A3FA:
	ldr r0, [r1, #0]
	cmp r0, #4
	bhi _0807A424
	cmp r0, #3
	blo _0807A424
	ldrh r0, [r1, #0x1c]
	strh r0, [r5, #0xe]
	ldrh r0, [r1, #0x1e]
	strh r0, [r5, #0xc]
	ldr r0, [r1, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0807A42C
	strb r2, [r5, #7]
	b _0807A42C
_0807A41C: .4byte gUnk_030034E0
_0807A420: .4byte gUnk_03004210
_0807A424:
	mov r1, r8
	strh r1, [r5, #0xe]
	ldr r0, _0807A4AC
	strh r0, [r5, #0xc]
_0807A42C:
	bl sub_080020F4
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, r9
	bl sub_0801E024
	bl sub_0801DD9C
	ldr r4, _0807A4B0
	ldr r0, [r4, #0]
	adds r1, r5, #0
	adds r1, #0x1c
	adds r0, #0x10
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r3, r6}
	stm r1!, {r3, r6}
	bl sub_080020F4
	mov r1, sl
	muls r1, r0, r1
	add r1, r9
	adds r0, r5, #0
	adds r0, #0x3c
	adds r1, #0x58
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	movs r2, #0
	adds r7, #1
	adds r6, r5, #0
	adds r6, #0x6c
	adds r3, r5, #0
	adds r3, #0x10
_0807A482:
	adds r0, r3, r2
	ldr r1, [r4, #0]
	adds r1, r1, r2
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r2, #1
	cmp r2, #9
	bls _0807A482
_0807A492:
	adds r5, r6, #0
	cmp r7, #7
	bhi _0807A49A
	b _0807A39E
_0807A49A:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0807A4AC: .4byte 0x0000FFFF
_0807A4B0: .4byte gUnk_030034E0
	thumb_func_end sub_0807A378
