	thumb_func_start sub_0804076C
sub_0804076C: @ 0x0804076C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	str r0, [sp, #0x38]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080407A8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_080020F4
	cmp r0, #1
	beq _080407BC
	cmp r0, #1
	bgt _080407AC
	cmp r0, #0
	beq _080407B6
	b _080407DC
_080407A8: .4byte gUnk_03003CE0
_080407AC:
	cmp r0, #2
	beq _080407C2
	cmp r0, #3
	beq _080407D0
	b _080407DC
_080407B6:
	movs r0, #0
	movs r1, #0x6c
	b _080407C6
_080407BC:
	movs r0, #0
	movs r1, #0x84
	b _080407C6
_080407C2:
	movs r0, #0
	movs r1, #0x54
_080407C6:
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
	b _080407DC
_080407D0:
	movs r0, #0
	movs r1, #0x9c
	movs r2, #0x80
	movs r3, #0
	bl sub_08028AAC
_080407DC:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08040814
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #3
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_08067D74
	movs r4, #2
	add r6, sp, #0xc
	mov r0, sp
	adds r0, #0x30
	str r0, [sp, #0x44]
	mov r1, sp
	adds r1, #0x34
	str r1, [sp, #0x48]
	b _08040822
_08040814: .4byte gUnk_03003CE0
_08040818:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804082E
_08040822:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08040818
_0804082E:
	bl sub_0800CC98
	cmp r0, #0
	bne _08040870
	bl sub_0801AB24
	cmp r0, #1
	beq _08040854
	cmp r0, #1
	bgt _08040848
	cmp r0, #0
	beq _0804084E
	b _08040868
_08040848:
	cmp r0, #2
	beq _0804085C
	b _08040868
_0804084E:
	bl sub_080576A8
	b _08040868
_08040854:
	movs r0, #6
	bl sub_0801AB50
	b _08040868
_0804085C:
	movs r0, #6
	bl sub_0801AB90
	b _08040868
_08040864:
	bl sub_080003F0
_08040868:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08040864
_08040870:
	movs r2, #0xa
	mov sl, r2
	ldr r0, _080408DC
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r7, [r1, r3]
	adds r0, #0x82
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r4, #0
	mov r9, r4
	ldr r2, _080408E0
	mov r8, r2
_0804088C:
	add r0, sp, #8
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0xc]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0804088C
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _080408F0
	ldr r0, _080408E4
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	b _080408FA
_080408DC: .4byte gUnk_03003170
_080408E0: .4byte 0xFFE80000
_080408E4: .4byte gUnk_03005CF4
_080408E8:
	adds r2, r1, #0
	b _08040B06
_080408EC:
	adds r0, r1, #0
	b _08040B3C
_080408F0:
	ldr r0, _08040918
	ldr r0, [r0, #0]
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r0, r0, r2
_080408FA:
	ldrb r0, [r0, #0]
	asrs r0, r0, #6
	ands r0, r4
	cmp r0, #0
	bne _08040906
	b _08040C4A
_08040906:
	add r7, sp, #0x10
	add r6, sp, #0x14
	mov r3, sp
	adds r3, #0x18
	str r3, [sp, #0x3c]
	add r0, sp, #0x1c
	mov sl, r0
	b _08040920
	.2byte 0x0000
_08040918: .4byte gUnk_03005CF4
_0804091C:
	bl sub_080003F0
_08040920:
	bl sub_0805F184
	cmp r0, #0
	bne _0804091C
	b _0804092E
_0804092A:
	bl sub_080003F0
_0804092E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804092A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08040950
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08040958
_08040950: .4byte 0x001400EE
_08040954:
	bl sub_080003F0
_08040958:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0804096E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08040954
	bl sub_0805EFBC
_0804096E:
	ldr r0, _080409C8
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	mov r8, r2
	adds r0, #0x82
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r4, #0
	movs r2, #0xc0
	lsls r2, r2, #0xe
	mov r9, r2
_08040988:
	adds r0, r7, #0
	mov r1, r8
	movs r3, #0
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x10]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x14]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	adds r4, #0x22
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08040988
	movs r4, #0x28
	b _080409D6
	.2byte 0x0000
_080409C8: .4byte gUnk_03003170
_080409CC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080409E2
_080409D6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080409CC
_080409E2:
	movs r0, #0x36
	movs r1, #0x78
	movs r2, #0xfa
	bl sub_080289C0
	adds r5, r0, #0
	movs r1, #0xe
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x95
	movs r3, #0x3c
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #4
	bl sub_0802939C
	ldr r0, _08040A5C
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	mov r9, r4
	mov r8, r4
_08040A1E:
	ldr r0, [sp, #0x3c]
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, sl
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x1c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	adds r4, #0x22
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08040A1E
	b _08040A64
	.2byte 0x0000
_08040A5C: .4byte gUnk_03003170
_08040A60:
	bl sub_080003F0
_08040A64:
	bl sub_0805F184
	cmp r0, #0
	bne _08040A60
	b _08040A72
_08040A6E:
	bl sub_080003F0
_08040A72:
	bl sub_0805EF90
	cmp r0, #0
	bne _08040A6E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08040A94
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08040A9C
_08040A94: .4byte 0x001400EF
_08040A98:
	bl sub_080003F0
_08040A9C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08040AB2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08040A98
	bl sub_0805EFBC
_08040AB2:
	ldr r0, _08040B44
	ldr r0, [r0, #0]
	ldr r2, _08040B48
	adds r1, r0, r2
	movs r2, #0
_08040ABC:
	ldr r0, [r1, #0]
	ldr r3, [sp, #0x38]
	cmp r0, r3
	beq _08040AD2
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08040ABC
	bl sub_080003F0
	movs r1, #0
_08040AD2:
	cmp r1, #0
	beq _08040ADA
	movs r0, #4
	strh r0, [r1, #0x36]
_08040ADA:
	ldr r0, _08040B4C
	movs r1, #0x78
	movs r2, #0x52
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08040B44
	ldr r0, [r0, #0]
	ldr r2, _08040B48
	adds r1, r0, r2
	movs r2, #0
_08040AF0:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08040AF8
	b _080408E8
_08040AF8:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08040AF0
	bl sub_080003F0
	movs r2, #0
_08040B06:
	cmp r2, #0
	beq _08040B1A
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x10
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08040B1A:
	ldr r6, _08040B50
	ldr r0, _08040B44
	ldr r0, [r0, #0]
	ldr r3, _08040B48
	adds r1, r0, r3
	movs r2, #0
_08040B26:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08040B2E
	b _080408EC
_08040B2E:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08040B26
	bl sub_080003F0
	movs r0, #0
_08040B3C:
	cmp r0, #0
	beq _08040B58
	str r6, [r0, #0x44]
	b _08040B58
_08040B44: .4byte gUnk_03005CF4
_08040B48: .4byte 0x000007A4
_08040B4C: .4byte 0x00040040
_08040B50: .4byte sub_080308B4
_08040B54:
	bl sub_080003F0
_08040B58:
	bl sub_0805F184
	cmp r0, #0
	bne _08040B54
	b _08040B66
_08040B62:
	bl sub_080003F0
_08040B66:
	bl sub_0805EF90
	cmp r0, #0
	bne _08040B62
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08040B88
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08040B90
_08040B88: .4byte 0x001400F0
_08040B8C:
	bl sub_080003F0
_08040B90:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08040BA6
	bl sub_0800CDF8
	cmp r0, #0
	beq _08040B8C
	bl sub_0805EFBC
_08040BA6:
	adds r0, r5, #0
	movs r1, #0xd
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0xea
	movs r3, #0x3c
	bl sub_08028AAC
	ldr r0, _08040BE4
	ldr r0, [r0, #0]
	ldr r2, _08040BE8
	adds r1, r0, r2
	movs r2, #0
_08040BC4:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _08040BD8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08040BC4
	bl sub_080003F0
	movs r1, #0
_08040BD8:
	cmp r1, #0
	beq _08040BF0
	movs r0, #4
	strh r0, [r1, #0x36]
	b _08040BF0
	.2byte 0x0000
_08040BE4: .4byte gUnk_03005CF4
_08040BE8: .4byte 0x000007A4
_08040BEC:
	bl sub_080003F0
_08040BF0:
	bl sub_0805F184
	cmp r0, #0
	bne _08040BEC
	b _08040BFE
_08040BFA:
	bl sub_080003F0
_08040BFE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08040BFA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08040C20
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08040C28
_08040C20: .4byte 0x001400F1
_08040C24:
	bl sub_080003F0
_08040C28:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08040C34
	b _08040F7E
_08040C34:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08040C24
	bl sub_0805EFBC
	b _08040F7E
_08040C42:
	adds r2, r1, #0
	b _08040E46
_08040C46:
	adds r0, r1, #0
	b _08040E7C
_08040C4A:
	add r7, sp, #0x20
	add r6, sp, #0x24
	mov r3, sp
	adds r3, #0x28
	str r3, [sp, #0x40]
	add r0, sp, #0x2c
	mov sl, r0
	b _08040C5E
_08040C5A:
	bl sub_080003F0
_08040C5E:
	bl sub_0805F184
	cmp r0, #0
	bne _08040C5A
	b _08040C6C
_08040C68:
	bl sub_080003F0
_08040C6C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08040C68
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08040C90
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08040C98
	.2byte 0x0000
_08040C90: .4byte 0x001400F2
_08040C94:
	bl sub_080003F0
_08040C98:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08040CAE
	bl sub_0800CDF8
	cmp r0, #0
	beq _08040C94
	bl sub_0805EFBC
_08040CAE:
	ldr r0, _08040D08
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	mov r8, r2
	adds r0, #0x82
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r4, #0
	movs r2, #0xc0
	lsls r2, r2, #0xe
	mov r9, r2
_08040CC8:
	adds r0, r7, #0
	mov r1, r8
	movs r3, #0
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x24]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	adds r4, #0x22
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08040CC8
	movs r4, #0x28
	b _08040D16
	.2byte 0x0000
_08040D08: .4byte gUnk_03003170
_08040D0C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08040D22
_08040D16:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08040D0C
_08040D22:
	movs r0, #0x36
	movs r1, #0x78
	movs r2, #0xfa
	bl sub_080289C0
	adds r5, r0, #0
	movs r1, #0xe
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x95
	movs r3, #0x3c
	bl sub_08028AAC
	adds r0, r5, #0
	movs r1, #4
	bl sub_0802939C
	ldr r0, _08040D9C
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r7, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r6, [r0, r3]
	movs r4, #0
	mov r9, r4
	mov r8, r4
_08040D5E:
	ldr r0, [sp, #0x40]
	adds r1, r7, #0
	mov r3, r9
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, sl
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x2c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	adds r4, #0x22
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08040D5E
	b _08040DA4
	.2byte 0x0000
_08040D9C: .4byte gUnk_03003170
_08040DA0:
	bl sub_080003F0
_08040DA4:
	bl sub_0805F184
	cmp r0, #0
	bne _08040DA0
	b _08040DB2
_08040DAE:
	bl sub_080003F0
_08040DB2:
	bl sub_0805EF90
	cmp r0, #0
	bne _08040DAE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08040DD4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08040DDC
_08040DD4: .4byte 0x001400F3
_08040DD8:
	bl sub_080003F0
_08040DDC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08040DF2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08040DD8
	bl sub_0805EFBC
_08040DF2:
	ldr r0, _08040E84
	ldr r0, [r0, #0]
	ldr r2, _08040E88
	adds r1, r0, r2
	movs r2, #0
_08040DFC:
	ldr r0, [r1, #0]
	ldr r3, [sp, #0x38]
	cmp r0, r3
	beq _08040E12
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08040DFC
	bl sub_080003F0
	movs r1, #0
_08040E12:
	cmp r1, #0
	beq _08040E1A
	movs r0, #4
	strh r0, [r1, #0x36]
_08040E1A:
	ldr r0, _08040E8C
	movs r1, #0x78
	movs r2, #0x52
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _08040E84
	ldr r0, [r0, #0]
	ldr r2, _08040E88
	adds r1, r0, r2
	movs r2, #0
_08040E30:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08040E38
	b _08040C42
_08040E38:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08040E30
	bl sub_080003F0
	movs r2, #0
_08040E46:
	cmp r2, #0
	beq _08040E5A
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x10
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08040E5A:
	ldr r6, _08040E90
	ldr r0, _08040E84
	ldr r0, [r0, #0]
	ldr r3, _08040E88
	adds r1, r0, r3
	movs r2, #0
_08040E66:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _08040E6E
	b _08040C46
_08040E6E:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08040E66
	bl sub_080003F0
	movs r0, #0
_08040E7C:
	cmp r0, #0
	beq _08040E98
	str r6, [r0, #0x44]
	b _08040E98
_08040E84: .4byte gUnk_03005CF4
_08040E88: .4byte 0x000007A4
_08040E8C: .4byte 0x00040040
_08040E90: .4byte sub_080308B4
_08040E94:
	bl sub_080003F0
_08040E98:
	bl sub_0805F184
	cmp r0, #0
	bne _08040E94
	b _08040EA6
_08040EA2:
	bl sub_080003F0
_08040EA6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08040EA2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08040EC8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08040ED0
_08040EC8: .4byte 0x001400F4
_08040ECC:
	bl sub_080003F0
_08040ED0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08040EE6
	bl sub_0800CDF8
	cmp r0, #0
	beq _08040ECC
	bl sub_0805EFBC
_08040EE6:
	adds r0, r5, #0
	movs r1, #0xd
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0xea
	movs r3, #0x3c
	bl sub_08028AAC
	ldr r0, _08040F24
	ldr r0, [r0, #0]
	ldr r2, _08040F28
	adds r1, r0, r2
	movs r2, #0
_08040F04:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _08040F18
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08040F04
	bl sub_080003F0
	movs r1, #0
_08040F18:
	cmp r1, #0
	beq _08040F30
	movs r0, #4
	strh r0, [r1, #0x36]
	b _08040F30
	.2byte 0x0000
_08040F24: .4byte gUnk_03005CF4
_08040F28: .4byte 0x000007A4
_08040F2C:
	bl sub_080003F0
_08040F30:
	bl sub_0805F184
	cmp r0, #0
	bne _08040F2C
	b _08040F3E
_08040F3A:
	bl sub_080003F0
_08040F3E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08040F3A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08040F60
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08040F68
_08040F60: .4byte 0x001400F5
_08040F64:
	bl sub_080003F0
_08040F68:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08040F7E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08040F64
	bl sub_0805EFBC
_08040F7E:
	movs r4, #4
	bl sub_0800CE30
	cmp r0, #0
	beq _08040F98
	ldr r0, _08040F94
	ldr r0, [r0, #0]
	movs r3, #0xdf
	lsls r3, r3, #1
	adds r0, r0, r3
	b _08040FA2
_08040F94: .4byte gUnk_03005CF4
_08040F98:
	ldr r0, _08041024
	ldr r0, [r0, #0]
	movs r1, #0xd9
	lsls r1, r1, #1
	adds r0, r0, r1
_08040FA2:
	strb r4, [r0, #0]
	movs r2, #0x22
	mov r9, r2
	ldr r0, _08041028
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r6, [r1, r3]
	adds r0, #0x82
	movs r1, #0
	ldrsh r5, [r0, r1]
	movs r4, #0
	mov r8, r4
	movs r7, #0
_08040FBE:
	ldr r0, [sp, #0x44]
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x30]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08040FBE
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804102C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08041024: .4byte gUnk_03005CF4
_08041028: .4byte gUnk_03003170
_0804102C: .4byte gUnk_03003CE0
	thumb_func_end sub_0804076C
