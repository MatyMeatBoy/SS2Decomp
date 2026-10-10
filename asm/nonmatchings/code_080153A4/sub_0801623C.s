	thumb_func_start sub_0801623C
sub_0801623C: @ 0x0801623C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	str r1, [sp, #4]
	mov r8, r2
	lsls r0, r2, #3
	adds r7, r1, r0
	ldrh r0, [r7, #8]
	ldr r4, _080162E8
	ands r4, r0
	subs r6, r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08016264
	adds r6, #0xc5
_08016264:
	movs r0, #0xd8
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _080162EC
	adds r1, r1, r0
	ldrb r0, [r5, #0]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r4, r5, r2
	movs r2, #0xf
	ands r2, r0
	ldrb r3, [r4, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r3
	orrs r0, r2
	strb r0, [r4, #0]
	movs r4, #0
	movs r0, #4
	strh r0, [r5, #2]
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	lsls r0, r0, #0xb
	str r0, [r5, #0x14]
	movs r2, #0xc
	ldrsh r0, [r7, r2]
	lsls r0, r0, #0xb
	str r0, [r5, #0x18]
	movs r2, #0xa
	ldrsh r0, [r7, r2]
	lsls r0, r0, #3
	str r0, [r5, #0x24]
	movs r2, #0xc
	ldrsh r0, [r7, r2]
	lsls r0, r0, #3
	str r0, [r5, #0x28]
	ldr r0, [sp, #4]
	str r0, [r5, #0x2c]
	movs r2, #0x81
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r2, #0xd8
	bl sub_080B96A4
	ldrh r0, [r7, #0xe]
	strh r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x84
	strh r4, [r0, #0]
	subs r0, #0x2a
	strh r4, [r0, #0]
	adds r0, #8
	strh r4, [r0, #0]
	adds r0, #0x1a
	strh r4, [r0, #0]
	ldr r0, _080162F0
	str r0, [r5, #0x54]
	bl sub_0800CCCC
	cmp r0, #0
	beq _080162F8
	ldr r0, _080162F4
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x40]
	b _080162FE
	.2byte 0x0000
_080162E8: .4byte 0x00000FFF
_080162EC: .4byte gUnk_0847AD3C
_080162F0: .4byte 0x0000FFFF
_080162F4: .4byte gUnk_03005CF4
_080162F8:
	ldr r0, _08016408
	adds r0, #0x90
	ldrh r1, [r0, #0]
_080162FE:
	adds r0, r5, #0
	adds r0, #0x48
	strh r1, [r0, #0]
	ldr r1, _0801640C
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, _08016410
	adds r2, r5, r0
	movs r0, #1
	strb r0, [r2, #0]
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r3, r5, r2
	ldrb r2, [r3, #0]
	movs r0, #0xf
	ands r0, r2
	strb r0, [r3, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r5, r2
	strb r1, [r0, #0]
	adds r2, #1
	adds r0, r5, r2
	strb r1, [r0, #0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r1, [r0, #0]
	subs r0, #0x20
	strh r1, [r0, #0]
	ldrh r0, [r5, #0]
	adds r0, #1
	adds r2, r5, #0
	adds r2, #0x76
	strh r0, [r2, #0]
	ldr r0, [sp, #4]
	ldrh r2, [r0, #0x32]
	adds r0, r5, #0
	adds r0, #0x78
	strh r2, [r0, #0]
	adds r3, r5, #0
	adds r3, #0x7a
	strh r1, [r3, #0]
	adds r0, #0x10
	strh r1, [r0, #0]
	str r1, [r5, #0x30]
	str r1, [r5, #0x38]
	str r1, [r5, #0x34]
	str r1, [r5, #0x3c]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r2, r5, r0
	movs r0, #2
	strb r0, [r2, #0]
	str r1, [r5, #0x4c]
	adds r0, r5, #0
	adds r0, #0x4a
	strh r1, [r0, #0]
	movs r7, #0
	mov r1, r8
	lsls r1, r1, #3
	mov sl, r1
	mov r8, sp
	adds r6, r5, #0
	adds r6, #0x94
	adds r4, r5, #0
	adds r4, #0x8c
_08016384:
	ldr r0, _08016414
	strh r0, [r4, #0]
	movs r2, #0
	mov r9, r2
	mov r0, r8
	strh r2, [r0, #0]
	mov r0, sp
	adds r1, r6, #0
	ldr r2, _08016418
	str r3, [sp, #8]
	bl sub_080B8578
	adds r6, #0x28
	adds r4, #0x28
	adds r7, #1
	ldr r3, [sp, #8]
	cmp r7, #7
	bls _08016384
	ldr r2, [sp, #4]
	add r2, sl
	ldrh r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080163C0
	ldrh r0, [r3, #0]
	movs r1, #2
	orrs r0, r1
	strh r0, [r3, #0]
_080163C0:
	ldrh r2, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _080163E4
	ldrh r0, [r3, #0]
	movs r1, #4
	orrs r0, r1
	strh r0, [r3, #0]
	ldr r1, _08016410
	adds r0, r5, r1
	mov r1, r9
	strb r1, [r0, #0]
	ldr r0, _0801640C
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1, #0]
_080163E4:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _080163F6
	ldrh r0, [r3, #0]
	movs r1, #8
	orrs r0, r1
	strh r0, [r3, #0]
_080163F6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08016408: .4byte gUnk_03003170
_0801640C: .4byte 0x000001FD
_08016410: .4byte 0x00000201
_08016414: .4byte 0x0000FFFF
_08016418: .4byte 0x01000018
	thumb_func_end sub_0801623C
