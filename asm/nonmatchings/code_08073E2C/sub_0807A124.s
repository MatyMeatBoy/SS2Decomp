	thumb_func_start sub_0807A124
sub_0807A124: @ 0x0807A124
	push {r4, r5, r6, r7, lr}
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	bl sub_08001494
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08001494
	adds r6, r0, #0
	ldr r0, _0807A1E8
	ldr r1, [r0, #0]
	ldr r4, _0807A1EC
	adds r0, r5, #0
	adds r2, r4, #0
	bl memcpy
	ldr r0, _0807A1F0
	ldr r1, [r0, #0]
	ldr r2, _0807A1F4
	adds r0, r6, #0
	bl memcpy
	movs r1, #0
	adds r2, r5, #0
	movs r3, #0
_0807A15A:
	ldrb r0, [r2, #0]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r3, #1
	adds r2, #1
	cmp r3, r4
	blo _0807A15A
	mvns r1, r1
	ldr r2, _0807A1EC
	adds r0, r5, r2
	strb r1, [r0, #0]
	ldr r4, _0807A1F4
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0
	ldr r7, _0807A1E8
_0807A17C:
	ldrb r0, [r2, #0]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r3, #1
	adds r2, #1
	cmp r3, r4
	blo _0807A17C
	mvns r1, r1
	ldr r2, _0807A1F4
	adds r0, r6, r2
	strb r1, [r0, #0]
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0xe]
	adds r1, r5, #0
	bl sub_08001B14
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0xe]
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_08001B14
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0807A1F8
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0xe]
	adds r1, r5, #0
	bl sub_08001B54
	adds r4, r0, #0
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0xe]
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	bl sub_08001B54
	orrs r4, r0
	cmp r4, #0
	bne _0807A1F8
	adds r0, r5, #0
	bl sub_08001538
	adds r0, r6, #0
	bl sub_08001538
	movs r0, #0
	b _0807A206
_0807A1E8: .4byte gUnk_030034E0
_0807A1EC: .4byte 0x00000CA4
_0807A1F0: .4byte gUnk_03004210
_0807A1F4: .4byte 0x0000051C
_0807A1F8:
	adds r0, r5, #0
	bl sub_08001538
	adds r0, r6, #0
	bl sub_08001538
	adds r0, r4, #0
_0807A206:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0807A124
