	thumb_func_start sub_08028D98
sub_08028D98: @ 0x08028D98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r4, r0
	bls _08028E6C
	ldr r0, _08028E40
	ldr r0, [r0, #0]
	ldr r2, _08028E44
	adds r1, r0, r2
	movs r2, #0
_08028DC6:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08028E4C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08028DC6
	bl sub_080003F0
	movs r4, #0
_08028DDA:
	cmp r4, #0
	bne _08028DE0
	b _080290D4
_08028DE0:
	cmp r6, #0
	beq _08028E50
	movs r0, #0
	mov r9, r0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r6, #0
	bl sub_080B9394
	mov sl, r0
	lsls r1, r7, #0x10
	asrs r1, r1, #8
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #0x10]
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r1, r1, #8
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r6, [r4, #8]
	ldr r7, [r4, #0xc]
	movs r0, #8
	adds r0, r0, r4
	mov r8, r0
	adds r5, r4, #0
	adds r5, #0xc
_08028E18:
	ldr r2, [r4, #0x10]
	mov r0, r8
	adds r1, r6, #0
	mov r3, r9
	bl sub_080659F4
	ldr r2, [r4, #0x14]
	adds r0, r5, #0
	adds r1, r7, #0
	mov r3, r9
	bl sub_080659F4
	add r9, sl
	bl sub_080003F0
	ldr r0, _08028E48
	cmp r9, r0
	bls _08028E18
	b _080290D4
	.2byte 0x0000
_08028E40: .4byte gUnk_03005CF4
_08028E44: .4byte 0x000007A4
_08028E48: .4byte 0x000003FF
_08028E4C:
	adds r4, r1, #0
	b _08028DDA
_08028E50:
	lsls r1, r7, #0x10
	asrs r1, r1, #8
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r1, r1, #8
	ldr r0, [r4, #0xc]
	adds r0, r0, r1
	str r0, [r4, #0xc]
	bl sub_080003F0
	b _080290D4
_08028E6C:
	cmp r4, #5
	bls _08028F5A
	ldr r0, _08028F08
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r2, _08028F0C
	adds r1, r1, r2
	ldr r0, [r0, #0]
	adds r5, r0, r1
	cmp r6, #0
	beq _08028F14
	movs r0, #0
	mov r9, r0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r6, #0
	bl sub_080B9394
	mov sl, r0
	lsls r0, r7, #0x10
	asrs r0, r0, #8
	ldr r1, [r5, #0]
	adds r0, r1, r0
	str r0, [sp, #8]
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #8
	ldr r1, [r5, #4]
	adds r0, r1, r0
	str r0, [sp, #0xc]
	ldr r6, [r5, #0]
	ldr r7, [r5, #4]
	adds r2, r5, #4
	mov r8, r2
_08028EB2:
	ldr r0, [r5, #0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldr r1, [r5, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1a]
	ldrh r3, [r5, #0x1c]
	movs r4, #0
	str r4, [sp, #0]
	bl sub_0800AEF4
	adds r0, r5, #0
	adds r1, r6, #0
	ldr r2, [sp, #8]
	mov r3, r9
	bl sub_080659F4
	mov r0, r8
	adds r1, r7, #0
	ldr r2, [sp, #0xc]
	mov r3, r9
	bl sub_080659F4
	ldr r0, [r5, #0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldr r1, [r5, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1a]
	ldrh r3, [r5, #0x1c]
	movs r4, #1
	str r4, [sp, #0]
	bl sub_0800AEF4
	add r9, sl
	bl sub_080003F0
	ldr r0, _08028F10
	cmp r9, r0
	bls _08028EB2
	b _080290D4
_08028F08: .4byte gUnk_03005CF4
_08028F0C: .4byte 0x000004B4
_08028F10: .4byte 0x000003FF
_08028F14:
	ldr r0, [r5, #0]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	ldr r1, [r5, #4]
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1a]
	ldrh r3, [r5, #0x1c]
	str r6, [sp, #0]
	bl sub_0800AEF4
	lsls r1, r7, #0x10
	asrs r1, r1, #8
	ldr r0, [r5, #0]
	adds r0, r0, r1
	str r0, [r5, #0]
	ldr r1, [sp, #4]
	lsls r2, r1, #0x10
	asrs r2, r2, #8
	ldr r1, [r5, #4]
	adds r1, r1, r2
	str r1, [r5, #4]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1a]
	ldrh r3, [r5, #0x1c]
	movs r4, #1
	str r4, [sp, #0]
	bl sub_0800AEF4
	bl sub_080003F0
	b _080290D4
_08028F5A:
	cmp r4, #0
	beq _08029008
	subs r4, #1
	cmp r4, #4
	bls _08028F66
	b _080290D4
_08028F66:
	ldr r0, _08028FDC
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #3
	subs r1, r1, r4
	lsls r1, r1, #5
	ldr r0, [r0, #0]
	adds r4, r0, r1
	cmp r6, #0
	beq _08028FE4
	movs r2, #0
	mov r9, r2
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r6, #0
	bl sub_080B9394
	mov sl, r0
	lsls r1, r7, #0x10
	asrs r1, r1, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x24]
	ldr r0, [sp, #4]
	lsls r1, r0, #0x10
	asrs r1, r1, #8
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x28]
	ldr r6, [r4, #0x14]
	ldr r7, [r4, #0x18]
	movs r1, #0x14
	adds r1, r1, r4
	mov r8, r1
	adds r5, r4, #0
	adds r5, #0x18
_08028FAE:
	ldr r2, [r4, #0x24]
	mov r0, r8
	adds r1, r6, #0
	mov r3, r9
	bl sub_080659F4
	ldr r2, [r4, #0x28]
	adds r0, r5, #0
	adds r1, r7, #0
	mov r3, r9
	bl sub_080659F4
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	add r9, sl
	bl sub_080003F0
	ldr r0, _08028FE0
	cmp r9, r0
	bls _08028FAE
	b _080290D4
_08028FDC: .4byte gUnk_030056F4
_08028FE0: .4byte 0x000003FF
_08028FE4:
	lsls r1, r7, #0x10
	asrs r1, r1, #8
	ldr r0, [r4, #0x14]
	adds r0, r0, r1
	str r0, [r4, #0x14]
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	asrs r1, r1, #8
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r1, [r4, #0x20]
	bl sub_080003F0
	b _080290D4
_08029008:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080290A0
	adds r1, r1, r0
	mov r8, r1
	cmp r6, #0
	beq _080290A8
	movs r0, #0
	mov r9, r0
	movs r0, #0x80
	lsls r0, r0, #3
	adds r1, r6, #0
	bl sub_080B9394
	mov sl, r0
	mov r5, r8
	adds r5, #0x9c
	mov r2, r8
	adds r2, #0x8c
	lsls r1, r7, #0x10
	asrs r1, r1, #8
	ldr r0, [r2, #0]
	adds r0, r0, r1
	str r0, [r5, #0]
	mov r3, r8
	adds r3, #0xa0
	mov r4, r8
	adds r4, #0x90
	ldr r0, [sp, #4]
	lsls r1, r0, #0x10
	asrs r1, r1, #8
	ldr r0, [r4, #0]
	adds r0, r0, r1
	str r0, [r3, #0]
	ldr r6, [r2, #0]
	ldr r7, [r2, #4]
	str r5, [sp, #0x18]
	str r2, [sp, #0x10]
	str r3, [sp, #0x1c]
	str r4, [sp, #0x14]
	subs r5, #8
	adds r4, r2, #0
_08029062:
	ldr r1, [sp, #0x18]
	ldr r2, [r1, #0]
	adds r0, r4, #0
	adds r1, r6, #0
	mov r3, r9
	bl sub_080659F4
	ldr r0, [sp, #0x1c]
	ldr r2, [r0, #0]
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	mov r3, r9
	bl sub_080659F4
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	str r0, [r5, #0]
	str r1, [r5, #4]
	add r9, sl
	bl sub_080003F0
	ldr r0, _080290A4
	cmp r9, r0
	bls _08029062
	ldr r2, [sp, #0x10]
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r5, #0]
	str r1, [r5, #4]
	b _080290D4
	.2byte 0x0000
_080290A0: .4byte gUnk_03003CE0
_080290A4: .4byte 0x000003FF
_080290A8:
	mov r3, r8
	adds r3, #0x8c
	lsls r1, r7, #0x10
	asrs r1, r1, #8
	ldr r0, [r3, #0]
	adds r0, r0, r1
	str r0, [r3, #0]
	mov r2, r8
	adds r2, #0x90
	ldr r0, [sp, #4]
	lsls r1, r0, #0x10
	asrs r1, r1, #8
	ldr r0, [r2, #0]
	adds r0, r0, r1
	str r0, [r2, #0]
	adds r2, #4
	ldr r0, [r3, #0]
	ldr r1, [r3, #4]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_080003F0
_080290D4:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08028D98
