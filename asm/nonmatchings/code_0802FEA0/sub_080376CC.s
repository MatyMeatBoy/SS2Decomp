	thumb_func_start sub_080376CC
sub_080376CC: @ 0x080376CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08037700
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _0803770C
	ldr r0, _08037704
	ldr r0, [r0, #0]
	ldr r1, _08037708
	adds r0, r0, r1
	b _08037714
	.2byte 0x0000
_08037700: .4byte gUnk_03003CE0
_08037704: .4byte gUnk_03005CF4
_08037708: .4byte 0x000001C3
_0803770C:
	ldr r0, _08037724
	ldr r0, [r0, #0]
	ldr r3, _08037728
	adds r0, r0, r3
_08037714:
	ldrb r0, [r0, #0]
	asrs r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _08037720
	b _08037A8C
_08037720:
	b _08037730
	.2byte 0x0000
_08037724: .4byte gUnk_03005CF4
_08037728: .4byte 0x000001B7
_0803772C:
	bl sub_080003F0
_08037730:
	bl sub_0805F184
	cmp r0, #0
	bne _0803772C
	b _0803773E
_0803773A:
	bl sub_080003F0
_0803773E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803773A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037760
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037768
_08037760: .4byte 0x00140286
_08037764:
	bl sub_080003F0
_08037768:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803777E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037764
	bl sub_0805EFBC
_0803777E:
	bl sub_0800CE30
	cmp r0, #0
	beq _08037798
	ldr r0, _08037794
	ldr r0, [r0, #0]
	adds r0, #0x80
	movs r1, #0x80
	lsls r1, r1, #0xd
	ldr r0, [r0, #0]
	b _080377A2
_08037794: .4byte gUnk_03005CF4
_08037798:
	ldr r0, _080377D4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ldr r0, [r0, #0x78]
_080377A2:
	ands r0, r1
	cmp r0, #0
	bne _080377EE
	ldr r0, _080377D8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080377BA
	movs r0, #0x32
	bl sub_08006D08
_080377BA:
	bl sub_0800CE30
	cmp r0, #0
	beq _080377E0
	ldr r0, _080377D4
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #0xd
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _080377EE
_080377D4: .4byte gUnk_03005CF4
_080377D8: .4byte gUnk_030027D0
_080377DC:
	adds r0, r1, #0
	b _0803784E
_080377E0:
	ldr r0, _08037858
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_080377EE:
	movs r3, #0
	movs r2, #0
	ldr r0, _0803785C
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_080377FC:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _0803780A
	ldrh r0, [r1, #2]
	cmp r0, #0x2d
	bne _0803780A
	adds r3, #1
_0803780A:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _080377FC
	cmp r3, #0
	bgt _08037818
	b _08037ADA
_08037818:
	bl sub_080020F4
	cmp r0, #0
	beq _08037822
	b _08037ADA
_08037822:
	adds r2, r5, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _08037864
	ldr r0, _08037858
	ldr r0, [r0, #0]
	ldr r3, _08037860
	adds r1, r0, r3
	movs r3, #0
	add r6, sp, #0xc
_0803783A:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _080377DC
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _0803783A
	bl sub_080003F0
	movs r0, #0
_0803784E:
	cmp r0, #0
	beq _080378B4
	adds r0, #0x42
	strh r4, [r0, #0]
	b _080378B4
_08037858: .4byte gUnk_03005CF4
_0803785C: .4byte gUnk_030034E0
_08037860: .4byte 0x000007A4
_08037864:
	cmp r5, #0
	beq _08037890
	subs r2, r5, #1
	add r6, sp, #0xc
	cmp r2, #4
	bhi _080378B4
	ldr r1, _0803788C
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
	b _080378B4
	.2byte 0x0000
_0803788C: .4byte gUnk_030056F4
_08037890:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _080378AC
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0, #0]
	add r6, sp, #0xc
	b _080378B4
	.2byte 0x0000
_080378AC: .4byte gUnk_03003CE0
_080378B0:
	bl sub_080003F0
_080378B4:
	bl sub_0805F184
	cmp r0, #0
	bne _080378B0
	b _080378C2
_080378BE:
	bl sub_080003F0
_080378C2:
	bl sub_0805EF90
	cmp r0, #0
	bne _080378BE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080378E4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080378EC
_080378E4: .4byte 0x00140287
_080378E8:
	bl sub_080003F0
_080378EC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08037902
	bl sub_0800CDF8
	cmp r0, #0
	beq _080378E8
	bl sub_0805EFBC
_08037902:
	movs r4, #1
	movs r3, #0
	ldr r7, _08037984
	movs r5, #0
_0803790A:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #1
	bne _08037932
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x2d
	bne _08037932
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _08037938
_08037932:
	adds r3, #1
	cmp r3, #0x18
	bls _0803790A
_08037938:
	bl sub_0800CE30
	cmp r0, #0
	bne _080379E6
	movs r1, #6
	movs r2, #0x37
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_08037950:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08037950
	movs r4, #0
_0803795C:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _0803795C
	ldr r0, _08037988
	movs r1, #7
	bl sub_08068070
	ldr r0, _0803798C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08037994
	movs r0, #0x33
	bl sub_08006D08
	b _08037994
_08037984: .4byte gUnk_030034E0
_08037988: .4byte sub_0805990C
_0803798C: .4byte gUnk_030027D0
_08037990:
	bl sub_080003F0
_08037994:
	bl sub_0805F184
	cmp r0, #0
	bne _08037990
	b _080379A2
_0803799E:
	bl sub_080003F0
_080379A2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803799E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080379C4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080379CC
_080379C4: .4byte 0x00140288
_080379C8:
	bl sub_080003F0
_080379CC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080379D8
	b _08037ADA
_080379D8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080379C8
	bl sub_0805EFBC
	b _08037ADA
_080379E6:
	movs r1, #6
	movs r2, #0x38
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_080379F6:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _080379F6
	movs r4, #0
_08037A02:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08037A02
	ldr r0, _08037A2C
	movs r1, #7
	bl sub_08068070
	ldr r0, _08037A30
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08037A38
	movs r0, #0x33
	bl sub_08006D08
	b _08037A38
	.2byte 0x0000
_08037A2C: .4byte sub_0805990C
_08037A30: .4byte gUnk_030027D0
_08037A34:
	bl sub_080003F0
_08037A38:
	bl sub_0805F184
	cmp r0, #0
	bne _08037A34
	b _08037A46
_08037A42:
	bl sub_080003F0
_08037A46:
	bl sub_0805EF90
	cmp r0, #0
	bne _08037A42
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037A68
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037A70
_08037A68: .4byte 0x00140289
_08037A6C:
	bl sub_080003F0
_08037A70:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08037ADA
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037A6C
	bl sub_0805EFBC
	b _08037ADA
_08037A88:
	bl sub_080003F0
_08037A8C:
	bl sub_0805F184
	cmp r0, #0
	bne _08037A88
	b _08037A9A
_08037A96:
	bl sub_080003F0
_08037A9A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08037A96
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08037ABC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08037AC4
_08037ABC: .4byte 0x0014028A
_08037AC0:
	bl sub_080003F0
_08037AC4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08037ADA
	bl sub_0800CDF8
	cmp r0, #0
	beq _08037AC0
	bl sub_0805EFBC
_08037ADA:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08037B00
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
_08037B00: .4byte gUnk_03003CE0
	thumb_func_end sub_080376CC
