	thumb_func_start sub_0803898C
sub_0803898C: @ 0x0803898C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080389C4
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	adds r0, r6, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_0800CE30
	cmp r0, #0
	beq _080389D0
	ldr r0, _080389C8
	ldr r0, [r0, #0]
	ldr r1, _080389CC
	b _080389D6
_080389C4: .4byte gUnk_03003CE0
_080389C8: .4byte gUnk_03005CF4
_080389CC: .4byte 0x000001C3
_080389D0:
	ldr r0, _080389F0
	ldr r0, [r0, #0]
	ldr r1, _080389F4
_080389D6:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r5, r0, #6
	ands r5, r4
	bl sub_0800CE30
	cmp r0, #0
	beq _080389FC
	ldr r0, _080389F0
	ldr r0, [r0, #0]
	ldr r1, _080389F8
	b _08038A02
	.2byte 0x0000
_080389F0: .4byte gUnk_03005CF4
_080389F4: .4byte 0x000001B7
_080389F8: .4byte 0x000001C3
_080389FC:
	ldr r0, _08038A20
	ldr r0, [r0, #0]
	ldr r1, _08038A24
_08038A02:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r4, r0, #5
	movs r0, #1
	ands r4, r0
	bl sub_080020F4
	adds r1, r0, #0
	cmp r1, #0
	beq _08038A1A
	cmp r4, #0
	bne _08038A2C
_08038A1A:
	cmp r5, #0
	beq _08038A7E
	b _08038A2C
_08038A20: .4byte gUnk_03005CF4
_08038A24: .4byte 0x000001B7
_08038A28:
	bl sub_080003F0
_08038A2C:
	bl sub_0805F184
	cmp r0, #0
	bne _08038A28
	b _08038A3A
_08038A36:
	bl sub_080003F0
_08038A3A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038A36
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038A5C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038A64
_08038A5C: .4byte 0x0014027E
_08038A60:
	bl sub_080003F0
_08038A64:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08038A70
	b _08038CE6
_08038A70:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038A60
	bl sub_0805EFBC
	b _08038CE6
_08038A7E:
	cmp r4, #0
	bne _08038A84
	b _08038C98
_08038A84:
	cmp r1, #0
	beq _08038A8A
	b _08038C98
_08038A8A:
	b _08038A90
_08038A8C:
	bl sub_080003F0
_08038A90:
	bl sub_0805F184
	cmp r0, #0
	bne _08038A8C
	b _08038A9E
_08038A9A:
	bl sub_080003F0
_08038A9E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038A9A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038AC0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038AC8
_08038AC0: .4byte 0x0014027F
_08038AC4:
	bl sub_080003F0
_08038AC8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08038ADE
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038AC4
	bl sub_0805EFBC
_08038ADE:
	bl sub_0805CFA0
	movs r1, #1
	cmp r0, #0
	bge _08038AEA
	movs r1, #0
_08038AEA:
	cmp r1, #0
	bne _08038B46
	b _08038AF4
_08038AF0:
	bl sub_080003F0
_08038AF4:
	bl sub_0805F184
	cmp r0, #0
	bne _08038AF0
	b _08038B02
_08038AFE:
	bl sub_080003F0
_08038B02:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038AFE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038B24
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038B2C
_08038B24: .4byte 0x00140282
_08038B28:
	bl sub_080003F0
_08038B2C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08038B38
	b _08038CE6
_08038B38:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038B28
	bl sub_0805EFBC
	b _08038CE6
_08038B46:
	bl sub_0800CE30
	adds r5, r0, #0
	cmp r5, #0
	bne _08038BF2
	ldr r0, _08038B94
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08038B62
	movs r0, #0x33
	bl sub_08006D08
_08038B62:
	movs r1, #1
	movs r2, #0x15
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_08038B72:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08038B72
	movs r4, #0
_08038B7E:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08038B7E
	ldr r0, _08038B98
	movs r1, #6
	bl sub_08068070
	b _08038BA0
_08038B94: .4byte gUnk_030027D0
_08038B98: .4byte sub_0805990C
_08038B9C:
	bl sub_080003F0
_08038BA0:
	bl sub_0805F184
	cmp r0, #0
	bne _08038B9C
	b _08038BAE
_08038BAA:
	bl sub_080003F0
_08038BAE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038BAA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038BD0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038BD8
_08038BD0: .4byte 0x00140280
_08038BD4:
	bl sub_080003F0
_08038BD8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08038BE4
	b _08038CE6
_08038BE4:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038BD4
	bl sub_0805EFBC
	b _08038CE6
_08038BF2:
	ldr r0, _08038C38
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08038C04
	movs r0, #0x33
	bl sub_08006D08
_08038C04:
	movs r1, #1
	movs r2, #0x13
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_08038C14:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08038C14
	movs r4, #0
_08038C20:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08038C20
	ldr r0, _08038C3C
	movs r1, #6
	bl sub_08068070
	b _08038C44
	.2byte 0x0000
_08038C38: .4byte gUnk_030027D0
_08038C3C: .4byte sub_0805990C
_08038C40:
	bl sub_080003F0
_08038C44:
	bl sub_0805F184
	cmp r0, #0
	bne _08038C40
	b _08038C52
_08038C4E:
	bl sub_080003F0
_08038C52:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038C4E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038C74
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038C7C
_08038C74: .4byte 0x00140281
_08038C78:
	bl sub_080003F0
_08038C7C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08038CE6
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038C78
	bl sub_0805EFBC
	b _08038CE6
_08038C94:
	bl sub_080003F0
_08038C98:
	bl sub_0805F184
	cmp r0, #0
	bne _08038C94
	b _08038CA6
_08038CA2:
	bl sub_080003F0
_08038CA6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038CA2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038CC8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038CD0
_08038CC8: .4byte 0x0014027D
_08038CCC:
	bl sub_080003F0
_08038CD0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08038CE6
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038CCC
	bl sub_0805EFBC
_08038CE6:
	adds r0, r6, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08038D14
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_08038D14: .4byte gUnk_03003CE0
	thumb_func_end sub_0803898C
