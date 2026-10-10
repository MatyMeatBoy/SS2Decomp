	thumb_func_start sub_08007974
sub_08007974: @ 0x08007974
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r7, r1, #0
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	ldr r4, [sp, #0x28]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r9, r1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov sl, r4
	ldr r4, _080079B0
	ldr r3, [r4, #0]
	cmp r3, #0x31
	bls _080079B4
	movs r0, #0
	b _08007A96
	.2byte 0x0000
_080079B0: .4byte gUnk_030028C8
_080079B4:
	movs r0, #0x2c
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, _08007A3C
	adds r5, r1, r0
	adds r0, r3, #1
	str r0, [r4, #0]
	mov r0, r8
	str r0, [r5, #8]
	str r7, [r5, #0xc]
	movs r3, #0
	mov r1, ip
	strh r1, [r5, #0x10]
	strh r2, [r5, #0x12]
	movs r0, #0x22
	adds r0, r0, r5
	mov ip, r0
	movs r4, #7
	adds r1, r6, #0
	ands r1, r4
	ldrb r2, [r0, #0]
	movs r0, #8
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0]
	ldr r0, [sp, #0x2c]
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x30]
	str r0, [r5, #0x14]
	ldr r0, [sp, #0x34]
	str r0, [r5, #0x18]
	str r3, [r5, #0]
	str r3, [r5, #4]
	movs r1, #1
	mov r0, r9
	ands r1, r0
	lsls r1, r1, #3
	mov r0, ip
	ldrb r2, [r0, #0]
	movs r0, #9
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, sl
	ands r1, r4
	lsls r1, r1, #4
	movs r2, #0x71
	negs r2, r2
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0]
	strh r3, [r5, #0x24]
	strh r3, [r5, #0x26]
	strh r3, [r5, #0x28]
	ldr r0, _08007A40
	ldr r1, [r0, #0]
	adds r3, r0, #0
	cmp r1, #0
	bne _08007A48
	ldr r0, _08007A44
	str r5, [r0, #0]
	str r5, [r3, #0]
	str r1, [r5, #0]
	str r1, [r5, #4]
	b _08007A94
_08007A3C: .4byte gUnk_030028D0
_08007A40: .4byte gUnk_030028C4
_08007A44: .4byte gUnk_030028C0
_08007A48:
	ldr r0, _08007A50
	ldr r1, [r0, #0]
	adds r2, r0, #0
	b _08007A62
_08007A50: .4byte gUnk_030028C0
_08007A54:
	str r5, [r0, #4]
	str r1, [r5, #4]
	ldr r0, [r1, #0]
	str r0, [r5, #0]
	str r5, [r1, #0]
	b _08007A94
_08007A60:
	ldr r1, [r1, #4]
_08007A62:
	cmp r1, #0
	beq _08007A88
	ldr r0, [r1, #0xc]
	cmp r0, r7
	bge _08007A60
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, r6
	blo _08007A60
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _08007A54
	str r5, [r2, #0]
	str r5, [r1, #0]
	str r1, [r5, #4]
	b _08007A94
_08007A88:
	ldr r0, [r3, #0]
	str r5, [r0, #4]
	str r0, [r5, #0]
	movs r0, #0
	str r0, [r5, #4]
	str r5, [r3, #0]
_08007A94:
	adds r0, r5, #0
_08007A96:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08007974
