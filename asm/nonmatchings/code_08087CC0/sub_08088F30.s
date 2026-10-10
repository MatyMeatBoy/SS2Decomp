	thumb_func_start sub_08088F30
sub_08088F30: @ 0x08088F30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r5, _08088F44
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _08089008
	b _08088F4C
_08088F44: .4byte gUnk_03005CF4
_08088F48:
	bl sub_080003F0
_08088F4C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08088F48
	bl sub_080020F4
	adds r4, r0, #0
	ldr r0, _08088FB0
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r5, r7, r0
	bl sub_0800CCDC
	bl sub_080020F4
	ldr r3, _08088FB4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	adds r1, r3, #0
	adds r1, #0x8c
	adds r1, r2, r1
	ldrh r0, [r5, #0]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r1, r3, #0
	adds r1, #0x90
	adds r1, r2, r1
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r2, r2, r3
	adds r3, r2, #0
	adds r3, #0x94
	adds r2, #0x8c
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r3, #0]
	str r1, [r3, #4]
	movs r0, #0
	movs r1, #1
	bl sub_08009930
	b _08088FBC
	.2byte 0x0000
_08088FB0: .4byte gUnk_03005CF4
_08088FB4: .4byte gUnk_03003CE0
_08088FB8:
	bl sub_080003F0
_08088FBC:
	bl sub_0800BA6C
	cmp r0, #0
	beq _08088FB8
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r4, r0, r4
	ldr r0, _08088FFC
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r0, _08089000
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	bl sub_08015C38
	bl sub_08015EF8
	ldr r1, _08089004
	movs r0, #0
	bl sub_08057328
	b _080890D6
	.2byte 0x0000
_08088FFC: .4byte gUnk_03003D6C
_08089000: .4byte gUnk_03005CF4
_08089004: .4byte sub_0802C2A0
_08089008:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08089064
	adds r2, r1, r0
	movs r4, #1
	adds r6, r5, #0
	movs r0, #0
	mov r8, r0
_0808901E:
	ldr r0, [r6, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r7, r0
	lsls r1, r4, #3
	adds r5, r0, r1
	adds r0, r2, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #0]
	subs r0, r0, r1
	cmp r0, #0
	bge _08089042
	negs r0, r0
_08089042:
	cmp r0, #1
	bgt _080890D0
	adds r0, r2, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #2]
	cmp r0, r1
	bne _080890D0
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808906C
_08089064: .4byte gUnk_03003CE0
_08089068:
	bl sub_080003F0
_0808906C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089068
	bl sub_0800BB40
	ldrh r0, [r5, #4]
	cmp r0, #0
	bne _0808909C
	cmp r4, #2
	bne _0808908A
	ldr r1, [r6, #0]
	movs r0, #4
	strh r0, [r1, #0x36]
	b _080890A2
_0808908A:
	ldr r2, _08089098
	cmp r4, #3
	bne _080890A4
	ldr r1, [r6, #0]
	movs r0, #5
	strh r0, [r1, #0x36]
	b _080890A4
_08089098: .4byte gUnk_03005CF4
_0808909C:
	ldr r0, [r6, #0]
	mov r1, r8
	strh r1, [r0, #0x36]
_080890A2:
	ldr r2, _080890C4
_080890A4:
	ldr r1, [r2, #0]
	ldrh r0, [r5, #4]
	strh r0, [r1, #2]
	ldr r0, _080890C8
	adds r3, r1, r0
	ldr r2, _080890CC
	ldrh r0, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	mov r0, r8
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	movs r0, #1
	b _080891FA
_080890C4: .4byte gUnk_03005CF4
_080890C8: .4byte 0x0000071C
_080890CC: .4byte gUnk_084F0AC0
_080890D0:
	adds r4, #1
	cmp r4, #3
	bls _0808901E
_080890D6:
	bl sub_080020F4
	ldr r5, _08089100
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0x23
	ble _08089140
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08089108
_08089100: .4byte gUnk_03003CE0
_08089104:
	bl sub_080003F0
_08089108:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089104
	bl sub_0800BB40
	ldr r0, _08089134
	ldr r1, [r0, #0]
	movs r3, #0
	movs r0, #3
	strh r0, [r1, #0x36]
	movs r0, #6
	strh r0, [r1, #2]
	ldr r0, _08089138
	adds r2, r1, r0
	ldr r0, _0808913C
	ldr r0, [r0, #0x18]
	str r0, [r2, #0]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x1c]
	movs r0, #1
	b _080891FA
_08089134: .4byte gUnk_03005CF4
_08089138: .4byte 0x0000071C
_0808913C: .4byte gUnk_084F0AC0
_08089140:
	bl sub_080020F4
	muls r0, r4, r0
	adds r5, #0x8c
	adds r0, r0, r5
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #2
	bgt _0808919C
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08089166
_08089162:
	bl sub_080003F0
_08089166:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089162
	bl sub_0800BB40
	ldr r0, _08089190
	ldr r1, [r0, #0]
	movs r3, #0
	strh r3, [r1, #0x36]
	movs r0, #0xa
	strh r0, [r1, #2]
	ldr r0, _08089194
	adds r2, r1, r0
	ldr r0, _08089198
	ldr r0, [r0, #0x28]
	str r0, [r2, #0]
	strh r3, [r1, #0x10]
	movs r0, #1
	b _080891FA
	.2byte 0x0000
_08089190: .4byte gUnk_03005CF4
_08089194: .4byte 0x0000071C
_08089198: .4byte gUnk_084F0AC0
_0808919C:
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0x57
	ble _080891F8
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _080891C0
_080891BC:
	bl sub_080003F0
_080891C0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080891BC
	bl sub_0800BB40
	ldr r0, _080891EC
	ldr r1, [r0, #0]
	movs r2, #0
	strh r2, [r1, #0x36]
	movs r0, #0xd
	strh r0, [r1, #2]
	ldr r0, _080891F0
	adds r3, r1, r0
	ldr r0, _080891F4
	ldr r0, [r0, #0x34]
	str r0, [r3, #0]
	strh r2, [r1, #0x10]
	strh r2, [r1, #0x1c]
	movs r0, #1
	b _080891FA
	.2byte 0x0000
_080891EC: .4byte gUnk_03005CF4
_080891F0: .4byte 0x0000071C
_080891F4: .4byte gUnk_084F0AC0
_080891F8:
	movs r0, #0
_080891FA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08088F30
