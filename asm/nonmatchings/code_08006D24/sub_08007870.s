	thumb_func_start sub_08007870
sub_08007870: @ 0x08007870
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r6, r1, #0
	ldr r0, [sp, #0x18]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, _08007898
	ldr r3, [r2, #0]
	cmp r3, #0x31
	bls _0800789C
	movs r0, #0
	b _0800796A
	.2byte 0x0000
_08007898: .4byte gUnk_030028C8
_0800789C:
	movs r0, #0x2c
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, _08007910
	adds r4, r1, r0
	adds r0, r3, #1
	str r0, [r2, #0]
	mov r0, r8
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r3, #0
	mov r1, ip
	strh r1, [r4, #0x10]
	strh r7, [r4, #0x12]
	movs r0, #0x22
	adds r0, r0, r4
	mov ip, r0
	movs r1, #7
	ands r1, r5
	ldrb r2, [r0, #0]
	movs r0, #8
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	mov r1, ip
	strb r0, [r1, #0]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x18]
	str r3, [r4, #0]
	str r3, [r4, #4]
	ldrb r1, [r1, #0]
	movs r0, #9
	negs r0, r0
	ands r0, r1
	movs r1, #0x71
	negs r1, r1
	ands r0, r1
	mov r1, ip
	strb r0, [r1, #0]
	strh r3, [r4, #0x24]
	strh r3, [r4, #0x26]
	strh r3, [r4, #0x28]
	ldr r0, _08007914
	ldr r1, [r0, #0]
	adds r3, r0, #0
	cmp r1, #0
	bne _0800791C
	ldr r0, _08007918
	str r4, [r0, #0]
	str r4, [r3, #0]
	str r1, [r4, #0]
	str r1, [r4, #4]
	b _08007968
	.2byte 0x0000
_08007910: .4byte gUnk_030028D0
_08007914: .4byte gUnk_030028C4
_08007918: .4byte gUnk_030028C0
_0800791C:
	ldr r0, _08007924
	ldr r1, [r0, #0]
	adds r2, r0, #0
	b _08007936
_08007924: .4byte gUnk_030028C0
_08007928:
	str r4, [r0, #4]
	str r1, [r4, #4]
	ldr r0, [r1, #0]
	str r0, [r4, #0]
	str r4, [r1, #0]
	b _08007968
_08007934:
	ldr r1, [r1, #4]
_08007936:
	cmp r1, #0
	beq _0800795C
	ldr r0, [r1, #0xc]
	cmp r0, r6
	bge _08007934
	adds r0, r1, #0
	adds r0, #0x22
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	cmp r0, r5
	blo _08007934
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _08007928
	str r4, [r2, #0]
	str r4, [r1, #0]
	str r1, [r4, #4]
	b _08007968
_0800795C:
	ldr r0, [r3, #0]
	str r4, [r0, #4]
	str r0, [r4, #0]
	movs r0, #0
	str r0, [r4, #4]
	str r4, [r3, #0]
_08007968:
	adds r0, r4, #0
_0800796A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08007870
