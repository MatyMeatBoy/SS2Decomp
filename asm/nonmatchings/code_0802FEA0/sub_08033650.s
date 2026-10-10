	thumb_func_start sub_08033650
sub_08033650: @ 0x08033650
	push {r4, r5, lr}
	sub sp, #0x28
	adds r4, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08033690
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r5, #1
	orrs r0, r5
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _08033698
	ldr r0, _08033694
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _080336A0
_08033690: .4byte gUnk_03003CE0
_08033694: .4byte gUnk_03005CF4
_08033698:
	ldr r0, _080336C4
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_080336A0:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r0, r0, #1
	ands r0, r5
	cmp r0, #0
	beq _080336AE
	b _08033AC4
_080336AE:
	bl sub_0800CE30
	cmp r0, #0
	beq _080336C8
	ldr r0, _080336C4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r0, [r0, #0x7c]
	b _080336D2
	.2byte 0x0000
_080336C4: .4byte gUnk_03005CF4
_080336C8:
	ldr r0, _080336E0
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r0, [r0, #0x74]
_080336D2:
	ands r0, r1
	cmp r0, #0
	bne _080336DA
	b _080339FE
_080336DA:
	cmp r4, #0
	beq _0803373E
	b _080336E8
_080336E0: .4byte gUnk_03005CF4
_080336E4:
	bl sub_080003F0
_080336E8:
	bl sub_0805F184
	cmp r0, #0
	bne _080336E4
	b _080336F6
_080336F2:
	bl sub_080003F0
_080336F6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080336F2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033718
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033720
_08033718: .4byte 0x00140272
_0803371C:
	bl sub_080003F0
_08033720:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803372C
	b _08033B12
_0803372C:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803371C
	bl sub_0805EFBC
	b _08033B12
_0803373A:
	bl sub_080003F0
_0803373E:
	bl sub_0805F184
	cmp r0, #0
	bne _0803373A
	b _0803374C
_08033748:
	bl sub_080003F0
_0803374C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033748
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033770
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033778
	.2byte 0x0000
_08033770: .4byte 0x0014026D
_08033774:
	bl sub_080003F0
_08033778:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803378E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033774
	bl sub_0805EFBC
_0803378E:
	bl sub_0805CFA0
	movs r1, #1
	cmp r0, #0
	bge _0803379A
	movs r1, #0
_0803379A:
	cmp r1, #0
	bne _080337A0
	b _080339A8
_080337A0:
	ldr r0, _080337EC
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080337B2
	movs r0, #0x33
	bl sub_08006D08
_080337B2:
	bl sub_0800CE30
	adds r4, r0, #0
	bl sub_080008C8
	adds r1, r0, #0
	cmp r4, #0
	beq _0803385C
	movs r1, #1
	movs r2, #0xa
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_080337D2:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _080337D2
	movs r4, #0
_080337DE:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _080337DE
	b _080337F4
_080337EC: .4byte gUnk_030027D0
_080337F0:
	bl sub_080003F0
_080337F4:
	bl sub_0805F184
	cmp r0, #0
	bne _080337F0
	b _08033802
_080337FE:
	bl sub_080003F0
_08033802:
	bl sub_0805EF90
	cmp r0, #0
	bne _080337FE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033824
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803382C
_08033824: .4byte 0x00140270
_08033828:
	bl sub_080003F0
_0803382C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08033842
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033828
	bl sub_0805EFBC
_08033842:
	bl sub_0800CE30
	cmp r0, #0
	bne _0803384C
	b _0803398C
_0803384C:
	ldr r0, _08033858
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _08033994
	.2byte 0x0000
_08033858: .4byte gUnk_03005CF4
_0803385C:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080338F8
	movs r1, #7
	movs r2, #0xf
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_08033874:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08033874
	movs r4, #0
_08033880:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08033880
	b _08033892
_0803388E:
	bl sub_080003F0
_08033892:
	bl sub_0805F184
	cmp r0, #0
	bne _0803388E
	b _080338A0
_0803389C:
	bl sub_080003F0
_080338A0:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803389C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080338C4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080338CC
	.2byte 0x0000
_080338C4: .4byte 0x0014026E
_080338C8:
	bl sub_080003F0
_080338CC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080338E2
	bl sub_0800CDF8
	cmp r0, #0
	beq _080338C8
	bl sub_0805EFBC
_080338E2:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803398C
	ldr r0, _080338F4
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _08033994
_080338F4: .4byte gUnk_03005CF4
_080338F8:
	movs r1, #7
	movs r2, #5
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_08033908:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _08033908
	movs r4, #0
_08033914:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _08033914
	b _08033926
_08033922:
	bl sub_080003F0
_08033926:
	bl sub_0805F184
	cmp r0, #0
	bne _08033922
	b _08033934
_08033930:
	bl sub_080003F0
_08033934:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033930
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033958
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033960
	.2byte 0x0000
_08033958: .4byte 0x0014026F
_0803395C:
	bl sub_080003F0
_08033960:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08033976
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803395C
	bl sub_0805EFBC
_08033976:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803398C
	ldr r0, _08033988
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _08033994
_08033988: .4byte gUnk_03005CF4
_0803398C:
	ldr r0, _080339A0
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_08033994:
	adds r2, r0, r1
	ldrb r1, [r2, #0]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2, #0]
	b _08033B12
_080339A0: .4byte gUnk_03005CF4
_080339A4:
	bl sub_080003F0
_080339A8:
	bl sub_0805F184
	cmp r0, #0
	bne _080339A4
	b _080339B6
_080339B2:
	bl sub_080003F0
_080339B6:
	bl sub_0805EF90
	cmp r0, #0
	bne _080339B2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080339D8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080339E0
_080339D8: .4byte 0x00140271
_080339DC:
	bl sub_080003F0
_080339E0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080339EC
	b _08033B12
_080339EC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080339DC
	bl sub_0805EFBC
	b _08033B12
_080339FA:
	bl sub_080003F0
_080339FE:
	bl sub_0805F184
	cmp r0, #0
	bne _080339FA
	b _08033A0C
_08033A08:
	bl sub_080003F0
_08033A0C:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033A08
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033A30
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033A38
	.2byte 0x0000
_08033A30: .4byte 0x0014026C
_08033A34:
	bl sub_080003F0
_08033A38:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08033A4E
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033A34
	bl sub_0805EFBC
_08033A4E:
	bl sub_0800CE30
	cmp r0, #0
	beq _08033A68
	ldr r0, _08033A64
	ldr r0, [r0, #0]
	adds r0, #0x80
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r0, [r0, #0]
	b _08033A72
_08033A64: .4byte gUnk_03005CF4
_08033A68:
	ldr r0, _08033AA4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r0, [r0, #0x78]
_08033A72:
	ands r0, r1
	cmp r0, #0
	bne _08033B12
	ldr r0, _08033AA8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08033A8A
	movs r0, #0x32
	bl sub_08006D08
_08033A8A:
	bl sub_0800CE30
	cmp r0, #0
	beq _08033AAC
	ldr r0, _08033AA4
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #0xa
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _08033B12
_08033AA4: .4byte gUnk_03005CF4
_08033AA8: .4byte gUnk_030027D0
_08033AAC:
	ldr r0, _08033ABC
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #0xa
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
	b _08033B12
_08033ABC: .4byte gUnk_03005CF4
_08033AC0:
	bl sub_080003F0
_08033AC4:
	bl sub_0805F184
	cmp r0, #0
	bne _08033AC0
	b _08033AD2
_08033ACE:
	bl sub_080003F0
_08033AD2:
	bl sub_0805EF90
	cmp r0, #0
	bne _08033ACE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08033AF4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08033AFC
_08033AF4: .4byte 0x00140273
_08033AF8:
	bl sub_080003F0
_08033AFC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08033B12
	bl sub_0800CDF8
	cmp r0, #0
	beq _08033AF8
	bl sub_0805EFBC
_08033B12:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08033B38
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0
_08033B38: .4byte gUnk_03003CE0
	thumb_func_end sub_08033650
