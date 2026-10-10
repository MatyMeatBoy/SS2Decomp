	thumb_func_start sub_0805FAC0
sub_0805FAC0: @ 0x0805FAC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r6, r0, #0
	adds r7, r1, #0
	str r2, [sp, #0x14]
	lsls r3, r3, #0x18
	lsrs r1, r3, #0x18
	ldr r2, _0805FB74
	ldr r0, [sp, #0x14]
	cmp r0, r2
	bls _0805FADC
	str r2, [sp, #0x14]
_0805FADC:
	movs r0, #0x34
	muls r1, r0, r1
	ldr r0, _0805FB78
	adds r4, r1, r0
	add r0, sp, #0x14
	movs r1, #0x64
	bl sub_08000498
	add r1, sp, #0x10
	movs r2, #0
	mov r8, r2
	strb r0, [r1, #0]
	ldr r0, [sp, #0x14]
	strb r0, [r1, #1]
	adds r0, r1, #0
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0805FB1C
	adds r0, r6, #0
	subs r0, #0xc
	ldrb r3, [r1, #0]
	str r2, [sp, #0]
	adds r1, r4, #0
	adds r1, #0x1c
	str r1, [sp, #4]
	ldr r1, [r4, #8]
	str r1, [sp, #8]
	ldr r1, [r4, #0]
	str r1, [sp, #0xc]
	adds r1, r7, #0
	bl sub_08007CF0
_0805FB1C:
	add r0, sp, #0x10
	ldrb r0, [r0, #1]
	adds r5, r4, #0
	adds r5, #0x1c
	cmp r0, #9
	bhi _0805FB4A
	add r0, sp, #0x10
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0805FB4A
	subs r0, r6, #6
	mov r1, r8
	str r1, [sp, #0]
	str r5, [sp, #4]
	ldr r1, [r4, #8]
	str r1, [sp, #8]
	ldr r1, [r4, #0]
	str r1, [sp, #0xc]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08007CF0
_0805FB4A:
	add r0, sp, #0x10
	ldrb r3, [r0, #1]
	movs r0, #0
	str r0, [sp, #0]
	str r5, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08007CF0
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805FB74: .4byte 0x000003E7
_0805FB78: .4byte gUnk_03006040
	thumb_func_end sub_0805FAC0
