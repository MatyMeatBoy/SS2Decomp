	thumb_func_start sub_08099468
sub_08099468: @ 0x08099468
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	subs r1, #1
	cmp r1, #0
	beq _0809947E
	cmp r1, #4
	bne _080994B0
_0809947E:
	ldr r4, _080994A8
	ldr r5, _080994AC
	lsls r6, r1, #1
	adds r0, r6, r5
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	movs r1, #0x98
	lsls r1, r1, #1
	bl __divsi3
	str r0, [sp, #0x50]
	adds r2, r4, #0
	adds r3, r5, #0
	adds r4, r6, #0
	b _080994D2
_080994A8: .4byte gUnk_080B9704
_080994AC: .4byte gUnk_085186DC
_080994B0:
	ldr r2, _08099700
	ldr r3, _08099704
	lsls r4, r1, #1
	adds r0, r4, r3
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	cmp r0, #0
	bge _080994CE
	adds r0, #0xff
_080994CE:
	asrs r0, r0, #8
	str r0, [sp, #0x50]
_080994D2:
	adds r0, r4, r3
	ldrh r0, [r0, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #7
	cmp r0, #0
	bge _080994EC
	adds r0, #0xff
_080994EC:
	asrs r0, r0, #8
	str r0, [sp, #0x4c]
	ldr r0, _08099708
	ldr r0, [r0, #0]
	ldr r3, [r0, #0x14]
	mov r9, r3
	ldr r0, [r0, #0x18]
	mov r8, r0
	ldr r1, _0809970C
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #5
	bl sub_08065158
	ldr r1, [sp, #0x1c]
	adds r1, #0x20
	movs r0, #0x15
	movs r2, #1
	bl sub_08000AF0
	add r1, sp, #0x10
	movs r0, #5
	strb r0, [r1, #0x1d]
	ldr r4, _08099710
	str r4, [sp, #0x54]
	mov r5, sp
	adds r5, #0x44
	str r5, [sp, #0x58]
	mov r0, sp
	adds r0, #0x46
	str r0, [sp, #0x5c]
	add r1, sp, #0x48
	mov sl, r1
_08099534:
	ldr r2, [sp, #0x4c]
	add r9, r2
	ldr r3, [sp, #0x50]
	add r8, r3
	mov r4, r9
	asrs r5, r4, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r8
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x5c]
	bl sub_0800BC08
	bl sub_0800CC98
	cmp r0, #0
	bne _080995C0
	bl sub_0800CD8C
	cmp r0, #0
	bne _080995C0
	bl sub_0800CCCC
	cmp r0, #0
	bne _080995C0
	bl sub_0800CD34
	cmp r0, #0
	bne _080995C0
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #0xa
	mov r2, sl
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	ldr r3, [sp, #0x58]
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldr r5, [sp, #0x5c]
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r4, sl
	ldrh r3, [r4, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0]
	add r0, sp, #0x2c
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #0xa
	bl sub_08007870
_080995C0:
	bl sub_080020F4
	ldr r6, _08099714
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r4, [r0, #0]
	mov r0, r9
	subs r4, r0, r4
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r1, [r0, #0]
	mov r2, r8
	subs r1, r2, r1
	lsls r1, r1, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	asrs r1, r1, #0x10
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bhi _080996CA
	bl sub_0800CDF8
	cmp r0, #0
	bne _080996CA
	bl sub_0800CCCC
	cmp r0, #0
	bne _080996CA
	bl sub_0800CD8C
	cmp r0, #0
	bne _080996CA
	ldr r7, _08099708
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _080996CA
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
	bne _080996CA
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080996CA
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080996CA
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080996CA
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080996CA
	bl sub_080020F4
	ldr r2, [r7, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r4, r6, #0
	adds r4, #0xe4
	adds r1, r1, r4
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _080996CA
	movs r0, #1
	movs r1, #0x1e
	movs r2, #5
	bl sub_08029CEC
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xb0
	ldr r1, _08099718
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r2, [r7, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r1, r1, r4
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
_080996CA:
	bl sub_080003F0
	ldr r4, [sp, #0x54]
	lsls r0, r4, #0x10
	ldr r5, _0809971C
	adds r0, r0, r5
	lsrs r1, r0, #0x10
	str r1, [sp, #0x54]
	asrs r0, r0, #0x10
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq _080996E6
	b _08099534
_080996E6:
	bl sub_0800048C
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08099700: .4byte gUnk_080B9704
_08099704: .4byte gUnk_085186DC
_08099708: .4byte gUnk_030002D0
_0809970C: .4byte 0x00050130
_08099710: .4byte 0x0000010D
_08099714: .4byte gUnk_03003CE0
_08099718: .4byte 0x0000FFFE
_0809971C: .4byte 0xFFFF0000
	thumb_func_end sub_08099468
