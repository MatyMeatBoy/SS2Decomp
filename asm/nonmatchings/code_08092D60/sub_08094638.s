	thumb_func_start sub_08094638
sub_08094638: @ 0x08094638
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd0
	lsls r1, r1, #0x18
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	str r0, [sp, #0xa0]
	movs r0, #0
	str r0, [sp, #0x9c]
	movs r2, #0xff
	lsls r2, r2, #0x18
	adds r1, r1, r2
	asrs r1, r1, #0x18
	ldr r0, _080946FC
	adds r1, r1, r0
	movs r2, #1
	negs r2, r2
	mov r8, r2
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x18
	movs r2, #7
	mov r3, r8
	bl sub_08065158
	mov r0, sp
	adds r0, #0x3b
	add r1, sp, #0x9c
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	add r5, sp, #0x4c
	ldr r1, _08094700
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #8
	mov r3, r8
	bl sub_08065158
	add r0, sp, #0x70
	strb r4, [r0, #0]
	movs r2, #0xf0
	lsls r2, r2, #7
	str r2, [sp, #0x90]
	movs r0, #0xa0
	lsls r0, r0, #7
	str r0, [sp, #0x94]
	movs r2, #0
	add r1, sp, #0x80
	mov sl, r1
	mov r0, sp
	adds r0, #0x88
	str r0, [sp, #0xb8]
	mov r1, sp
	adds r1, #0x82
	str r1, [sp, #0xb0]
	adds r0, #2
	str r0, [sp, #0xc0]
	subs r1, #0x1a
	str r1, [sp, #0xac]
	subs r0, #6
	str r0, [sp, #0xb4]
	adds r1, #0x24
	str r1, [sp, #0xc8]
	subs r0, #0x50
	str r0, [sp, #0xcc]
	mov r5, sl
	ldr r4, [sp, #0xb8]
	movs r3, #0
_080946C6:
	lsls r0, r2, #1
	adds r1, r5, r0
	adds r0, r4, r0
	strh r3, [r0, #0]
	strh r3, [r1, #0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #2
	bls _080946C6
	ldr r1, [sp, #0x54]
	ldr r0, [r1, #8]
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	subs r0, #1
	mov r1, sl
	strh r0, [r1, #2]
	movs r0, #6
	bl sub_0801AB50
	ldr r2, [sp, #0x90]
	asrs r2, r2, #8
	str r2, [sp, #0xbc]
	ldr r0, [sp, #0x94]
	asrs r0, r0, #8
	str r0, [sp, #0xc4]
	b _08094708
_080946FC: .4byte 0x00050041
_08094700: .4byte 0x00050045
_08094704:
	bl sub_080003F0
_08094708:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08094704
	ldr r0, _08094884
	ldr r1, _08094888
	strh r1, [r0, #0x3a]
	movs r1, #1
	str r1, [sp, #0xa4]
	movs r0, #0xd0
	lsls r0, r0, #1
	bl sub_0805865C
	add r6, sp, #0x4c
	mov r9, sl
	movs r2, #0
	mov r8, r2
	ldr r0, [sp, #0xac]
	str r0, [sp, #0xa8]
_0809472E:
	ldr r1, [r6, #0xc]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x11
	movs r2, #1
	bl sub_08000AF0
	mov r0, r8
	str r0, [sp, #0]
	adds r0, r6, #0
	movs r1, #0
	ldr r2, [sp, #0xb0]
	ldr r3, [sp, #0xc0]
	bl sub_08065394
	ldr r1, [sp, #0xbc]
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	ldr r2, _0809488C
	ands r7, r2
	orrs r7, r4
	ldr r0, [sp, #0xc4]
	lsls r5, r0, #0x10
	ldr r1, _08094890
	ands r7, r1
	orrs r7, r5
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r2, r9
	ldrh r3, [r2, #2]
	movs r1, #1
	str r1, [sp, #0]
	mov r2, r8
	str r2, [sp, #4]
	movs r1, #2
	str r1, [sp, #8]
	ldr r1, [sp, #0xa8]
	str r1, [sp, #0xc]
	ldr r1, [r6, #8]
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x4c]
	str r1, [sp, #0x14]
	movs r1, #0x9e
	movs r2, #0
	bl sub_08007974
	adds r1, r0, #0
	asrs r0, r7, #0x10
	str r0, [r1, #0xc]
	ldr r1, [r6, #0xc]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x11
	movs r2, #1
	bl sub_08000AF0
	mov r0, r8
	str r0, [sp, #0]
	adds r0, r6, #0
	movs r1, #0
	ldr r2, [sp, #0xb4]
	ldr r3, [sp, #0xc8]
	bl sub_08065370
	str r0, [sp, #0x98]
	ldr r1, _0809488C
	ands r7, r1
	orrs r7, r4
	ldr r2, _08094890
	ands r7, r2
	orrs r7, r5
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r1, r9
	ldrh r3, [r1, #4]
	movs r2, #1
	str r2, [sp, #0]
	ldr r1, [sp, #0xa8]
	str r1, [sp, #4]
	ldr r1, [r6, #8]
	str r1, [sp, #8]
	ldr r1, [sp, #0x4c]
	str r1, [sp, #0xc]
	movs r1, #0x9f
	movs r2, #0
	bl sub_08007870
	adds r1, r0, #0
	asrs r0, r7, #0x10
	str r0, [r1, #0xc]
	ldr r1, [sp, #0x24]
	adds r1, #0xe0
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	movs r2, #1
	str r2, [sp, #0]
	add r0, sp, #0x18
	movs r1, #0
	mov r2, r9
	ldr r3, [sp, #0xb8]
	bl sub_08065370
	ldr r0, _0809488C
	ands r7, r0
	orrs r7, r4
	ldr r1, _08094890
	ands r7, r1
	orrs r7, r5
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	asrs r1, r7, #0x10
	mov r2, r9
	ldrh r3, [r2, #0]
	mov r2, r8
	str r2, [sp, #0]
	ldr r2, [sp, #0xcc]
	str r2, [sp, #4]
	ldr r2, [sp, #0x20]
	str r2, [sp, #8]
	ldr r2, [sp, #0x18]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
	ldr r0, [sp, #0x98]
	cmp r0, #0
	beq _08094864
	mov r2, r8
	ldr r1, [sp, #0xb8]
	strh r2, [r1, #4]
	strh r2, [r1, #2]
	mov r0, sl
	strh r2, [r0, #4]
	strh r2, [r0, #2]
	ldr r1, [sp, #0x54]
	ldr r0, [r1, #8]
	adds r1, r1, r0
	ldrh r0, [r1, #4]
	subs r0, #1
	mov r1, sl
	strh r0, [r1, #2]
	ldr r1, [sp, #0x9c]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x9c]
	ldr r2, [sp, #0xa0]
	cmp r2, r1
	bhs _08094864
	movs r0, #0
	str r0, [sp, #0xa4]
_08094864:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #1
	bne _08094874
	movs r1, #0
	str r1, [sp, #0xa4]
_08094874:
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	beq _0809487C
	b _0809472E
_0809487C:
	movs r0, #6
	bl sub_0801ABE8
	b _08094898
_08094884: .4byte gUnk_03001250
_08094888: .4byte 0x00003233
_0809488C: .4byte 0xFFFF0000
_08094890: .4byte 0x0000FFFF
_08094894:
	bl sub_080003F0
_08094898:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08094894
	movs r0, #3
	bl sub_080586D0
	bl sub_08094968
	bl sub_0800CC18
	bl sub_0800CC68
	bl sub_08098028
	ldr r1, _080948DC
	movs r0, #0
	strh r0, [r1, #0x3a]
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #8
	movs r2, #0
	bl sub_080009F8
	add sp, #0xd0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080948DC: .4byte gUnk_03001250
	thumb_func_end sub_08094638
