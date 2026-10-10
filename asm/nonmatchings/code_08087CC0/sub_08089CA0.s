	thumb_func_start sub_08089CA0
sub_08089CA0: @ 0x08089CA0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r4, _08089CB4
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _08089D8C
	b _08089CBC
_08089CB4: .4byte gUnk_03005CF4
_08089CB8:
	bl sub_080003F0
_08089CBC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089CB8
	bl sub_080020F4
	adds r6, r0, #0
	ldr r0, _08089D34
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r4, r7, r0
	bl sub_0800CCDC
	bl sub_080020F4
	ldr r3, _08089D38
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r1, r3, #0
	adds r1, #0x8c
	adds r1, r2, r1
	ldrh r0, [r4, #0]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r1, r3, #0
	adds r1, #0x90
	adds r1, r2, r1
	ldrh r0, [r4, #2]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r2, r2, r3
	adds r4, r2, #0
	adds r4, #0x94
	adds r2, #0x8c
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r4, #0]
	str r1, [r4, #4]
	adds r2, r6, #0
	muls r2, r5, r2
	adds r3, #0x30
	adds r2, r2, r3
	ldr r0, [r2, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	str r0, [r2, #0]
	bl sub_08067D74
	movs r0, #0
	movs r1, #0xd
	bl sub_08009930
	b _08089D40
_08089D34: .4byte gUnk_03005CF4
_08089D38: .4byte gUnk_03003CE0
_08089D3C:
	bl sub_080003F0
_08089D40:
	bl sub_0800BA6C
	cmp r0, #0
	beq _08089D3C
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r6, #0
	muls r4, r0, r4
	ldr r0, _08089D80
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	bl sub_08015EF8
	ldr r1, _08089D84
	movs r0, #0
	bl sub_08057328
	ldr r0, _08089D88
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	bl sub_08015C38
	b _08089E4E
_08089D80: .4byte gUnk_03003D6C
_08089D84: .4byte sub_0802D568
_08089D88: .4byte gUnk_03005CF4
_08089D8C:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08089DE8
	adds r2, r1, r0
	movs r5, #1
	adds r6, r4, #0
	movs r0, #0
	mov r8, r0
_08089DA2:
	ldr r0, [r6, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r7, r0
	lsls r1, r5, #3
	adds r4, r0, r1
	adds r0, r2, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r4, #0]
	subs r0, r0, r1
	cmp r0, #0
	bge _08089DC6
	negs r0, r0
_08089DC6:
	cmp r0, #1
	bgt _08089E48
	adds r0, r2, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r4, #2]
	cmp r0, r1
	bne _08089E48
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08089DF0
_08089DE8: .4byte gUnk_03003CE0
_08089DEC:
	bl sub_080003F0
_08089DF0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089DEC
	bl sub_0800BB40
	cmp r5, #1
	bne _08089E06
	ldr r0, [r6, #0]
	strh r5, [r0, #0x36]
	b _08089E18
_08089E06:
	cmp r5, #2
	bne _08089E12
	ldr r1, [r6, #0]
	movs r0, #1
	strh r0, [r1, #0x36]
	b _08089E18
_08089E12:
	ldr r0, [r6, #0]
	mov r1, r8
	strh r1, [r0, #0x36]
_08089E18:
	ldr r1, _08089E3C
	ldr r1, [r1, #0]
	ldrh r0, [r4, #4]
	strh r0, [r1, #2]
	ldr r0, _08089E40
	adds r3, r1, r0
	ldr r2, _08089E44
	ldrh r0, [r4, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	mov r0, r8
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	movs r0, #1
	b _08089EBA
	.2byte 0x0000
_08089E3C: .4byte gUnk_03005CF4
_08089E40: .4byte 0x0000071C
_08089E44: .4byte gUnk_084F0AC0
_08089E48:
	adds r5, #1
	cmp r5, #3
	bls _08089DA2
_08089E4E:
	bl sub_080020F4
	ldr r1, _08089E78
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0x11
	ble _08089EB8
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08089E80
	.2byte 0x0000
_08089E78: .4byte gUnk_03003CE0
_08089E7C:
	bl sub_080003F0
_08089E80:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08089E7C
	bl sub_0800BB40
	ldr r0, _08089EAC
	ldr r1, [r0, #0]
	movs r3, #0
	movs r0, #2
	strh r0, [r1, #0x36]
	movs r0, #1
	strh r0, [r1, #2]
	ldr r0, _08089EB0
	adds r2, r1, r0
	ldr r0, _08089EB4
	ldr r0, [r0, #4]
	str r0, [r2, #0]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x1c]
	movs r0, #1
	b _08089EBA
_08089EAC: .4byte gUnk_03005CF4
_08089EB0: .4byte 0x0000071C
_08089EB4: .4byte gUnk_084F0AC0
_08089EB8:
	movs r0, #0
_08089EBA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08089CA0
