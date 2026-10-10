	thumb_func_start sub_08048A74
sub_08048A74: @ 0x08048A74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	cmp r0, #6
	bls _08048A88
	bl _08049DAA
_08048A88:
	lsls r0, r0, #2
	ldr r1, _08048A94
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08048A94: .4byte _08048A98
_08048A98:
	.4byte _08048AB4
_08048A9C: .4byte _0804979C
_08048AA0: .4byte _08049CBC
_08048AA4: .4byte _08049CEC
_08048AA8: .4byte _08049D1C
_08048AAC: .4byte _08049D4C
_08048AB0: .4byte _08049D84
_08048AB4:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08048AD8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add r0, sp, #0xc
	mov sl, r0
	b _08048AE0
_08048AD8: .4byte gUnk_03003CE0
_08048ADC:
	bl sub_080003F0
_08048AE0:
	bl sub_0805F184
	cmp r0, #0
	bne _08048ADC
	b _08048AEE
_08048AEA:
	bl sub_080003F0
_08048AEE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048AEA
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048B10
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	adds r4, r5, #0
	b _08048B18
_08048B10: .4byte 0x0014000C
_08048B14:
	bl sub_080003F0
_08048B18:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048B14
	b _08048B28
_08048B24:
	bl sub_080003F0
_08048B28:
	bl sub_0805F184
	cmp r0, #0
	bne _08048B24
	b _08048B36
_08048B32:
	bl sub_080003F0
_08048B36:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048B32
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048B58
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	adds r4, r5, #0
	b _08048B60
_08048B58: .4byte 0x0014000D
_08048B5C:
	bl sub_080003F0
_08048B60:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048B5C
	b _08048B70
_08048B6C:
	bl sub_080003F0
_08048B70:
	bl sub_0805F184
	cmp r0, #0
	bne _08048B6C
	b _08048B7E
_08048B7A:
	bl sub_080003F0
_08048B7E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048B7A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048BBC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #5
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08048BC4
	.2byte 0x0000
_08048BBC: .4byte 0x0014000E
_08048BC0:
	bl sub_080003F0
_08048BC4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048BC0
	b _08048BD4
_08048BD0:
	bl sub_080003F0
_08048BD4:
	bl sub_0805F184
	cmp r0, #0
	bne _08048BD0
	b _08048BE2
_08048BDE:
	bl sub_080003F0
_08048BE2:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048BDE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048C20
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08048C28
	.2byte 0x0000
_08048C20: .4byte 0x0014000F
_08048C24:
	bl sub_080003F0
_08048C28:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048C24
	b _08048C38
_08048C34:
	bl sub_080003F0
_08048C38:
	bl sub_0805F184
	cmp r0, #0
	bne _08048C34
	b _08048C46
_08048C42:
	bl sub_080003F0
_08048C46:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048C42
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048C84
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #4
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08048C8C
	.2byte 0x0000
_08048C84: .4byte 0x00140010
_08048C88:
	bl sub_080003F0
_08048C8C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048C88
	b _08048C9C
_08048C98:
	bl sub_080003F0
_08048C9C:
	bl sub_0805F184
	cmp r0, #0
	bne _08048C98
	b _08048CAA
_08048CA6:
	bl sub_080003F0
_08048CAA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048CA6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048CE8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08048CF0
	.2byte 0x0000
_08048CE8: .4byte 0x00140011
_08048CEC:
	bl sub_080003F0
_08048CF0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048CEC
	b _08048D00
_08048CFC:
	bl sub_080003F0
_08048D00:
	bl sub_0805F184
	cmp r0, #0
	bne _08048CFC
	b _08048D0E
_08048D0A:
	bl sub_080003F0
_08048D0E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048D0A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048D4C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #4
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08048D54
	.2byte 0x0000
_08048D4C: .4byte 0x00140012
_08048D50:
	bl sub_080003F0
_08048D54:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048D50
	b _08048D64
_08048D60:
	bl sub_080003F0
_08048D64:
	bl sub_0805F184
	cmp r0, #0
	bne _08048D60
	b _08048D72
_08048D6E:
	bl sub_080003F0
_08048D72:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048D6E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048DB0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08048DB8
	.2byte 0x0000
_08048DB0: .4byte 0x00140013
_08048DB4:
	bl sub_080003F0
_08048DB8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048DB4
	b _08048DC8
_08048DC4:
	bl sub_080003F0
_08048DC8:
	bl sub_0805F184
	cmp r0, #0
	bne _08048DC4
	b _08048DD6
_08048DD2:
	bl sub_080003F0
_08048DD6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048DD2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048E14
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #2
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08048E1C
	.2byte 0x0000
_08048E14: .4byte 0x00140014
_08048E18:
	bl sub_080003F0
_08048E1C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048E18
	b _08048E2C
_08048E28:
	bl sub_080003F0
_08048E2C:
	bl sub_0805F184
	cmp r0, #0
	bne _08048E28
	b _08048E3A
_08048E36:
	bl sub_080003F0
_08048E3A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048E36
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048E78
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08048E80
	.2byte 0x0000
_08048E78: .4byte 0x00140015
_08048E7C:
	bl sub_080003F0
_08048E80:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048E7C
	b _08048E90
_08048E8C:
	bl sub_080003F0
_08048E90:
	bl sub_0805F184
	cmp r0, #0
	bne _08048E8C
	b _08048E9E
_08048E9A:
	bl sub_080003F0
_08048E9E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048E9A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048EDC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #4
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08048EE4
	.2byte 0x0000
_08048EDC: .4byte 0x00140016
_08048EE0:
	bl sub_080003F0
_08048EE4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048EE0
	b _08048EF4
_08048EF0:
	bl sub_080003F0
_08048EF4:
	bl sub_0805F184
	cmp r0, #0
	bne _08048EF0
	b _08048F02
_08048EFE:
	bl sub_080003F0
_08048F02:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048EFE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048F40
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08048F48
	.2byte 0x0000
_08048F40: .4byte 0x00140017
_08048F44:
	bl sub_080003F0
_08048F48:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048F44
	b _08048F58
_08048F54:
	bl sub_080003F0
_08048F58:
	bl sub_0805F184
	cmp r0, #0
	bne _08048F54
	b _08048F66
_08048F62:
	bl sub_080003F0
_08048F66:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048F62
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048FA4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #5
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08048FAC
	.2byte 0x0000
_08048FA4: .4byte 0x00140018
_08048FA8:
	bl sub_080003F0
_08048FAC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048FA8
	b _08048FBC
_08048FB8:
	bl sub_080003F0
_08048FBC:
	bl sub_0805F184
	cmp r0, #0
	bne _08048FB8
	b _08048FCA
_08048FC6:
	bl sub_080003F0
_08048FCA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048FC6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049008
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08049010
	.2byte 0x0000
_08049008: .4byte 0x00140019
_0804900C:
	bl sub_080003F0
_08049010:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804900C
	b _08049020
_0804901C:
	bl sub_080003F0
_08049020:
	bl sub_0805F184
	cmp r0, #0
	bne _0804901C
	b _0804902E
_0804902A:
	bl sub_080003F0
_0804902E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804902A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804906C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #1
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08049074
	.2byte 0x0000
_0804906C: .4byte 0x0014001A
_08049070:
	bl sub_080003F0
_08049074:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049070
	b _08049084
_08049080:
	bl sub_080003F0
_08049084:
	bl sub_0805F184
	cmp r0, #0
	bne _08049080
	b _08049092
_0804908E:
	bl sub_080003F0
_08049092:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804908E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080490D0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #2
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _080490D8
	.2byte 0x0000
_080490D0: .4byte 0x0014001B
_080490D4:
	bl sub_080003F0
_080490D8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080490D4
	b _080490E8
_080490E4:
	bl sub_080003F0
_080490E8:
	bl sub_0805F184
	cmp r0, #0
	bne _080490E4
	b _080490F6
_080490F2:
	bl sub_080003F0
_080490F6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080490F2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049134
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #4
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _0804913C
	.2byte 0x0000
_08049134: .4byte 0x0014001C
_08049138:
	bl sub_080003F0
_0804913C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049138
	b _0804914C
_08049148:
	bl sub_080003F0
_0804914C:
	bl sub_0805F184
	cmp r0, #0
	bne _08049148
	b _0804915A
_08049156:
	bl sub_080003F0
_0804915A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08049156
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049198
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _080491A0
	.2byte 0x0000
_08049198: .4byte 0x0014001D
_0804919C:
	bl sub_080003F0
_080491A0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804919C
	b _080491B0
_080491AC:
	bl sub_080003F0
_080491B0:
	bl sub_0805F184
	cmp r0, #0
	bne _080491AC
	b _080491BE
_080491BA:
	bl sub_080003F0
_080491BE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080491BA
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080491FC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #1
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08049204
	.2byte 0x0000
_080491FC: .4byte 0x0014001E
_08049200:
	bl sub_080003F0
_08049204:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049200
	b _08049214
_08049210:
	bl sub_080003F0
_08049214:
	bl sub_0805F184
	cmp r0, #0
	bne _08049210
	b _08049222
_0804921E:
	bl sub_080003F0
_08049222:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804921E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049260
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #5
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08049268
	.2byte 0x0000
_08049260: .4byte 0x0014001F
_08049264:
	bl sub_080003F0
_08049268:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049264
	b _08049278
_08049274:
	bl sub_080003F0
_08049278:
	bl sub_0805F184
	cmp r0, #0
	bne _08049274
	b _08049286
_08049282:
	bl sub_080003F0
_08049286:
	bl sub_0805EF90
	cmp r0, #0
	bne _08049282
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080492C4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _080492CC
	.2byte 0x0000
_080492C4: .4byte 0x00140020
_080492C8:
	bl sub_080003F0
_080492CC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080492C8
	b _080492DC
_080492D8:
	bl sub_080003F0
_080492DC:
	bl sub_0805F184
	cmp r0, #0
	bne _080492D8
	b _080492EA
_080492E6:
	bl sub_080003F0
_080492EA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080492E6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049328
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #1
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08049330
	.2byte 0x0000
_08049328: .4byte 0x00140021
_0804932C:
	bl sub_080003F0
_08049330:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804932C
	b _08049340
_0804933C:
	bl sub_080003F0
_08049340:
	bl sub_0805F184
	cmp r0, #0
	bne _0804933C
	b _0804934E
_0804934A:
	bl sub_080003F0
_0804934E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804934A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804938C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08049394
	.2byte 0x0000
_0804938C: .4byte 0x00140022
_08049390:
	bl sub_080003F0
_08049394:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049390
	b _080493A4
_080493A0:
	bl sub_080003F0
_080493A4:
	bl sub_0805F184
	cmp r0, #0
	bne _080493A0
	b _080493B2
_080493AE:
	bl sub_080003F0
_080493B2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080493AE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049434
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #1
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	movs r0, #1
	movs r1, #0
	bl sub_080290E4
	movs r0, #1
	movs r1, #0x35
	movs r2, #0x82
	movs r3, #0xa
	bl sub_08028AAC
	movs r0, #1
	movs r1, #6
	bl sub_080290E4
	movs r0, #1
	movs r1, #0x57
	movs r2, #0x80
	movs r3, #0xa
	bl sub_08028AAC
	movs r0, #1
	movs r1, #5
	bl sub_080290E4
	movs r0, #1
	movs r1, #0x81
	movs r2, #0x6a
	movs r3, #0x14
	bl sub_08028AAC
	movs r0, #1
	movs r1, #4
	bl sub_080290E4
	adds r4, r5, #0
	b _0804943C
	.2byte 0x0000
_08049434: .4byte 0x00140023
_08049438:
	bl sub_080003F0
_0804943C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049438
	ldr r0, _0804945C
	ldr r0, [r0, #0]
	movs r1, #0x10
	ldr r0, [r0, #0x38]
	ands r0, r1
	cmp r0, #0
	beq _08049456
	movs r0, #1
_08049456:
	cmp r0, #0
	bne _080494D4
	b _08049464
_0804945C: .4byte gUnk_03005CF4
_08049460:
	bl sub_080003F0
_08049464:
	bl sub_0805F184
	cmp r0, #0
	bne _08049460
	b _08049472
_0804946E:
	bl sub_080003F0
_08049472:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804946E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049494
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	adds r4, r5, #0
	b _0804949C
_08049494: .4byte 0x00140024
_08049498:
	bl sub_080003F0
_0804949C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049498
	b _080494AC
_080494A8:
	bl sub_080003F0
_080494AC:
	bl sub_0805F184
	cmp r0, #0
	bne _080494A8
	b _080494BA
_080494B6:
	bl sub_080003F0
_080494BA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080494B6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080494CC
	b _08049538
	.2byte 0x0000
_080494CC: .4byte 0x00140025
_080494D0:
	bl sub_080003F0
_080494D4:
	bl sub_0805F184
	cmp r0, #0
	bne _080494D0
	b _080494E2
_080494DE:
	bl sub_080003F0
_080494E2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080494DE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049504
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	adds r4, r5, #0
	b _0804950C
_08049504: .4byte 0x00140033
_08049508:
	bl sub_080003F0
_0804950C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049508
	b _0804951C
_08049518:
	bl sub_080003F0
_0804951C:
	bl sub_0805F184
	cmp r0, #0
	bne _08049518
	b _0804952A
_08049526:
	bl sub_080003F0
_0804952A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08049526
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080495AC
_08049538:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	movs r0, #1
	movs r1, #1
	bl sub_080290E4
	movs r0, #1
	movs r1, #0x57
	movs r2, #0x80
	movs r3, #0x1e
	bl sub_08028AAC
	movs r0, #1
	movs r1, #2
	bl sub_080290E4
	movs r0, #1
	movs r1, #0x35
	movs r2, #0x82
	movs r3, #0xf
	bl sub_08028AAC
	movs r0, #1
	movs r1, #4
	bl sub_080290E4
	movs r0, #1
	movs r1, #0x38
	movs r2, #0x68
	movs r3, #0xf
	bl sub_08028AAC
	movs r0, #1
	movs r1, #7
	bl sub_080290E4
	adds r4, r5, #0
	b _080495B4
	.2byte 0x0000
_080495AC: .4byte 0x00140034
_080495B0:
	bl sub_080003F0
_080495B4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080495B0
	b _080495C4
_080495C0:
	bl sub_080003F0
_080495C4:
	bl sub_0805F184
	cmp r0, #0
	bne _080495C0
	b _080495D2
_080495CE:
	bl sub_080003F0
_080495D2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080495CE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049610
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #2
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08049618
	.2byte 0x0000
_08049610: .4byte 0x00140026
_08049614:
	bl sub_080003F0
_08049618:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049614
	b _08049628
_08049624:
	bl sub_080003F0
_08049628:
	bl sub_0805F184
	cmp r0, #0
	bne _08049624
	b _08049636
_08049632:
	bl sub_080003F0
_08049636:
	bl sub_0805EF90
	cmp r0, #0
	bne _08049632
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049674
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _0804967C
	.2byte 0x0000
_08049674: .4byte 0x00140027
_08049678:
	bl sub_080003F0
_0804967C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049678
	b _0804968C
_08049688:
	bl sub_080003F0
_0804968C:
	bl sub_0805F184
	cmp r0, #0
	bne _08049688
	b _0804969A
_08049696:
	bl sub_080003F0
_0804969A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08049696
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049720
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r4, #3
	negs r4, r4
	movs r0, #1
	movs r1, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	movs r0, #4
	movs r1, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #4
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	movs r0, #5
	movs r1, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08049728
_08049720: .4byte 0x00140028
_08049724:
	bl sub_080003F0
_08049728:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049724
	ldr r0, _08049794
	ldr r2, [r0, #0]
	movs r1, #4
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	movs r1, #0x33
	mov r9, r1
	ldr r0, _08049798
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	movs r7, #0
_08049758:
	add r0, sp, #8
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, sl
	adds r1, r5, #0
	asrs r2, r7, #0x10
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
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08049758
	b _08049DAA
	.2byte 0x0000
_08049794: .4byte gUnk_03005CF4
_08049798: .4byte gUnk_03003170
_0804979C:
	add r0, sp, #0x10
	mov sl, r0
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x18]
	b _080497AC
_080497A8:
	bl sub_080003F0
_080497AC:
	bl sub_0805F184
	cmp r0, #0
	bne _080497A8
	b _080497BA
_080497B6:
	bl sub_080003F0
_080497BA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080497B6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804981C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	ldr r0, _08049820
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080497EA
	movs r0, #0x45
	bl sub_08006D08
_080497EA:
	ldr r0, _08049824
	ldr r0, [r0, #0]
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #1
	movs r1, #0x10
	bl sub_08029174
	movs r2, #3
	negs r2, r2
	movs r0, #1
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _0804982C
_0804981C: .4byte 0x00140029
_08049820: .4byte gUnk_030027D0
_08049824: .4byte gUnk_030056F4
_08049828:
	bl sub_080003F0
_0804982C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049828
	movs r0, #1
	movs r1, #0
	bl sub_08029174
	b _08049844
_08049840:
	bl sub_080003F0
_08049844:
	bl sub_0805F184
	cmp r0, #0
	bne _08049840
	b _08049852
_0804984E:
	bl sub_080003F0
_08049852:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804984E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049890
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08049898
	.2byte 0x0000
_08049890: .4byte 0x0014002A
_08049894:
	bl sub_080003F0
_08049898:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049894
	b _080498A8
_080498A4:
	bl sub_080003F0
_080498A8:
	bl sub_0805F184
	cmp r0, #0
	bne _080498A4
	b _080498B6
_080498B2:
	bl sub_080003F0
_080498B6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080498B2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080498F4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #1
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #1
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _080498FC
	.2byte 0x0000
_080498F4: .4byte 0x0014002B
_080498F8:
	bl sub_080003F0
_080498FC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080498F8
	ldr r6, _08049914
	ldr r0, _08049918
	ldr r0, [r0, #0]
	ldr r2, _0804991C
	adds r4, r0, r2
	movs r5, #0
	b _08049924
_08049914: .4byte sub_08048A74
_08049918: .4byte gUnk_03005CF4
_0804991C: .4byte 0x00000E34
_08049920:
	adds r5, #1
	adds r4, #0x28
_08049924:
	cmp r5, #0x1d
	bhi _08049962
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08049920
	b _08049938
_08049934:
	bl sub_080003F0
_08049938:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08049934
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r0, r1, r3
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000274
_08049962:
	ldr r6, _08049970
	ldr r0, _08049974
	ldr r0, [r0, #0]
	ldr r1, _08049978
	adds r4, r0, r1
	movs r5, #0
	b _08049980
_08049970: .4byte sub_08048A74
_08049974: .4byte gUnk_03005CF4
_08049978: .4byte 0x00000E34
_0804997C:
	adds r5, #1
	adds r4, #0x28
_08049980:
	cmp r5, #0x1d
	bhi _080499BE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0804997C
	b _08049994
_08049990:
	bl sub_080003F0
_08049994:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08049990
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000274
_080499BE:
	ldr r6, _080499CC
	ldr r0, _080499D0
	ldr r0, [r0, #0]
	ldr r3, _080499D4
	adds r4, r0, r3
	movs r5, #0
	b _080499DC
_080499CC: .4byte sub_08048A74
_080499D0: .4byte gUnk_03005CF4
_080499D4: .4byte 0x00000E34
_080499D8:
	adds r5, #1
	adds r4, #0x28
_080499DC:
	cmp r5, #0x1d
	bhi _08049A1A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _080499D8
	b _080499F0
_080499EC:
	bl sub_080003F0
_080499F0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080499EC
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000274
_08049A1A:
	ldr r6, _08049A28
	ldr r0, _08049A2C
	ldr r0, [r0, #0]
	ldr r3, _08049A30
	adds r4, r0, r3
	movs r5, #0
	b _08049A38
_08049A28: .4byte sub_08048A74
_08049A2C: .4byte gUnk_03005CF4
_08049A30: .4byte 0x00000E34
_08049A34:
	adds r5, #1
	adds r4, #0x28
_08049A38:
	cmp r5, #0x1d
	bhi _08049A7C
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08049A34
	b _08049A4C
_08049A48:
	bl sub_080003F0
_08049A4C:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08049A48
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000274
	b _08049A7C
_08049A78:
	bl sub_080003F0
_08049A7C:
	bl sub_0805F184
	cmp r0, #0
	bne _08049A78
	b _08049A8A
_08049A86:
	bl sub_080003F0
_08049A8A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08049A86
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049AC8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #5
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #5
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08049AD0
	.2byte 0x0000
_08049AC8: .4byte 0x0014002C
_08049ACC:
	bl sub_080003F0
_08049AD0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049ACC
	b _08049AE0
_08049ADC:
	bl sub_080003F0
_08049AE0:
	bl sub_0805F184
	cmp r0, #0
	bne _08049ADC
	b _08049AEE
_08049AEA:
	bl sub_080003F0
_08049AEE:
	bl sub_0805EF90
	cmp r0, #0
	bne _08049AEA
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049B2C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #2
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #2
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08049B34
	.2byte 0x0000
_08049B2C: .4byte 0x0014002D
_08049B30:
	bl sub_080003F0
_08049B34:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049B30
	b _08049B44
_08049B40:
	bl sub_080003F0
_08049B44:
	bl sub_0805F184
	cmp r0, #0
	bne _08049B40
	b _08049B52
_08049B4E:
	bl sub_080003F0
_08049B52:
	bl sub_0805EF90
	cmp r0, #0
	bne _08049B4E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08049B90
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	movs r4, #4
	b _08049B9E
	.2byte 0x0000
_08049B90: .4byte 0x0014002E
_08049B94:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08049BAA
_08049B9E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08049B94
_08049BAA:
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	movs r4, #4
	b _08049BD2
_08049BC8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08049BDE
_08049BD2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08049BC8
_08049BDE:
	movs r2, #3
	negs r2, r2
	movs r0, #3
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	movs r0, #3
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r4, r5, #0
	b _08049C00
_08049BFC:
	bl sub_080003F0
_08049C00:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08049BFC
	movs r3, #0x33
	mov r9, r3
	ldr r0, _08049CAC
	adds r1, r0, #0
	adds r1, #0x80
	movs r2, #0
	ldrsh r6, [r1, r2]
	adds r0, #0x82
	movs r3, #0
	ldrsh r5, [r0, r3]
	movs r4, #0
	mov r8, r4
	movs r7, #0
_08049C24:
	mov r0, sl
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x18]
	adds r1, r5, #0
	asrs r2, r7, #0x10
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
	add r4, r9
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08049C24
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08049CB0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	ldr r0, _08049CB4
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r5, _08049CB8
	movs r6, #1
	movs r4, #0
_08049C86:
	adds r1, r6, #0
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08049C9A
	ldrh r0, [r2, #0xc]
	cmp r0, #0xc
	bne _08049C9A
	strh r4, [r2, #0xc]
_08049C9A:
	adds r3, #1
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r2, r2, r0
	cmp r3, #4
	bls _08049C86
	bl sub_08019F04
	b _08049DAA
_08049CAC: .4byte gUnk_03003170
_08049CB0: .4byte gUnk_03003CE0
_08049CB4: .4byte gUnk_030056F4
_08049CB8: .4byte gUnk_030056FC
_08049CBC:
	ldr r0, _08049CE4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08049CCE
	movs r0, #0x45
	bl sub_08006D08
_08049CCE:
	ldr r0, _08049CE8
	ldr r0, [r0, #0]
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #2
	b _08049D72
_08049CE4: .4byte gUnk_030027D0
_08049CE8: .4byte gUnk_030056F4
_08049CEC:
	ldr r0, _08049D14
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08049CFE
	movs r0, #0x48
	bl sub_08006D08
_08049CFE:
	ldr r0, _08049D18
	ldr r0, [r0, #0]
	movs r2, #0xb8
	lsls r2, r2, #3
	adds r0, r0, r2
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #3
	b _08049D72
_08049D14: .4byte gUnk_030027D0
_08049D18: .4byte gUnk_030056F4
_08049D1C:
	ldr r0, _08049D44
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08049D2E
	movs r0, #0x45
	bl sub_08006D08
_08049D2E:
	ldr r0, _08049D48
	ldr r0, [r0, #0]
	movs r3, #0x8a
	lsls r3, r3, #4
	adds r0, r0, r3
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #4
	b _08049D72
_08049D44: .4byte gUnk_030027D0
_08049D48: .4byte gUnk_030056F4
_08049D4C:
	ldr r0, _08049D7C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08049D5E
	movs r0, #0x45
	bl sub_08006D08
_08049D5E:
	ldr r0, _08049D80
	ldr r0, [r0, #0]
	movs r1, #0xb8
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #5
_08049D72:
	movs r1, #0
	bl sub_0802949C
	b _08049DAA
	.2byte 0x0000
_08049D7C: .4byte gUnk_030027D0
_08049D80: .4byte gUnk_030056F4
_08049D84:
	ldr r0, _08049DBC
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08049D96
	movs r0, #0x45
	bl sub_08006D08
_08049D96:
	ldr r0, _08049DC0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #1
	movs r1, #0
	bl sub_0802949C
_08049DAA:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08049DBC: .4byte gUnk_030027D0
_08049DC0: .4byte gUnk_030056F4
	thumb_func_end sub_08048A74
