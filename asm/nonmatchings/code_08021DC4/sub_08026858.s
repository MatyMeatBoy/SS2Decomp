	thumb_func_start sub_08026858
sub_08026858: @ 0x08026858
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	add r5, sp, #0x44
	movs r0, #0
	strh r0, [r5, #0]
	mov r4, sp
	adds r4, #0x46
	strh r0, [r4, #0]
	mov sl, r0
	ldr r0, _080268DC
	bl sub_08007290
	str r0, [sp, #0x4c]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080268E0
	adds r6, r1, r0
	ldr r1, _080268E4
	movs r3, #1
	negs r3, r3
	mov r0, sl
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0xe
	bl sub_08065158
	ldr r1, [sp, #0x1c]
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	mov r1, sp
	adds r1, #0x3b
	movs r0, #0xe
	strb r0, [r1, #0]
	bl sub_0800CF48
	cmp r0, #0
	beq _080268BC
	b _08026C3A
_080268BC:
	ldr r0, _080268E8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsls r1, r0, #0x10
	lsrs r0, r1, #0x18
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080268D0
	b _08026C3A
_080268D0:
	lsrs r0, r1, #0x14
	ands r0, r3
	cmp r0, #0
	beq _080268DA
	b _08026B42
_080268DA:
	b _080268F0
_080268DC: .4byte 0x001403D4
_080268E0: .4byte gUnk_03003CE0
_080268E4: .4byte 0x0005000D
_080268E8: .4byte gUnk_03005CF4
_080268EC:
	bl sub_080003F0
_080268F0:
	bl sub_0800CDF8
	cmp r0, #0
	bne _080268EC
	bl sub_080021A8
	cmp r0, #0
	beq _08026902
	b _08026C3A
_08026902:
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	lsrs r0, r0, #8
	add r5, sp, #0x48
	strh r0, [r5, #0]
	adds r0, r6, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	lsrs r0, r0, #8
	mov r4, sp
	adds r4, #0x4a
	strh r0, [r4, #0]
	bl sub_0806569C
	mov r8, r5
	mov r9, r4
	cmp r0, #0
	bne _080269F0
	ldrh r0, [r6, #0x20]
	cmp r0, #0xe
	beq _080269F0
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0xf0
	subs r0, r0, r2
	cmp r0, #0
	bge _0802693C
	negs r0, r0
_0802693C:
	cmp r0, #0x17
	bgt _080269F0
	mov r3, r9
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #0x88
	subs r0, r0, r2
	cmp r0, #0
	bge _08026950
	negs r0, r0
_08026950:
	cmp r0, #0xf
	bgt _080269F0
	bl sub_0800CCCC
	cmp r0, #0
	beq _080269DE
	ldr r0, _080269B0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x13
	bne _080269DE
	ldr r4, [sp, #0x4c]
	adds r4, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	ldr r2, [r6, #0x30]
	movs r4, #0x80
	lsls r4, r4, #3
	ands r4, r2
	cmp r4, #0
	bne _080269B8
	ldrh r1, [r6, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080269A8
	ldr r0, _080269B4
	orrs r2, r0
	str r2, [r6, #0x30]
	bl sub_08067D74
	adds r0, r6, #0
	adds r0, #0xd8
	str r4, [r0, #0]
_080269A8:
	movs r3, #0
	str r3, [sp, #0x50]
	b _080269DE
	.2byte 0x0000
_080269B0: .4byte gUnk_03003170
_080269B4: .4byte 0x00000403
_080269B8:
	ldr r0, [sp, #0x50]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0x50]
	cmp r0, #0x3c
	bls _080269DE
	ldr r0, _080269E4
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080269DE
	ldr r0, _080269E8
	ands r2, r0
	str r2, [r6, #0x30]
	movs r0, #0
	ldr r1, _080269EC
	bl sub_08057328
_080269DE:
	movs r2, #1
	mov sl, r2
	b _08026A0A
_080269E4: .4byte gUnk_03001324
_080269E8: .4byte 0xFFFFFBFF
_080269EC: .4byte sub_08024538
_080269F0:
	mov r3, sl
	cmp r3, #0
	beq _08026A02
	movs r0, #0
	mov sl, r0
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
_08026A02:
	ldr r0, [r6, #0x30]
	ldr r1, _08026A1C
	ands r0, r1
	str r0, [r6, #0x30]
_08026A0A:
	bl sub_08002204
	cmp r0, #0
	beq _08026AAE
	movs r5, #0
	movs r4, #0
	adds r1, r7, #1
	str r1, [sp, #0x54]
	b _08026A70
_08026A1C: .4byte 0xFF7FFFFF
_08026A20:
	ldr r1, _08026A94
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r4, r0
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r3, r8
	strh r0, [r3, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r1, r0, #0x14
	mov r7, r9
	strh r1, [r7, #0]
	movs r7, #0
	ldrsh r0, [r3, r7]
	movs r3, #0xf0
	subs r0, r0, r3
	cmp r0, #0
	bge _08026A52
	negs r0, r0
_08026A52:
	cmp r0, #0x17
	bgt _08026A6E
	movs r7, #0x88
	subs r0, r1, r7
	cmp r0, #0
	bge _08026A60
	negs r0, r0
_08026A60:
	cmp r0, #0xf
	bgt _08026A6E
	ldrb r0, [r2, #7]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _08026A6E
	adds r5, #1
_08026A6E:
	adds r4, #1
_08026A70:
	bl sub_08002164
	cmp r4, r0
	blo _08026A20
	bl sub_08002164
	ldr r7, [sp, #0x54]
	cmp r5, r0
	beq _08026A84
	movs r7, #0
_08026A84:
	cmp r7, #2
	bls _08026AAE
	ldr r0, _08026A98
	ldr r1, [r0, #0]
	ldr r0, _08026A9C
	str r0, [r1, #0x40]
	b _08026AA4
	.2byte 0x0000
_08026A94: .4byte gUnk_03003CE0
_08026A98: .4byte gUnk_03005CF4
_08026A9C: .4byte 0x000092BC
_08026AA0:
	bl sub_080003F0
_08026AA4:
	bl sub_08067DC8
	cmp r0, #0
	beq _08026AA0
	b _08026B42
_08026AAE:
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #1
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	bl sub_0800CC98
	adds r4, r0, #0
	cmp r4, #0
	bne _08026B2C
	bl sub_0800CCCC
	cmp r0, #0
	beq _08026B2C
	ldr r0, _08026B58
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x13
	bne _08026B2C
	ldr r1, [sp, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	movs r1, #0xf0
	lsls r0, r1, #0x10
	movs r2, #0x88
	lsls r1, r2, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r4, [sp, #4]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	mov r2, r8
	mov r3, r9
	bl sub_0800BC08
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r2, r9
	movs r3, #0
	ldrsh r1, [r2, r3]
	add r2, sp, #0x44
	ldrh r3, [r2, #0]
	movs r2, #3
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08008E74
_08026B2C:
	bl sub_080003F0
	ldr r0, _08026B5C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08026B42
	b _080268F0
_08026B42:
	movs r0, #0x24
	bl sub_0805865C
	movs r5, #1
	add r7, sp, #0x48
	mov r6, sp
	adds r6, #0x4a
	movs r3, #0xf0
	lsls r3, r3, #0x10
	mov r8, r3
	b _08026B64
_08026B58: .4byte gUnk_03003170
_08026B5C: .4byte gUnk_03005CF4
_08026B60:
	bl sub_080003F0
_08026B64:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08026B60
	bl sub_080021A8
	cmp r0, #0
	bne _08026C3A
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #1
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_08065370
	bl sub_0800CC98
	adds r4, r0, #0
	cmp r4, #0
	bne _08026BEC
	bl sub_0800CCCC
	cmp r0, #0
	beq _08026BEC
	ldr r0, _08026C4C
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x13
	bne _08026BEC
	ldr r1, [sp, #0x1c]
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	movs r2, #0x88
	lsls r1, r2, #0x10
	movs r0, #0x30
	str r0, [sp, #0]
	str r4, [sp, #4]
	mov r3, r8
	asrs r0, r3, #0x10
	asrs r1, r1, #0x10
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	add r2, sp, #0x44
	ldrh r3, [r2, #0]
	movs r2, #3
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08008E74
_08026BEC:
	bl sub_080003F0
	adds r0, r5, #0
	adds r5, #1
	cmp r0, #0x63
	bls _08026B64
	bl sub_0800D014
	movs r1, #0
	ldr r6, _08026C50
	movs r5, #0
_08026C02:
	movs r2, #0
	lsls r0, r1, #2
	adds r4, r1, #1
	adds r3, r0, r1
_08026C0A:
	ldr r0, [r6, #0]
	adds r1, r2, r3
	movs r7, #0xe4
	lsls r7, r7, #1
	adds r0, r0, r7
	adds r0, r0, r1
	strb r5, [r0, #0]
	adds r2, #1
	cmp r2, #4
	bls _08026C0A
	adds r1, r4, #0
	cmp r1, #0x13
	bls _08026C02
	bl sub_080003F0
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
	bl sub_0800CDAC
	movs r0, #3
	bl sub_08057624
_08026C3A:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08026C4C: .4byte gUnk_03003170
_08026C50: .4byte gUnk_03005CF4
	thumb_func_end sub_08026858
