	thumb_func_start sub_0808F1E4
sub_0808F1E4: @ 0x0808F1E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	adds r7, r0, #0
	ldr r1, _0808F20C
	movs r2, #0
	bl sub_0801623C
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r8, r0
	bl sub_08019F60
	ldr r5, _0808F210
	ldr r4, _0808F214
	b _0808F23E
_0808F20C: .4byte gUnk_084AA740
_0808F210: .4byte 0x0000FFFF
_0808F214: .4byte gUnk_030056FC
_0808F218:
	movs r0, #0xb
	strh r0, [r7, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _0808F22C
	bl sub_08056E90
	cmp r0, #0
	beq _0808F23A
_0808F22C:
	movs r1, #1
	ldrh r7, [r7, #0]
	lsls r1, r7
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	b _0808F692
_0808F23A:
	bl sub_080003F0
_0808F23E:
	ldr r0, _0808F2E0
	movs r1, #0
	bl sub_08016E04
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x8c]
	cmp r0, r5
	beq _0808F218
	adds r0, r7, #0
	adds r0, #0x6c
	movs r2, #0
	strh r2, [r0, #0]
	adds r6, r7, #0
	adds r6, #0x6a
	strh r2, [r6, #0]
	adds r5, r7, #0
	adds r5, #0x68
	strh r2, [r5, #0]
	mov r3, r8
	movs r4, #6
	ldrsh r1, [r3, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r3, #0xeb
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1, #0]
	adds r4, r7, #0
	adds r4, #0x5c
	strh r0, [r4, #0]
	mov r1, r8
	movs r3, #4
	ldrsh r0, [r1, r3]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0xea
	lsls r3, r3, #1
	adds r1, r7, r3
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	strh r2, [r7, #0xc]
	movs r0, #0
	str r0, [sp, #0xa0]
	str r0, [sp, #0x9c]
	ldr r1, _0808F2E4
	str r1, [sp, #0xa4]
	str r2, [sp, #0x98]
	str r2, [r7, #0x4c]
	movs r0, #0x1b
	movs r1, #1
	bl sub_0805853C
	mov sl, r6
	str r5, [sp, #0xac]
	str r4, [sp, #0xa8]
	cmp r0, #0
	bne _0808F2C8
	movs r0, #0x1b
	movs r1, #0
	bl sub_0805853C
	cmp r0, #0
	bne _0808F2C8
	b _0808F5C2
_0808F2C8:
	ldr r2, _0808F2E8
	movs r1, #1
	ldrh r7, [r7, #0]
	lsls r1, r7
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	ldr r0, [sp, #0x8c]
	bl sub_08016ECC
	b _0808F692
	.2byte 0x0000
_0808F2E0: .4byte 0x0005012F
_0808F2E4: .4byte 0x0000FFFF
_0808F2E8: .4byte gUnk_030056FC
_0808F2EC:
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r7, r3
	add r4, sp, #0xa0
	ldrb r4, [r4, #0]
	strb r4, [r0, #0]
	b _0808F5D6
_0808F2FA:
	adds r0, r7, #0
	bl sub_0801C8F0
	ldrh r4, [r7, #0xc]
	cmp r4, #0
	beq _0808F314
	cmp r4, #0
	blt _0808F350
	cmp r4, #0xa
	beq _0808F330
	cmp r4, #0xb
	beq _0808F340
	b _0808F350
_0808F314:
	str r4, [sp, #0]
	add r0, sp, #0x10
	ldr r1, _0808F32C
	ldr r2, [sp, #0x8c]
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	ldr r0, [sp, #0xac]
	strh r4, [r0, #0]
	b _0808F350
	.2byte 0x0000
_0808F32C: .4byte 0x0005012F
_0808F330:
	ldr r1, [sp, #0x9c]
	cmp r1, #0
	bne _0808F350
	movs r2, #1
	str r2, [sp, #0x9c]
	movs r3, #8
	str r3, [sp, #0xa0]
	b _0808F350
_0808F340:
	movs r4, #0xee
	lsls r4, r4, #1
	adds r0, r7, r4
	strb r5, [r0, #0]
	movs r0, #0x3f
	bl sub_0805865C
	b _0808F5D6
_0808F350:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	str r0, [sp, #0x94]
	add r0, sp, #0x10
	movs r3, #0
	add r1, sp, #0x8c
	ldrb r1, [r1, #0]
	strb r1, [r0, #0x1c]
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r6, sp, #0x88
	movs r2, #0x8a
	add r2, sp
	mov r8, r2
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r2, r6, #0
	mov r3, r8
	bl sub_0800BC08
	ldr r3, [sp, #0x9c]
	cmp r3, #0
	beq _0808F490
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808F408
	bl sub_0800CC98
	cmp r0, #0
	bne _0808F408
	bl sub_0800CD8C
	cmp r0, #0
	bne _0808F408
	bl sub_0800CD34
	cmp r0, #0
	bne _0808F408
	movs r0, #1
	ldr r4, [sp, #0xa0]
	ands r0, r4
	add r5, sp, #0x2c
	cmp r0, #0
	beq _0808F3E8
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xac]
	ldrh r2, [r4, #0]
	mov r4, sl
	ldrh r3, [r4, #0]
	mov r4, r9
	str r4, [sp, #0]
	str r5, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_0808F3E8:
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r4, r9
	str r4, [sp, #0]
	str r5, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #5
	movs r3, #0
	bl sub_08007870
_0808F408:
	ldr r0, [sp, #0xa0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa0]
	cmp r0, #0
	bne _0808F4FC
	ldrh r0, [r7, #0xc]
	cmp r0, #0xb
	bne _0808F41E
	b _0808F2EC
_0808F41E:
	add r0, sp, #0xa0
	ldrh r0, [r0, #0]
	strh r0, [r7, #0xc]
	adds r0, r7, #0
	bl sub_08019CE8
	movs r1, #0
	str r1, [sp, #0x9c]
	ldr r2, [sp, #0xa8]
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r0, #0x64
	muls r0, r1, r0
	movs r4, #0xeb
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl __divsi3
	cmp r0, #9
	bgt _0808F462
	movs r0, #0x1b
	movs r1, #1
	bl sub_08057A20
	movs r0, #0x1b
	movs r1, #0
	bl sub_08057A20
	movs r0, #4
	mov r3, sl
	strh r0, [r3, #0]
	b _0808F4FC
_0808F462:
	cmp r0, #0x13
	bgt _0808F46E
	movs r0, #3
	mov r4, sl
	strh r0, [r4, #0]
	b _0808F4FC
_0808F46E:
	cmp r0, #0x1d
	bgt _0808F47A
	movs r0, #2
	mov r1, sl
	strh r0, [r1, #0]
	b _0808F4FC
_0808F47A:
	cmp r0, #0x31
	bgt _0808F486
	movs r0, #1
	mov r2, sl
	strh r0, [r2, #0]
	b _0808F4FC
_0808F486:
	add r3, sp, #0xa0
	ldrh r4, [r3, #0]
	mov r3, sl
	strh r4, [r3, #0]
	b _0808F4FC
_0808F490:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808F4FC
	bl sub_0800CC98
	cmp r0, #0
	bne _0808F4FC
	bl sub_0800CD8C
	cmp r0, #0
	bne _0808F4FC
	bl sub_0800CD34
	cmp r0, #0
	bne _0808F4FC
	ldrh r0, [r7, #0xc]
	add r5, sp, #0x2c
	cmp r0, #0xb
	beq _0808F4DC
	movs r4, #0
	ldrsh r0, [r6, r4]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0xac]
	ldrh r2, [r4, #0]
	mov r4, sl
	ldrh r3, [r4, #0]
	mov r4, r9
	str r4, [sp, #0]
	str r5, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_0808F4DC:
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x94]
	str r4, [sp, #0]
	str r5, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #5
	movs r3, #0
	bl sub_08007870
_0808F4FC:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _0808F524
	ldr r1, [sp, #0x98]
	cmp r1, r0
	beq _0808F524
	adds r0, r7, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808F518
	movs r2, #0xa
	str r2, [sp, #0xa0]
_0808F518:
	ldr r3, [r7, #0x4c]
	str r3, [sp, #0x98]
	movs r4, #0xa
	str r4, [sp, #0xa4]
	movs r0, #0
	str r0, [sp, #0x90]
_0808F524:
	ldr r0, [sp, #0xa4]
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xa4]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0808F590
	ldr r3, [sp, #0x98]
	cmp r3, #0
	bne _0808F54C
	ldr r4, _0808F548
	str r4, [sp, #0xa4]
	b _0808F59A
	.2byte 0x0000
_0808F548: .4byte 0x0000FFFF
_0808F54C:
	bl sub_0800CC98
	cmp r0, #0
	bne _0808F572
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808F572
	bl sub_0800CD34
	cmp r0, #0
	bne _0808F572
	ldr r0, [sp, #0x90]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0x98]
	bl sub_0801A120
_0808F572:
	movs r0, #2
	ldr r1, [sp, #0xa4]
	ands r0, r1
	cmp r0, #0
	beq _0808F59A
	ldr r2, [sp, #0x90]
	lsls r0, r2, #0x10
	ldr r3, _0808F58C
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x90]
	b _0808F59A
	.2byte 0x0000
_0808F58C: .4byte 0xFFFF0000
_0808F590:
	ldr r4, _0808F608
	str r4, [sp, #0xa4]
	movs r0, #0
	str r0, [sp, #0x98]
	str r0, [r7, #0x4c]
_0808F59A:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0808F5BE
	ldr r0, _0808F60C
	ldr r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	ldrh r2, [r7, #0]
	ands r0, r2
	cmp r1, r0
	bne _0808F5BE
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x8c]
	adds r0, #0x10
	movs r2, #1
	bl sub_08000AF0
_0808F5BE:
	bl sub_080003F0
_0808F5C2:
	bl sub_0800CB78
	cmp r0, #0
	bne _0808F5D6
	bl sub_08056E90
	adds r5, r0, #0
	cmp r5, #0
	bne _0808F5D6
	b _0808F2FA
_0808F5D6:
	bl sub_08002204
	cmp r0, #0
	beq _0808F67E
	ldrh r0, [r7, #0xc]
	cmp r0, #0xb
	bne _0808F66E
	movs r0, #0x1b
	movs r1, #1
	bl sub_08057A20
	movs r0, #0x1b
	movs r1, #0
	bl sub_08057A20
	add r1, sp, #0x78
	movs r2, #0
	movs r0, #9
	strh r0, [r1, #0]
	movs r0, #0x64
	strh r0, [r1, #4]
	strh r2, [r1, #2]
	adds r5, r1, #0
	b _0808F614
	.2byte 0x0000
_0808F608: .4byte 0x0000FFFF
_0808F60C: .4byte gUnk_03002344
_0808F610:
	bl sub_080003F0
_0808F614:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r2, r5, #0
	bl sub_08066490
	cmp r0, #0
	bne _0808F62A
	bl sub_08056E90
	cmp r0, #0
	beq _0808F610
_0808F62A:
	movs r0, #1
	strh r0, [r5, #2]
	adds r4, r5, #0
	b _0808F636
_0808F632:
	bl sub_080003F0
_0808F636:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r2, r4, #0
	bl sub_08066490
	cmp r0, #0
	bne _0808F64C
	bl sub_08056E90
	cmp r0, #0
	beq _0808F632
_0808F64C:
	movs r0, #2
	strh r0, [r4, #2]
	b _0808F656
_0808F652:
	bl sub_080003F0
_0808F656:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	adds r2, r5, #0
	bl sub_08066490
	cmp r0, #0
	bne _0808F67E
	bl sub_08056E90
	cmp r0, #0
	beq _0808F652
	b _0808F67E
_0808F66E:
	movs r0, #0x1b
	movs r1, #1
	bl sub_08057AA4
	movs r0, #0x1b
	movs r1, #0
	bl sub_08057AA4
_0808F67E:
	ldr r2, _0808F6A4
	movs r1, #1
	ldrh r7, [r7, #0]
	lsls r1, r7
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	ldr r0, [sp, #0x8c]
	bl sub_08016ECC
_0808F692:
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0808F6A4: .4byte gUnk_030056FC
	thumb_func_end sub_0808F1E4
