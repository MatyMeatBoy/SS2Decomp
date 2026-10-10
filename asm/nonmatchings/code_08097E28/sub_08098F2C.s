	thumb_func_start sub_08098F2C
sub_08098F2C: @ 0x08098F2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	bl sub_080020F4
	ldr r1, _080990E0
	mov r8, r1
	ldr r1, [r1, #0]
	ldr r7, _080990E4
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	ldr r2, _080990E8
	adds r0, r0, r2
	ldr r4, [r1, #0x14]
	ldr r0, [r0, #0]
	subs r4, r4, r0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	mov r2, r8
	ldr r1, [r2, #0]
	muls r0, r6, r0
	movs r2, #0x90
	adds r2, r2, r7
	mov sl, r2
	add r0, sl
	ldr r1, [r1, #0x18]
	ldr r0, [r0, #0]
	subs r1, r1, r0
	lsls r1, r1, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2f
	bls _08098F90
	b _08099164
_08098F90:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08098F9A
	b _08099164
_08098F9A:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08098FA4
	b _08099164
_08098FA4:
	bl sub_0800CD8C
	cmp r0, #0
	beq _08098FAE
	b _08099164
_08098FAE:
	mov r1, r8
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	bne _08098FBA
	b _08099164
_08098FBA:
	bl sub_080020F4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08098FD4
	b _08099164
_08098FD4:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08098FE6
	b _08099164
_08098FE6:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	bne _08098FF6
	b _08099164
_08098FF6:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	bne _08099006
	b _08099164
_08099006:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	bne _08099016
	b _08099164
_08099016:
	bl sub_080020F4
	mov r1, r8
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	movs r0, #0xe4
	adds r0, r0, r7
	mov r9, r0
	add r1, r9
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	bne _08099038
	b _08099164
_08099038:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xb0
	ldr r1, _080990EC
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r5, r0, #0
	mov r1, r8
	ldr r4, [r1, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r0, r4, #0
	bl sub_0801ED8C
	adds r1, r5, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r1, #0x88
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl sub_080020F4
	mov r1, r8
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, r9
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	bl sub_080020F4
	muls r0, r6, r0
	ldr r2, _080990E8
	adds r0, r0, r2
	mov r2, r8
	ldr r1, [r2, #0]
	ldr r4, [r0, #0]
	ldr r0, [r1, #0x14]
	subs r4, r4, r0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	muls r0, r6, r0
	add r0, sl
	mov r1, r8
	ldr r2, [r1, #0]
	ldr r1, [r0, #0]
	ldr r0, [r2, #0x18]
	subs r1, r1, r0
	lsls r1, r1, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r4, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _080990F2
	cmp r4, #6
	bhi _080990F0
	adds r4, #1
	b _080990F2
	.2byte 0x0000
_080990E0: .4byte gUnk_030002D0
_080990E4: .4byte gUnk_03003CE0
_080990E8: .4byte gUnk_03003D6C
_080990EC: .4byte 0x0000FFFE
_080990F0:
	movs r4, #0
_080990F2:
	cmp r4, #0
	beq _08099114
	cmp r4, #1
	beq _0809912C
	bl sub_080020F4
	ldr r2, _08099110
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	subs r1, r4, #2
	adds r0, #0xca
	b _0809913E
	.2byte 0x0000
_08099110: .4byte gUnk_03003CE0
_08099114:
	bl sub_080020F4
	ldr r2, _08099128
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #6
	b _0809913E
_08099128: .4byte gUnk_03003CE0
_0809912C:
	bl sub_080020F4
	ldr r2, _08099194
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #7
_0809913E:
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r5, _08099194
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xcc
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc8
	movs r1, #0x10
	strh r1, [r0, #0]
_08099164:
	ldr r4, _08099194
	bl sub_080020F4
	adds r2, r0, #0
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r2, r1
	adds r1, r1, r4
	adds r1, #0xc8
	ldrh r1, [r1, #0]
	cmp r1, #0
	bne _08099186
	ldr r1, _08099198
	ldr r2, [r1, #0]
	ldr r1, [r2, #0x50]
	adds r1, #1
	str r1, [r2, #0x50]
_08099186:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08099194: .4byte gUnk_03003CE0
_08099198: .4byte gUnk_030002D0
	thumb_func_end sub_08098F2C
