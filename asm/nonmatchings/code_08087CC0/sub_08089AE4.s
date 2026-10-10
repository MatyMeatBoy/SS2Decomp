	thumb_func_start sub_08089AE4
sub_08089AE4: @ 0x08089AE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r5, _08089AF8
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _08089BD4
	b _08089B00
_08089AF8: .4byte gUnk_03005CF4
_08089AFC:
	bl sub_080003F0
_08089B00:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089AFC
	bl sub_080020F4
	mov r8, r0
	ldr r0, _08089B7C
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r6, r7, r0
	bl sub_0800CCDC
	bl sub_080020F4
	ldr r4, _08089B80
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r1, r4, #0
	adds r1, #0x8c
	adds r1, r2, r1
	ldrh r0, [r6, #0]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #0x90
	adds r1, r2, r1
	ldrh r0, [r6, #2]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r2, r2, r4
	adds r3, r2, #0
	adds r3, #0x94
	adds r2, #0x8c
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r3, #0]
	str r1, [r3, #4]
	bl sub_0800CCDC
	mov r2, r8
	muls r2, r5, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	str r0, [r2, #0]
	bl sub_08067D74
	movs r0, #0
	movs r1, #6
	bl sub_08009930
	b _08089B88
_08089B7C: .4byte gUnk_03005CF4
_08089B80: .4byte gUnk_03003CE0
_08089B84:
	bl sub_080003F0
_08089B88:
	bl sub_0800BA6C
	cmp r0, #0
	beq _08089B84
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r4, r8
	muls r4, r0, r4
	ldr r0, _08089BC8
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r1, _08089BCC
	movs r0, #0
	bl sub_08057328
	bl sub_08015EF8
	ldr r0, _08089BD0
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	bl sub_08015C38
	b _08089C92
_08089BC8: .4byte gUnk_03003D6C
_08089BCC: .4byte sub_0802D2C8
_08089BD0: .4byte gUnk_03005CF4
_08089BD4:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08089C30
	adds r2, r1, r0
	movs r4, #1
	movs r0, #0
	mov r8, r0
_08089BE8:
	ldr r0, [r5, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r7, r0
	lsls r1, r4, #3
	adds r6, r0, r1
	adds r0, r2, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r6, #0]
	subs r0, r0, r1
	cmp r0, #0
	bge _08089C0C
	negs r0, r0
_08089C0C:
	cmp r0, #1
	bgt _08089C8C
	adds r0, r2, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r6, #2]
	cmp r0, r1
	bne _08089C8C
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08089C38
	.2byte 0x0000
_08089C30: .4byte gUnk_03003CE0
_08089C34:
	bl sub_080003F0
_08089C38:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089C34
	bl sub_0800BB40
	cmp r4, #1
	bne _08089C54
	ldr r0, [r5, #0]
	strh r4, [r0, #0x36]
	ldr r1, _08089C50
	b _08089C5E
_08089C50: .4byte gUnk_03005CF4
_08089C54:
	ldr r1, _08089C80
	cmp r4, #2
	bne _08089C5E
	ldr r0, [r5, #0]
	strh r4, [r0, #0x36]
_08089C5E:
	ldr r1, [r1, #0]
	ldrh r0, [r6, #4]
	strh r0, [r1, #2]
	ldr r0, _08089C84
	adds r3, r1, r0
	ldr r2, _08089C88
	ldrh r0, [r6, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	mov r0, r8
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	movs r0, #1
	b _08089C94
	.2byte 0x0000
_08089C80: .4byte gUnk_03005CF4
_08089C84: .4byte 0x0000071C
_08089C88: .4byte gUnk_084F0AC0
_08089C8C:
	adds r4, #1
	cmp r4, #3
	bls _08089BE8
_08089C92:
	movs r0, #0
_08089C94:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08089AE4
