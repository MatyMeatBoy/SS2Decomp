	thumb_func_start sub_0801681C
sub_0801681C: @ 0x0801681C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r0, _08016880
	ldr r0, [r0, #0]
	lsls r3, r6, #3
	adds r3, r3, r0
	ldr r4, [r3, #0]
	ldrb r5, [r3, #4]
	movs r0, #0x81
	negs r0, r0
	ands r5, r0
	mov r2, sp
	lsls r1, r5, #3
	adds r1, r4, r1
	ldrh r0, [r1, #0xa]
	strh r0, [r2, #0]
	ldrh r0, [r1, #0xc]
	strh r0, [r2, #2]
	str r4, [sp, #0x14]
	ldrh r0, [r1, #8]
	strh r0, [r2, #4]
	ldrh r0, [r1, #0xe]
	strh r0, [r2, #8]
	mov r1, sp
	ldrb r0, [r3, #4]
	strh r0, [r1, #0x10]
	ldrb r0, [r3, #5]
	strh r0, [r1, #0x12]
	ldrh r0, [r4, #0x32]
	strh r0, [r1, #0xc]
	ldrh r0, [r4, #0x34]
	strh r0, [r1, #0xe]
	ldrh r0, [r3, #6]
	adds r0, r0, r5
	strh r0, [r1, #6]
	ldrh r0, [r4, #0x30]
	strh r0, [r1, #0xa]
	mov r0, sp
	ldrh r0, [r0, #0]
	lsls r0, r0, #0xb
	str r0, [sp, #0x18]
	mov r0, sp
	ldrh r1, [r0, #2]
	lsls r1, r1, #0xb
	add r0, sp, #0x18
	str r1, [r0, #4]
	adds r4, r0, #0
	b _080168B0
_08016880: .4byte gUnk_030042E8
_08016884:
	bl sub_080003F0
	bl sub_0800CB78
	cmp r0, #0
	bne _080168DA
	bl sub_08056E90
	cmp r0, #0
	bne _080168DA
	ldr r0, _080168F4
	ldr r1, [r0, #0]
	lsls r0, r6, #3
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	cmp r0, #0xff
	beq _080168DA
	mov r0, sp
	bl sub_0801641C
	cmp r0, #0
	bne _080168DA
_080168B0:
	mov r0, sp
	ldrh r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _08016884
	adds r0, r4, #0
	bl sub_08017F7C
	cmp r0, #0
	bne _08016884
	mov r0, sp
	ldrb r0, [r0, #0x12]
	mov r1, sp
	ldrb r2, [r1, #0x10]
	movs r1, #0x7f
	ands r1, r2
	movs r2, #1
	bl sub_080571A4
_080168DA:
	bl sub_080003F0
	ldr r2, _080168F8
	movs r1, #1
	lsls r1, r6
	ldrh r0, [r2, #0]
	bics r0, r1
	strh r0, [r2, #0]
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_080168F4: .4byte gUnk_030042E8
_080168F8: .4byte gUnk_03005724
	thumb_func_end sub_0801681C
