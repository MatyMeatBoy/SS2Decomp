	thumb_func_start sub_080076C4
sub_080076C4: @ 0x080076C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #0]
	str r1, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r4, [sp, #0x34]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, _080076FC
	ldr r7, [r0, #0]
	cmp r7, #0x80
	bhi _080076F6
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08007704
_080076F6:
	movs r0, #1
	negs r0, r0
	b _08007850
_080076FC: .4byte gUnk_030028B4
_08007700:
	movs r0, #0
	b _08007850
_08007704:
	ldr r2, _080077F0
	ldr r0, [r2, #0]
	mov sl, r0
	ldr r0, [r4, #4]
	adds r0, r0, r4
	mov ip, r0
	ldr r1, [r4, #8]
	adds r1, r4, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add ip, r0
	mov r1, ip
	ldr r0, [r1, #8]
	adds r6, r1, r0
	lsls r1, r7, #3
	ldr r0, _080077F4
	adds r5, r1, r0
	movs r0, #0
	mov r8, r0
	mov r9, r0
	mov r1, ip
	ldrh r1, [r1, #2]
	cmp r8, r1
	bhs _0800783E
_08007748:
	adds r7, r6, #0
	ldr r0, [r6, #0]
	ldr r1, [r6, #4]
	str r0, [r5, #0]
	str r1, [r5, #4]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r2, [sp, #4]
	adds r4, r4, r2
	ldr r0, [sp, #0]
	adds r3, r3, r0
	movs r1, #3
	ldr r0, [sp, #8]
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r5, #5]
	movs r1, #0xd
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x30]
	adds r0, r2, r0
	ldrb r2, [r0, #0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #5]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080077A2
	cmp r4, #0xa0
	bgt _080077A2
	movs r0, #0x40
	negs r0, r0
	cmp r4, r0
	bge _080077B4
_080077A2:
	ldrb r2, [r5, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	ands r1, r0
	strb r1, [r5, #1]
	movs r4, #0xa0
_080077B4:
	ldr r1, _080077F8
	adds r0, r1, #0
	ands r3, r0
	ldrh r1, [r5, #2]
	ldr r0, _080077FC
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r4, [r5, #0]
	mov r1, r8
	add r1, sl
	ldr r2, _08007800
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r5, #4]
	ldr r0, _08007804
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #4]
	ldrb r0, [r7, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _0800780C
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	ldr r1, _08007808
	adds r0, r0, r1
	b _08007816
	.2byte 0x0000
_080077F0: .4byte gUnk_030028B8
_080077F4: .4byte gUnk_03001330
_080077F8: .4byte 0x000001FF
_080077FC: .4byte 0xFFFFFE00
_08007800: .4byte 0x000003FF
_08007804: .4byte 0xFFFFFC00
_08007808: .4byte gUnk_0847842C
_0800780C:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	ldr r2, _08007860
	adds r0, r0, r2
_08007816:
	ldr r0, [r0, #0]
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r1, _08007864
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #0x80
	bls _0800782E
	b _08007700
_0800782E:
	movs r2, #1
	add r9, r2
	adds r5, #8
	adds r6, #8
	mov r0, ip
	ldrh r0, [r0, #2]
	cmp r9, r0
	blo _08007748
_0800783E:
	ldr r1, _08007868
	ldr r0, [r1, #0]
	add r0, r8
	str r0, [r1, #0]
	ldr r0, _0800786C
	mov r2, sl
	lsls r1, r2, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
_08007850:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08007860: .4byte gUnk_0847843C
_08007864: .4byte gUnk_030028B4
_08007868: .4byte gUnk_030028B8
_0800786C: .4byte gUnk_030028BC
	thumb_func_end sub_080076C4
