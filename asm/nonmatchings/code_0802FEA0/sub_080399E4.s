	thumb_func_start sub_080399E4
sub_080399E4: @ 0x080399E4
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08039A20
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_0800CE30
	cmp r0, #0
	beq _08039A28
	ldr r0, _08039A24
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x7c]
	b _08039A2E
	.2byte 0x0000
_08039A20: .4byte gUnk_03003CE0
_08039A24: .4byte gUnk_03005CF4
_08039A28:
	ldr r0, _08039A40
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x74]
_08039A2E:
	bl sub_0800CE30
	cmp r0, #0
	beq _08039A44
	ldr r0, _08039A40
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _08039A4C
_08039A40: .4byte gUnk_03005CF4
_08039A44:
	ldr r0, _08039A5C
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_08039A4C:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08039AB6
	b _08039A64
_08039A5C: .4byte gUnk_03005CF4
_08039A60:
	bl sub_080003F0
_08039A64:
	bl sub_0805F184
	cmp r0, #0
	bne _08039A60
	b _08039A72
_08039A6E:
	bl sub_080003F0
_08039A72:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039A6E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039A94
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039A9C
_08039A94: .4byte 0x0014017E
_08039A98:
	bl sub_080003F0
_08039A9C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039AA8
	b _08039ECE
_08039AA8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039A98
	bl sub_0805EFBC
	b _08039ECE
_08039AB6:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08039B1A
	b _08039AC6
_08039AC2:
	bl sub_080003F0
_08039AC6:
	bl sub_0805F184
	cmp r0, #0
	bne _08039AC2
	b _08039AD4
_08039AD0:
	bl sub_080003F0
_08039AD4:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039AD0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039AF8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039B00
	.2byte 0x0000
_08039AF8: .4byte 0x0014017D
_08039AFC:
	bl sub_080003F0
_08039B00:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039B0C
	b _08039ECE
_08039B0C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039AFC
	bl sub_0805EFBC
	b _08039ECE
_08039B1A:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08039B7E
	b _08039B2A
_08039B26:
	bl sub_080003F0
_08039B2A:
	bl sub_0805F184
	cmp r0, #0
	bne _08039B26
	b _08039B38
_08039B34:
	bl sub_080003F0
_08039B38:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039B34
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039B5C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039B64
	.2byte 0x0000
_08039B5C: .4byte 0x0014017C
_08039B60:
	bl sub_080003F0
_08039B64:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039B70
	b _08039ECE
_08039B70:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039B60
	bl sub_0805EFBC
	b _08039ECE
_08039B7E:
	movs r0, #0x80
	ands r0, r4
	cmp r0, #0
	beq _08039BDE
	b _08039B8C
_08039B88:
	bl sub_080003F0
_08039B8C:
	bl sub_0805F184
	cmp r0, #0
	bne _08039B88
	b _08039B9A
_08039B96:
	bl sub_080003F0
_08039B9A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039B96
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039BBC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039BC4
_08039BBC: .4byte 0x0014017B
_08039BC0:
	bl sub_080003F0
_08039BC4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039BD0
	b _08039ECE
_08039BD0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039BC0
	bl sub_0805EFBC
	b _08039ECE
_08039BDE:
	movs r0, #0x40
	ands r0, r4
	cmp r0, #0
	beq _08039C3E
	b _08039BEC
_08039BE8:
	bl sub_080003F0
_08039BEC:
	bl sub_0805F184
	cmp r0, #0
	bne _08039BE8
	b _08039BFA
_08039BF6:
	bl sub_080003F0
_08039BFA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039BF6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039C1C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039C24
_08039C1C: .4byte 0x0014017A
_08039C20:
	bl sub_080003F0
_08039C24:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039C30
	b _08039ECE
_08039C30:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039C20
	bl sub_0805EFBC
	b _08039ECE
_08039C3E:
	movs r0, #0x20
	ands r0, r4
	cmp r0, #0
	beq _08039C9E
	b _08039C4C
_08039C48:
	bl sub_080003F0
_08039C4C:
	bl sub_0805F184
	cmp r0, #0
	bne _08039C48
	b _08039C5A
_08039C56:
	bl sub_080003F0
_08039C5A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039C56
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039C7C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039C84
_08039C7C: .4byte 0x00140179
_08039C80:
	bl sub_080003F0
_08039C84:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039C90
	b _08039ECE
_08039C90:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039C80
	bl sub_0805EFBC
	b _08039ECE
_08039C9E:
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _08039CFE
	b _08039CAC
_08039CA8:
	bl sub_080003F0
_08039CAC:
	bl sub_0805F184
	cmp r0, #0
	bne _08039CA8
	b _08039CBA
_08039CB6:
	bl sub_080003F0
_08039CBA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039CB6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039CDC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039CE4
_08039CDC: .4byte 0x00140178
_08039CE0:
	bl sub_080003F0
_08039CE4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039CF0
	b _08039ECE
_08039CF0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039CE0
	bl sub_0805EFBC
	b _08039ECE
_08039CFE:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08039D5E
	b _08039D0C
_08039D08:
	bl sub_080003F0
_08039D0C:
	bl sub_0805F184
	cmp r0, #0
	bne _08039D08
	b _08039D1A
_08039D16:
	bl sub_080003F0
_08039D1A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039D16
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039D3C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039D44
_08039D3C: .4byte 0x00140177
_08039D40:
	bl sub_080003F0
_08039D44:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039D50
	b _08039ECE
_08039D50:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039D40
	bl sub_0805EFBC
	b _08039ECE
_08039D5E:
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq _08039DBE
	b _08039D6C
_08039D68:
	bl sub_080003F0
_08039D6C:
	bl sub_0805F184
	cmp r0, #0
	bne _08039D68
	b _08039D7A
_08039D76:
	bl sub_080003F0
_08039D7A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039D76
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039D9C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039DA4
_08039D9C: .4byte 0x00140176
_08039DA0:
	bl sub_080003F0
_08039DA4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08039DB0
	b _08039ECE
_08039DB0:
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039DA0
	bl sub_0805EFBC
	b _08039ECE
_08039DBE:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08039E1C
	b _08039DCC
_08039DC8:
	bl sub_080003F0
_08039DCC:
	bl sub_0805F184
	cmp r0, #0
	bne _08039DC8
	b _08039DDA
_08039DD6:
	bl sub_080003F0
_08039DDA:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039DD6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039DFC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039E04
_08039DFC: .4byte 0x00140175
_08039E00:
	bl sub_080003F0
_08039E04:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08039ECE
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039E00
	bl sub_0805EFBC
	b _08039ECE
_08039E1C:
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _08039E80
	b _08039E2A
_08039E26:
	bl sub_080003F0
_08039E2A:
	bl sub_0805F184
	cmp r0, #0
	bne _08039E26
	b _08039E38
_08039E34:
	bl sub_080003F0
_08039E38:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039E34
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039E5C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039E64
	.2byte 0x0000
_08039E5C: .4byte 0x00140174
_08039E60:
	bl sub_080003F0
_08039E64:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08039ECE
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039E60
	bl sub_0805EFBC
	b _08039ECE
_08039E7C:
	bl sub_080003F0
_08039E80:
	bl sub_0805F184
	cmp r0, #0
	bne _08039E7C
	b _08039E8E
_08039E8A:
	bl sub_080003F0
_08039E8E:
	bl sub_0805EF90
	cmp r0, #0
	bne _08039E8A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08039EB0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08039EB8
_08039EB0: .4byte 0x00140173
_08039EB4:
	bl sub_080003F0
_08039EB8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08039ECE
	bl sub_0800CDF8
	cmp r0, #0
	beq _08039EB4
	bl sub_0805EFBC
_08039ECE:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08039EFC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08039EFC: .4byte gUnk_03003CE0
	thumb_func_end sub_080399E4
