	thumb_func_start sub_080B3648
sub_080B3648: @ 0x080B3648
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x16c
	ldr r2, _080B37E4
	ldr r0, [r2, #0]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0]
	ldr r6, _080B37E8
	ldr r0, _080B37EC
	ldr r0, [r0, #0]
	mov sl, r0
	movs r0, #0xb8
	lsls r0, r0, #2
	add r0, sl
	str r0, [r6, #0]
	movs r1, #0
	mov r8, r1
	movs r4, #1
	movs r5, #1
	strh r5, [r0, #0]
	movs r1, #6
	strh r1, [r0, #2]
	ldr r7, _080B37F0
	adds r7, #0x90
	ldrh r2, [r7, #0]
	movs r1, #0xca
	lsls r1, r1, #2
	add r1, sl
	strh r2, [r1, #0]
	ldr r2, _080B37F4
	add r2, sl
	mov r9, r2
	ldr r1, _080B37F8
	movs r2, #1
	bl sub_0801623C
	ldr r0, [r6, #0]
	bl sub_0801A0A4
	ldr r2, [r6, #0]
	mov r3, r9
	movs r0, #6
	ldrsh r1, [r3, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	movs r3, #0xeb
	lsls r3, r3, #1
	adds r1, r2, r3
	strh r0, [r1, #0]
	adds r1, r2, #0
	adds r1, #0x5c
	strh r0, [r1, #0]
	mov r1, r9
	movs r3, #4
	ldrsh r0, [r1, r3]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r3, #0xea
	lsls r3, r3, #1
	adds r1, r2, r3
	strh r0, [r1, #0]
	adds r1, r2, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	ldr r1, _080B37FC
	adds r0, r2, r1
	strb r4, [r0, #0]
	ldr r0, [r6, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r4, [r0, #0]
	ldr r0, [r6, #0]
	mov r3, r8
	strh r3, [r0, #0xc]
	str r5, [r0, #0x50]
	ldr r0, _080B3800
	ldrh r0, [r0, #0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x12c]
	ldr r1, _080B3804
	movs r4, #1
	negs r4, r4
	str r5, [sp, #0]
	add r0, sp, #0x10
	ldr r2, [sp, #0x12c]
	adds r3, r4, #0
	bl sub_08065158
	add r0, sp, #0x44
	ldr r1, _080B3808
	str r5, [sp, #0]
	ldr r2, [sp, #0x12c]
	adds r3, r4, #0
	bl sub_08065158
	add r0, sp, #0x78
	ldr r1, _080B380C
	str r5, [sp, #0]
	ldr r2, [sp, #0x12c]
	adds r3, r4, #0
	bl sub_08065158
	add r0, sp, #0xac
	ldr r1, _080B3810
	str r5, [sp, #0]
	ldr r2, [sp, #0x12c]
	adds r3, r4, #0
	bl sub_08065158
	add r0, sp, #0x10
	add r4, sp, #0x12c
	ldrb r4, [r4, #0]
	strb r4, [r0, #0x1c]
	add r0, sp, #0x60
	add r1, sp, #0x12c
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	add r0, sp, #0x94
	add r2, sp, #0x12c
	ldrb r2, [r2, #0]
	strb r2, [r0, #0]
	add r0, sp, #0xc8
	add r3, sp, #0x12c
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
	ldr r2, [r6, #0]
	adds r0, r2, #0
	adds r0, #0x6e
	mov r4, r8
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	strh r5, [r2, #0]
	movs r0, #5
	strh r0, [r2, #2]
	ldrh r1, [r7, #0]
	adds r0, r2, #0
	adds r0, #0x48
	strh r1, [r0, #0]
	ldrb r0, [r2, #0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r3, r2, r1
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldr r0, [r6, #0]
	ldrh r2, [r0, #2]
	ldr r3, _080B3814
	adds r1, r0, r3
	strh r2, [r1, #0]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #0]
	movs r6, #0
	str r6, [sp, #0x138]
	movs r0, #0
	str r0, [sp, #0x134]
	movs r1, #0
	str r1, [sp, #0x164]
	movs r2, #0
	str r2, [sp, #0x15c]
	movs r3, #0
	str r3, [sp, #0x150]
	movs r4, #0
	str r4, [sp, #0x154]
	str r6, [sp, #0x13c]
	str r0, [sp, #0x160]
	movs r1, #1
	str r1, [sp, #0x158]
	movs r2, #1
	str r2, [sp, #0x168]
	str r3, [sp, #0x128]
	add r4, sp, #0xf0
	ldr r6, _080B3818
	add sl, r6
	mov r1, sl
	ldrh r0, [r1, #0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	adds r0, r4, #0
	bl sub_08097F70
	bl _080B43A4
_080B37E4: .4byte gUnk_030056FC
_080B37E8: .4byte gUnk_030007BC
_080B37EC: .4byte gUnk_030056F4
_080B37F0: .4byte gUnk_03003170
_080B37F4: .4byte 0x000004E4
_080B37F8: .4byte gUnk_084AA7B0
_080B37FC: .4byte 0x000001FD
_080B3800: .4byte gUnk_030007C8
_080B3804: .4byte 0x00050019
_080B3808: .4byte 0x0005001A
_080B380C: .4byte 0x0005001B
_080B3810: .4byte 0x0005001C
_080B3814: .4byte 0x00000202
_080B3818: .4byte 0x000005BA
_080B381C:
	ldr r0, _080B3864
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xa
	bne _080B3830
	ldr r2, [sp, #0x138]
	cmp r2, #0
	bne _080B3830
	movs r3, #8
	str r3, [sp, #0x138]
_080B3830:
	bl sub_08058DB0
	movs r4, #0xd6
	add r4, r9
	mov r8, r4
	cmp r0, #0
	beq _080B3840
	b _080B3E94
_080B3840:
	ldr r4, _080B3864
	ldr r0, [r4, #0]
	bl sub_0801C8F0
	ldr r0, [r4, #0]
	ldr r6, _080B3868
	adds r0, r0, r6
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #0x13
	bls _080B3858
	b _080B3E94
_080B3858:
	lsls r0, r0, #2
	ldr r1, _080B386C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080B3864: .4byte gUnk_030007BC
_080B3868: .4byte 0x000001FD
_080B386C: .4byte _080B3870
_080B3870:
	.4byte _080B38FC
_080B3874: .4byte _080B38C0
_080B3878: .4byte _080B3E94
_080B387C: .4byte _080B3928
_080B3880: .4byte _080B39C8
_080B3884: .4byte _080B3A70
_080B3888: .4byte _080B3E94
_080B388C: .4byte _080B3E94
_080B3890: .4byte _080B3E94
_080B3894: .4byte _080B3E94
_080B3898: .4byte _080B3BA0
_080B389C: .4byte _080B3CE0
_080B38A0: .4byte _080B3D78
_080B38A4: .4byte _080B3E94
_080B38A8: .4byte _080B3E58
_080B38AC: .4byte _080B3A30
_080B38B0: .4byte _080B3AE0
_080B38B4: .4byte _080B3C34
_080B38B8: .4byte _080B3E94
_080B38BC: .4byte _080B3E0C
_080B38C0:
	ldr r4, _080B38F4
	ldr r1, [r4, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #0]
	bl sub_080682B8
	movs r1, #0xd6
	add r1, r9
	mov r8, r1
	cmp r0, #0
	bne _080B38DA
	b _080B3E94
_080B38DA:
	ldr r1, [r4, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrb r0, [r0, #0]
	ldr r3, _080B38F8
	adds r1, r1, r3
	strb r0, [r1, #0]
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0]
	bl sub_08065E38
	b _080B3E94
_080B38F4: .4byte gUnk_030007BC
_080B38F8: .4byte 0x000001FD
_080B38FC:
	ldr r2, _080B3920
	ldr r1, [r2, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	movs r4, #0
	str r4, [sp, #0x140]
	movs r6, #0xff
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r0, #0xf
	strb r0, [r1, #0]
	ldr r0, [r2, #0]
	ldr r1, _080B3924
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	b _080B3A58
_080B3920: .4byte gUnk_030007BC
_080B3924: .4byte 0x000001FD
_080B3928:
	ldr r2, _080B3940
	ldr r1, [r2, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	ldr r3, [sp, #0x15c]
	cmp r3, #4
	bhi _080B3996
	lsls r0, r3, #2
	ldr r1, _080B3944
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080B3940: .4byte gUnk_030007BC
_080B3944: .4byte _080B3948
_080B3948:
	.4byte _080B395C
_080B394C: .4byte _080B3968
_080B3950: .4byte _080B3974
_080B3954: .4byte _080B397E
_080B3958: .4byte _080B398A
_080B395C:
	ldr r0, [r2, #0]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r0, r0, r4
	movs r1, #0xd
	b _080B3994
_080B3968:
	ldr r0, [r2, #0]
	movs r6, #0xff
	lsls r6, r6, #1
	adds r0, r0, r6
	movs r1, #0x11
	b _080B3994
_080B3974:
	ldr r0, [r2, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	b _080B3992
_080B397E:
	ldr r0, [r2, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #0xc
	b _080B3994
_080B398A:
	ldr r0, [r2, #0]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r0, r0, r3
_080B3992:
	movs r1, #6
_080B3994:
	strb r1, [r0, #0]
_080B3996:
	movs r4, #0
	str r4, [sp, #0x140]
	ldr r6, [sp, #0x15c]
	cmp r6, #4
	beq _080B39AA
	adds r0, r6, #0
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080B39AC
_080B39AA:
	movs r0, #0
_080B39AC:
	str r0, [sp, #0x15c]
	ldr r2, _080B39C0
	ldr r0, [r2, #0]
	ldr r1, _080B39C4
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	b _080B3A58
	.2byte 0x0000
_080B39C0: .4byte gUnk_030007BC
_080B39C4: .4byte 0x000001FD
_080B39C8:
	ldr r4, _080B3A28
	ldr r0, [r4, #0]
	movs r1, #0
	strh r1, [r0, #0xc]
	bl sub_0801A0B0
	movs r3, #0
	str r3, [sp, #0x168]
	ldr r0, [sp, #0x140]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x140]
	add r0, sp, #0xf0
	movs r1, #4
	ldr r2, [sp, #0x140]
	movs r3, #0x3c
	bl sub_08096E20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x158]
	movs r6, #0xd6
	add r6, r9
	mov r8, r6
	cmp r0, #0
	bne _080B3A00
	b _080B3E94
_080B3A00:
	ldrh r0, [r6, #0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r0
	add r0, sp, #0xf0
	bl sub_08097F70
	ldr r0, [r4, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x10
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r2, _080B3A2C
	adds r0, r0, r2
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	b _080B3E46
_080B3A28: .4byte gUnk_030007BC
_080B3A2C: .4byte 0x000001FD
_080B3A30:
	ldr r4, _080B3A68
	ldr r0, [r4, #0]
	movs r1, #0
	strh r1, [r0, #0xc]
	bl sub_0801A0A4
	movs r3, #0
	str r3, [sp, #0x140]
	ldr r0, [r4, #0]
	movs r6, #0xff
	lsls r6, r6, #1
	adds r0, r0, r6
	movs r1, #4
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r1, _080B3A6C
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
_080B3A58:
	ldrh r0, [r0, #0]
	bl sub_08068330
	movs r2, #0xd6
	add r2, r9
	mov r8, r2
	b _080B3E94
	.2byte 0x0000
_080B3A68: .4byte gUnk_030007BC
_080B3A6C: .4byte 0x000001FD
_080B3A70:
	ldr r4, _080B3AD4
	ldr r1, [r4, #0]
	movs r0, #1
	strh r0, [r1, #0xc]
	ldr r1, [sp, #0x140]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x140]
	movs r3, #0xd6
	add r3, r9
	mov r8, r3
	cmp r1, #0xb3
	bls _080B3A8E
	b _080B3E94
_080B3A8E:
	movs r6, #0
	str r6, [sp, #0x140]
	movs r0, #2
	bl sub_08096594
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080B3AD8
	adds r1, r1, r0
	ldr r0, [r4, #0]
	movs r2, #0x90
	movs r3, #0x18
	bl sub_08097A74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B3AB4
	b _080B3E94
_080B3AB4:
	movs r0, #2
	bl sub_08097A38
	ldr r0, [r4, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x14
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r2, _080B3ADC
	adds r0, r0, r2
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	b _080B3E46
_080B3AD4: .4byte gUnk_030007BC
_080B3AD8: .4byte gUnk_03003CE0
_080B3ADC: .4byte 0x000001FD
_080B3AE0:
	ldr r6, _080B3B5C
	ldr r1, [r6, #0]
	movs r4, #2
	movs r0, #2
	strh r0, [r1, #0xc]
	movs r3, #3
	str r3, [sp, #0x150]
	ldr r1, [sp, #0x140]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x140]
	cmp r1, #0x1d
	bhi _080B3B64
	movs r0, #2
	bl sub_08096594
	ldr r3, [r6, #0]
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r3, r3, r4
	lsls r0, r0, #4
	ldrb r2, [r3, #0]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0]
	ldr r5, [r6, #0]
	adds r4, r5, r4
	ldrb r0, [r4, #0]
	lsrs r0, r0, #4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080B3B60
	adds r1, r1, r0
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r1, r4
	ldr r0, [r0, #0]
	ldrh r2, [r0, #0]
	lsrs r2, r2, #4
	str r2, [sp, #0x114]
	ldrh r3, [r0, #2]
	lsls r3, r3, #0x14
	lsrs r3, r3, #0x14
	str r3, [sp, #0x118]
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	ldr r1, [r5, #0x18]
	asrs r1, r1, #8
	bl sub_08095FC8
	ldr r1, [r6, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r1, #8]
	movs r6, #0xd6
	add r6, r9
	mov r8, r6
	b _080B3E94
	.2byte 0x0000
_080B3B5C: .4byte gUnk_030007BC
_080B3B60: .4byte gUnk_03003CE0
_080B3B64:
	movs r0, #2
	bl sub_08097A38
	ldr r0, [r6, #0]
	bl sub_0801A0B0
	movs r0, #0
	str r0, [sp, #0x144]
	movs r1, #0
	str r1, [sp, #0x140]
	ldr r0, [r6, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r0, r2
	movs r1, #0xb
	strb r1, [r0, #0]
	ldr r0, [r6, #0]
	ldr r3, _080B3B9C
	adds r0, r0, r3
	strb r4, [r0, #0]
	ldr r0, [r6, #0]
	ldrh r0, [r0, #0]
	bl sub_08068330
	movs r4, #0xd6
	add r4, r9
	mov r8, r4
	b _080B3E94
_080B3B9C: .4byte 0x000001FD
_080B3BA0:
	ldr r4, _080B3C00
	ldr r1, [r4, #0]
	movs r5, #2
	movs r0, #2
	strh r0, [r1, #0xc]
	movs r6, #3
	str r6, [sp, #0x150]
	ldr r0, [sp, #0x144]
	cmp r0, #0x27
	bhi _080B3BC2
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x144]
	ldr r2, [sp, #0x128]
	adds r2, #0xa0
	str r2, [sp, #0x128]
_080B3BC2:
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	ldr r2, [sp, #0x114]
	ldr r3, [sp, #0x118]
	bl sub_08095FC8
	ldr r1, [r4, #0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	strh r0, [r1, #8]
	adds r0, r1, #0
	ldr r1, [sp, #0x114]
	ldr r2, [sp, #0x118]
	movs r3, #8
	bl sub_08097B24
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B3C04
	movs r0, #0xa0
	lsls r0, r0, #1
	ldr r2, [r4, #0]
	adds r1, r2, #0
	adds r1, #0x14
	ldrh r2, [r2, #8]
	bl sub_08097BA4
	b _080B3C28
	.2byte 0x0000
_080B3C00: .4byte gUnk_030007BC
_080B3C04:
	movs r6, #0
	str r6, [sp, #0x160]
	movs r0, #0
	str r0, [sp, #0x140]
	ldr r0, [r4, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x12
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r2, _080B3C30
	adds r0, r0, r2
	strb r5, [r0, #0]
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0]
	bl sub_08068330
_080B3C28:
	movs r3, #0xd6
	add r3, r9
	mov r8, r3
	b _080B3E94
_080B3C30: .4byte 0x000001FD
_080B3C34:
	ldr r4, _080B3C84
	ldr r1, [r4, #0]
	movs r5, #2
	movs r0, #2
	strh r0, [r1, #0xc]
	movs r6, #3
	str r6, [sp, #0x150]
	ldr r0, [sp, #0x128]
	cmp r0, #0
	ble _080B3C8C
	ldr r1, _080B3C88
	adds r0, r0, r1
	str r0, [sp, #0x128]
	movs r2, #0xd6
	add r2, r9
	mov r8, r2
	cmp r0, #0
	ble _080B3C5A
	b _080B3E94
_080B3C5A:
	movs r3, #0
	str r3, [sp, #0x140]
	movs r6, #0
	str r6, [sp, #0x128]
	movs r0, #0x10
	bl sub_08097CA8
	ldr r0, [r4, #0]
	bl sub_0801A0A4
	ldr r0, [sp, #0x164]
	cmp r0, #0
	beq _080B3C76
	b _080B3E94
_080B3C76:
	movs r1, #1
	str r1, [sp, #0x164]
	movs r0, #0xd4
	lsls r0, r0, #1
	bl sub_0805865C
	b _080B3E94
_080B3C84: .4byte gUnk_030007BC
_080B3C88: .4byte 0xFFFFFEE0
_080B3C8C:
	movs r2, #0
	str r2, [sp, #0x11c]
	str r2, [sp, #0x120]
	ldr r3, [sp, #0x160]
	cmp r3, #0
	bne _080B3CAA
	adds r0, r1, #0
	ldr r1, [sp, #0x11c]
	ldr r2, [sp, #0x120]
	movs r3, #0x30
	bl sub_080B44F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x160]
_080B3CAA:
	ldr r1, [sp, #0x140]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x140]
	movs r6, #0xd6
	add r6, r9
	mov r8, r6
	cmp r1, #0x10
	bhi _080B3CC0
	b _080B3E94
_080B3CC0:
	movs r0, #0
	str r0, [sp, #0x140]
	ldr r0, [r4, #0]
	movs r1, #0xff
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0x14
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r2, _080B3CDC
	adds r0, r0, r2
	strb r5, [r0, #0]
	ldr r0, [r4, #0]
	b _080B3E46
_080B3CDC: .4byte 0x000001FD
_080B3CE0:
	ldr r0, _080B3D0C
	ldr r1, [r0, #0]
	movs r0, #2
	strh r0, [r1, #0xc]
	movs r3, #2
	str r3, [sp, #0x150]
	adds r1, #0x6a
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _080B3D38
	movs r0, #0xa7
	bl sub_0805865C
	ldr r4, [sp, #0x154]
	cmp r4, #0
	blt _080B3D1A
	cmp r4, #1
	bgt _080B3D10
	movs r6, #0xc0
	lsls r6, r6, #6
	str r6, [sp, #0x11c]
	b _080B3D1A
_080B3D0C: .4byte gUnk_030007BC
_080B3D10:
	ldr r0, [sp, #0x154]
	cmp r0, #3
	bgt _080B3D1A
	ldr r1, _080B3D6C
	str r1, [sp, #0x11c]
_080B3D1A:
	movs r2, #0
	str r2, [sp, #0x120]
	ldr r3, [sp, #0x160]
	cmp r3, #0
	bne _080B3D38
	ldr r0, _080B3D70
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x11c]
	ldr r2, [sp, #0x120]
	movs r3, #0x28
	bl sub_080B44F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x160]
_080B3D38:
	ldr r2, _080B3D70
	ldr r1, [r2, #0]
	adds r0, r1, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	movs r4, #0xd6
	add r4, r9
	mov r8, r4
	cmp r0, #0
	bne _080B3D4E
	b _080B3E94
_080B3D4E:
	movs r6, #0
	str r6, [sp, #0x140]
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x14
	strb r0, [r1, #0]
	ldr r0, [r2, #0]
	ldr r1, _080B3D74
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	b _080B3E46
	.2byte 0x0000
_080B3D6C: .4byte 0xFFFFD000
_080B3D70: .4byte gUnk_030007BC
_080B3D74: .4byte 0x000001FD
_080B3D78:
	ldr r0, _080B3D9C
	ldr r1, [r0, #0]
	movs r0, #2
	strh r0, [r1, #0xc]
	movs r2, #1
	str r2, [sp, #0x150]
	adds r1, #0x6a
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _080B3DD4
	ldr r3, [sp, #0x154]
	cmp r3, #0
	blt _080B3DB0
	cmp r3, #1
	bgt _080B3DA4
	ldr r4, _080B3DA0
	str r4, [sp, #0x11c]
	b _080B3DB0
_080B3D9C: .4byte gUnk_030007BC
_080B3DA0: .4byte 0xFFFFD000
_080B3DA4:
	ldr r6, [sp, #0x154]
	cmp r6, #3
	bgt _080B3DB0
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp, #0x11c]
_080B3DB0:
	movs r1, #0
	str r1, [sp, #0x120]
	ldr r2, [sp, #0x160]
	cmp r2, #0
	bne _080B3DCE
	ldr r0, _080B3E04
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x11c]
	ldr r2, [sp, #0x120]
	movs r3, #0x20
	bl sub_080B44F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x160]
_080B3DCE:
	movs r0, #0xe1
	bl sub_0805865C
_080B3DD4:
	ldr r2, _080B3E04
	ldr r1, [r2, #0]
	adds r0, r1, #0
	adds r0, #0x6e
	ldrh r0, [r0, #0]
	movs r3, #0xd6
	add r3, r9
	mov r8, r3
	cmp r0, #0
	beq _080B3E94
	movs r4, #0
	str r4, [sp, #0x140]
	movs r6, #0xff
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r0, #0x14
	strb r0, [r1, #0]
	ldr r0, [r2, #0]
	ldr r1, _080B3E08
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	b _080B3E46
_080B3E04: .4byte gUnk_030007BC
_080B3E08: .4byte 0x000001FD
_080B3E0C:
	ldr r3, _080B3E50
	ldr r2, [r3, #0]
	movs r0, #0
	strh r0, [r2, #0xc]
	ldr r1, [sp, #0x140]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x140]
	movs r4, #0xd6
	add r4, r9
	mov r8, r4
	cmp r1, #0x3c
	bls _080B3E94
	movs r6, #0
	str r6, [sp, #0x140]
	movs r0, #0
	str r0, [sp, #0x164]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r2, r4
	movs r0, #4
	strb r0, [r1, #0]
	ldr r0, [r3, #0]
	ldr r6, _080B3E54
	adds r0, r0, r6
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r3, #0]
_080B3E46:
	ldrh r0, [r0, #0]
	bl sub_08068330
	b _080B3E94
	.2byte 0x0000
_080B3E50: .4byte gUnk_030007BC
_080B3E54: .4byte 0x000001FD
_080B3E58:
	ldr r2, _080B3EB4
	ldr r1, [r2, #0]
	movs r0, #0
	strh r0, [r1, #0xc]
	ldr r0, _080B3EB8
	ldr r0, [r0, #0]
	adds r0, #0x5c
	movs r3, #0
	ldrsh r0, [r0, r3]
	movs r4, #0xd6
	add r4, r9
	mov r8, r4
	cmp r0, #0
	bne _080B3E94
	movs r6, #0
	str r6, [sp, #0x140]
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #5
	strb r0, [r1, #0]
	ldr r0, [r2, #0]
	ldr r1, _080B3EBC
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #0]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0]
	bl sub_08068330
_080B3E94:
	ldr r2, [sp, #0x168]
	cmp r2, #0
	bne _080B3EFC
	ldr r1, _080B3EB4
	ldr r0, [r1, #0]
	movs r3, #8
	ldrsh r0, [r0, r3]
	adds r2, r1, #0
	cmp r0, #7
	bls _080B3EAA
	b _080B3FC0
_080B3EAA:
	lsls r0, r0, #2
	ldr r1, _080B3EC0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080B3EB4: .4byte gUnk_030007BC
_080B3EB8: .4byte gUnk_030007B8
_080B3EBC: .4byte 0x000001FD
_080B3EC0: .4byte _080B3EC4
_080B3EC4:
	.4byte _080B3EE4
_080B3EC8: .4byte _080B3EE4
_080B3ECC: .4byte _080B3EE4
_080B3ED0: .4byte _080B3EEA
_080B3ED4: .4byte _080B3EEA
_080B3ED8: .4byte _080B3EF0
_080B3EDC: .4byte _080B3EF6
_080B3EE0: .4byte _080B3EF6
_080B3EE4:
	movs r4, #0
	str r4, [sp, #0x154]
	b _080B3FC0
_080B3EEA:
	movs r6, #1
	str r6, [sp, #0x154]
	b _080B3FC0
_080B3EF0:
	movs r0, #2
	str r0, [sp, #0x154]
	b _080B3FC0
_080B3EF6:
	movs r1, #3
	str r1, [sp, #0x154]
	b _080B3FC0
_080B3EFC:
	ldr r0, _080B3F10
	ldrb r0, [r0, #0]
	cmp r0, #7
	bhi _080B3F4E
	lsls r0, r0, #2
	ldr r1, _080B3F14
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080B3F10: .4byte gUnk_030007CA
_080B3F14: .4byte _080B3F18
_080B3F18:
	.4byte _080B3F38
_080B3F1C: .4byte _080B3F38
_080B3F20: .4byte _080B3F38
_080B3F24: .4byte _080B3F3E
_080B3F28: .4byte _080B3F3E
_080B3F2C: .4byte _080B3F44
_080B3F30: .4byte _080B3F4A
_080B3F34: .4byte _080B3F4A
_080B3F38:
	movs r2, #0
	str r2, [sp, #0x154]
	b _080B3F4E
_080B3F3E:
	movs r3, #1
	str r3, [sp, #0x154]
	b _080B3F4E
_080B3F44:
	movs r4, #2
	str r4, [sp, #0x154]
	b _080B3F4E
_080B3F4A:
	movs r6, #3
	str r6, [sp, #0x154]
_080B3F4E:
	ldr r0, [sp, #0x154]
	cmp r0, #1
	beq _080B3F90
	cmp r0, #1
	bgt _080B3F64
	cmp r0, #0
	beq _080B3F78
	ldr r2, _080B3F60
	b _080B3FC0
_080B3F60: .4byte gUnk_030007BC
_080B3F64:
	ldr r1, [sp, #0x154]
	cmp r1, #2
	beq _080B3FA8
	cmp r1, #3
	beq _080B3FA8
	ldr r2, _080B3F74
	b _080B3FC0
	.2byte 0x0000
_080B3F74: .4byte gUnk_030007BC
_080B3F78:
	ldr r3, _080B3F88
	ldr r2, [r3, #0]
	ldr r1, _080B3F8C
	ldr r0, [r1, #0]
	movs r4, #0xb0
	lsls r4, r4, #3
	b _080B3FB2
	.2byte 0x0000
_080B3F88: .4byte gUnk_030007BC
_080B3F8C: .4byte gUnk_030007C0
_080B3F90:
	ldr r3, _080B3FA0
	ldr r2, [r3, #0]
	ldr r1, _080B3FA4
	ldr r0, [r1, #0]
	movs r4, #0xb0
	lsls r4, r4, #3
	b _080B3FB2
	.2byte 0x0000
_080B3FA0: .4byte gUnk_030007BC
_080B3FA4: .4byte gUnk_030007C0
_080B3FA8:
	ldr r3, _080B3FD4
	ldr r2, [r3, #0]
	ldr r1, _080B3FD8
	ldr r0, [r1, #0]
	ldr r4, _080B3FDC
_080B3FB2:
	adds r0, r0, r4
	str r0, [r2, #0x14]
	ldr r0, [r1, #4]
	ldr r6, _080B3FE0
	adds r0, r0, r6
	str r0, [r2, #0x18]
	adds r2, r3, #0
_080B3FC0:
	ldr r4, [r2, #0]
	ldrh r0, [r4, #0xc]
	cmp r0, #1
	beq _080B3FFE
	cmp r0, #1
	bgt _080B3FE4
	cmp r0, #0
	beq _080B3FEA
	b _080B4086
	.2byte 0x0000
_080B3FD4: .4byte gUnk_030007BC
_080B3FD8: .4byte gUnk_030007C0
_080B3FDC: .4byte 0xFFFFFA80
_080B3FE0: .4byte 0xFFFFFE80
_080B3FE4:
	cmp r0, #2
	beq _080B4012
	b _080B4086
_080B3FEA:
	movs r0, #0
	str r0, [sp, #0x150]
	movs r1, #1
	str r1, [sp, #0x13c]
	adds r0, r4, #0
	adds r0, #0x68
	add r2, sp, #0x154
	ldrh r2, [r2, #0]
	strh r2, [r0, #0]
	b _080B4086
_080B3FFE:
	movs r3, #0
	str r3, [sp, #0x150]
	movs r6, #1
	str r6, [sp, #0x13c]
	ldr r1, [sp, #0x154]
	adds r1, #4
	adds r0, r4, #0
	adds r0, #0x68
	strh r1, [r0, #0]
	b _080B4086
_080B4012:
	movs r0, #0
	str r0, [sp, #0x13c]
	adds r1, r4, #0
	adds r1, #0x68
	add r3, sp, #0x154
	ldrh r3, [r3, #0]
	strh r3, [r1, #0]
	ldr r6, _080B4050
	adds r0, r4, r6
	ldrb r0, [r0, #0]
	cmp r0, #0x11
	beq _080B4032
	cmp r0, #0xb
	beq _080B4032
	cmp r0, #0x12
	bne _080B4054
_080B4032:
	ldr r0, [r2, #0]
	adds r4, r0, #0
	adds r4, #0x68
	ldrh r1, [r4, #0]
	lsls r1, r1, #1
	strh r1, [r4, #0]
	ldr r2, _080B4050
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	cmp r0, #0xb
	bne _080B4086
	adds r0, r1, #1
	strh r0, [r4, #0]
	b _080B4086
	.2byte 0x0000
_080B4050: .4byte 0x000001FD
_080B4054:
	cmp r0, #3
	bne _080B4086
	ldr r3, [sp, #0x168]
	cmp r3, #0
	beq _080B4086
	movs r6, #0
	str r6, [sp, #0x150]
	movs r0, #1
	str r0, [sp, #0x13c]
	ldr r2, [sp, #0x130]
	ldr r3, [sp, #0x154]
	cmp r2, r3
	beq _080B40A6
	adds r0, r4, #0
	adds r0, #0x6c
	strh r6, [r0, #0]
	subs r0, #2
	add r2, sp, #0x150
	ldrh r2, [r2, #0]
	strh r2, [r0, #0]
	ldrh r3, [r1, #0]
	str r3, [sp, #0x130]
	add r4, sp, #0x154
	ldrh r4, [r4, #0]
	strh r4, [r1, #0]
_080B4086:
	ldr r0, _080B40B8
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r6, [sp, #0x130]
	ldrh r1, [r0, #0]
	cmp r6, r1
	beq _080B40A6
	ldrh r0, [r0, #0]
	str r0, [sp, #0x130]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_080B40A6:
	ldr r2, [sp, #0x150]
	cmp r2, #2
	bgt _080B40BC
	cmp r2, #1
	bge _080B40C8
	cmp r2, #0
	beq _080B40C2
	b _080B40CE
	.2byte 0x0000
_080B40B8: .4byte gUnk_030007BC
_080B40BC:
	ldr r3, [sp, #0x150]
	cmp r3, #3
	bne _080B40CE
_080B40C2:
	ldr r0, [sp, #0x154]
	adds r0, #8
	b _080B40CC
_080B40C8:
	ldr r0, [sp, #0x154]
	adds r0, #4
_080B40CC:
	str r0, [sp, #0x14c]
_080B40CE:
	ldr r4, [sp, #0x158]
	cmp r4, #0
	beq _080B40F6
	ldr r0, [sp, #0x12c]
	adds r0, #0x10
	movs r1, #0x34
	ldr r6, [sp, #0x150]
	adds r2, r6, #0
	muls r2, r1, r2
	add r1, sp, #0x1c
	adds r1, r1, r2
	mov r3, r8
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r1, [r1, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	b _080B4102
_080B40F6:
	ldr r0, [sp, #0x12c]
	adds r0, #0x10
	add r1, sp, #0xf0
	movs r2, #1
	bl sub_08000AF0
_080B4102:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080B4114
	bl sub_08097FF8
	b _080B4126
_080B4114:
	ldr r0, _080B4164
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_080B4126:
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	bl sub_0800CD8C
	adds r5, r0, #0
	cmp r5, #0
	bne _080B4190
	ldr r4, [sp, #0x13c]
	cmp r4, #0
	bne _080B4168
	movs r0, #0x34
	ldr r6, [sp, #0x150]
	muls r0, r6, r0
	add r0, sp
	adds r0, #0x10
	ldr r4, _080B4164
	ldr r3, [r4, #0]
	adds r1, r3, #0
	adds r1, #0x68
	ldrh r1, [r1, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	str r5, [sp, #0]
	bl sub_08065370
	ldr r1, [r4, #0]
	adds r1, #0x6e
	strh r0, [r1, #0]
	b _080B4190
	.2byte 0x0000
_080B4164: .4byte gUnk_030007BC
_080B4168:
	movs r0, #0x34
	ldr r1, [sp, #0x150]
	muls r0, r1, r0
	add r0, sp
	adds r0, #0x10
	ldr r4, _080B422C
	ldr r3, [r4, #0]
	adds r1, r3, #0
	adds r1, #0x68
	ldrh r1, [r1, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	ldr r6, [sp, #0x13c]
	str r6, [sp, #0]
	bl sub_08065370
	ldr r0, [r4, #0]
	adds r0, #0x6e
	strh r5, [r0, #0]
_080B4190:
	ldr r5, _080B422C
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	ldr r2, [sp, #0x128]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x110
	movs r3, #0x89
	lsls r3, r3, #1
	add r3, sp
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	bl sub_0800BC08
	mov sl, r4
	ldr r3, [sp, #0x138]
	cmp r3, #0
	beq _080B4230
	adds r0, r3, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x138]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _080B4286
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B4286
	bl sub_0800CC98
	cmp r0, #0
	bne _080B4286
	bl sub_0800CD34
	cmp r0, #0
	bne _080B4286
	add r0, sp, #0x110
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r6, sl
	movs r2, #2
	ldrsh r1, [r6, r2]
	ldr r3, [r5, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	movs r4, #0x34
	ldr r6, [sp, #0x150]
	adds r5, r6, #0
	muls r5, r4, r5
	mov r6, sp
	adds r6, r6, r5
	adds r6, #0x10
	adds r4, r6, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	add r4, sp, #0x18
	adds r4, r4, r5
	ldr r4, [r4, #0]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _080B4286
	.2byte 0x0000
_080B422C: .4byte gUnk_030007BC
_080B4230:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B4286
	bl sub_0800CC98
	cmp r0, #0
	bne _080B4286
	bl sub_0800CD34
	cmp r0, #0
	bne _080B4286
	add r0, sp, #0x110
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r2, sl
	movs r3, #2
	ldrsh r1, [r2, r3]
	ldr r3, [r5, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r7, [sp, #0]
	movs r4, #0x34
	ldr r6, [sp, #0x150]
	adds r5, r6, #0
	muls r5, r4, r5
	mov r6, sp
	adds r6, r6, r5
	adds r6, #0x10
	adds r4, r6, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	add r4, sp, #0x18
	adds r4, r4, r5
	ldr r4, [r4, #0]
	str r4, [sp, #8]
	ldr r4, [r6, #0]
	str r4, [sp, #0xc]
	bl sub_08007870
_080B4286:
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B4312
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B4312
	bl sub_0800CC98
	cmp r0, #0
	bne _080B4312
	bl sub_0800CD34
	adds r2, r0, #0
	cmp r2, #0
	bne _080B4312
	ldr r0, _080B437C
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B4312
	ldr r0, _080B4380
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r3, sl
	adds r3, #2
	str r2, [sp, #0]
	str r2, [sp, #4]
	mov r2, sl
	bl sub_0800BC08
	add r0, sp, #0x110
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r7, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0]
	movs r1, #0x34
	ldr r3, [sp, #0x150]
	adds r2, r3, #0
	muls r2, r1, r2
	mov r3, sp
	adds r3, r3, r2
	adds r3, #0x10
	adds r1, r3, #0
	adds r1, #0x1c
	str r1, [sp, #4]
	add r1, sp, #0x18
	adds r1, r1, r2
	ldr r1, [r1, #0]
	str r1, [sp, #8]
	ldr r1, [r3, #0]
	str r1, [sp, #0xc]
	movs r1, #2
	ldr r2, [sp, #0x14c]
	movs r3, #0
	bl sub_08007870
	mov r4, sl
	movs r6, #2
	ldrsh r1, [r4, r6]
	str r1, [r0, #0xc]
_080B4312:
	ldr r0, _080B4380
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _080B432C
	ldr r1, [sp, #0x124]
	cmp r1, r0
	beq _080B432C
	str r0, [sp, #0x124]
	movs r2, #0xa
	str r2, [sp, #0x134]
	movs r3, #0
	str r3, [sp, #0x148]
_080B432C:
	ldr r4, [sp, #0x134]
	cmp r4, #0
	beq _080B4388
	bl sub_0800CC98
	cmp r0, #0
	bne _080B435A
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B435A
	bl sub_0800CD34
	cmp r0, #0
	bne _080B435A
	ldr r0, _080B4380
	ldr r0, [r0, #0]
	ldr r6, [sp, #0x148]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	ldr r1, [sp, #0x124]
	bl sub_0801A120
_080B435A:
	movs r0, #2
	ldr r1, [sp, #0x134]
	ands r0, r1
	cmp r0, #0
	beq _080B4370
	ldr r2, [sp, #0x148]
	lsls r0, r2, #0x10
	ldr r3, _080B4384
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x148]
_080B4370:
	ldr r0, [sp, #0x134]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x134]
	b _080B4392
_080B437C: .4byte gUnk_03002344
_080B4380: .4byte gUnk_030007BC
_080B4384: .4byte 0xFFFF0000
_080B4388:
	movs r4, #0
	str r4, [sp, #0x124]
	ldr r0, _080B449C
	ldr r0, [r0, #0]
	str r4, [r0, #0x4c]
_080B4392:
	bl sub_080003F0
	ldr r0, _080B449C
	ldr r0, [r0, #0]
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080B43BE
_080B43A4:
	bl sub_0800CB78
	movs r6, #0xd6
	add r6, r9
	mov r8, r6
	cmp r0, #0
	bne _080B43BE
	bl sub_08056E90
	cmp r0, #0
	bne _080B43BE
	bl _080B381C
_080B43BE:
	ldr r3, _080B44A0
	ldr r4, _080B449C
	ldr r2, [r4, #0]
	movs r1, #1
	ldrh r0, [r2, #0]
	lsls r1, r0
	ldr r0, [r3, #0]
	bics r0, r1
	str r0, [r3, #0]
	ldr r1, _080B44A4
	adds r2, r2, r1
	movs r1, #0
	strb r1, [r2, #0]
	ldr r0, [r4, #0]
	ldr r2, _080B44A8
	adds r0, r0, r2
	strb r1, [r0, #0]
	movs r3, #0
	str r3, [sp, #0x150]
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0x68
	add r6, sp, #0x154
	ldrh r6, [r6, #0]
	strh r6, [r0, #0]
	adds r0, #4
	strh r3, [r0, #0]
	subs r0, #2
	add r3, sp, #0x150
	ldrh r3, [r3, #0]
	strh r3, [r0, #0]
	ldrh r0, [r1, #2]
	bl sub_08067CA8
	movs r0, #0xbd
	bl sub_0805865C
	ldr r0, [r4, #0]
	mov r6, r8
	ldrh r2, [r6, #0]
	add r1, sp, #0x10
	ldr r3, [sp, #0x12c]
	bl sub_080970CC
	bl sub_080020F4
	ldr r1, _080B44AC
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080B4480
	ldr r0, [r4, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080B4480
	ldr r0, _080B44B0
	ldr r0, [r0, #0]
	mov r1, r9
	bl sub_0801E46C
	adds r4, r0, #0
	movs r0, #0x1d
	str r0, [sp, #0x148]
	movs r5, #1
	negs r5, r5
_080B4450:
	ldr r0, _080B449C
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r1, [sp, #0x148]
	lsls r0, r1, #0x10
	ldr r2, _080B44B4
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x148]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _080B4450
	ldr r0, _080B44B0
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_080B4480:
	bl sub_08002204
	cmp r0, #0
	beq _080B44DA
	ldr r0, _080B44B8
	ldr r0, [r0, #0]
	add r4, sp, #0xe0
	adds r1, r4, #0
	bl sub_0805C620
	cmp r0, #0
	beq _080B44DA
	b _080B44C0
	.2byte 0x0000
_080B449C: .4byte gUnk_030007BC
_080B44A0: .4byte gUnk_030056FC
_080B44A4: .4byte 0x0000022E
_080B44A8: .4byte 0x0000022F
_080B44AC: .4byte gUnk_03003CE0
_080B44B0: .4byte gUnk_030034E0
_080B44B4: .4byte 0xFFFF0000
_080B44B8: .4byte gUnk_030007B8
_080B44BC:
	bl sub_080003F0
_080B44C0:
	ldr r0, _080B44EC
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x18]
	adds r2, r4, #0
	bl sub_08066490
	cmp r0, #0
	bne _080B44DA
	bl sub_08056E90
	cmp r0, #0
	beq _080B44BC
_080B44DA:
	add sp, #0x16c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B44EC: .4byte gUnk_030007BC
	thumb_func_end sub_080B3648
