	thumb_func_start sub_080B2200
sub_080B2200: @ 0x080B2200
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	ldr r1, _080B22DC
	ldr r5, _080B22E0
	ldrh r2, [r5, #0]
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r5, #0]
	strb r0, [r1, #0x1c]
	movs r0, #0x18
	mov sl, r0
	mov r0, sp
	adds r0, #0x46
	strh r4, [r0, #0]
	add r1, sp, #0x44
	strh r4, [r1, #0]
	ldr r2, _080B22E4
	mov r9, r2
	mov r8, r1
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
_080B2240:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B22D4
	bl sub_0800CC98
	cmp r0, #0
	bne _080B22D4
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B22D4
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _080B22D4
	ldr r0, _080B22E0
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r2, #1
	bl sub_08000AF0
	mov r0, r9
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r5, [sp, #0]
	add r0, sp, #0x10
	mov r1, sl
	mov r2, r8
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	mov r2, r9
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	mov r2, r8
	ldrh r3, [r2, #0]
	str r4, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	mov r2, sl
	bl sub_08007870
_080B22D4:
	bl sub_080003F0
	b _080B2240
	.2byte 0x0000
_080B22DC: .4byte 0x00050089
_080B22E0: .4byte gUnk_030007A4
_080B22E4: .4byte gUnk_030007A0
	thumb_func_end sub_080B2200
