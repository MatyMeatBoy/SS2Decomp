	thumb_func_start sub_080445E8
sub_080445E8: @ 0x080445E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r9, r0
	mov r8, r1
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08044630
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	str r0, [sp, #0x28]
	cmp r0, #0
	bne _08044690
	ldr r2, _08044634
	mov r0, r9
	lsls r1, r0, #4
	subs r0, r1, r0
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r4, [r0, #0]
	mov sl, r1
	b _0804463C
_08044630: .4byte gUnk_03003CE0
_08044634: .4byte gUnk_084B1C50
_08044638:
	bl sub_080003F0
_0804463C:
	bl sub_0805F184
	cmp r0, #0
	bne _08044638
	b _0804464A
_08044646:
	bl sub_080003F0
_0804464A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08044646
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r4, r0
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08044674
_08044670:
	bl sub_080003F0
_08044674:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080446FA
	bl sub_0800CDF8
	cmp r0, #0
	beq _08044670
	bl sub_0805EFBC
	b _080446FA
_0804468C:
	adds r0, r1, #0
	b _08044782
_08044690:
	ldr r0, _080446A4
	mov r1, r9
	lsls r2, r1, #4
	subs r1, r2, r1
	lsls r1, r1, #2
	adds r0, #4
	adds r1, r1, r0
	ldrh r4, [r1, #0]
	mov sl, r2
	b _080446AC
_080446A4: .4byte gUnk_084B1C50
_080446A8:
	bl sub_080003F0
_080446AC:
	bl sub_0805F184
	cmp r0, #0
	bne _080446A8
	b _080446BA
_080446B6:
	bl sub_080003F0
_080446BA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080446B6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r4, r0
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080446E4
_080446E0:
	bl sub_080003F0
_080446E4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080446FA
	bl sub_0800CDF8
	cmp r0, #0
	beq _080446E0
	bl sub_0805EFBC
_080446FA:
	ldr r3, _0804478C
	mov r2, sl
	mov r1, r9
	subs r0, r2, r1
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x1c
	adds r1, r0, r1
	adds r2, r3, #0
	adds r2, #0x20
	adds r0, r0, r2
	ldr r1, [r1, #0]
	ldr r7, [r0, #0]
	movs r5, #0
	movs r4, #0
	adds r6, r3, #0
	ldr r0, _08044790
	ldr r0, [r0, #0]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r2, r0, r3
_08044724:
	ldrh r0, [r2, #0]
	cmp r0, r1
	bne _08044732
	ldrh r0, [r2, #2]
	cmp r0, r7
	bne _08044732
	adds r5, #1
_08044732:
	adds r2, #0x10
	adds r4, #1
	cmp r4, #0x18
	bls _08044724
	mov r1, sl
	mov r2, r9
	subs r0, r1, r2
	lsls r4, r0, #2
	adds r0, r6, #0
	adds r0, #0x24
	adds r0, r4, r0
	ldr r0, [r0, #0]
	cmp r5, r0
	bhs _08044750
	b _08044CEA
_08044750:
	ldr r3, [sp, #0x28]
	cmp r3, #0
	beq _08044758
	b _080448A2
_08044758:
	mov r2, r8
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r8, r0
	bls _0804479C
	ldr r0, _08044794
	ldr r0, [r0, #0]
	ldr r3, _08044798
	adds r1, r0, r3
	movs r3, #0
_0804476E:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _0804468C
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _0804476E
	bl sub_080003F0
	movs r0, #0
_08044782:
	cmp r0, #0
	beq _080447DE
	adds r0, #0x42
	b _080447DC
	.2byte 0x0000
_0804478C: .4byte gUnk_084B1C50
_08044790: .4byte gUnk_030034E0
_08044794: .4byte gUnk_03005CF4
_08044798: .4byte 0x000007A4
_0804479C:
	mov r0, r8
	cmp r0, #0
	beq _080447C8
	mov r2, r8
	subs r2, #1
	cmp r2, #4
	bhi _080447DE
	ldr r1, _080447C4
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	movs r1, #3
	bl sub_08019EB8
	b _080447DE
_080447C4: .4byte gUnk_030056F4
_080447C8:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08044800
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
_080447DC:
	strh r4, [r0, #0]
_080447DE:
	ldr r2, _08044804
	mov r3, sl
	mov r1, r9
	subs r0, r3, r1
	lsls r1, r0, #2
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08044842
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	ldrh r4, [r0, #0]
	b _0804480C
	.2byte 0x0000
_08044800: .4byte gUnk_03003CE0
_08044804: .4byte gUnk_084B1C50
_08044808:
	bl sub_080003F0
_0804480C:
	bl sub_0805F184
	cmp r0, #0
	bne _08044808
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r4, r0
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08044836
_08044832:
	bl sub_080003F0
_08044836:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08044832
	b _08044990
_08044842:
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	ldrh r4, [r0, #0]
	b _08044850
_0804484C:
	bl sub_080003F0
_08044850:
	bl sub_0805F184
	cmp r0, #0
	bne _0804484C
	b _0804485E
_0804485A:
	bl sub_080003F0
_0804485E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804485A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r4, r0
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08044888
_08044884:
	bl sub_080003F0
_08044888:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08044894
	b _080449F4
_08044894:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08044884
	b _080449F0
_0804489E:
	adds r0, r1, #0
	b _080448DA
_080448A2:
	adds r0, r6, #0
	adds r0, #0x38
	adds r0, r4, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _080448B0
	b _080449F8
_080448B0:
	mov r2, r8
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _080448EC
	ldr r0, _080448E4
	ldr r0, [r0, #0]
	ldr r3, _080448E8
	adds r1, r0, r3
	movs r3, #0
_080448C6:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _0804489E
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _080448C6
	bl sub_080003F0
	movs r0, #0
_080448DA:
	cmp r0, #0
	beq _0804492E
	adds r0, #0x42
	b _0804492C
	.2byte 0x0000
_080448E4: .4byte gUnk_03005CF4
_080448E8: .4byte 0x000007A4
_080448EC:
	mov r0, r8
	cmp r0, #0
	beq _08044918
	mov r2, r8
	subs r2, #1
	cmp r2, #4
	bhi _0804492E
	ldr r1, _08044914
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r1, r1, r0
	ldrh r0, [r1, #2]
	movs r1, #3
	bl sub_08019EB8
	b _0804492E
_08044914: .4byte gUnk_030056F4
_08044918:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08044950
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
_0804492C:
	strh r4, [r0, #0]
_0804492E:
	ldr r2, _08044954
	mov r3, sl
	mov r1, r9
	subs r0, r3, r1
	lsls r1, r0, #2
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r1, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08044998
	adds r0, r2, #0
	adds r0, #0xc
	adds r0, r1, r0
	ldrh r4, [r0, #0]
	b _0804495C
	.2byte 0x0000
_08044950: .4byte gUnk_03003CE0
_08044954: .4byte gUnk_084B1C50
_08044958:
	bl sub_080003F0
_0804495C:
	bl sub_0805F184
	cmp r0, #0
	bne _08044958
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r4, r0
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08044986
_08044982:
	bl sub_080003F0
_08044986:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08044982
_08044990:
	adds r0, r4, #0
	bl sub_0805EF14
	b _08044A58
_08044998:
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	ldrh r4, [r0, #0]
	b _080449A6
_080449A2:
	bl sub_080003F0
_080449A6:
	bl sub_0805F184
	cmp r0, #0
	bne _080449A2
	b _080449B4
_080449B0:
	bl sub_080003F0
_080449B4:
	bl sub_0805EF90
	cmp r0, #0
	bne _080449B0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r4, r0
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080449DE
_080449DA:
	bl sub_080003F0
_080449DE:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080449F4
	bl sub_0800CDF8
	cmp r0, #0
	beq _080449DA
_080449F0:
	bl sub_0805EFBC
_080449F4:
	movs r0, #2
	b _08044A58
_080449F8:
	adds r0, r6, #0
	adds r0, #0xc
	adds r0, r4, r0
	ldrh r4, [r0, #0]
	b _08044A06
_08044A02:
	bl sub_080003F0
_08044A06:
	bl sub_0805F184
	cmp r0, #0
	bne _08044A02
	b _08044A14
_08044A10:
	bl sub_080003F0
_08044A14:
	bl sub_0805EF90
	cmp r0, #0
	bne _08044A10
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r4, r0
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08044A3E
_08044A3A:
	bl sub_080003F0
_08044A3E:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08044A4A
	b _08044CEA
_08044A4A:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08044A3A
	bl sub_0805EFBC
	b _08044CEA
_08044A58:
	cmp r0, #1
	beq _08044ADA
	cmp r0, #1
	bgt _08044A66
	cmp r0, #0
	beq _08044A6C
	b _08044CEA
_08044A66:
	cmp r0, #2
	beq _08044B42
	b _08044CEA
_08044A6C:
	ldr r1, _08044A80
	mov r2, sl
	mov r3, r9
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r1, #0x14
	adds r0, r0, r1
	ldrh r4, [r0, #0]
	b _08044A88
	.2byte 0x0000
_08044A80: .4byte gUnk_084B1C50
_08044A84:
	bl sub_080003F0
_08044A88:
	bl sub_0805F184
	cmp r0, #0
	bne _08044A84
	b _08044A96
_08044A92:
	bl sub_080003F0
_08044A96:
	bl sub_0805EF90
	cmp r0, #0
	bne _08044A92
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r4, r0
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08044AC0
_08044ABC:
	bl sub_080003F0
_08044AC0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08044ACC
	b _08044CEA
_08044ACC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08044ABC
	bl sub_0805EFBC
	b _08044CEA
_08044ADA:
	ldr r1, _08044AEC
	mov r2, sl
	mov r3, r9
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r1, #0x10
	adds r0, r0, r1
	ldrh r4, [r0, #0]
	b _08044AF4
_08044AEC: .4byte gUnk_084B1C50
_08044AF0:
	bl sub_080003F0
_08044AF4:
	bl sub_0805F184
	cmp r0, #0
	bne _08044AF0
	b _08044B02
_08044AFE:
	bl sub_080003F0
_08044B02:
	bl sub_0805EF90
	cmp r0, #0
	bne _08044AFE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r4, r0
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08044B2C
_08044B28:
	bl sub_080003F0
_08044B2C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08044B42
	bl sub_0800CDF8
	cmp r0, #0
	beq _08044B28
	bl sub_0805EFBC
_08044B42:
	ldr r4, _08044BF0
	mov r1, sl
	mov r2, r9
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r3, r4, #0
	adds r3, #0x1c
	adds r3, r0, r3
	adds r2, r4, #0
	adds r2, #0x20
	adds r2, r0, r2
	adds r1, r4, #0
	adds r1, #0x24
	adds r0, r0, r1
	ldr r3, [r3, #0]
	mov r8, r3
	ldr r3, [r2, #0]
	ldr r2, [r0, #0]
	movs r5, #0
	adds r6, r4, #0
	ldr r0, _08044BF4
	mov ip, r0
	movs r7, #0
_08044B70:
	mov r1, ip
	ldr r0, [r1, #0]
	lsls r1, r5, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r4, r1, r0
	ldrh r0, [r4, #0]
	cmp r0, r8
	bne _08044B9A
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, r3
	bne _08044B9A
	subs r2, #1
	strh r7, [r4, #0]
	strh r7, [r1, #0]
	cmp r2, #0
	beq _08044BA0
_08044B9A:
	adds r5, #1
	cmp r5, #0x18
	bls _08044B70
_08044BA0:
	mov r1, sl
	mov r2, r9
	subs r0, r1, r2
	lsls r0, r0, #2
	adds r3, r6, #0
	adds r3, #0x28
	adds r3, r0, r3
	adds r2, r6, #0
	adds r2, #0x2c
	adds r2, r0, r2
	adds r1, r6, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r3, [r3, #0]
	ldr r6, [r2, #0]
	ldr r7, [r0, #0]
	cmp r3, #0xa
	beq _08044BF8
	add r0, sp, #8
	strh r3, [r0, #0]
	strh r6, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_08044BD0:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08044BD0
	movs r4, #0
	cmp r4, r7
	bhs _08044C16
_08044BE0:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, r7
	blo _08044BE0
	b _08044C16
	.2byte 0x0000
_08044BF0: .4byte gUnk_084B1C50
_08044BF4: .4byte gUnk_030034E0
_08044BF8:
	movs r4, #0
	cmp r4, r7
	bhs _08044C16
	add r5, sp, #0x18
	movs r3, #0xa
	mov r8, r3
_08044C04:
	mov r0, r8
	strh r0, [r5, #0]
	str r6, [sp, #0x1c]
	adds r0, r5, #0
	bl sub_0805AB20
	adds r4, #1
	cmp r4, r7
	blo _08044C04
_08044C16:
	ldr r1, _08044C44
	mov r2, sl
	mov r3, r9
	subs r0, r2, r3
	lsls r0, r0, #2
	adds r1, #0x34
	adds r0, r0, r1
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08044C64
	adds r4, r0, #0
	lsrs r5, r4, #3
	movs r0, #7
	ands r4, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08044C50
	ldr r0, _08044C48
	ldr r1, [r0, #0]
	ldr r0, _08044C4C
	adds r1, r1, r0
	b _08044C58
_08044C44: .4byte gUnk_084B1C50
_08044C48: .4byte gUnk_03005CF4
_08044C4C: .4byte 0x000001C3
_08044C50:
	ldr r0, _08044C88
	ldr r1, [r0, #0]
	ldr r2, _08044C8C
	adds r1, r1, r2
_08044C58:
	adds r1, r1, r5
	movs r0, #1
	lsls r0, r4
	ldrb r2, [r1, #0]
	orrs r0, r2
	strb r0, [r1, #0]
_08044C64:
	ldr r0, _08044C90
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08044C76
	movs r0, #0x33
	bl sub_08006D08
_08044C76:
	ldr r1, _08044C94
	mov r3, sl
	mov r2, r9
	subs r0, r3, r2
	lsls r0, r0, #2
	adds r1, #0x18
	adds r0, r0, r1
	ldrh r4, [r0, #0]
	b _08044C9C
_08044C88: .4byte gUnk_03005CF4
_08044C8C: .4byte 0x000001B7
_08044C90: .4byte gUnk_030027D0
_08044C94: .4byte gUnk_084B1C50
_08044C98:
	bl sub_080003F0
_08044C9C:
	bl sub_0805F184
	cmp r0, #0
	bne _08044C98
	b _08044CAA
_08044CA6:
	bl sub_080003F0
_08044CAA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08044CA6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r4, r0
	str r4, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08044CD4
_08044CD0:
	bl sub_080003F0
_08044CD4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08044CEA
	bl sub_0800CDF8
	cmp r0, #0
	beq _08044CD0
	bl sub_0805EFBC
_08044CEA:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08044D18
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08044D18: .4byte gUnk_03003CE0
	thumb_func_end sub_080445E8
