	thumb_func_start sub_0801F1C4
sub_0801F1C4: @ 0x0801F1C4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0xa
	strh r0, [r4, #0xc]
	ldr r1, _0801F2B4
	mov r6, sp
	ldr r0, [sp, #4]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	adds r1, #0xff
	ldr r0, [sp, #0]
	ands r0, r1
	ldr r5, _0801F2B8
	ands r0, r5
	movs r1, #0x80
	lsls r1, r1, #0xa
	orrs r0, r1
	str r0, [sp, #0]
	ldr r0, [r4, #0x14]
	ldr r1, [r3, #0]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x18]
	ldr r2, [r3, #4]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	ldr r1, _0801F2BC
	lsrs r0, r0, #0x1c
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x18
	ldr r1, _0801F2C0
	ldr r3, [sp, #0]
	ands r3, r1
	orrs r3, r0
	ldrb r1, [r4, #2]
	ldr r0, _0801F2C4
	ands r3, r0
	orrs r3, r1
	str r3, [sp, #0]
	adds r2, r4, #0
	adds r2, #0x4a
	ldrh r0, [r6, #4]
	ldrh r7, [r2, #0]
	adds r1, r0, r7
	strh r1, [r2, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r4, #0x4c]
	lsrs r0, r3, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x62
	strh r0, [r1, #0]
	lsls r1, r3, #8
	lsrs r2, r1, #0x18
	adds r0, r4, #0
	adds r0, #0x7c
	strh r2, [r0, #0]
	adds r1, r2, #0
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0801F25E
	ands r3, r5
	str r3, [sp, #0]
_0801F25E:
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0, #0]
	cmp r0, #0xff
	bne _0801F270
	ldr r0, [sp, #0]
	ands r0, r5
	str r0, [sp, #0]
_0801F270:
	adds r0, r4, #0
	mov r1, sp
	bl sub_0801F2CC
	movs r0, #3
	ldrsb r0, [r6, r0]
	adds r1, r4, #0
	adds r1, #0x7e
	strh r0, [r1, #0]
	subs r1, #0x26
	movs r0, #0x64
	strh r0, [r1, #0]
	bl sub_080020F4
	adds r3, r4, #0
	adds r3, #0x5a
	ldr r2, _0801F2C8
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r1, r1, r2
	movs r0, #1
	ldrh r1, [r1, #0]
	lsls r0, r1
	ldrh r1, [r3, #0]
	orrs r0, r1
	strh r0, [r3, #0]
	mov r0, sp
	bl sub_080660EC
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0801F2B4: .4byte 0xFFFF0000
_0801F2B8: .4byte 0xFF00FFFF
_0801F2BC: .4byte gUnk_084790B4
_0801F2C0: .4byte 0x00FFFFFF
_0801F2C4: .4byte 0xFFFFFF00
_0801F2C8: .4byte gUnk_03003CE0
	thumb_func_end sub_0801F1C4
