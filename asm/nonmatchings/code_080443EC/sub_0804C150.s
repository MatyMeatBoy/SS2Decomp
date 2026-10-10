	thumb_func_start sub_0804C150
sub_0804C150: @ 0x0804C150
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _0804C17C
	ldr r3, _0804C174
	ldr r1, [r3, #0]
	movs r0, #0xe2
	lsls r0, r0, #1
	adds r1, r1, r0
	b _0804C186
	.2byte 0x0000
_0804C174: .4byte gUnk_03005CF4
_0804C178:
	ldr r4, [r1, #0]
	b _0804C310
_0804C17C:
	ldr r3, _0804C224
	ldr r1, [r3, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r1, r1, r2
_0804C186:
	ldrb r2, [r1, #0]
	movs r0, #0x40
	orrs r0, r2
	strb r0, [r1, #0]
	adds r4, r3, #0
	ldr r0, [r4, #0]
	movs r5, #4
	ldr r0, [r0, #0x38]
	ands r0, r5
	cmp r0, #0
	beq _0804C19E
	movs r0, #1
_0804C19E:
	cmp r0, #0
	beq _0804C1A4
	b _0804C3E2
_0804C1A4:
	bl sub_080020F4
	cmp r0, #0
	bne _0804C1B4
	adds r1, r6, #0
	ldr r0, _0804C228
	bl sub_08068070
_0804C1B4:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0x38]
	orrs r1, r5
	str r1, [r0, #0x38]
	bl sub_0800CCCC
	adds r2, r0, #0
	ldr r0, _0804C22C
	adds r0, #0x90
	ldrh r1, [r0, #0]
	movs r0, #0
	cmp r2, #0
	bne _0804C1D0
	movs r0, #1
_0804C1D0:
	movs r2, #0
	cmp r1, #4
	bne _0804C1D8
	movs r2, #1
_0804C1D8:
	ands r0, r2
	cmp r0, #0
	bne _0804C1E0
	b _0804C3E2
_0804C1E0:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804C230
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	ldr r2, _0804C234
	movs r0, #6
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _0804C238
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0804C21A
	movs r0, #0x23
	bl sub_08006D08
_0804C21A:
	movs r4, #0x1e
	add r3, sp, #0xc
	mov r9, r3
	b _0804C246
	.2byte 0x0000
_0804C224: .4byte gUnk_03005CF4
_0804C228: .4byte sub_0805A0EC
_0804C22C: .4byte gUnk_03003170
_0804C230: .4byte gUnk_03003CE0
_0804C234: .4byte 0x0000270F
_0804C238: .4byte gUnk_030027D0
_0804C23C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804C252
_0804C246:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804C23C
_0804C252:
	bl sub_0805EFBC
_0804C256:
	bl sub_080003F0
	bl sub_0805F184
	cmp r0, #0
	bne _0804C256
	movs r4, #4
	b _0804C270
_0804C266:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804C27C
_0804C270:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804C266
_0804C27C:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804C29C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _0804C2A4
	.2byte 0x0000
_0804C29C: .4byte gUnk_03003CE0
_0804C2A0:
	bl sub_080003F0
_0804C2A4:
	bl sub_0805F184
	cmp r0, #0
	bne _0804C2A0
	b _0804C2B2
_0804C2AE:
	bl sub_080003F0
_0804C2B2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804C2AE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804C2D4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804C2DC
	.2byte 0x0000
_0804C2D4: .4byte 0x00140046
_0804C2D8:
	bl sub_080003F0
_0804C2DC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804C2D8
	ldr r0, _0804C3F4
	ldr r0, [r0, #0]
	ldr r2, _0804C3F8
	adds r1, r0, r2
	movs r2, #0
	movs r4, #1
	ldr r3, [r0, #0x54]
_0804C2F4:
	adds r0, r4, #0
	lsls r0, r2
	ands r0, r3
	cmp r0, #0
	beq _0804C306
	ldr r0, [r1, #4]
	cmp r0, #0x13
	bne _0804C306
	b _0804C178
_0804C306:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804C2F4
	movs r4, #0
_0804C310:
	adds r0, r4, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r4, #0
	movs r1, #0xb8
	movs r2, #0xe0
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r4, #0
	movs r1, #2
	bl sub_080290E4
	adds r0, r4, #0
	movs r1, #0x97
	movs r2, #0xe0
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r4, #0
	movs r1, #0
	bl sub_080290E4
	ldr r2, _0804C3FC
	adds r0, r4, #0
	movs r1, #0x97
	movs r3, #0x28
	bl sub_08028AAC
	ldr r0, _0804C3F4
	ldr r0, [r0, #0]
	ldr r3, _0804C3F8
	adds r1, r0, r3
	movs r2, #0
_0804C356:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0804C36A
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804C356
	bl sub_080003F0
	movs r1, #0
_0804C36A:
	cmp r1, #0
	beq _0804C372
	movs r0, #4
	strh r0, [r1, #0x36]
_0804C372:
	movs r0, #0x22
	mov sl, r0
	ldr r0, _0804C400
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	movs r7, #0
_0804C38C:
	add r0, sp, #8
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, r9
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804C38C
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804C404
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_0804C3E2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0804C3F4: .4byte gUnk_03005CF4
_0804C3F8: .4byte 0x000007A4
_0804C3FC: .4byte 0x0000012B
_0804C400: .4byte gUnk_03003170
_0804C404: .4byte gUnk_03003CE0
	thumb_func_end sub_0804C150
