	thumb_func_start sub_08064E14
sub_08064E14: @ 0x08064E14
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	mov r8, r0
	bl sub_0800CDD0
	bl sub_0800CF90
	bl sub_08015C14
	bl sub_0805EFBC
	b _08064E34
_08064E30:
	bl sub_080003F0
_08064E34:
	bl sub_0800CC98
	cmp r0, #0
	bne _08064E30
	movs r0, #1
	bl sub_080570DC
	bl sub_08006DAC
	movs r5, #0
_08064E48:
	movs r0, #0xf0
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	bl sub_080003F0
	adds r5, #1
	cmp r5, #0x3b
	bls _08064E48
	bl sub_08002204
	cmp r0, #0
	beq _08064F48
	bl sub_0800CE30
	cmp r0, #0
	beq _08064E94
	ldr r0, _08064E8C
	ldr r2, [r0, #0]
	ldr r0, _08064E90
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x7c]
	str r1, [r2, #0xc]
	adds r0, #0x80
	ldr r0, [r0, #0]
	str r0, [r2, #0x10]
	b _08064EA4
	.2byte 0x0000
_08064E8C: .4byte gUnk_03004210
_08064E90: .4byte gUnk_03005CF4
_08064E94:
	ldr r0, _08064F30
	ldr r2, [r0, #0]
	ldr r0, _08064F34
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x74]
	str r0, [r2, #4]
	ldr r0, [r1, #0x78]
	str r0, [r2, #8]
_08064EA4:
	movs r5, #0
	ldr r6, _08064F30
	movs r4, #0xa0
	lsls r4, r4, #1
	ldr r3, _08064F34
	movs r2, #0xd8
	lsls r2, r2, #1
_08064EB2:
	ldr r0, [r6, #0]
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, #6
	bls _08064EB2
	movs r5, #0
	ldr r6, _08064F30
	ldr r4, _08064F38
	ldr r3, _08064F34
	ldr r2, _08064F3C
_08064ED2:
	ldr r0, [r6, #0]
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, #4
	bls _08064ED2
	movs r5, #0
	ldr r6, _08064F30
	movs r4, #0xa6
	lsls r4, r4, #1
	ldr r3, _08064F34
	movs r2, #0xde
	lsls r2, r2, #1
_08064EF6:
	ldr r0, [r6, #0]
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, #6
	bls _08064EF6
	movs r5, #0
	ldr r6, _08064F30
	ldr r4, _08064F40
	ldr r3, _08064F34
	ldr r2, _08064F44
_08064F16:
	ldr r0, [r6, #0]
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, #4
	bls _08064F16
	b _08065022
	.2byte 0x0000
_08064F30: .4byte gUnk_03004210
_08064F34: .4byte gUnk_03005CF4
_08064F38: .4byte 0x00000147
_08064F3C: .4byte 0x000001B7
_08064F40: .4byte 0x00000153
_08064F44: .4byte 0x000001C3
_08064F48:
	bl sub_0800CE30
	cmp r0, #0
	bne _08064FB4
	ldr r3, _08064FA4
	ldr r2, [r3, #0]
	ldr r4, _08064FA8
	ldr r1, [r4, #0]
	ldr r0, [r1, #4]
	str r0, [r2, #0x74]
	ldr r0, [r1, #8]
	str r0, [r2, #0x78]
	movs r5, #0
	adds r6, r3, #0
	movs r3, #0xd8
	lsls r3, r3, #1
	movs r2, #0xa0
	lsls r2, r2, #1
_08064F6C:
	ldr r0, [r6, #0]
	adds r0, r0, r3
	adds r0, r0, r5
	ldr r1, [r4, #0]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, #6
	bls _08064F6C
	movs r5, #0
	ldr r6, _08064FA4
	ldr r4, _08064FAC
	ldr r3, _08064FA8
	ldr r2, _08064FB0
_08064F8C:
	ldr r0, [r6, #0]
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, #4
	bls _08064F8C
	b _08065008
_08064FA4: .4byte gUnk_03005CF4
_08064FA8: .4byte gUnk_03004210
_08064FAC: .4byte 0x000001B7
_08064FB0: .4byte 0x00000147
_08064FB4:
	ldr r3, _080650C4
	ldr r1, [r3, #0]
	ldr r4, _080650C8
	ldr r2, [r4, #0]
	ldr r0, [r2, #0xc]
	str r0, [r1, #0x7c]
	adds r1, #0x80
	ldr r0, [r2, #0x10]
	str r0, [r1, #0]
	movs r5, #0
	adds r6, r3, #0
	movs r3, #0xde
	lsls r3, r3, #1
	movs r2, #0xa6
	lsls r2, r2, #1
_08064FD2:
	ldr r0, [r6, #0]
	adds r0, r0, r3
	adds r0, r0, r5
	ldr r1, [r4, #0]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, #6
	bls _08064FD2
	movs r5, #0
	ldr r6, _080650C4
	ldr r4, _080650CC
	ldr r3, _080650C8
	ldr r2, _080650D0
_08064FF2:
	ldr r0, [r6, #0]
	adds r0, r0, r4
	adds r0, r0, r5
	ldr r1, [r3, #0]
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r5, #1
	cmp r5, #4
	bls _08064FF2
_08065008:
	movs r0, #7
	bl sub_08057AE8
	cmp r0, #0
	beq _08065018
	movs r0, #0x15
	bl sub_08057A5C
_08065018:
	movs r0, #0x15
	bl sub_08057AE8
	bl sub_0805C7B8
_08065022:
	movs r5, #0
	ldr r6, _080650C8
	ldr r7, _080650C4
	adds r4, r6, #0
	movs r3, #0xf3
	lsls r3, r3, #1
	movs r2, #0
_08065030:
	ldr r0, [r4, #0]
	lsls r1, r5, #5
	adds r0, r0, r1
	adds r0, r0, r3
	strh r2, [r0, #0]
	adds r5, #1
	cmp r5, #0xf
	bls _08065030
	ldr r1, [r6, #0]
	movs r0, #2
	str r0, [r1, #0]
	ldr r0, [r7, #0]
	movs r2, #0xa5
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	adds r1, #0xda
	strh r0, [r1, #0]
	bl sub_08006C14
	bl sub_0800CB9C
	cmp r0, #0
	beq _08065064
	bl sub_080021D4
_08065064:
	bl sub_0807A124
	cmp r0, #0
	bne _080650F8
	bl sub_08006BF8
	bl sub_0805F07C
	ldr r1, _080650D4
	ldr r0, [sp, #8]
	ands r0, r1
	ldr r1, _080650D8
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	add r1, sp, #8
	bl sub_08000AA8
	bl sub_0800CCB8
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _080650DC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	adds r4, r0, #0
_080650A2:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	bl sub_080003F0
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080650A2
	movs r0, #0xa
	bl sub_0801ABE8
	b _080650E4
_080650C4: .4byte gUnk_03005CF4
_080650C8: .4byte gUnk_03004210
_080650CC: .4byte 0x000001C3
_080650D0: .4byte 0x00000153
_080650D4: .4byte 0xFFFF0000
_080650D8: .4byte 0x00001C08
_080650DC: .4byte 0x001403D9
_080650E0:
	bl sub_080003F0
_080650E4:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080650E0
	bl sub_0800CBAC
	movs r0, #0
	bl SoftReset
	b _0806512C
_080650F8:
	bl sub_08006BF8
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _08065148
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	adds r4, r0, #0
_08065112:
	movs r0, #0x80
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	bl sub_080003F0
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08065112
_0806512C:
	bl sub_0800CDE4
	mov r0, r8
	cmp r0, #0
	bne _0806513C
	movs r0, #0
	bl SoftReset
_0806513C:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08065148: .4byte 0x001403DA
	thumb_func_end sub_08064E14
