	thumb_func_start sub_08038D18
sub_08038D18: @ 0x08038D18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08038D4C
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _08038D58
	ldr r0, _08038D50
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	b _08038D62
_08038D4C: .4byte gUnk_03003CE0
_08038D50: .4byte gUnk_03005CF4
_08038D54:
	adds r0, r1, #0
	b _08038E26
_08038D58:
	ldr r0, _08038D70
	ldr r0, [r0, #0]
	movs r3, #0xdc
	lsls r3, r3, #1
	adds r0, r0, r3
_08038D62:
	ldrb r0, [r0, #0]
	asrs r0, r0, #5
	ands r0, r4
	cmp r0, #0
	beq _08038D6E
	b _080390BA
_08038D6E:
	b _08038D78
_08038D70: .4byte gUnk_03005CF4
_08038D74:
	bl sub_080003F0
_08038D78:
	bl sub_0805F184
	cmp r0, #0
	bne _08038D74
	b _08038D86
_08038D82:
	bl sub_080003F0
_08038D86:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038D82
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038DA8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038DB0
_08038DA8: .4byte 0x0014022C
_08038DAC:
	bl sub_080003F0
_08038DB0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08038DC6
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038DAC
	bl sub_0805EFBC
_08038DC6:
	movs r3, #0
	movs r2, #0
	ldr r0, _08038E30
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08038DD4:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _08038DE2
	ldrh r0, [r1, #2]
	cmp r0, #0x2a
	bne _08038DE2
	adds r3, #1
_08038DE2:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08038DD4
	cmp r3, #0
	bgt _08038DF0
	b _0803928A
_08038DF0:
	bl sub_080020F4
	cmp r0, #0
	beq _08038DFA
	b _08039066
_08038DFA:
	adds r2, r5, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _08038E3C
	ldr r0, _08038E34
	ldr r0, [r0, #0]
	ldr r3, _08038E38
	adds r1, r0, r3
	movs r3, #0
	add r6, sp, #0xc
_08038E12:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _08038D54
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _08038E12
	bl sub_080003F0
	movs r0, #0
_08038E26:
	cmp r0, #0
	beq _08038E8C
	adds r0, #0x42
	strh r4, [r0, #0]
	b _08038E8C
_08038E30: .4byte gUnk_030034E0
_08038E34: .4byte gUnk_03005CF4
_08038E38: .4byte 0x000007A4
_08038E3C:
	cmp r5, #0
	beq _08038E68
	subs r2, r5, #1
	add r6, sp, #0xc
	cmp r2, #4
	bhi _08038E8C
	ldr r1, _08038E64
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
	b _08038E8C
	.2byte 0x0000
_08038E64: .4byte gUnk_030056F4
_08038E68:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08038E84
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0, #0]
	add r6, sp, #0xc
	b _08038E8C
	.2byte 0x0000
_08038E84: .4byte gUnk_03003CE0
_08038E88:
	bl sub_080003F0
_08038E8C:
	bl sub_0805F184
	cmp r0, #0
	bne _08038E88
	b _08038E9A
_08038E96:
	bl sub_080003F0
_08038E9A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038E96
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038EBC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038EC4
_08038EBC: .4byte 0x0014022D
_08038EC0:
	bl sub_080003F0
_08038EC4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08038EDA
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038EC0
	bl sub_0805EFBC
_08038EDA:
	movs r4, #1
	movs r3, #0
	ldr r7, _08038F5C
	movs r5, #0
_08038EE2:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #1
	bne _08038F0A
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x2a
	bne _08038F0A
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08038F10
_08038F0A:
	adds r3, #1
	cmp r3, #0x18
	bls _08038EE2
_08038F10:
	bl sub_0800CE30
	cmp r0, #0
	bne _08038FBE
	movs r1, #1
	movs r2, #0x2b
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_08038F28:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08038F28
	movs r4, #0
_08038F34:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08038F34
	ldr r0, _08038F60
	movs r1, #0xd
	bl sub_08068070
	ldr r0, _08038F64
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08038F6C
	movs r0, #0x33
	bl sub_08006D08
	b _08038F6C
_08038F5C: .4byte gUnk_030034E0
_08038F60: .4byte sub_0805990C
_08038F64: .4byte gUnk_030027D0
_08038F68:
	bl sub_080003F0
_08038F6C:
	bl sub_0805F184
	cmp r0, #0
	bne _08038F68
	b _08038F7A
_08038F76:
	bl sub_080003F0
_08038F7A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08038F76
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08038F9C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08038FA4
_08038F9C: .4byte 0x0014022E
_08038FA0:
	bl sub_080003F0
_08038FA4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08038FB0
	b _0803928A
_08038FB0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08038FA0
	bl sub_0805EFBC
	b _0803928A
_08038FBE:
	movs r1, #1
	movs r2, #0x32
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_08038FCE:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08038FCE
	movs r4, #0
_08038FDA:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08038FDA
	ldr r0, _08039004
	movs r1, #0xd
	bl sub_08068070
	ldr r0, _08039008
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08039010
	movs r0, #0x33
	bl sub_08006D08
	b _08039010
	.2byte 0x0000
_08039004: .4byte sub_0805990C
_08039008: .4byte gUnk_030027D0
_0803900C:
	bl sub_080003F0
_08039010:
	bl sub_0805F184
	cmp r0, #0
	bne _0803900C
	b _0803901E
_0803901A:
	bl sub_080003F0
_0803901E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803901A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039040
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039048
_08039040: .4byte 0x0014022F
_08039044:
	bl sub_080003F0
_08039048:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039054
	b _0803928A
_08039054:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039044
	bl sub_0805EFBC
	b _0803928A
_08039062:
	bl sub_080003F0
_08039066:
	bl sub_0805F184
	cmp r0, #0
	bne _08039062
	b _08039074
_08039070:
	bl sub_080003F0
_08039074:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039070
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039098
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080390A0
	.2byte 0x0000
_08039098: .4byte 0x00140231
_0803909C:
	bl sub_080003F0
_080390A0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080390AC
	b _0803928A
_080390AC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803909C
	bl sub_0805EFBC
	b _0803928A
_080390BA:
	bl sub_0800CE30
	cmp r0, #0
	beq _080390D4
	ldr r0, _080390D0
	ldr r0, [r0, #0]
	adds r0, #0x80
	movs r1, #0x80
	ldr r4, [r0, #0]
	b _080390DC
	.2byte 0x0000
_080390D0: .4byte gUnk_03005CF4
_080390D4:
	ldr r0, _080390F0
	ldr r0, [r0, #0]
	movs r1, #0x80
	ldr r4, [r0, #0x78]
_080390DC:
	ands r4, r1
	bl sub_0800CE30
	cmp r0, #0
	beq _080390F8
	ldr r0, _080390F0
	ldr r0, [r0, #0]
	ldr r1, _080390F4
	adds r0, r0, r1
	b _08039100
_080390F0: .4byte gUnk_03005CF4
_080390F4: .4byte 0x000001C3
_080390F8:
	ldr r0, _08039110
	ldr r0, [r0, #0]
	ldr r3, _08039114
	adds r0, r0, r3
_08039100:
	ldrb r0, [r0, #0]
	asrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0803916E
	b _0803911C
	.2byte 0x0000
_08039110: .4byte gUnk_03005CF4
_08039114: .4byte 0x000001B7
_08039118:
	bl sub_080003F0
_0803911C:
	bl sub_0805F184
	cmp r0, #0
	bne _08039118
	b _0803912A
_08039126:
	bl sub_080003F0
_0803912A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039126
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803914C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039154
_0803914C: .4byte 0x0014027A
_08039150:
	bl sub_080003F0
_08039154:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039160
	b _0803928A
_08039160:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039150
	bl sub_0805EFBC
	b _0803928A
_0803916E:
	cmp r4, #0
	beq _0803923C
	b _08039178
_08039174:
	bl sub_080003F0
_08039178:
	bl sub_0805F184
	cmp r0, #0
	bne _08039174
	b _08039186
_08039182:
	bl sub_080003F0
_08039186:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039182
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080391A8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080391B0
_080391A8: .4byte 0x00140279
_080391AC:
	bl sub_080003F0
_080391B0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080391C6
	bl sub_0800CDF8
	cmp r0, #0
	beq _080391AC
	bl sub_0805EFBC
_080391C6:
	bl sub_0800CE30
	cmp r0, #0
	beq _080391E0
	ldr r0, _080391DC
	ldr r0, [r0, #0]
	adds r0, #0x80
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r0, [r0, #0]
	b _080391EA
_080391DC: .4byte gUnk_03005CF4
_080391E0:
	ldr r0, _0803921C
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r0, [r0, #0x78]
_080391EA:
	ands r0, r1
	cmp r0, #0
	bne _0803928A
	ldr r0, _08039220
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08039202
	movs r0, #0x32
	bl sub_08006D08
_08039202:
	bl sub_0800CE30
	cmp r0, #0
	beq _08039224
	ldr r0, _0803921C
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #0xb
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0803928A
_0803921C: .4byte gUnk_03005CF4
_08039220: .4byte gUnk_030027D0
_08039224:
	ldr r0, _08039234
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
	b _0803928A
_08039234: .4byte gUnk_03005CF4
_08039238:
	bl sub_080003F0
_0803923C:
	bl sub_0805F184
	cmp r0, #0
	bne _08039238
	b _0803924A
_08039246:
	bl sub_080003F0
_0803924A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039246
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803926C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039274
_0803926C: .4byte 0x00140230
_08039270:
	bl sub_080003F0
_08039274:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803928A
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039270
	bl sub_0805EFBC
_0803928A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080392B0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080392B0: .4byte gUnk_03003CE0
	thumb_func_end sub_08038D18
