	thumb_func_start sub_08032DE4
sub_08032DE4: @ 0x08032DE4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08032E24
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
	beq _08032E2C
	ldr r0, _08032E28
	ldr r0, [r0, #0]
	adds r0, #0x80
	movs r1, #0x10
	ldr r0, [r0, #0]
	b _08032E34
	.2byte 0x0000
_08032E24: .4byte gUnk_03003CE0
_08032E28: .4byte gUnk_03005CF4
_08032E2C:
	ldr r0, _08032E50
	ldr r0, [r0, #0]
	movs r1, #0x10
	ldr r0, [r0, #0x78]
_08032E34:
	ands r0, r1
	cmp r0, #0
	bne _08032E3C
	b _08033120
_08032E3C:
	bl sub_0800CE30
	cmp r0, #0
	beq _08032E58
	ldr r0, _08032E50
	ldr r0, [r0, #0]
	ldr r1, _08032E54
	adds r0, r0, r1
	b _08032E60
	.2byte 0x0000
_08032E50: .4byte gUnk_03005CF4
_08032E54: .4byte 0x000001C3
_08032E58:
	ldr r0, _08032E84
	ldr r0, [r0, #0]
	ldr r3, _08032E88
	adds r0, r0, r3
_08032E60:
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08032E6E
	b _080330CC
_08032E6E:
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _08032E94
	ldr r0, _08032E84
	ldr r0, [r0, #0]
	ldr r1, _08032E8C
	adds r0, r0, r1
	b _08032E9C
	.2byte 0x0000
_08032E84: .4byte gUnk_03005CF4
_08032E88: .4byte 0x000001B7
_08032E8C: .4byte 0x000001C3
_08032E90:
	adds r0, r1, #0
	b _08032F7E
_08032E94:
	ldr r0, _08032EAC
	ldr r0, [r0, #0]
	ldr r3, _08032EB0
	adds r0, r0, r3
_08032E9C:
	ldrb r0, [r0, #0]
	asrs r0, r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08032EA8
	b _08033078
_08032EA8:
	b _08032EB8
	.2byte 0x0000
_08032EAC: .4byte gUnk_03005CF4
_08032EB0: .4byte 0x000001B7
_08032EB4:
	bl sub_080003F0
_08032EB8:
	bl sub_0805F184
	cmp r0, #0
	bne _08032EB4
	b _08032EC6
_08032EC2:
	bl sub_080003F0
_08032EC6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032EC2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08032EE8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08032EF0
_08032EE8: .4byte 0x00140220
_08032EEC:
	bl sub_080003F0
_08032EF0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08032F06
	bl sub_0800CDF8
	cmp r0, #0
	beq _08032EEC
	bl sub_0805EFBC
_08032F06:
	bl sub_080020F4
	cmp r0, #0
	beq _08032F10
	b _0803316E
_08032F10:
	movs r3, #0
	movs r2, #0
	ldr r0, _08032F88
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_08032F1E:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _08032F2C
	ldrh r0, [r1, #2]
	cmp r0, #0x29
	bne _08032F2C
	adds r3, #1
_08032F2C:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08032F1E
	cmp r3, #0
	bgt _08032F3A
	b _0803316E
_08032F3A:
	movs r2, #3
	negs r2, r2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	adds r0, r5, #0
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	adds r2, r5, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _08032F94
	ldr r0, _08032F8C
	ldr r0, [r0, #0]
	ldr r3, _08032F90
	adds r1, r0, r3
	movs r3, #0
_08032F6A:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _08032E90
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _08032F6A
	bl sub_080003F0
	movs r0, #0
_08032F7E:
	cmp r0, #0
	beq _08032FD2
	adds r0, #0x42
	b _08032FD0
	.2byte 0x0000
_08032F88: .4byte gUnk_030034E0
_08032F8C: .4byte gUnk_03005CF4
_08032F90: .4byte 0x000007A4
_08032F94:
	cmp r5, #0
	beq _08032FBC
	subs r2, r5, #1
	cmp r2, #4
	bhi _08032FD2
	ldr r1, _08032FB8
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
	b _08032FD2
_08032FB8: .4byte gUnk_030056F4
_08032FBC:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _08032FDC
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
_08032FD0:
	strh r4, [r0, #0]
_08032FD2:
	ldr r0, _08032FE0
	movs r1, #1
	bl sub_08068070
	b _08032FE8
_08032FDC: .4byte gUnk_03003CE0
_08032FE0: .4byte sub_0805990C
_08032FE4:
	bl sub_080003F0
_08032FE8:
	bl sub_0805F184
	cmp r0, #0
	bne _08032FE4
	b _08032FF6
_08032FF2:
	bl sub_080003F0
_08032FF6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08032FF2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033018
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033020
_08033018: .4byte 0x00140221
_0803301C:
	bl sub_080003F0
_08033020:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08033036
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803301C
	bl sub_0805EFBC
_08033036:
	movs r4, #1
	movs r3, #0
	ldr r6, _08033070
	movs r5, #0
_0803303E:
	ldr r0, [r6, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #1
	bne _08033068
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x29
	bne _08033068
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	bne _08033068
	b _0803316E
_08033068:
	adds r3, #1
	cmp r3, #0x18
	bls _0803303E
	b _0803316E
_08033070: .4byte gUnk_030034E0
_08033074:
	bl sub_080003F0
_08033078:
	bl sub_0805F184
	cmp r0, #0
	bne _08033074
	b _08033086
_08033082:
	bl sub_080003F0
_08033086:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033082
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080330A8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080330B0
_080330A8: .4byte 0x00140222
_080330AC:
	bl sub_080003F0
_080330B0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803316E
	bl sub_0800CDF8
	cmp r0, #0
	beq _080330AC
	bl sub_0805EFBC
	b _0803316E
_080330C8:
	bl sub_080003F0
_080330CC:
	bl sub_0805F184
	cmp r0, #0
	bne _080330C8
	b _080330DA
_080330D6:
	bl sub_080003F0
_080330DA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080330D6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080330FC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033104
_080330FC: .4byte 0x00140223
_08033100:
	bl sub_080003F0
_08033104:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803316E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033100
	bl sub_0805EFBC
	b _0803316E
_0803311C:
	bl sub_080003F0
_08033120:
	bl sub_0805F184
	cmp r0, #0
	bne _0803311C
	b _0803312E
_0803312A:
	bl sub_080003F0
_0803312E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803312A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033150
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033158
_08033150: .4byte 0x0014021F
_08033154:
	bl sub_080003F0
_08033158:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803316E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033154
	bl sub_0805EFBC
_0803316E:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08033194
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08033194: .4byte gUnk_03003CE0
	thumb_func_end sub_08032DE4
