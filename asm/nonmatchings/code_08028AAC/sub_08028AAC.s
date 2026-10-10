	thumb_func_start sub_08028AAC
sub_08028AAC: @ 0x08028AAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r4, r0
	bls _08028B68
	ldr r0, _08028B48
	ldr r0, [r0, #0]
	ldr r2, _08028B4C
	adds r1, r0, r2
	movs r2, #0
_08028ADA:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08028B54
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08028ADA
	bl sub_080003F0
	movs r4, #0
_08028AEE:
	cmp r4, #0
	bne _08028AF4
	b _08028D86
_08028AF4:
	cmp r5, #0
	beq _08028B58
	movs r3, #0
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_080B9394
	mov r9, r0
	lsls r0, r6, #8
	str r0, [r4, #0x10]
	mov r1, sl
	lsls r0, r1, #8
	str r0, [r4, #0x14]
	ldr r5, [r4, #8]
	ldr r6, [r4, #0xc]
	movs r2, #8
	adds r2, r2, r4
	mov sl, r2
	adds r7, r4, #0
	adds r7, #0xc
_08028B20:
	ldr r2, [r4, #0x10]
	mov r0, sl
	adds r1, r5, #0
	mov r3, r8
	bl sub_080659F4
	ldr r2, [r4, #0x14]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r3, r8
	bl sub_080659F4
	add r8, r9
	bl sub_080003F0
	ldr r0, _08028B50
	cmp r8, r0
	bls _08028B20
	b _08028D86
	.2byte 0x0000
_08028B48: .4byte gUnk_03005CF4
_08028B4C: .4byte 0x000007A4
_08028B50: .4byte 0x000003FF
_08028B54:
	adds r4, r1, #0
	b _08028AEE
_08028B58:
	lsls r0, r6, #8
	str r0, [r4, #8]
	mov r3, sl
	lsls r0, r3, #8
	str r0, [r4, #0xc]
	bl sub_080003F0
	b _08028D86
_08028B68:
	cmp r4, #5
	bls _08028C3A
	ldr r0, _08028BF8
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r2, _08028BFC
	adds r1, r1, r2
	ldr r0, [r0, #0]
	adds r7, r0, r1
	cmp r5, #0
	beq _08028C04
	movs r3, #0
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_080B9394
	mov r9, r0
	lsls r6, r6, #8
	str r6, [sp, #4]
	mov r0, sl
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r5, [r7, #0]
	ldr r6, [r7, #4]
	adds r1, r7, #4
	mov sl, r1
_08028BA2:
	ldr r0, [r7, #0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldr r1, [r7, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldrh r2, [r7, #0x1a]
	ldrh r3, [r7, #0x1c]
	movs r4, #0
	str r4, [sp, #0]
	bl sub_0800AEF4
	adds r0, r7, #0
	adds r1, r5, #0
	ldr r2, [sp, #4]
	mov r3, r8
	bl sub_080659F4
	mov r0, sl
	adds r1, r6, #0
	ldr r2, [sp, #8]
	mov r3, r8
	bl sub_080659F4
	ldr r0, [r7, #0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldr r1, [r7, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldrh r2, [r7, #0x1a]
	ldrh r3, [r7, #0x1c]
	movs r4, #1
	str r4, [sp, #0]
	bl sub_0800AEF4
	add r8, r9
	bl sub_080003F0
	ldr r0, _08028C00
	cmp r8, r0
	bls _08028BA2
	b _08028D86
_08028BF8: .4byte gUnk_03005CF4
_08028BFC: .4byte 0x000004B4
_08028C00: .4byte 0x000003FF
_08028C04:
	ldr r0, [r7, #0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldr r1, [r7, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldrh r2, [r7, #0x1a]
	ldrh r3, [r7, #0x1c]
	str r5, [sp, #0]
	bl sub_0800AEF4
	lsls r0, r6, #8
	str r0, [r7, #0]
	mov r2, sl
	lsls r1, r2, #8
	str r1, [r7, #4]
	lsrs r0, r0, #8
	lsrs r1, r1, #8
	ldrh r2, [r7, #0x1a]
	ldrh r3, [r7, #0x1c]
	movs r4, #1
	str r4, [sp, #0]
	bl sub_0800AEF4
	bl sub_080003F0
	b _08028D86
_08028C3A:
	cmp r4, #0
	beq _08028CD0
	subs r4, #1
	cmp r4, #4
	bls _08028C46
	b _08028D86
_08028C46:
	ldr r0, _08028CB0
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	subs r1, r1, r4
	lsls r1, r1, #5
	ldr r0, [r0, #0]
	adds r4, r0, r1
	cmp r5, #0
	beq _08028CB8
	movs r3, #0
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_080B9394
	mov r9, r0
	lsls r0, r6, #8
	str r0, [r4, #0x24]
	mov r1, sl
	lsls r0, r1, #8
	str r0, [r4, #0x28]
	ldr r5, [r4, #0x14]
	ldr r6, [r4, #0x18]
	movs r2, #0x14
	adds r2, r2, r4
	mov sl, r2
	adds r7, r4, #0
	adds r7, #0x18
_08028C82:
	ldr r2, [r4, #0x24]
	mov r0, sl
	adds r1, r5, #0
	mov r3, r8
	bl sub_080659F4
	ldr r2, [r4, #0x28]
	adds r0, r7, #0
	adds r1, r6, #0
	mov r3, r8
	bl sub_080659F4
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	add r8, r9
	bl sub_080003F0
	ldr r0, _08028CB4
	cmp r8, r0
	bls _08028C82
	b _08028D86
_08028CB0: .4byte gUnk_030056F4
_08028CB4: .4byte 0x000003FF
_08028CB8:
	lsls r0, r6, #8
	str r0, [r4, #0x14]
	mov r3, sl
	lsls r0, r3, #8
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	bl sub_080003F0
	b _08028D86
_08028CD0:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08028D5C
	adds r4, r1, r0
	cmp r5, #0
	beq _08028D64
	movs r0, #0
	mov r8, r0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r5, #0
	bl sub_080B9394
	mov r9, r0
	adds r2, r4, #0
	adds r2, #0x9c
	lsls r0, r6, #8
	str r0, [r2, #0]
	adds r1, r4, #0
	adds r1, #0xa0
	mov r3, sl
	lsls r0, r3, #8
	str r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r5, [r0, #0]
	ldr r6, [r0, #4]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	str r0, [sp, #0xc]
	movs r0, #0x90
	adds r0, r0, r4
	mov sl, r0
	adds r7, r4, #0
	adds r7, #0x94
	ldr r4, [sp, #0xc]
_08028D1E:
	ldr r1, [sp, #0x10]
	ldr r2, [r1, #0]
	adds r0, r4, #0
	adds r1, r5, #0
	mov r3, r8
	bl sub_080659F4
	ldr r3, [sp, #0x14]
	ldr r2, [r3, #0]
	mov r0, sl
	adds r1, r6, #0
	mov r3, r8
	bl sub_080659F4
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	str r0, [r7, #0]
	str r1, [r7, #4]
	add r8, r9
	bl sub_080003F0
	ldr r0, _08028D60
	cmp r8, r0
	bls _08028D1E
	ldr r2, [sp, #0xc]
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r7, #0]
	str r1, [r7, #4]
	b _08028D86
	.2byte 0x0000
_08028D5C: .4byte gUnk_03003CE0
_08028D60: .4byte 0x000003FF
_08028D64:
	adds r3, r4, #0
	adds r3, #0x8c
	lsls r0, r6, #8
	str r0, [r3, #0]
	adds r1, r4, #0
	adds r1, #0x90
	mov r2, sl
	lsls r0, r2, #8
	str r0, [r1, #0]
	adds r2, r4, #0
	adds r2, #0x94
	ldr r0, [r3, #0]
	ldr r1, [r3, #4]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_080003F0
_08028D86:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08028AAC
