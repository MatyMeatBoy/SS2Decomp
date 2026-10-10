	thumb_func_start sub_0806603C
sub_0806603C: @ 0x0806603C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _0806609C
	ldr r0, [r0, #0]
	cmp r0, #0x31
	bhi _08066096
	ldr r1, [r7, #0]
	ldrb r0, [r7, #4]
	movs r2, #0x81
	negs r2, r2
	ands r0, r2
	lsls r0, r0, #3
	adds r0, r1, r0
	movs r3, #0xa
	ldrsh r0, [r0, r3]
	lsls r0, r0, #0xb
	str r0, [sp, #0]
	ldrb r0, [r7, #4]
	ands r0, r2
	lsls r0, r0, #3
	adds r0, r1, r0
	movs r3, #0xc
	ldrsh r0, [r0, r3]
	lsls r0, r0, #0xb
	str r0, [sp, #4]
	ldrb r0, [r7, #4]
	ands r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrh r1, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0806608E
	mov r0, sp
	bl sub_08017F7C
	cmp r0, #0
	beq _08066096
_0806608E:
	ldr r1, _080660A0
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _080660A4
_08066096:
	movs r0, #0
	b _080660D6
	.2byte 0x0000
_0806609C: .4byte gUnk_03006338
_080660A0: .4byte gUnk_03006220
_080660A4:
	adds r0, #1
	strb r0, [r1, #0]
	ldr r2, _080660E0
	ldr r5, _080660E4
	ldr r1, [r5, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r4, [r2, #0]
	adds r4, r4, r0
	movs r6, #1
	str r6, [r4, #4]
	movs r0, #0x86
	strb r0, [r4, #0]
	adds r1, r4, #0
	adds r1, #8
	ldr r2, _080660E8
	adds r0, r7, #0
	bl CpuSet
	strb r6, [r4, #1]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	movs r0, #1
_080660D6:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_080660E0: .4byte gUnk_03006300
_080660E4: .4byte gUnk_03006338
_080660E8: .4byte 0x04000002
	thumb_func_end sub_0806603C
