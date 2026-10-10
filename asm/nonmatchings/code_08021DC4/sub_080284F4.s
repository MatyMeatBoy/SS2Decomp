	thumb_func_start sub_080284F4
sub_080284F4: @ 0x080284F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	adds r7, r0, #0
	movs r0, #2
	str r0, [r7, #0x3c]
	movs r1, #0
	str r1, [r7, #0x44]
	strh r1, [r7, #0x36]
	strh r1, [r7, #0x38]
	strh r1, [r7, #0x2e]
	strh r1, [r7, #0x30]
	ldr r2, [r7, #4]
	lsrs r0, r2, #0x10
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x2c]
	movs r0, #1
	strh r0, [r7, #0x34]
	ldr r3, _080285A0
	ands r2, r3
	str r2, [r7, #4]
	strh r1, [r7, #0x28]
	strh r1, [r7, #0x26]
	adds r0, r7, #0
	adds r0, #0x42
	strh r1, [r0, #0]
	ldr r1, _080285A4
	ldr r0, [sp, #0x88]
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	str r0, [sp, #0x88]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080285A8
	adds r1, r1, r0
	mov r9, r1
	movs r0, #0
	str r0, [sp, #0x8c]
	mov r6, sp
	adds r6, #0x7e
	strh r0, [r6, #0]
	add r5, sp, #0x7c
	add r2, sp, #0x8c
	ldrh r2, [r2, #0]
	strh r2, [r5, #0]
	ldr r4, _080285AC
	ldr r0, [r7, #4]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldr r1, [r0, #0]
	movs r3, #1
	negs r3, r3
	ldr r0, [sp, #0x8c]
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #4
	bl sub_08065158
	ldr r0, [r7, #4]
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldr r0, [r0, #0]
	cmp r0, #3
	beq _080285DC
	movs r1, #0x40
	adds r1, r1, r7
	mov sl, r1
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0x90]
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0x94]
	b _080285B4
_080285A0: .4byte 0x0000FFFF
_080285A4: .4byte 0xFFFF0000
_080285A8: .4byte gUnk_03003CE0
_080285AC: .4byte gUnk_084B19F0
_080285B0:
	bl sub_080003F0
_080285B4:
	ldr r1, _080285D4
	ldr r0, [r7, #4]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	movs r0, #0x64
	bl sub_080283C4
	mov r4, sl
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	ldr r1, _080285D8
	cmp r0, r1
	beq _080285B0
	b _080285F4
_080285D4: .4byte gUnk_084B19F0
_080285D8: .4byte 0xFFFF0000
_080285DC:
	adds r0, r7, #0
	adds r0, #0x40
	add r1, sp, #0x8c
	ldrh r1, [r1, #0]
	strh r1, [r0, #0]
	mov sl, r0
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0x90]
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0x94]
_080285F4:
	ldr r1, _08028620
	ldr r0, [r7, #4]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r4, [sp, #0x90]
	adds r0, r4, r0
	mov r2, sl
	ldrh r1, [r2, #0]
	movs r4, #0
	strb r1, [r0, #0]
	ldr r1, _08028624
	ldrh r2, [r2, #0]
	movs r3, #1
	negs r3, r3
	str r4, [sp, #0]
	ldr r0, [sp, #0x94]
	bl sub_08065158
	b _08028812
	.2byte 0x0000
_08028620: .4byte gUnk_084B19F0
_08028624: .4byte 0x00050010
_08028628:
	mov r3, r9
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080286C0
	ldrh r1, [r3, #0x14]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080286C0
	ldr r0, _080287E4
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #7
	ands r0, r2
	cmp r0, #0
	bne _080286C0
	ldr r0, [r7, #0x44]
	cmp r0, #0
	beq _080286C0
	mov r0, r9
	adds r0, #0x8c
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [sp, #0x80]
	str r1, [sp, #0x84]
	ldr r2, _080287E8
	movs r4, #0x1c
	ldrsh r0, [r3, r4]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #5
	adds r0, #0x80
	ldr r3, _080287EC
	adds r0, r0, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #4
	ldr r1, [sp, #0x80]
	adds r0, r0, r1
	str r0, [sp, #0x80]
	mov r1, r9
	movs r3, #0x1c
	ldrsh r0, [r1, r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #5
	ldr r1, _080287EC
	adds r0, r0, r1
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r2, r2, #4
	add r1, sp, #0x80
	ldr r0, [r1, #4]
	adds r2, r2, r0
	str r2, [r1, #4]
	adds r0, r7, #0
	adds r0, #8
	adds r2, r7, #0
	adds r2, #0x18
	add r3, sp, #0x88
	bl sub_08021FE0
	cmp r0, #0
	beq _080286C0
	ldr r0, [r7, #0]
	ldr r1, [r7, #0x44]
	bl sub_0805A58C
_080286C0:
	ldrh r0, [r7, #0x36]
	cmp r0, #2
	beq _080286DA
	cmp r0, #2
	ble _080286DA
	cmp r0, #3
	bne _080286DA
	movs r0, #0
	strh r0, [r7, #0x36]
	ldrh r0, [r7, #0x24]
	ldrh r4, [r7, #0x38]
	adds r0, r0, r4
	strh r0, [r7, #0x2c]
_080286DA:
	ldr r1, _080287E4
	ldr r0, [r1, #0]
	ldrh r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08028700
	ldrh r1, [r7, #0x2c]
	ldrh r0, [r7, #0x34]
	str r0, [sp, #0]
	add r0, sp, #0x10
	adds r2, r7, #0
	adds r2, #0x2e
	adds r3, r7, #0
	adds r3, #0x30
	bl sub_08065370
	strh r0, [r7, #0x32]
_08028700:
	ldr r5, [r7, #8]
	asrs r5, r5, #8
	ldr r4, [r7, #0xc]
	asrs r4, r4, #8
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	bl sub_0800CCCC
	adds r3, r0, #0
	ldr r0, [r7, #8]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0xc]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	add r2, sp, #0x78
	mov r3, sp
	adds r3, #0x7a
	bl sub_0800BC08
	bl sub_0800CC98
	add r6, sp, #0x78
	movs r2, #0x7a
	add r2, sp
	mov r8, r2
	cmp r0, #0
	bne _0802880E
	bl sub_0800CD34
	cmp r0, #0
	bne _0802880E
	ldr r1, _080287F0
	ldr r0, [r7, #4]
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r2, [r0, #0]
	cmp r2, #3
	beq _08028786
	ldr r3, _080287E4
	ldr r0, [r3, #0]
	ldrh r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08028786
	mov r1, sl
	ldrh r0, [r1, #0]
	adds r0, #0x10
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
_08028786:
	movs r2, #0
	ldrsh r0, [r6, r2]
	mov r3, r8
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r2, [r7, #0x2c]
	ldrh r3, [r7, #0x2e]
	str r4, [sp, #0]
	ldr r4, [sp, #0x90]
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	adds r4, r7, #0
	adds r4, #0x42
	ldrh r0, [r4, #0]
	cmp r0, #0
	beq _0802880E
	ldr r0, [sp, #0x8c]
	cmp r0, #0
	beq _080287BA
	movs r1, #0
	str r1, [sp, #0x8c]
_080287BA:
	ldrh r1, [r4, #0]
	movs r5, #0
	str r5, [sp, #0]
	ldr r0, [sp, #0x94]
	add r2, sp, #0x7c
	mov r3, sp
	adds r3, #0x7e
	bl sub_08065370
	cmp r0, #0
	beq _080287F4
	strh r5, [r4, #0]
	add r2, sp, #0x7c
	strh r5, [r2, #0]
	movs r3, #0x7e
	add r3, sp
	strh r5, [r3, #0]
	movs r4, #1
	str r4, [sp, #0x8c]
	b _0802880E
	.2byte 0x0000
_080287E4: .4byte gUnk_03005CF4
_080287E8: .4byte gUnk_0849E730
_080287EC: .4byte gUnk_080B9704
_080287F0: .4byte gUnk_084B19F0
_080287F4:
	movs r0, #0
	ldrsh r1, [r6, r0]
	mov r3, r8
	movs r0, #0
	ldrsh r2, [r3, r0]
	subs r2, #0x20
	ldrh r3, [r4, #0]
	add r4, sp, #0x7c
	ldrh r0, [r4, #0]
	str r0, [sp, #0]
	ldr r0, [sp, #0x94]
	bl sub_08065230
_0802880E:
	bl sub_080003F0
_08028812:
	ldrh r0, [r7, #0x36]
	cmp r0, #4
	beq _0802881A
	b _08028628
_0802881A:
	movs r0, #0
	str r0, [r7, #0]
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080284F4
