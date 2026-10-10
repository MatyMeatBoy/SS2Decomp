	thumb_func_start sub_08083AE8
sub_08083AE8: @ 0x08083AE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xd0
	mov r8, r0
	ldr r0, _08083B0C
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08083B10
	movs r0, #0x15
	bl sub_08057AE8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _08083B12
_08083B0C: .4byte gUnk_03003170
_08083B10:
	movs r7, #2
_08083B12:
	cmp r7, #1
	beq _08083B26
	cmp r7, #1
	bgt _08083B20
	cmp r7, #0
	beq _08083B88
	b _08083BEE
_08083B20:
	cmp r7, #2
	beq _08083B54
	b _08083BEE
_08083B26:
	add r4, sp, #0x38
	ldr r1, _08083B50
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08065158
	ldr r1, [r4, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	movs r1, #0x77
	mov r9, r1
	b _08083B7C
_08083B50: .4byte 0x000500CB
_08083B54:
	add r4, sp, #0x6c
	ldr r1, _08083B84
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08065158
	ldr r1, [r4, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	movs r1, #0x77
	mov sl, r1
_08083B7C:
	movs r2, #0x77
	str r2, [sp, #0xc4]
	b _08083BEE
	.2byte 0x0000
_08083B84: .4byte 0x000500CA
_08083B88:
	ldr r1, _08083CB0
	movs r4, #1
	negs r4, r4
	str r7, [sp, #0]
	add r0, sp, #4
	movs r2, #0
	adds r3, r4, #0
	bl sub_08065158
	add r6, sp, #0x38
	ldr r1, _08083CB4
	str r7, [sp, #0]
	adds r0, r6, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_08065158
	add r5, sp, #0x6c
	ldr r1, _08083CB8
	str r7, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_08065158
	ldr r1, [sp, #0x10]
	movs r4, #0xe0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r0, #0x14
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r6, #0xc]
	adds r1, r1, r4
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r5, #0xc]
	adds r1, r1, r4
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	movs r0, #0x77
	str r0, [sp, #0xc4]
	movs r1, #0xae
	mov r9, r1
	movs r2, #0x40
	mov sl, r2
_08083BEE:
	mov r1, sp
	adds r1, #0x2e
	movs r0, #4
	strb r0, [r1, #0]
	adds r1, #0x34
	movs r0, #5
	strb r0, [r1, #0]
	ldr r1, _08083CBC
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0xc0]
	ldr r0, _08083CC0
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x28]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x28]
	ldr r1, [sp, #0xc4]
	lsls r0, r1, #0x10
	cmp r0, #0
	bgt _08083C28
	b _08083D6E
_08083C28:
	add r5, sp, #0x38
	movs r6, #0xe0
	lsls r6, r6, #1
_08083C2E:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08083C38
	b _080841DE
_08083C38:
	bl sub_080021A8
	adds r2, r0, #0
	cmp r2, #0
	beq _08083C44
	b _080841DE
_08083C44:
	ldr r1, [sp, #0xc4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08083C52
	movs r0, #0
	str r0, [sp, #0xc4]
_08083C52:
	ldr r1, [sp, #0xc4]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	asrs r0, r0, #0x11
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc4]
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08083C70
	movs r0, #0
	mov r9, r0
_08083C70:
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	asrs r0, r0, #0x11
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	bne _08083C8E
	movs r0, #0
	mov sl, r0
_08083C8E:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	asrs r0, r0, #0x11
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	cmp r7, #1
	beq _08083CCA
	cmp r7, #1
	bgt _08083CC4
	cmp r7, #0
	beq _08083D02
	ldr r2, [sp, #0xc4]
	lsls r4, r2, #0x10
	b _08083D64
_08083CB0: .4byte 0x000500CC
_08083CB4: .4byte 0x000500CB
_08083CB8: .4byte 0x000500CA
_08083CBC: .4byte gUnk_084ECC04
_08083CC0: .4byte gUnk_03006440
_08083CC4:
	cmp r7, #2
	beq _08083CD8
	b _08083CFC
_08083CCA:
	mov r0, r9
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r1, #0xb9
	str r2, [sp, #0]
	adds r0, r5, #0
	b _08083CE4
_08083CD8:
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r1, #0xb9
	str r2, [sp, #0]
	add r0, sp, #0x6c
_08083CE4:
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	ldr r1, [r5, #0xc]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
_08083CFC:
	ldr r0, [sp, #0xc4]
	lsls r4, r0, #0x10
	b _08083D64
_08083D02:
	ldr r1, [sp, #0x10]
	adds r1, r1, r6
	movs r0, #0x14
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r5, #0xc]
	adds r1, r1, r6
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	add r4, sp, #0x6c
	ldr r1, [r4, #0xc]
	adds r1, r1, r6
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	mov r2, sl
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r1, #0xf0
	str r7, [sp, #0]
	adds r0, r4, #0
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	mov r0, r9
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r1, #0x82
	str r7, [sp, #0]
	adds r0, r5, #0
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	ldr r1, [sp, #0xc4]
	lsls r4, r1, #0x10
	asrs r1, r4, #0x10
	adds r1, #0xb9
	str r7, [sp, #0]
	add r0, sp, #4
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
_08083D64:
	bl sub_080003F0
	cmp r4, #0
	ble _08083D6E
	b _08083C2E
_08083D6E:
	movs r2, #0
	mov r8, r2
	ldr r0, [sp, #0xc0]
	adds r0, #2
	str r0, [sp, #0xcc]
	b _08083E72
_08083D7A:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08083D84
	b _080841DE
_08083D84:
	bl sub_080021A8
	adds r1, r0, #0
	cmp r1, #0
	beq _08083D90
	b _080841DE
_08083D90:
	cmp r7, #1
	beq _08083DA4
	cmp r7, #1
	bgt _08083D9E
	cmp r7, #0
	beq _08083DDE
	b _08083E34
_08083D9E:
	cmp r7, #2
	beq _08083DBE
	b _08083E34
_08083DA4:
	add r4, sp, #0x38
	str r1, [sp, #0]
	adds r0, r4, #0
	movs r1, #0xb9
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	ldr r1, [r4, #0xc]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	b _08083DD4
_08083DBE:
	add r0, sp, #0x6c
	str r1, [sp, #0]
	movs r1, #0xb9
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	ldr r1, [sp, #0x44]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
_08083DD4:
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	b _08083E34
_08083DDE:
	ldr r1, [sp, #0x10]
	movs r4, #0xe0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r0, #0x14
	movs r2, #1
	bl sub_08000AF0
	add r6, sp, #0x38
	ldr r1, [r6, #0xc]
	adds r1, r1, r4
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	add r5, sp, #0x6c
	ldr r1, [r5, #0xc]
	adds r1, r1, r4
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	str r7, [sp, #0]
	adds r0, r5, #0
	movs r1, #0xf0
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	str r7, [sp, #0]
	adds r0, r6, #0
	movs r1, #0x82
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	str r7, [sp, #0]
	add r0, sp, #4
	movs r1, #0xb9
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
_08083E34:
	add r4, sp, #0xa0
	mov r2, r8
	adds r1, r4, r2
	mov r0, r8
	adds r0, #2
	ldr r2, [sp, #0xc0]
	adds r0, r2, r0
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	mov r1, r8
	adds r1, #1
	adds r2, r4, r1
	movs r0, #0xfd
	strb r0, [r2, #0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r0, [sp, #0xcc]
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	bl sub_080003F0
_08083E72:
	ldr r0, [sp, #0xcc]
	bl sub_0801A638
	cmp r8, r0
	bhi _08083E7E
	b _08083D7A
_08083E7E:
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r0, #0
	mov r8, r0
	ldr r0, _08083EC8
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08083E9A
	b _08083FDA
_08083E9A:
	add r1, sp, #0xa0
	mov r9, r1
	add r5, sp, #0x38
_08083EA0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08083EAA
	b _080841DE
_08083EAA:
	bl sub_080021A8
	cmp r0, #0
	beq _08083EB4
	b _080841DE
_08083EB4:
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r1, #0x1d
	bhi _08083ECC
	movs r2, #1
	str r2, [sp, #0xc8]
	b _08083ED6
_08083EC8: .4byte gUnk_03001324
_08083ECC:
	mov r0, r8
	cmp r0, #0x1d
	bls _08083ED6
	movs r1, #0
	str r1, [sp, #0xc8]
_08083ED6:
	mov r2, r8
	cmp r2, #0x28
	bls _08083EE0
	movs r0, #0
	mov r8, r0
_08083EE0:
	ldr r1, [sp, #0xc8]
	cmp r1, #0
	beq _08083EFA
	mov r1, r9
	add r1, sl
	movs r0, #0xa0
	strb r0, [r1, #0]
	mov r0, sl
	adds r0, #1
	add r0, r9
	movs r1, #0xfd
	strb r1, [r0, #0]
	b _08083F02
_08083EFA:
	mov r1, r9
	add r1, sl
	movs r0, #0xfd
	strb r0, [r1, #0]
_08083F02:
	add r6, sp, #0xa0
	cmp r7, #1
	beq _08083F18
	cmp r7, #1
	bgt _08083F12
	cmp r7, #0
	beq _08083F54
	b _08083FB0
_08083F12:
	cmp r7, #2
	beq _08083F32
	b _08083FB0
_08083F18:
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r1, #0xb9
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	ldr r1, [r5, #0xc]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	b _08083F4A
_08083F32:
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x6c
	movs r1, #0xb9
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	ldr r1, [r5, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
_08083F4A:
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	b _08083FB0
_08083F54:
	ldr r1, [sp, #0x10]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x14
	movs r2, #1
	bl sub_08000AF0
	ldr r1, [r5, #0xc]
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	add r4, sp, #0x6c
	ldr r1, [r4, #0xc]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	str r7, [sp, #0]
	adds r0, r4, #0
	movs r1, #0xf0
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	str r7, [sp, #0]
	adds r0, r5, #0
	movs r1, #0x82
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	str r7, [sp, #0]
	add r0, sp, #4
	movs r1, #0xb9
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
_08083FB0:
	ldr r0, [sp, #0xcc]
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0x12
	bl sub_0801A3D0
	bl sub_080003F0
	ldr r0, _08083FF8
	ldrh r1, [r0, #0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08083FDA
	b _08083EA0
_08083FDA:
	movs r0, #0
	str r0, [sp, #0xc4]
	mov r9, r0
	mov sl, r0
	movs r0, #0xf
	bl sub_0805865C
	cmp r7, #1
	beq _08084002
	cmp r7, #1
	bgt _08083FFC
	cmp r7, #0
	beq _080840BA
	b _080841D6
	.2byte 0x0000
_08083FF8: .4byte gUnk_03001324
_08083FFC:
	cmp r7, #2
	beq _0808405E
	b _080841D6
_08084002:
	add r6, sp, #0x38
_08084004:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0808400E
	b _080841DE
_0808400E:
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _0808401A
	b _080841DE
_0808401A:
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	subs r1, #0x77
	asrs r1, r1, #1
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r1, [r6, #0xc]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	mov r0, r9
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	adds r1, #0xb9
	str r5, [sp, #0]
	adds r0, r6, #0
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
	cmp r4, #0x77
	bne _08084004
	b _080841D6
_0808405E:
	add r6, sp, #0x6c
_08084060:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0808406A
	b _080841DE
_0808406A:
	bl sub_080021A8
	adds r5, r0, #0
	cmp r5, #0
	beq _08084076
	b _080841DE
_08084076:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	subs r1, #0x77
	asrs r1, r1, #1
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, [r6, #0xc]
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	mov r0, sl
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	adds r1, #0xb9
	str r5, [sp, #0]
	adds r0, r6, #0
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
	cmp r4, #0x77
	bne _08084060
	b _080841D6
_080840BA:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080840C4
	b _080841DE
_080840C4:
	bl sub_080021A8
	mov r8, r0
	cmp r0, #0
	beq _080840D0
	b _080841DE
_080840D0:
	ldr r1, [sp, #0xc4]
	lsls r2, r1, #0x10
	asrs r2, r2, #0x10
	adds r0, r2, #0
	subs r0, #0x77
	asrs r0, r0, #1
	subs r2, r2, r0
	lsls r2, r2, #0x10
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	subs r1, #0xae
	asrs r1, r1, #1
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	subs r1, #0x40
	asrs r1, r1, #1
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsrs r0, r2, #0x10
	str r0, [sp, #0xc4]
	asrs r2, r2, #0x10
	adds r0, r2, #0
	subs r0, #0x77
	cmp r0, #0
	bge _08084118
	negs r0, r0
_08084118:
	cmp r0, #1
	bne _08084120
	movs r1, #0x77
	str r1, [sp, #0xc4]
_08084120:
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r0, #0xae
	cmp r0, #0
	bge _0808412E
	negs r0, r0
_0808412E:
	cmp r0, #1
	bne _08084136
	movs r0, #0xae
	mov r9, r0
_08084136:
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	subs r0, #0x40
	cmp r0, #0
	bge _08084144
	negs r0, r0
_08084144:
	cmp r0, #1
	bne _0808414C
	movs r2, #0x40
	mov sl, r2
_0808414C:
	ldr r1, [sp, #0x10]
	movs r4, #0xe0
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r0, #0x14
	movs r2, #1
	bl sub_08000AF0
	add r6, sp, #0x38
	ldr r1, [r6, #0xc]
	adds r1, r1, r4
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	add r5, sp, #0x6c
	ldr r1, [r5, #0xc]
	adds r1, r1, r4
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r7, r0, #0x10
	adds r1, r7, #0
	adds r1, #0xf0
	mov r2, r8
	str r2, [sp, #0]
	adds r0, r5, #0
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	mov r1, r9
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x82
	mov r2, r8
	str r2, [sp, #0]
	adds r0, r6, #0
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	ldr r0, [sp, #0xc4]
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, #0
	adds r1, #0xb9
	mov r2, r8
	str r2, [sp, #0]
	add r0, sp, #4
	movs r2, #0x88
	movs r3, #0
	bl sub_08065230
	bl sub_080003F0
	cmp r4, #0x77
	beq _080841CA
	b _080840BA
_080841CA:
	cmp r5, #0xae
	beq _080841D0
	b _080840BA
_080841D0:
	cmp r7, #0x40
	beq _080841D6
	b _080840BA
_080841D6:
	bl sub_080003F0
	bl sub_080003F0
_080841DE:
	ldr r0, _080841FC
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x28]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x28]
	add sp, #0xd0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080841FC: .4byte gUnk_03006440
	thumb_func_end sub_08083AE8
