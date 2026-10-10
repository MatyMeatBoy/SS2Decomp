	thumb_func_start sub_080368F4
sub_080368F4: @ 0x080368F4
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
	ldr r0, _0803693C
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
	beq _08036944
	ldr r0, _08036940
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
	b _0803694C
	.2byte 0x0000
_0803693C: .4byte gUnk_03003CE0
_08036940: .4byte gUnk_03005CF4
_08036944:
	ldr r0, _08036964
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
_0803694C:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	adds r5, r0, #0
	cmp r5, #4
	ble _0803695A
	bl _080375F4
_0803695A:
	cmp r4, #0
	beq _08036962
	bl _08037542
_08036962:
	b _0803696C
_08036964: .4byte gUnk_03005CF4
_08036968:
	bl sub_080003F0
_0803696C:
	bl sub_0805F184
	cmp r0, #0
	bne _08036968
	b _0803697A
_08036976:
	bl sub_080003F0
_0803697A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036976
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803699C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080369A4
_0803699C: .4byte 0x00140237
_080369A0:
	bl sub_080003F0
_080369A4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080369BA
	bl sub_0800CDF8
	cmp r0, #0
	beq _080369A0
	bl sub_0805EFBC
_080369BA:
	cmp r5, #4
	bls _080369C2
	bl _0803769E
_080369C2:
	lsls r0, r5, #2
	ldr r1, _080369CC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080369CC: .4byte _080369D0
_080369D0:
	.4byte _080369E8
_080369D4: .4byte _08036C0A
_080369D8: .4byte _08036E32
_080369DC: .4byte _08037056
_080369E0: .4byte _0803727A
_080369E4:
	bl sub_080003F0
_080369E8:
	bl sub_0805F184
	cmp r0, #0
	bne _080369E4
	b _080369F6
_080369F2:
	bl sub_080003F0
_080369F6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080369F2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036A18
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036A20
_08036A18: .4byte 0x00140247
_08036A1C:
	bl sub_080003F0
_08036A20:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08036A36
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036A1C
	bl sub_0805EFBC
_08036A36:
	movs r3, #0
	movs r2, #0
	ldr r0, _08036A64
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08036A44:
	ldrh r0, [r1, #0]
	cmp r0, #8
	bne _08036A52
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _08036A52
	adds r3, #1
_08036A52:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08036A44
	cmp r3, #2
	bgt _08036A60
	b _08036BA2
_08036A60:
	b _08036A6C
	.2byte 0x0000
_08036A64: .4byte gUnk_030034E0
_08036A68:
	bl sub_080003F0
_08036A6C:
	bl sub_0805F184
	cmp r0, #0
	bne _08036A68
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036A90
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036A98
	.2byte 0x0000
_08036A90: .4byte 0x0014023F
_08036A94:
	bl sub_080003F0
_08036A98:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08036A94
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _08036AAE
	b _08036BA2
_08036AAE:
	movs r4, #3
	movs r3, #0
	add r6, sp, #0xc
	ldr r5, _08036B20
_08036AB6:
	ldr r0, [r5, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #8
	bne _08036ADE
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _08036ADE
	subs r4, #1
	strh r0, [r2, #0]
	strh r0, [r1, #0]
	cmp r4, #0
	beq _08036AE4
_08036ADE:
	adds r3, #1
	cmp r3, #0x18
	bls _08036AB6
_08036AE4:
	movs r1, #8
	movs r2, #9
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_08036AF4:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08036AF4
	movs r4, #0
_08036B00:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08036B00
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08036B28
	ldr r0, _08036B24
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
	b _08036B30
_08036B20: .4byte gUnk_030034E0
_08036B24: .4byte gUnk_03005CF4
_08036B28:
	ldr r0, _08036B48
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
_08036B30:
	adds r0, r0, r1
	strb r4, [r0, #0]
	ldr r0, _08036B4C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08036B54
	movs r0, #0x33
	bl sub_08006D08
	b _08036B54
_08036B48: .4byte gUnk_03005CF4
_08036B4C: .4byte gUnk_030027D0
_08036B50:
	bl sub_080003F0
_08036B54:
	bl sub_0805F184
	cmp r0, #0
	bne _08036B50
	b _08036B62
_08036B5E:
	bl sub_080003F0
_08036B62:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036B5E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036B84
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036B8C
_08036B84: .4byte 0x0014024C
_08036B88:
	bl sub_080003F0
_08036B8C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08036BA2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036B88
	bl sub_0805EFBC
_08036BA2:
	mov r0, r8
	bl sub_08029788
	b _08036BAE
_08036BAA:
	bl sub_080003F0
_08036BAE:
	bl sub_0805F184
	cmp r0, #0
	bne _08036BAA
	b _08036BBC
_08036BB8:
	bl sub_080003F0
_08036BBC:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036BB8
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036BE0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036BE8
	.2byte 0x0000
_08036BE0: .4byte 0x0014023E
_08036BE4:
	bl sub_080003F0
_08036BE8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08036BF6
	bl _0803769E
_08036BF6:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036BE4
	bl sub_0805EFBC
	bl _0803769E
_08036C06:
	bl sub_080003F0
_08036C0A:
	bl sub_0805F184
	cmp r0, #0
	bne _08036C06
	b _08036C18
_08036C14:
	bl sub_080003F0
_08036C18:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036C14
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036C3C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036C44
	.2byte 0x0000
_08036C3C: .4byte 0x00140248
_08036C40:
	bl sub_080003F0
_08036C44:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08036C5A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036C40
	bl sub_0805EFBC
_08036C5A:
	movs r3, #0
	movs r2, #0
	ldr r0, _08036C88
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08036C68:
	ldrh r0, [r1, #0]
	cmp r0, #8
	bne _08036C76
	ldrh r0, [r1, #2]
	cmp r0, #0x2b
	bne _08036C76
	adds r3, #1
_08036C76:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08036C68
	cmp r3, #2
	bgt _08036C84
	b _08036DCA
_08036C84:
	b _08036C90
	.2byte 0x0000
_08036C88: .4byte gUnk_030034E0
_08036C8C:
	bl sub_080003F0
_08036C90:
	bl sub_0805F184
	cmp r0, #0
	bne _08036C8C
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036CB4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036CBC
	.2byte 0x0000
_08036CB4: .4byte 0x0014023F
_08036CB8:
	bl sub_080003F0
_08036CBC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08036CB8
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _08036CD2
	b _08036DCA
_08036CD2:
	movs r4, #3
	movs r3, #0
	add r6, sp, #0xc
	ldr r7, _08036D48
	movs r5, #0
_08036CDC:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #8
	bne _08036D04
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x2b
	bne _08036D04
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08036D0A
_08036D04:
	adds r3, #1
	cmp r3, #0x18
	bls _08036CDC
_08036D0A:
	movs r1, #8
	movs r2, #0x45
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_08036D1A:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08036D1A
	movs r4, #0
_08036D26:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08036D26
	movs r4, #2
	bl sub_0800CE30
	cmp r0, #0
	beq _08036D50
	ldr r0, _08036D4C
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
	b _08036D58
	.2byte 0x0000
_08036D48: .4byte gUnk_030034E0
_08036D4C: .4byte gUnk_03005CF4
_08036D50:
	ldr r0, _08036D70
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
_08036D58:
	adds r0, r0, r1
	strb r4, [r0, #0]
	ldr r0, _08036D74
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08036D7C
	movs r0, #0x33
	bl sub_08006D08
	b _08036D7C
_08036D70: .4byte gUnk_03005CF4
_08036D74: .4byte gUnk_030027D0
_08036D78:
	bl sub_080003F0
_08036D7C:
	bl sub_0805F184
	cmp r0, #0
	bne _08036D78
	b _08036D8A
_08036D86:
	bl sub_080003F0
_08036D8A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036D86
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036DAC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036DB4
_08036DAC: .4byte 0x0014024D
_08036DB0:
	bl sub_080003F0
_08036DB4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08036DCA
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036DB0
	bl sub_0805EFBC
_08036DCA:
	mov r0, r8
	bl sub_08029788
	b _08036DD6
_08036DD2:
	bl sub_080003F0
_08036DD6:
	bl sub_0805F184
	cmp r0, #0
	bne _08036DD2
	b _08036DE4
_08036DE0:
	bl sub_080003F0
_08036DE4:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036DE0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036E08
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036E10
	.2byte 0x0000
_08036E08: .4byte 0x0014023E
_08036E0C:
	bl sub_080003F0
_08036E10:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08036E1E
	bl _0803769E
_08036E1E:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036E0C
	bl sub_0805EFBC
	bl _0803769E
_08036E2E:
	bl sub_080003F0
_08036E32:
	bl sub_0805F184
	cmp r0, #0
	bne _08036E2E
	b _08036E40
_08036E3C:
	bl sub_080003F0
_08036E40:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036E3C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036E64
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036E6C
	.2byte 0x0000
_08036E64: .4byte 0x00140249
_08036E68:
	bl sub_080003F0
_08036E6C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08036E82
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036E68
	bl sub_0805EFBC
_08036E82:
	movs r3, #0
	movs r2, #0
	ldr r0, _08036EB0
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08036E90:
	ldrh r0, [r1, #0]
	cmp r0, #8
	bne _08036E9E
	ldrh r0, [r1, #2]
	cmp r0, #0x50
	bne _08036E9E
	adds r3, #1
_08036E9E:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08036E90
	cmp r3, #2
	bgt _08036EAC
	b _08036FF2
_08036EAC:
	b _08036EB8
	.2byte 0x0000
_08036EB0: .4byte gUnk_030034E0
_08036EB4:
	bl sub_080003F0
_08036EB8:
	bl sub_0805F184
	cmp r0, #0
	bne _08036EB4
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036EDC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036EE4
	.2byte 0x0000
_08036EDC: .4byte 0x0014023F
_08036EE0:
	bl sub_080003F0
_08036EE4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08036EE0
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _08036EFA
	b _08036FF2
_08036EFA:
	movs r4, #3
	movs r3, #0
	add r6, sp, #0xc
	ldr r7, _08036F70
	movs r5, #0
_08036F04:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #8
	bne _08036F2C
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x50
	bne _08036F2C
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08036F32
_08036F2C:
	adds r3, #1
	cmp r3, #0x18
	bls _08036F04
_08036F32:
	movs r1, #8
	movs r2, #0x5f
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_08036F42:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08036F42
	movs r4, #0
_08036F4E:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08036F4E
	movs r4, #3
	bl sub_0800CE30
	cmp r0, #0
	beq _08036F78
	ldr r0, _08036F74
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
	b _08036F80
	.2byte 0x0000
_08036F70: .4byte gUnk_030034E0
_08036F74: .4byte gUnk_03005CF4
_08036F78:
	ldr r0, _08036F98
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
_08036F80:
	adds r0, r0, r1
	strb r4, [r0, #0]
	ldr r0, _08036F9C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08036FA4
	movs r0, #0x33
	bl sub_08006D08
	b _08036FA4
_08036F98: .4byte gUnk_03005CF4
_08036F9C: .4byte gUnk_030027D0
_08036FA0:
	bl sub_080003F0
_08036FA4:
	bl sub_0805F184
	cmp r0, #0
	bne _08036FA0
	b _08036FB2
_08036FAE:
	bl sub_080003F0
_08036FB2:
	bl sub_0805EF90
	cmp r0, #0
	bne _08036FAE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08036FD4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08036FDC
_08036FD4: .4byte 0x0014024E
_08036FD8:
	bl sub_080003F0
_08036FDC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08036FF2
	bl sub_0800CDF8
	cmp r0, #0
	beq _08036FD8
	bl sub_0805EFBC
_08036FF2:
	mov r0, r8
	bl sub_08029788
	b _08036FFE
_08036FFA:
	bl sub_080003F0
_08036FFE:
	bl sub_0805F184
	cmp r0, #0
	bne _08036FFA
	b _0803700C
_08037008:
	bl sub_080003F0
_0803700C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08037008
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037030
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037038
	.2byte 0x0000
_08037030: .4byte 0x0014023E
_08037034:
	bl sub_080003F0
_08037038:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08037044
	b _0803769E
_08037044:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037034
	bl sub_0805EFBC
	b _0803769E
_08037052:
	bl sub_080003F0
_08037056:
	bl sub_0805F184
	cmp r0, #0
	bne _08037052
	b _08037064
_08037060:
	bl sub_080003F0
_08037064:
	bl sub_0805EF90
	cmp r0, #0
	bne _08037060
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037088
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037090
	.2byte 0x0000
_08037088: .4byte 0x0014024A
_0803708C:
	bl sub_080003F0
_08037090:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080370A6
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803708C
	bl sub_0805EFBC
_080370A6:
	movs r3, #0
	movs r2, #0
	ldr r0, _080370D4
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_080370B4:
	ldrh r0, [r1, #0]
	cmp r0, #8
	bne _080370C2
	ldrh r0, [r1, #2]
	cmp r0, #0x5c
	bne _080370C2
	adds r3, #1
_080370C2:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _080370B4
	cmp r3, #2
	bgt _080370D0
	b _08037216
_080370D0:
	b _080370DC
	.2byte 0x0000
_080370D4: .4byte gUnk_030034E0
_080370D8:
	bl sub_080003F0
_080370DC:
	bl sub_0805F184
	cmp r0, #0
	bne _080370D8
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037100
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037108
	.2byte 0x0000
_08037100: .4byte 0x0014023F
_08037104:
	bl sub_080003F0
_08037108:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08037104
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _0803711E
	b _08037216
_0803711E:
	movs r4, #3
	movs r3, #0
	add r6, sp, #0xc
	ldr r7, _08037194
	movs r5, #0
_08037128:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #8
	bne _08037150
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x5c
	bne _08037150
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08037156
_08037150:
	adds r3, #1
	cmp r3, #0x18
	bls _08037128
_08037156:
	movs r1, #8
	movs r2, #0x6d
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_08037166:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08037166
	movs r4, #0
_08037172:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08037172
	movs r4, #4
	bl sub_0800CE30
	cmp r0, #0
	beq _0803719C
	ldr r0, _08037198
	ldr r0, [r0, #0]
	movs r1, #0xde
	lsls r1, r1, #1
	b _080371A4
	.2byte 0x0000
_08037194: .4byte gUnk_030034E0
_08037198: .4byte gUnk_03005CF4
_0803719C:
	ldr r0, _080371BC
	ldr r0, [r0, #0]
	movs r1, #0xd8
	lsls r1, r1, #1
_080371A4:
	adds r0, r0, r1
	strb r4, [r0, #0]
	ldr r0, _080371C0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080371C8
	movs r0, #0x33
	bl sub_08006D08
	b _080371C8
_080371BC: .4byte gUnk_03005CF4
_080371C0: .4byte gUnk_030027D0
_080371C4:
	bl sub_080003F0
_080371C8:
	bl sub_0805F184
	cmp r0, #0
	bne _080371C4
	b _080371D6
_080371D2:
	bl sub_080003F0
_080371D6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080371D2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080371F8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037200
_080371F8: .4byte 0x0014024F
_080371FC:
	bl sub_080003F0
_08037200:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08037216
	bl sub_0800CDF8
	cmp r0, #0
	beq _080371FC
	bl sub_0805EFBC
_08037216:
	mov r0, r8
	bl sub_08029788
	b _08037222
_0803721E:
	bl sub_080003F0
_08037222:
	bl sub_0805F184
	cmp r0, #0
	bne _0803721E
	b _08037230
_0803722C:
	bl sub_080003F0
_08037230:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803722C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037254
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803725C
	.2byte 0x0000
_08037254: .4byte 0x0014023E
_08037258:
	bl sub_080003F0
_0803725C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08037268
	b _0803769E
_08037268:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037258
	bl sub_0805EFBC
	b _0803769E
_08037276:
	bl sub_080003F0
_0803727A:
	bl sub_0805F184
	cmp r0, #0
	bne _08037276
	b _08037288
_08037284:
	bl sub_080003F0
_08037288:
	bl sub_0805EF90
	cmp r0, #0
	bne _08037284
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080372AC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080372B4
	.2byte 0x0000
_080372AC: .4byte 0x0014024B
_080372B0:
	bl sub_080003F0
_080372B4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080372CA
	bl sub_0800CDF8
	cmp r0, #0
	beq _080372B0
	bl sub_0805EFBC
_080372CA:
	movs r3, #0
	movs r2, #0
	ldr r0, _080372F8
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_080372D8:
	ldrh r0, [r1, #0]
	cmp r0, #8
	bne _080372E6
	ldrh r0, [r1, #2]
	cmp r0, #0x65
	bne _080372E6
	adds r3, #1
_080372E6:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _080372D8
	cmp r3, #2
	bgt _080372F4
	b _080374DE
_080372F4:
	b _08037300
	.2byte 0x0000
_080372F8: .4byte gUnk_030034E0
_080372FC:
	bl sub_080003F0
_08037300:
	bl sub_0805F184
	cmp r0, #0
	bne _080372FC
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037324
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803732C
	.2byte 0x0000
_08037324: .4byte 0x0014023F
_08037328:
	bl sub_080003F0
_0803732C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08037328
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	bne _08037342
	b _0803747E
_08037342:
	movs r4, #3
	movs r3, #0
	add r6, sp, #0xc
	ldr r7, _080373C0
	movs r5, #0
_0803734C:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #8
	bne _08037374
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x65
	bne _08037374
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _0803737A
_08037374:
	adds r3, #1
	cmp r3, #0x18
	bls _0803734C
_0803737A:
	movs r1, #8
	movs r2, #0x89
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_0803738A:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _0803738A
	movs r4, #0
_08037396:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08037396
	ldr r0, _080373C4
	movs r1, #5
	bl sub_08068070
	ldr r0, _080373C8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080373D0
	movs r0, #0x33
	bl sub_08006D08
	b _080373D0
	.2byte 0x0000
_080373C0: .4byte gUnk_030034E0
_080373C4: .4byte sub_0805921C
_080373C8: .4byte gUnk_030027D0
_080373CC:
	bl sub_080003F0
_080373D0:
	bl sub_0805F184
	cmp r0, #0
	bne _080373CC
	b _080373DE
_080373DA:
	bl sub_080003F0
_080373DE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080373DA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037400
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037408
_08037400: .4byte 0x00140250
_08037404:
	bl sub_080003F0
_08037408:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803741E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037404
	bl sub_0805EFBC
_0803741E:
	mov r0, r8
	bl sub_08029788
	b _0803742A
_08037426:
	bl sub_080003F0
_0803742A:
	bl sub_0805F184
	cmp r0, #0
	bne _08037426
	b _08037438
_08037434:
	bl sub_080003F0
_08037438:
	bl sub_0805EF90
	cmp r0, #0
	bne _08037434
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803745C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037464
	.2byte 0x0000
_0803745C: .4byte 0x00140241
_08037460:
	bl sub_080003F0
_08037464:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08037470
	b _0803769E
_08037470:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037460
	bl sub_0805EFBC
	b _0803769E
_0803747E:
	mov r0, r8
	bl sub_08029788
	b _0803748A
_08037486:
	bl sub_080003F0
_0803748A:
	bl sub_0805F184
	cmp r0, #0
	bne _08037486
	b _08037498
_08037494:
	bl sub_080003F0
_08037498:
	bl sub_0805EF90
	cmp r0, #0
	bne _08037494
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080374BC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080374C4
	.2byte 0x0000
_080374BC: .4byte 0x0014023E
_080374C0:
	bl sub_080003F0
_080374C4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080374D0
	b _0803769E
_080374D0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080374C0
	bl sub_0805EFBC
	b _0803769E
_080374DE:
	mov r0, r8
	bl sub_08029788
	b _080374EA
_080374E6:
	bl sub_080003F0
_080374EA:
	bl sub_0805F184
	cmp r0, #0
	bne _080374E6
	b _080374F8
_080374F4:
	bl sub_080003F0
_080374F8:
	bl sub_0805EF90
	cmp r0, #0
	bne _080374F4
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803751C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037524
	.2byte 0x0000
_0803751C: .4byte 0x0014023E
_08037520:
	bl sub_080003F0
_08037524:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08037530
	b _0803769E
_08037530:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037520
	bl sub_0805EFBC
	b _0803769E
_0803753E:
	bl sub_080003F0
_08037542:
	bl sub_0805F184
	cmp r0, #0
	bne _0803753E
	b _08037550
_0803754C:
	bl sub_080003F0
_08037550:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803754C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037574
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803757C
	.2byte 0x0000
_08037574: .4byte 0x0014023D
_08037578:
	bl sub_080003F0
_0803757C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08037592
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037578
	bl sub_0805EFBC
_08037592:
	mov r0, r8
	bl sub_08029788
	b _0803759E
_0803759A:
	bl sub_080003F0
_0803759E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803759A
	b _080375AC
_080375A8:
	bl sub_080003F0
_080375AC:
	bl sub_0805EF90
	cmp r0, #0
	bne _080375A8
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080375D0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080375D8
	.2byte 0x0000
_080375D0: .4byte 0x0014023E
_080375D4:
	bl sub_080003F0
_080375D8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803769E
	bl sub_0800CDF8
	cmp r0, #0
	beq _080375D4
	bl sub_0805EFBC
	b _0803769E
_080375F0:
	bl sub_080003F0
_080375F4:
	bl sub_0805F184
	cmp r0, #0
	bne _080375F0
	b _08037602
_080375FE:
	bl sub_080003F0
_08037602:
	bl sub_0805EF90
	cmp r0, #0
	bne _080375FE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037624
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803762C
_08037624: .4byte 0x00140240
_08037628:
	bl sub_080003F0
_0803762C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08037642
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037628
	bl sub_0805EFBC
_08037642:
	mov r0, r8
	bl sub_08029788
	b _0803764E
_0803764A:
	bl sub_080003F0
_0803764E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803764A
	b _0803765C
_08037658:
	bl sub_080003F0
_0803765C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08037658
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037680
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037688
	.2byte 0x0000
_08037680: .4byte 0x00140241
_08037684:
	bl sub_080003F0
_08037688:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803769E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037684
	bl sub_0805EFBC
_0803769E:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080376C8
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
_080376C8: .4byte gUnk_03003CE0
	thumb_func_end sub_080368F4
