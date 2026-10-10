	thumb_func_start sub_08088C24
sub_08088C24: @ 0x08088C24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r6, _08088C3C
	ldr r0, [r6, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	beq _08088C3A
	b _08088DCC
_08088C3A:
	b _08088C44
_08088C3C: .4byte gUnk_03005CF4
_08088C40:
	bl sub_080003F0
_08088C44:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08088C40
	ldr r0, _08088CD4
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r4, r4, r0
	bl sub_080020F4
	adds r7, r0, #0
	bl sub_0800CF10
	adds r6, r0, #0
	cmp r6, #0
	bne _08088CE0
	bl sub_080020F4
	ldr r3, _08088CD8
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
	adds r0, r7, #0
	muls r0, r5, r0
	adds r4, r0, r3
	strh r6, [r4, #0x20]
	adds r3, #0x30
	adds r2, r0, r3
	ldr r1, [r2, #0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08088D34
	ldr r0, _08088CDC
	ands r1, r0
	str r1, [r2, #0]
	bl sub_0802996C
	adds r1, r4, #0
	adds r1, #0x68
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_0806617C
	b _08088D34
	.2byte 0x0000
_08088CD4: .4byte gUnk_03005CF4
_08088CD8: .4byte gUnk_03003CE0
_08088CDC: .4byte 0xFFFFDFFF
_08088CE0:
	movs r6, #0
	str r6, [sp, #0]
	str r6, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	ldr r5, _08088D5C
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r7, #0
	muls r4, r0, r4
	adds r2, r5, #0
	adds r2, #0x8c
	adds r2, r4, r2
	lsls r1, r7, #1
	adds r1, r1, r7
	lsls r1, r1, #0xb
	movs r0, #0xb8
	lsls r0, r0, #8
	subs r0, r0, r1
	str r0, [r2, #0]
	adds r0, r5, #0
	adds r0, #0x90
	adds r0, r4, r0
	movs r1, #0xa0
	lsls r1, r1, #9
	str r1, [r0, #0]
	adds r0, r7, #0
	movs r1, #1
	bl sub_080657C4
	bl sub_0800CEFC
	adds r4, r4, r5
	movs r0, #0xc
	strh r0, [r4, #0x20]
	movs r0, #2
	strh r0, [r4, #0x22]
	strh r6, [r4, #0x1c]
_08088D34:
	ldr r1, _08088D5C
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r7, r0
	adds r0, r0, r1
	adds r2, r0, #0
	adds r2, #0x94
	adds r0, #0x8c
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_0800CCDC
	movs r0, #0
	movs r1, #0
	bl sub_08009930
	b _08088D64
	.2byte 0x0000
_08088D5C: .4byte gUnk_03003CE0
_08088D60:
	bl sub_080003F0
_08088D64:
	bl sub_0800BA6C
	cmp r0, #0
	beq _08088D60
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r6, r7, #0
	muls r6, r0, r6
	ldr r5, _08088DC0
	adds r4, r6, r5
	adds r0, r4, #4
	mov r8, r0
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl sub_0800AD04
	ldr r0, _08088DC4
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	subs r5, #0x5c
	adds r6, r6, r5
	ldr r0, [r6, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	str r0, [r6, #0]
	bl sub_08067D74
	movs r0, #0xa
	bl sub_08057624
	ldr r1, _08088DC8
	movs r0, #0
	bl sub_08057328
	bl sub_08015EF8
	bl sub_08015C38
	b _08088F20
	.2byte 0x0000
_08088DC0: .4byte gUnk_03003D6C
_08088DC4: .4byte gUnk_03005CF4
_08088DC8: .4byte sub_0802B8A4
_08088DCC:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08088B6C
	adds r7, r0, #0
	cmp r7, #0
	beq _08088DDE
	movs r0, #1
	b _08088F22
_08088DDE:
	bl sub_080020F4
	ldr r5, _08088E40
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0x39
	ble _08088E48
	bl sub_080020F4
	adds r2, r0, #0
	muls r2, r4, r2
	adds r0, r5, #0
	adds r0, #0x30
	adds r2, r2, r0
	ldr r0, [r2, #0]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_08067D74
	bl sub_0800BB40
	movs r0, #2
	bl sub_080586D0
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800D0A8
	ldr r0, _08088E44
	bl sub_080003F4
	ldr r0, [r6, #0]
	ldrh r0, [r0, #0]
	bl sub_080570DC
	ldr r0, [r6, #0]
	adds r0, #0x58
	strh r7, [r0, #0]
	movs r0, #1
	b _08088F22
	.2byte 0x0000
_08088E40: .4byte gUnk_03003CE0
_08088E44: .4byte 0x00000BBA
_08088E48:
	bl sub_080020F4
	muls r0, r4, r0
	adds r1, r0, r5
	adds r0, r1, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	subs r0, #6
	cmp r0, #0
	bge _08088E60
	negs r0, r0
_08088E60:
	cmp r0, #1
	bgt _08088EB4
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #9
	bne _08088EB4
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08088E84
_08088E80:
	bl sub_080003F0
_08088E84:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08088E80
	bl sub_0800BB40
	ldr r0, _08088EA8
	ldr r1, [r0, #0]
	movs r3, #0
	movs r0, #3
	strh r0, [r1, #0x36]
	movs r0, #0xa
	strh r0, [r1, #2]
	ldr r0, _08088EAC
	adds r2, r1, r0
	ldr r0, _08088EB0
	ldr r0, [r0, #0x28]
	b _08088F0A
_08088EA8: .4byte gUnk_03005CF4
_08088EAC: .4byte 0x0000071C
_08088EB0: .4byte gUnk_084F0AC0
_08088EB4:
	adds r0, r1, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	subs r0, #0x35
	cmp r0, #0
	bge _08088EC4
	negs r0, r0
_08088EC4:
	cmp r0, #1
	bgt _08088F20
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #9
	bne _08088F20
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _08088EE8
_08088EE4:
	bl sub_080003F0
_08088EE8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08088EE4
	bl sub_0800BB40
	ldr r0, _08088F14
	ldr r1, [r0, #0]
	movs r3, #0
	movs r0, #3
	strh r0, [r1, #0x36]
	movs r0, #0xd
	strh r0, [r1, #2]
	ldr r0, _08088F18
	adds r2, r1, r0
	ldr r0, _08088F1C
	ldr r0, [r0, #0x34]
_08088F0A:
	str r0, [r2, #0]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x1c]
	movs r0, #1
	b _08088F22
_08088F14: .4byte gUnk_03005CF4
_08088F18: .4byte 0x0000071C
_08088F1C: .4byte gUnk_084F0AC0
_08088F20:
	movs r0, #0
_08088F22:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08088C24
