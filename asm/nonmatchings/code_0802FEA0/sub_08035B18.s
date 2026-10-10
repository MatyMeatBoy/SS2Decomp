	thumb_func_start sub_08035B18
sub_08035B18: @ 0x08035B18
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	mov r8, r0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08035B60
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	mov r0, r8
	movs r1, #0
	bl sub_0802949C
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _08035B68
	ldr r0, _08035B64
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
	b _08035B70
	.2byte 0x0000
_08035B60: .4byte gUnk_03003CE0
_08035B64: .4byte gUnk_03005CF4
_08035B68:
	ldr r0, _08035B88
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
_08035B70:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	adds r5, r0, #0
	cmp r5, #4
	ble _08035B7E
	bl _0803681C
_08035B7E:
	cmp r4, #0
	beq _08035B86
	bl _0803676A
_08035B86:
	b _08035B90
_08035B88: .4byte gUnk_03005CF4
_08035B8C:
	bl sub_080003F0
_08035B90:
	bl sub_0805F184
	cmp r0, #0
	bne _08035B8C
	b _08035B9E
_08035B9A:
	bl sub_080003F0
_08035B9E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035B9A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035BC0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035BC8
_08035BC0: .4byte 0x00140237
_08035BC4:
	bl sub_080003F0
_08035BC8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08035BDE
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035BC4
	bl sub_0805EFBC
_08035BDE:
	cmp r5, #4
	bls _08035BE6
	bl _080368C6
_08035BE6:
	lsls r0, r5, #2
	ldr r1, _08035BF0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08035BF0: .4byte _08035BF4
_08035BF4:
	.4byte _08035C0C
_08035BF8: .4byte _08035E32
_08035BFC: .4byte _0803605A
_08035C00: .4byte _0803627E
_08035C04: .4byte _080364A2
_08035C08:
	bl sub_080003F0
_08035C0C:
	bl sub_0805F184
	cmp r0, #0
	bne _08035C08
	b _08035C1A
_08035C16:
	bl sub_080003F0
_08035C1A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035C16
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035C3C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035C44
_08035C3C: .4byte 0x00140238
_08035C40:
	bl sub_080003F0
_08035C44:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08035C5A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035C40
	bl sub_0805EFBC
_08035C5A:
	movs r3, #0
	movs r2, #0
	ldr r0, _08035C88
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08035C68:
	ldrh r0, [r1, #0]
	cmp r0, #8
	bne _08035C76
	ldrh r0, [r1, #2]
	cmp r0, #6
	bne _08035C76
	adds r3, #1
_08035C76:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08035C68
	cmp r3, #2
	bgt _08035C84
	b _08035DCA
_08035C84:
	b _08035C90
	.2byte 0x0000
_08035C88: .4byte gUnk_030034E0
_08035C8C:
	bl sub_080003F0
_08035C90:
	bl sub_0805F184
	cmp r0, #0
	bne _08035C8C
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035CB4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035CBC
	.2byte 0x0000
_08035CB4: .4byte 0x0014023F
_08035CB8:
	bl sub_080003F0
_08035CBC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08035CB8
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _08035CD2
	b _08035DCA
_08035CD2:
	movs r4, #3
	movs r3, #0
	add r6, sp, #0xc
	ldr r7, _08035D48
	movs r5, #0
_08035CDC:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #8
	bne _08035D04
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #6
	bne _08035D04
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08035D0A
_08035D04:
	adds r3, #1
	cmp r3, #0x18
	bls _08035CDC
_08035D0A:
	movs r1, #8
	movs r2, #0x1a
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_08035D1A:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08035D1A
	movs r4, #0
_08035D26:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08035D26
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08035D50
	ldr r0, _08035D4C
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
	b _08035D58
	.2byte 0x0000
_08035D48: .4byte gUnk_030034E0
_08035D4C: .4byte gUnk_03005CF4
_08035D50:
	ldr r0, _08035D70
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
_08035D58:
	adds r0, r0, r1
	strb r4, [r0, #0]
	ldr r0, _08035D74
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08035D7C
	movs r0, #0x33
	bl sub_08006D08
	b _08035D7C
_08035D70: .4byte gUnk_03005CF4
_08035D74: .4byte gUnk_030027D0
_08035D78:
	bl sub_080003F0
_08035D7C:
	bl sub_0805F184
	cmp r0, #0
	bne _08035D78
	b _08035D8A
_08035D86:
	bl sub_080003F0
_08035D8A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035D86
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035DAC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035DB4
_08035DAC: .4byte 0x00140242
_08035DB0:
	bl sub_080003F0
_08035DB4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08035DCA
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035DB0
	bl sub_0805EFBC
_08035DCA:
	mov r0, r8
	bl sub_08029788
	b _08035DD6
_08035DD2:
	bl sub_080003F0
_08035DD6:
	bl sub_0805F184
	cmp r0, #0
	bne _08035DD2
	b _08035DE4
_08035DE0:
	bl sub_080003F0
_08035DE4:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035DE0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035E08
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035E10
	.2byte 0x0000
_08035E08: .4byte 0x0014023E
_08035E0C:
	bl sub_080003F0
_08035E10:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08035E1E
	bl _080368C6
_08035E1E:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035E0C
	bl sub_0805EFBC
	bl _080368C6
_08035E2E:
	bl sub_080003F0
_08035E32:
	bl sub_0805F184
	cmp r0, #0
	bne _08035E2E
	b _08035E40
_08035E3C:
	bl sub_080003F0
_08035E40:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035E3C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035E64
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035E6C
	.2byte 0x0000
_08035E64: .4byte 0x00140239
_08035E68:
	bl sub_080003F0
_08035E6C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08035E82
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035E68
	bl sub_0805EFBC
_08035E82:
	movs r3, #0
	movs r2, #0
	ldr r0, _08035EB0
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08035E90:
	ldrh r0, [r1, #0]
	cmp r0, #8
	bne _08035E9E
	ldrh r0, [r1, #2]
	cmp r0, #0x23
	bne _08035E9E
	adds r3, #1
_08035E9E:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08035E90
	cmp r3, #2
	bgt _08035EAC
	b _08035FF2
_08035EAC:
	b _08035EB8
	.2byte 0x0000
_08035EB0: .4byte gUnk_030034E0
_08035EB4:
	bl sub_080003F0
_08035EB8:
	bl sub_0805F184
	cmp r0, #0
	bne _08035EB4
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035EDC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035EE4
	.2byte 0x0000
_08035EDC: .4byte 0x0014023F
_08035EE0:
	bl sub_080003F0
_08035EE4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08035EE0
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _08035EFA
	b _08035FF2
_08035EFA:
	movs r4, #3
	movs r3, #0
	add r6, sp, #0xc
	ldr r7, _08035F70
	movs r5, #0
_08035F04:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #8
	bne _08035F2C
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x23
	bne _08035F2C
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08035F32
_08035F2C:
	adds r3, #1
	cmp r3, #0x18
	bls _08035F04
_08035F32:
	movs r1, #8
	movs r2, #0x2f
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_08035F42:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08035F42
	movs r4, #0
_08035F4E:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08035F4E
	movs r4, #2
	bl sub_0800CE30
	cmp r0, #0
	beq _08035F78
	ldr r0, _08035F74
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
	b _08035F80
	.2byte 0x0000
_08035F70: .4byte gUnk_030034E0
_08035F74: .4byte gUnk_03005CF4
_08035F78:
	ldr r0, _08035F98
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
_08035F80:
	adds r0, r0, r1
	strb r4, [r0, #0]
	ldr r0, _08035F9C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08035FA4
	movs r0, #0x33
	bl sub_08006D08
	b _08035FA4
_08035F98: .4byte gUnk_03005CF4
_08035F9C: .4byte gUnk_030027D0
_08035FA0:
	bl sub_080003F0
_08035FA4:
	bl sub_0805F184
	cmp r0, #0
	bne _08035FA0
	b _08035FB2
_08035FAE:
	bl sub_080003F0
_08035FB2:
	bl sub_0805EF90
	cmp r0, #0
	bne _08035FAE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08035FD4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08035FDC
_08035FD4: .4byte 0x00140243
_08035FD8:
	bl sub_080003F0
_08035FDC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08035FF2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08035FD8
	bl sub_0805EFBC
_08035FF2:
	mov r0, r8
	bl sub_08029788
	b _08035FFE
_08035FFA:
	bl sub_080003F0
_08035FFE:
	bl sub_0805F184
	cmp r0, #0
	bne _08035FFA
	b _0803600C
_08036008:
	bl sub_080003F0
_0803600C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036008
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036030
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036038
	.2byte 0x0000
_08036030: .4byte 0x0014023E
_08036034:
	bl sub_080003F0
_08036038:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08036046
	bl _080368C6
_08036046:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036034
	bl sub_0805EFBC
	bl _080368C6
_08036056:
	bl sub_080003F0
_0803605A:
	bl sub_0805F184
	cmp r0, #0
	bne _08036056
	b _08036068
_08036064:
	bl sub_080003F0
_08036068:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036064
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803608C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036094
	.2byte 0x0000
_0803608C: .4byte 0x0014023A
_08036090:
	bl sub_080003F0
_08036094:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080360AA
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036090
	bl sub_0805EFBC
_080360AA:
	movs r3, #0
	movs r2, #0
	ldr r0, _080360D8
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_080360B8:
	ldrh r0, [r1, #0]
	cmp r0, #8
	bne _080360C6
	ldrh r0, [r1, #2]
	cmp r0, #0x41
	bne _080360C6
	adds r3, #1
_080360C6:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _080360B8
	cmp r3, #2
	bgt _080360D4
	b _0803621A
_080360D4:
	b _080360E0
	.2byte 0x0000
_080360D8: .4byte gUnk_030034E0
_080360DC:
	bl sub_080003F0
_080360E0:
	bl sub_0805F184
	cmp r0, #0
	bne _080360DC
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036104
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803610C
	.2byte 0x0000
_08036104: .4byte 0x0014023F
_08036108:
	bl sub_080003F0
_0803610C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08036108
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _08036122
	b _0803621A
_08036122:
	movs r4, #3
	movs r3, #0
	add r6, sp, #0xc
	ldr r7, _08036198
	movs r5, #0
_0803612C:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #8
	bne _08036154
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x41
	bne _08036154
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _0803615A
_08036154:
	adds r3, #1
	cmp r3, #0x18
	bls _0803612C
_0803615A:
	movs r1, #8
	movs r2, #0x72
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_0803616A:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _0803616A
	movs r4, #0
_08036176:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08036176
	movs r4, #3
	bl sub_0800CE30
	cmp r0, #0
	beq _080361A0
	ldr r0, _0803619C
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
	b _080361A8
	.2byte 0x0000
_08036198: .4byte gUnk_030034E0
_0803619C: .4byte gUnk_03005CF4
_080361A0:
	ldr r0, _080361C0
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
_080361A8:
	adds r0, r0, r1
	strb r4, [r0, #0]
	ldr r0, _080361C4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080361CC
	movs r0, #0x33
	bl sub_08006D08
	b _080361CC
_080361C0: .4byte gUnk_03005CF4
_080361C4: .4byte gUnk_030027D0
_080361C8:
	bl sub_080003F0
_080361CC:
	bl sub_0805F184
	cmp r0, #0
	bne _080361C8
	b _080361DA
_080361D6:
	bl sub_080003F0
_080361DA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080361D6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080361FC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036204
_080361FC: .4byte 0x00140244
_08036200:
	bl sub_080003F0
_08036204:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803621A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036200
	bl sub_0805EFBC
_0803621A:
	mov r0, r8
	bl sub_08029788
	b _08036226
_08036222:
	bl sub_080003F0
_08036226:
	bl sub_0805F184
	cmp r0, #0
	bne _08036222
	b _08036234
_08036230:
	bl sub_080003F0
_08036234:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036230
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036258
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036260
	.2byte 0x0000
_08036258: .4byte 0x0014023E
_0803625C:
	bl sub_080003F0
_08036260:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803626C
	b _080368C6
_0803626C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803625C
	bl sub_0805EFBC
	b _080368C6
_0803627A:
	bl sub_080003F0
_0803627E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803627A
	b _0803628C
_08036288:
	bl sub_080003F0
_0803628C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036288
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080362B0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080362B8
	.2byte 0x0000
_080362B0: .4byte 0x0014023B
_080362B4:
	bl sub_080003F0
_080362B8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080362CE
	bl sub_0800CDF8
	cmp r0, #0
	beq _080362B4
	bl sub_0805EFBC
_080362CE:
	movs r3, #0
	movs r2, #0
	ldr r0, _080362FC
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_080362DC:
	ldrh r0, [r1, #0]
	cmp r0, #8
	bne _080362EA
	ldrh r0, [r1, #2]
	cmp r0, #0x59
	bne _080362EA
	adds r3, #1
_080362EA:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _080362DC
	cmp r3, #2
	bgt _080362F8
	b _0803643E
_080362F8:
	b _08036304
	.2byte 0x0000
_080362FC: .4byte gUnk_030034E0
_08036300:
	bl sub_080003F0
_08036304:
	bl sub_0805F184
	cmp r0, #0
	bne _08036300
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036328
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036330
	.2byte 0x0000
_08036328: .4byte 0x0014023F
_0803632C:
	bl sub_080003F0
_08036330:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803632C
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _08036346
	b _0803643E
_08036346:
	movs r4, #3
	movs r3, #0
	add r6, sp, #0xc
	ldr r7, _080363BC
	movs r5, #0
_08036350:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #8
	bne _08036378
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x59
	bne _08036378
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _0803637E
_08036378:
	adds r3, #1
	cmp r3, #0x18
	bls _08036350
_0803637E:
	movs r1, #8
	movs r2, #0x68
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_0803638E:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _0803638E
	movs r4, #0
_0803639A:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _0803639A
	movs r4, #4
	bl sub_0800CE30
	cmp r0, #0
	beq _080363C4
	ldr r0, _080363C0
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
	b _080363CC
	.2byte 0x0000
_080363BC: .4byte gUnk_030034E0
_080363C0: .4byte gUnk_03005CF4
_080363C4:
	ldr r0, _080363E4
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
_080363CC:
	adds r0, r0, r1
	strb r4, [r0, #0]
	ldr r0, _080363E8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080363F0
	movs r0, #0x33
	bl sub_08006D08
	b _080363F0
_080363E4: .4byte gUnk_03005CF4
_080363E8: .4byte gUnk_030027D0
_080363EC:
	bl sub_080003F0
_080363F0:
	bl sub_0805F184
	cmp r0, #0
	bne _080363EC
	b _080363FE
_080363FA:
	bl sub_080003F0
_080363FE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080363FA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036420
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036428
_08036420: .4byte 0x00140245
_08036424:
	bl sub_080003F0
_08036428:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803643E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036424
	bl sub_0805EFBC
_0803643E:
	mov r0, r8
	bl sub_08029788
	b _0803644A
_08036446:
	bl sub_080003F0
_0803644A:
	bl sub_0805F184
	cmp r0, #0
	bne _08036446
	b _08036458
_08036454:
	bl sub_080003F0
_08036458:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036454
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803647C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036484
	.2byte 0x0000
_0803647C: .4byte 0x0014023E
_08036480:
	bl sub_080003F0
_08036484:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08036490
	b _080368C6
_08036490:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036480
	bl sub_0805EFBC
	b _080368C6
_0803649E:
	bl sub_080003F0
_080364A2:
	bl sub_0805F184
	cmp r0, #0
	bne _0803649E
	b _080364B0
_080364AC:
	bl sub_080003F0
_080364B0:
	bl sub_0805EF90
	cmp r0, #0
	bne _080364AC
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080364D4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080364DC
	.2byte 0x0000
_080364D4: .4byte 0x0014023C
_080364D8:
	bl sub_080003F0
_080364DC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080364F2
	bl sub_0800CDF8
	cmp r0, #0
	beq _080364D8
	bl sub_0805EFBC
_080364F2:
	movs r3, #0
	movs r2, #0
	ldr r0, _08036520
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08036500:
	ldrh r0, [r1, #0]
	cmp r0, #8
	bne _0803650E
	ldrh r0, [r1, #2]
	cmp r0, #0x6f
	bne _0803650E
	adds r3, #1
_0803650E:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08036500
	cmp r3, #2
	bgt _0803651C
	b _08036706
_0803651C:
	b _08036528
	.2byte 0x0000
_08036520: .4byte gUnk_030034E0
_08036524:
	bl sub_080003F0
_08036528:
	bl sub_0805F184
	cmp r0, #0
	bne _08036524
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803654C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036554
	.2byte 0x0000
_0803654C: .4byte 0x0014023F
_08036550:
	bl sub_080003F0
_08036554:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08036550
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803656A
	b _080366A6
_0803656A:
	movs r4, #3
	movs r3, #0
	add r6, sp, #0xc
	ldr r7, _080365E8
	movs r5, #0
_08036574:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #8
	bne _0803659C
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x6f
	bne _0803659C
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _080365A2
_0803659C:
	adds r3, #1
	cmp r3, #0x18
	bls _08036574
_080365A2:
	movs r1, #8
	movs r2, #0x78
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_080365B2:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _080365B2
	movs r4, #0
_080365BE:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _080365BE
	ldr r0, _080365EC
	movs r1, #5
	bl sub_08068070
	ldr r0, _080365F0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080365F8
	movs r0, #0x33
	bl sub_08006D08
	b _080365F8
	.2byte 0x0000
_080365E8: .4byte gUnk_030034E0
_080365EC: .4byte sub_0805921C
_080365F0: .4byte gUnk_030027D0
_080365F4:
	bl sub_080003F0
_080365F8:
	bl sub_0805F184
	cmp r0, #0
	bne _080365F4
	b _08036606
_08036602:
	bl sub_080003F0
_08036606:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036602
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036628
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036630
_08036628: .4byte 0x00140246
_0803662C:
	bl sub_080003F0
_08036630:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08036646
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803662C
	bl sub_0805EFBC
_08036646:
	mov r0, r8
	bl sub_08029788
	b _08036652
_0803664E:
	bl sub_080003F0
_08036652:
	bl sub_0805F184
	cmp r0, #0
	bne _0803664E
	b _08036660
_0803665C:
	bl sub_080003F0
_08036660:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803665C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036684
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803668C
	.2byte 0x0000
_08036684: .4byte 0x00140241
_08036688:
	bl sub_080003F0
_0803668C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08036698
	b _080368C6
_08036698:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036688
	bl sub_0805EFBC
	b _080368C6
_080366A6:
	mov r0, r8
	bl sub_08029788
	b _080366B2
_080366AE:
	bl sub_080003F0
_080366B2:
	bl sub_0805F184
	cmp r0, #0
	bne _080366AE
	b _080366C0
_080366BC:
	bl sub_080003F0
_080366C0:
	bl sub_0805EF90
	cmp r0, #0
	bne _080366BC
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080366E4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080366EC
	.2byte 0x0000
_080366E4: .4byte 0x0014023E
_080366E8:
	bl sub_080003F0
_080366EC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080366F8
	b _080368C6
_080366F8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080366E8
	bl sub_0805EFBC
	b _080368C6
_08036706:
	mov r0, r8
	bl sub_08029788
	b _08036712
_0803670E:
	bl sub_080003F0
_08036712:
	bl sub_0805F184
	cmp r0, #0
	bne _0803670E
	b _08036720
_0803671C:
	bl sub_080003F0
_08036720:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803671C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036744
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803674C
	.2byte 0x0000
_08036744: .4byte 0x0014023E
_08036748:
	bl sub_080003F0
_0803674C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08036758
	b _080368C6
_08036758:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036748
	bl sub_0805EFBC
	b _080368C6
_08036766:
	bl sub_080003F0
_0803676A:
	bl sub_0805F184
	cmp r0, #0
	bne _08036766
	b _08036778
_08036774:
	bl sub_080003F0
_08036778:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036774
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803679C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080367A4
	.2byte 0x0000
_0803679C: .4byte 0x0014023D
_080367A0:
	bl sub_080003F0
_080367A4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080367BA
	bl sub_0800CDF8
	cmp r0, #0
	beq _080367A0
	bl sub_0805EFBC
_080367BA:
	mov r0, r8
	bl sub_08029788
	b _080367C6
_080367C2:
	bl sub_080003F0
_080367C6:
	bl sub_0805F184
	cmp r0, #0
	bne _080367C2
	b _080367D4
_080367D0:
	bl sub_080003F0
_080367D4:
	bl sub_0805EF90
	cmp r0, #0
	bne _080367D0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080367F8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036800
	.2byte 0x0000
_080367F8: .4byte 0x0014023E
_080367FC:
	bl sub_080003F0
_08036800:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080368C6
	bl sub_0800CDF8
	cmp r0, #0
	beq _080367FC
	bl sub_0805EFBC
	b _080368C6
_08036818:
	bl sub_080003F0
_0803681C:
	bl sub_0805F184
	cmp r0, #0
	bne _08036818
	b _0803682A
_08036826:
	bl sub_080003F0
_0803682A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036826
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803684C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036854
_0803684C: .4byte 0x00140240
_08036850:
	bl sub_080003F0
_08036854:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803686A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036850
	bl sub_0805EFBC
_0803686A:
	mov r0, r8
	bl sub_08029788
	b _08036876
_08036872:
	bl sub_080003F0
_08036876:
	bl sub_0805F184
	cmp r0, #0
	bne _08036872
	b _08036884
_08036880:
	bl sub_080003F0
_08036884:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036880
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080368A8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080368B0
	.2byte 0x0000
_080368A8: .4byte 0x00140241
_080368AC:
	bl sub_080003F0
_080368B0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080368C6
	bl sub_0800CDF8
	cmp r0, #0
	beq _080368AC
	bl sub_0805EFBC
_080368C6:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080368F0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080368F0: .4byte gUnk_03003CE0
	thumb_func_end sub_08035B18
