	thumb_func_start sub_08005B88
sub_08005B88: @ 0x08005B88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf4
	str r0, [sp, #0xc0]
	add r0, sp, #0x74
	ldr r1, _08005C74
	movs r2, #2
	bl sub_080B96A4
	add r0, sp, #0x40
	ldr r1, _08005C78
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r2, #0
	adds r3, r5, #0
	bl sub_08065158
	add r6, sp, #0xc
	ldr r1, _08005C7C
	str r4, [sp, #0]
	adds r0, r6, #0
	movs r2, #0
	adds r3, r5, #0
	bl sub_08065158
	movs r0, #0
	bl sub_0801A6D4
	ldr r0, _08005C80
	strh r4, [r0, #2]
	strh r4, [r0, #0]
	strh r4, [r0, #6]
	strh r4, [r0, #4]
	strh r4, [r0, #0xa]
	strh r4, [r0, #8]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0xc]
	movs r0, #0
	movs r1, #0x13
	bl sub_0801A664
	movs r0, #0xe0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #3
	bl sub_0801AB50
	movs r0, #0
	str r0, [sp, #0xc4]
	movs r1, #0xa
	str r1, [sp, #0xc8]
	add r0, sp, #4
	add r1, sp, #8
	add r2, sp, #0xc4
	ldrh r2, [r2, #0]
	strh r2, [r1, #0]
	add r3, sp, #0xc4
	ldrh r3, [r3, #0]
	strh r3, [r0, #0]
	add r2, sp, #0xc4
	ldrh r2, [r2, #0]
	strh r2, [r1, #2]
	add r3, sp, #0xc4
	ldrh r3, [r3, #0]
	strh r3, [r0, #2]
	movs r0, #0
	str r0, [sp, #0xd0]
	movs r1, #0
	str r1, [sp, #0xcc]
	movs r2, #0
	str r2, [sp, #0xd8]
	movs r3, #0x2c
	str r3, [sp, #0xe8]
	movs r0, #8
	str r0, [sp, #0xe4]
	movs r1, #8
	str r1, [sp, #0xdc]
	movs r2, #0x2c
	str r2, [sp, #0xe0]
	ldr r3, [sp, #0xc0]
	ldrb r3, [r3, #7]
	mov r9, r3
	movs r0, #0
	mov sl, r0
	movs r0, #0x6e
	bl sub_08001108
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xf0]
	ldr r0, _08005C84
	bl sub_0800115C
	str r0, [sp, #0xec]
	bl sub_08000D8C
_08005C58:
	bl sub_0801AAE0
	adds r1, r0, #0
	cmp r1, #0
	bne _08005C66
	ldr r0, _08005C88
	strh r1, [r0, #0]
_08005C66:
	mov r1, sl
	cmp r1, #0
	beq _08005C8C
	cmp r1, #1
	bne _08005C72
	b _08005D90
_08005C72:
	b _08005E38
_08005C74: .4byte gUnk_080B99D4
_08005C78: .4byte 0x00050002
_08005C7C: .4byte 0x00050006
_08005C80: .4byte gUnk_03001250
_08005C84: .4byte sub_080066A8
_08005C88: .4byte gUnk_03001324
_08005C8C:
	ldr r0, _08005CB0
	ldrh r1, [r0, #0]
	adds r2, r0, #0
	cmp r1, #1
	bne _08005CCE
	ldr r2, [sp, #0xc4]
	cmp r2, #1
	bne _08005CC2
	ldr r3, [sp, #0xc0]
	ldrb r0, [r3, #5]
	cmp r0, #0
	bne _08005CB4
	movs r0, #3
	mov sl, r0
	movs r1, #0
	mov r9, r1
	b _08005CC6
	.2byte 0x0000
_08005CB0: .4byte gUnk_03001324
_08005CB4:
	movs r2, #1
	mov sl, r2
	movs r3, #0x62
	str r3, [sp, #0xe8]
	movs r0, #0x3c
	str r0, [sp, #0xe4]
	b _08005CC6
_08005CC2:
	movs r1, #3
	mov sl, r1
_08005CC6:
	movs r0, #0xf
	bl sub_0805865C
	b _08005E38
_08005CCE:
	ldr r3, [sp, #0xc4]
	cmp r3, #1
	bne _08005CEC
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08005CEC
	movs r0, #0xe
	bl sub_0805865C
	movs r0, #0x2c
	str r0, [sp, #0xe8]
	movs r1, #0
	str r1, [sp, #0xc4]
	b _08005E38
_08005CEC:
	ldr r3, [sp, #0xc4]
	cmp r3, #0
	bne _08005D0C
	ldrh r1, [r2, #0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08005D0C
	movs r0, #0xe
	bl sub_0805865C
	movs r0, #0x52
	str r0, [sp, #0xe8]
	movs r1, #1
	str r1, [sp, #0xc4]
	b _08005E38
_08005D0C:
	ldrh r0, [r2, #0]
	cmp r0, #2
	beq _08005D14
	b _08005E38
_08005D14:
	movs r0, #0x10
	bl sub_0805865C
	movs r0, #6
	bl sub_0801ABE8
	b _08005D26
_08005D22:
	bl sub_080003F0
_08005D26:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08005D22
	ldr r4, _08005D84
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08005D40
	adds r0, r4, #0
	bl sub_080003A8
_08005D40:
	movs r0, #0x80
	lsls r0, r0, #5
	bl sub_08001494
	ldr r1, _08005D88
	str r1, [r4, #0xc]
	ldr r2, _08005D8C
	adds r1, r0, r2
	str r1, [r4, #0x10]
	str r0, [r4, #0x20]
	movs r0, #1
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
	bl sub_08000E48
	ldr r0, [sp, #0xec]
	bl sub_0800115C
	ldr r0, [sp, #0xf0]
	bl sub_08001108
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	bl sub_080003F0
	b _08006074
	.2byte 0x0000
_08005D84: .4byte gUnk_03002840
_08005D88: .4byte sub_08002B70
_08005D8C: .4byte 0x00000FFC
_08005D90:
	ldr r0, _08005DB4
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08005DB8
	ldr r3, [sp, #0xc4]
	cmp r3, #1
	bne _08005DAE
	mov r0, r9
	cmp r0, #1
	bne _08005DAE
	movs r0, #0xe
	bl sub_0805865C
_08005DAE:
	movs r1, #0
	mov r9, r1
	b _08005E38
_08005DB4: .4byte gUnk_03001308
_08005DB8:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08005DD8
	ldr r2, [sp, #0xc4]
	cmp r2, #1
	bne _08005DD2
	mov r3, r9
	cmp r3, #0
	bne _08005DD2
	movs r0, #0xe
	bl sub_0805865C
_08005DD2:
	movs r0, #1
	mov r9, r0
	b _08005E38
_08005DD8:
	ldr r0, _08005E14
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _08005E18
	movs r1, #3
	mov sl, r1
	movs r0, #0xf
	bl sub_0805865C
	movs r0, #0
	movs r1, #0xa
	bl sub_0801A664
	bl sub_08000E48
	ldr r0, [sp, #0xec]
	bl sub_0800115C
	str r0, [sp, #0xec]
	ldr r0, [sp, #0xf0]
	bl sub_08001108
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	b _08005E38
	.2byte 0x0000
_08005E14: .4byte gUnk_03001324
_08005E18:
	cmp r0, #2
	bne _08005E38
	movs r2, #0
	mov sl, r2
	movs r3, #8
	str r3, [sp, #0xe4]
	movs r0, #0x10
	bl sub_0805865C
	movs r0, #0x52
	str r0, [sp, #0xe8]
	ldr r1, [sp, #0xc4]
	cmp r1, #0
	bne _08005E38
	movs r2, #0x3c
	str r2, [sp, #0xe8]
_08005E38:
	ldr r3, [sp, #0xc0]
	ldrb r0, [r3, #5]
	cmp r0, #0
	beq _08005E6E
	mov r1, r9
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0]
	add r0, sp, #0xc
	movs r1, #0x50
	movs r2, #0x64
	movs r3, #0x26
	bl sub_08065230
	movs r0, #0
	mov r2, r9
	cmp r2, #0
	bne _08005E60
	movs r0, #1
_08005E60:
	str r0, [sp, #0]
	add r0, sp, #0xc
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0x27
	bl sub_08065230
_08005E6E:
	add r4, sp, #0x78
	ldr r3, [sp, #0xe8]
	ldr r0, [sp, #0xe0]
	subs r6, r3, r0
	ldr r1, [sp, #0xe4]
	ldr r2, [sp, #0xdc]
	subs r1, r1, r2
	mov r8, r1
	add r5, sp, #0x9c
	ldr r3, [sp, #0xc8]
	ldr r0, [sp, #0xc4]
	cmp r3, r0
	beq _08005EC2
	movs r1, #0
	str r1, [sp, #0xd4]
	movs r2, #0
	str r2, [sp, #0xd0]
	movs r3, #0
	str r3, [sp, #0xcc]
	movs r0, #0
	str r0, [sp, #0xd8]
	ldr r0, _08005F40
	str r3, [r0, #0]
	adds r2, r4, #0
	movs r1, #0xfd
_08005EA0:
	adds r0, r2, r3
	strb r1, [r0, #0]
	adds r3, #1
	cmp r3, #0x1f
	bls _08005EA0
	ldr r1, [sp, #0xc4]
	ldr r2, _08005F44
	adds r0, r1, r2
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r7, r0, #0
	adds r7, #2
	ldr r3, [sp, #0xc4]
	str r3, [sp, #0xc8]
_08005EC2:
	ldr r0, [sp, #0xcc]
	adds r1, r0, #0
	adds r1, #1
	str r1, [sp, #0xcc]
	cmp r0, #2
	bls _08005F1C
	movs r2, #0
	str r2, [sp, #0xcc]
	ldrb r0, [r7, #0]
	cmp r0, #0xff
	bne _08005EDA
	adds r7, #1
_08005EDA:
	ldrb r0, [r7, #0]
	cmp r0, #0xfe
	bne _08005EE2
	adds r7, #3
_08005EE2:
	ldrb r0, [r7, #0]
	cmp r0, #0xfd
	bne _08005EFC
	ldr r3, [sp, #0xc4]
	ldr r1, _08005F44
	adds r0, r3, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r7, r0, #0
	adds r7, #2
_08005EFC:
	ldr r2, [sp, #0xd8]
	adds r1, r4, r2
	ldrb r0, [r7, #0]
	strb r0, [r1, #0]
	adds r7, #1
	adds r2, #1
	str r2, [sp, #0xd8]
	cmp r2, #0x1f
	bls _08005F1C
	movs r3, #0
	str r3, [sp, #0xd8]
	add r1, sp, #0x98
	movs r0, #0xfd
	strb r0, [r1, #0]
	movs r0, #1
	str r0, [sp, #0xd0]
_08005F1C:
	ldr r1, [sp, #0xd0]
	cmp r1, #0
	beq _08005F4C
	ldr r1, _08005F40
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	ldr r2, [sp, #0xd4]
	adds r2, #1
	str r2, [sp, #0xd4]
	cmp r2, #7
	bls _08005F48
	movs r3, #0
	str r3, [sp, #0xd4]
	movs r0, #0xa
	str r0, [sp, #0xcc]
	b _08005F4C
	.2byte 0x0000
_08005F40: .4byte gUnk_03003474
_08005F44: .4byte 0x00000451
_08005F48:
	movs r1, #0
	str r1, [sp, #0xcc]
_08005F4C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xe
	bl sub_0801A3D0
	lsrs r0, r6, #0x1f
	adds r0, r6, r0
	asrs r0, r0, #1
	ldr r2, [sp, #0xe0]
	adds r2, r2, r0
	str r2, [sp, #0xe0]
	ldr r3, [sp, #0xe8]
	subs r0, r3, r2
	cmp r0, #0
	bge _08005F6C
	negs r0, r0
_08005F6C:
	cmp r0, #1
	bgt _08005F74
	ldr r0, [sp, #0xe8]
	str r0, [sp, #0xe0]
_08005F74:
	mov r1, r8
	lsrs r0, r1, #0x1f
	add r0, r8
	asrs r0, r0, #1
	ldr r2, [sp, #0xdc]
	adds r2, r2, r0
	str r2, [sp, #0xdc]
	ldr r3, [sp, #0xe4]
	subs r0, r3, r2
	cmp r0, #0
	bge _08005F8C
	negs r0, r0
_08005F8C:
	cmp r0, #1
	bgt _08005F94
	ldr r0, [sp, #0xe4]
	str r0, [sp, #0xdc]
_08005F94:
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0xc
	ldr r1, [sp, #0xdc]
	ldr r2, [sp, #0xe0]
	movs r3, #0x15
	bl sub_08065230
	ldr r0, _08006028
	bl sub_08007290
	adds r4, r0, #2
	movs r1, #0
	mov r8, r1
	movs r6, #0x80
	lsls r6, r6, #0xb
_08005FB4:
	movs r3, #0
	ldrb r1, [r4, #0]
	adds r0, r1, #0
	cmp r0, #0xfd
	beq _08005FDA
	strb r1, [r5, #0]
	cmp r0, #0xff
	beq _08005FD8
_08005FC4:
	adds r3, #1
	adds r4, #1
	ldrb r2, [r4, #0]
	adds r1, r2, #0
	cmp r1, #0xfd
	beq _08005FDA
	adds r0, r5, r3
	strb r2, [r0, #0]
	cmp r1, #0xff
	bne _08005FC4
_08005FD8:
	adds r4, #1
_08005FDA:
	adds r1, r5, r3
	movs r0, #0xfd
	strb r0, [r1, #0]
	cmp r3, #0
	beq _08006004
	lsrs r2, r6, #0x10
	adds r0, r5, #0
	movs r1, #2
	bl sub_0801A3D0
	ldrb r0, [r4, #0]
	cmp r0, #0xfd
	beq _08006004
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r6, r6, r2
	movs r3, #1
	add r8, r3
	mov r0, r8
	cmp r0, #1
	bls _08005FB4
_08006004:
	ldr r0, _0800602C
	bl sub_08007290
	adds r0, #2
	movs r1, #2
	movs r2, #9
	bl sub_0801A3D0
	bl sub_080003F0
	mov r1, sl
	cmp r1, #3
	beq _08006020
	b _08005C58
_08006020:
	movs r0, #6
	bl sub_0801ABE8
	b _08006034
_08006028: .4byte 0x0014044D
_0800602C: .4byte 0x0014044E
_08006030:
	bl sub_080003F0
_08006034:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08006030
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	bl sub_080003F0
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	bl sub_080003F0
	ldr r2, [sp, #0xc4]
	cmp r2, #0
	bne _08006060
	ldr r3, [sp, #0xc0]
	strb r2, [r3, #6]
	b _08006066
_08006060:
	movs r0, #1
	ldr r1, [sp, #0xc0]
	strb r0, [r1, #6]
_08006066:
	mov r3, r9
	ldr r2, [sp, #0xc0]
	strb r3, [r2, #7]
	ldr r1, _08006088
	ldr r0, _08006084
	bl sub_08000420
_08006074:
	add sp, #0xf4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08006084: .4byte 0x5A112EBF
_08006088: .4byte 0x00000002
	thumb_func_end sub_08005B88
