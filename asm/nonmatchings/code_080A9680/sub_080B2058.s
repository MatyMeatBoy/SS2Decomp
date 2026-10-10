	thumb_func_start sub_080B2058
sub_080B2058: @ 0x080B2058
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r0, _080B21B4
	ldr r0, [r0, #0]
	bl sub_0801A0B0
	ldr r1, _080B21B8
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	mov r5, sp
	adds r5, #0x46
	strh r2, [r5, #0]
	add r4, sp, #0x44
	strh r2, [r4, #0]
	movs r0, #0
	str r0, [sp, #0x4c]
	ldr r0, _080B21BC
	bl sub_0805865C
	asrs r1, r6, #8
	mov r9, r1
	asrs r6, r7, #8
	mov r8, r6
	lsls r1, r1, #0x10
	str r1, [sp, #0x50]
	mov r2, r8
	lsls r2, r2, #0x10
	str r2, [sp, #0x54]
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
_080B20BA:
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B20D8
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
_080B20D8:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B214C
	bl sub_0800CC98
	cmp r0, #0
	bne _080B214C
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B214C
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B214C
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
	mov r0, r9
	mov r1, r8
	movs r2, #0
	bl sub_0800BC44
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r5, [sp, #0]
	str r5, [sp, #4]
	ldr r1, [sp, #0x50]
	asrs r0, r1, #0x10
	ldr r2, [sp, #0x54]
	asrs r1, r2, #0x10
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r7, r1]
	add r2, sp, #0x44
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	add r1, sp, #0x2c
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0
	movs r2, #0
	bl sub_08007870
	movs r2, #0
	ldrsh r1, [r6, r2]
	str r1, [r0, #0xc]
_080B214C:
	bl sub_080003F0
	mov r0, sl
	cmp r0, #0
	beq _080B20BA
	ldr r1, [sp, #0x4c]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	cmp r1, #0x3b
	bhi _080B20BA
	ldr r0, _080B21B4
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080B21D6
	bl sub_08002204
	cmp r0, #0
	beq _080B21D6
	movs r5, #0
	ldr r6, _080B21C0
_080B217E:
	lsls r0, r5, #1
	adds r4, r0, r6
	ldrh r0, [r4, #0]
	bl sub_0801A040
	cmp r0, #0
	bne _080B21CC
	ldr r0, _080B21C4
	ldrb r2, [r0, #0]
	ldr r0, _080B21C8
	movs r1, #0
	bl sub_08019FD8
	strh r0, [r4, #0]
	ldrh r0, [r4, #0]
	movs r1, #3
	bl sub_0801A0BC
_080B21A2:
	bl sub_080003F0
	ldrh r0, [r4, #0]
	bl sub_0801A040
	cmp r0, #0
	beq _080B21A2
	b _080B21D6
	.2byte 0x0000
_080B21B4: .4byte gUnk_030007A0
_080B21B8: .4byte 0x00050020
_080B21BC: .4byte 0x000001A5
_080B21C0: .4byte gUnk_03000798
_080B21C4: .4byte gUnk_0300079C
_080B21C8: .4byte gUnk_084AA580
_080B21CC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _080B217E
_080B21D6:
	ldr r0, _080B21F8
	ldr r0, [r0, #0]
	bl sub_0801A0A4
	ldr r0, _080B21FC
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #8]
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B21F8: .4byte gUnk_030007A0
_080B21FC: .4byte gUnk_030007A8
	thumb_func_end sub_080B2058
