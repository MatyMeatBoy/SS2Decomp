	thumb_func_start sub_0809C1B4
sub_0809C1B4: @ 0x0809C1B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x4c]
	ldr r1, _0809C22C
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	add r1, sp, #0x10
	ldr r0, _0809C230
	ldrh r0, [r0, #0]
	strb r0, [r1, #0x1c]
	ldr r0, _0809C234
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0x50]
	ldr r0, [r0, #0x18]
	str r0, [sp, #0x54]
	movs r2, #0
	str r2, [sp, #0x64]
	movs r0, #0
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x4c]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r2, #0xb4
	lsls r2, r2, #1
	str r2, [sp, #0x58]
	movs r0, #0x78
	str r0, [sp, #0x60]
	movs r0, #0xe6
	bl sub_0805865C
_0809C20C:
	ldr r1, [sp, #0x60]
	cmp r1, #0
	beq _0809C238
	adds r0, r1, #0
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x60]
	ldr r4, [sp, #0x50]
	ldr r5, [sp, #0x54]
	cmp r0, #0
	bne _0809C292
	movs r0, #0xe7
	bl sub_0805865C
	b _0809C292
_0809C22C: .4byte 0x00050005
_0809C230: .4byte gUnk_030002F0
_0809C234: .4byte gUnk_030002EC
_0809C238:
	ldr r1, _0809C284
	mov r0, r8
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	ldr r2, [sp, #0x5c]
	muls r0, r2, r0
	lsrs r4, r0, #8
	mov r2, r8
	lsls r0, r2, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #0x5c]
	muls r0, r2, r0
	lsrs r5, r0, #8
	ldr r0, [sp, #0x50]
	adds r4, r4, r0
	ldr r1, [sp, #0x54]
	adds r5, r5, r1
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r2, r0
	str r2, [sp, #0x5c]
	bl sub_0800CE30
	cmp r0, #1
	bne _0809C288
	ldr r1, [sp, #0x4c]
	ands r0, r1
	cmp r0, #0
	beq _0809C288
	mov r0, r8
	subs r0, #1
	b _0809C28C
	.2byte 0x0000
_0809C284: .4byte gUnk_080B9704
_0809C288:
	mov r0, r8
	adds r0, #1
_0809C28C:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_0809C292:
	bl sub_0800CCCC
	asrs r4, r4, #8
	mov r9, r4
	asrs r5, r5, #8
	mov sl, r5
	cmp r0, #0
	bne _0809C35C
	bl sub_0800CC98
	cmp r0, #0
	bne _0809C35C
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809C35C
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _0809C35C
	ldr r0, _0809C330
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x1c]
	movs r2, #1
	bl sub_08000AF0
	mov r2, r9
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	add r5, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	add r4, sp, #0x48
	movs r7, #1
	str r7, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0x1a
	adds r2, r4, #0
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _0809C334
	ldr r1, [sp, #0x4c]
	cmp r1, #0
	bne _0809C35C
	movs r2, #0
	ldrsh r0, [r5, r2]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r1, #2
	ldrh r3, [r4, #0]
	ldr r2, [sp, #0x4c]
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x1a
	bl sub_08007870
	movs r2, #0
	ldrsh r1, [r6, r2]
	str r1, [r0, #0xc]
	b _0809C35C
_0809C330: .4byte gUnk_030002F0
_0809C334:
	ldr r0, [sp, #0x58]
	ands r0, r7
	cmp r0, #0
	beq _0809C35C
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldrh r3, [r4, #0]
	ldr r2, [sp, #0x60]
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #0x1a
	bl sub_08007870
_0809C35C:
	bl sub_080020F4
	ldr r6, _0809C460
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r4, [r0, #0]
	asrs r4, r4, #8
	mov r0, r9
	subs r4, r0, r4
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	mov r2, sl
	adds r2, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r2, r2, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x60]
	cmp r1, #0
	bne _0809C4A8
	ldr r2, [sp, #0x64]
	cmp r2, #0
	bne _0809C4A8
	cmp r0, #9
	bhi _0809C4A8
	bl sub_0800CDF8
	cmp r0, #0
	bne _0809C4A8
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809C4A8
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809C4A8
	ldr r4, _0809C464
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _0809C4A8
	bl sub_080020F4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0809C4A8
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0809C4A8
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _0809C4A8
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _0809C4A8
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _0809C4A8
	bl sub_080020F4
	ldr r2, [r4, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _0809C4A8
	bl sub_0800CE30
	cmp r0, #1
	bne _0809C468
	movs r0, #0
	movs r1, #0x46
	movs r2, #5
	bl sub_08029CEC
	b _0809C472
	.2byte 0x0000
_0809C460: .4byte gUnk_03003CE0
_0809C464: .4byte gUnk_030002EC
_0809C468:
	movs r0, #0
	movs r1, #0xc
	movs r2, #1
	bl sub_08029CEC
_0809C472:
	bl sub_080020F4
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	ldr r1, _0809C4D8
	adds r0, r0, r1
	adds r0, #0xb0
	ldr r1, _0809C4DC
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r1, _0809C4E0
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r4, r0
	adds r1, r1, r0
	ldr r0, _0809C4D8
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	movs r2, #1
	str r2, [sp, #0x64]
_0809C4A8:
	bl sub_080003F0
	ldr r0, [sp, #0x58]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x58]
	ldr r0, _0809C4E4
	ldr r1, [sp, #0x58]
	cmp r1, r0
	beq _0809C4C0
	b _0809C20C
_0809C4C0:
	bl sub_0800048C
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0809C4D8: .4byte gUnk_03003CE0
_0809C4DC: .4byte 0x0000FFFE
_0809C4E0: .4byte gUnk_030002EC
_0809C4E4: .4byte 0x0000FFFF
	thumb_func_end sub_0809C1B4
