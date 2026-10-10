	thumb_func_start sub_080898D4
sub_080898D4: @ 0x080898D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r5, _080898E8
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _080899AC
	b _080898F0
_080898E8: .4byte gUnk_03005CF4
_080898EC:
	bl sub_080003F0
_080898F0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080898EC
	bl sub_080020F4
	adds r4, r0, #0
	ldr r0, _08089954
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	mov r1, r8
	adds r5, r1, r0
	bl sub_0800CCDC
	bl sub_080020F4
	ldr r3, _08089958
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
	movs r1, #0xc
	bl sub_08009930
	b _08089960
_08089954: .4byte gUnk_03005CF4
_08089958: .4byte gUnk_03003CE0
_0808995C:
	bl sub_080003F0
_08089960:
	bl sub_0800BA6C
	cmp r0, #0
	beq _0808995C
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r4, r0, r4
	ldr r0, _080899A0
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r0, _080899A4
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	bl sub_08015C38
	ldr r1, _080899A8
	movs r0, #0
	bl sub_08057328
	bl sub_08015EF8
	b _08089A6E
	.2byte 0x0000
_080899A0: .4byte gUnk_03003D6C
_080899A4: .4byte gUnk_03005CF4
_080899A8: .4byte sub_0802D200
_080899AC:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08089A08
	adds r2, r1, r0
	movs r4, #1
	adds r6, r5, #0
	movs r7, #0
_080899C0:
	ldr r0, [r6, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	add r0, r8
	lsls r1, r4, #3
	adds r5, r0, r1
	adds r0, r2, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #0]
	subs r0, r0, r1
	cmp r0, #0
	bge _080899E4
	negs r0, r0
_080899E4:
	cmp r0, #1
	bgt _08089A68
	adds r0, r2, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #2]
	cmp r0, r1
	bne _08089A68
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08089A10
	.2byte 0x0000
_08089A08: .4byte gUnk_03003CE0
_08089A0C:
	bl sub_080003F0
_08089A10:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089A0C
	bl sub_0800BB40
	ldrh r0, [r5, #4]
	cmp r0, #7
	bne _08089A38
	cmp r4, #2
	beq _08089A38
	ldr r2, _08089A34
	cmp r4, #3
	bne _08089A3E
	ldr r1, [r6, #0]
	movs r0, #1
	strh r0, [r1, #0x36]
	b _08089A3E
_08089A34: .4byte gUnk_03005CF4
_08089A38:
	ldr r0, [r6, #0]
	strh r7, [r0, #0x36]
	ldr r2, _08089A5C
_08089A3E:
	ldr r1, [r2, #0]
	ldrh r0, [r5, #4]
	strh r0, [r1, #2]
	ldr r0, _08089A60
	adds r3, r1, r0
	ldr r2, _08089A64
	ldrh r0, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	strh r7, [r1, #0x10]
	strh r7, [r1, #0x1c]
	movs r0, #1
	b _08089ADA
_08089A5C: .4byte gUnk_03005CF4
_08089A60: .4byte 0x0000071C
_08089A64: .4byte gUnk_084F0AC0
_08089A68:
	adds r4, #1
	cmp r4, #3
	bls _080899C0
_08089A6E:
	bl sub_080020F4
	ldr r1, _08089A98
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0x11
	ble _08089AD8
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08089AA0
	.2byte 0x0000
_08089A98: .4byte gUnk_03003CE0
_08089A9C:
	bl sub_080003F0
_08089AA0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089A9C
	bl sub_0800BB40
	ldr r0, _08089ACC
	ldr r1, [r0, #0]
	movs r2, #0
	movs r0, #1
	strh r0, [r1, #0x36]
	strh r2, [r1, #2]
	ldr r0, _08089AD0
	adds r3, r1, r0
	ldr r0, _08089AD4
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	strh r2, [r1, #0x10]
	strh r2, [r1, #0x1c]
	movs r0, #1
	b _08089ADA
	.2byte 0x0000
_08089ACC: .4byte gUnk_03005CF4
_08089AD0: .4byte 0x0000071C
_08089AD4: .4byte gUnk_084F0AC0
_08089AD8:
	movs r0, #0
_08089ADA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080898D4
