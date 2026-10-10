	thumb_func_start sub_0803AE6C
sub_0803AE6C: @ 0x0803AE6C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0803AEA0
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	bl sub_0800CE30
	cmp r0, #0
	beq _0803AEA8
	ldr r0, _0803AEA4
	ldr r0, [r0, #0]
	adds r0, #0x80
	lsls r1, r4, #0xe
	ldr r4, [r0, #0]
	b _0803AEB0
_0803AEA0: .4byte gUnk_03003CE0
_0803AEA4: .4byte gUnk_03005CF4
_0803AEA8:
	ldr r0, _0803AEC8
	ldr r0, [r0, #0]
	lsls r1, r4, #0xe
	ldr r4, [r0, #0x78]
_0803AEB0:
	ands r4, r1
	bl sub_0800CE30
	cmp r0, #0
	beq _0803AECC
	ldr r0, _0803AEC8
	ldr r0, [r0, #0]
	adds r0, #0x80
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r0, #0]
	b _0803AED6
_0803AEC8: .4byte gUnk_03005CF4
_0803AECC:
	ldr r0, _0803AEE4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #1
	ldr r0, [r0, #0x78]
_0803AED6:
	ands r0, r1
	cmp r0, #0
	beq _0803AF8C
	cmp r4, #0
	bne _0803AF8C
	b _0803AEEC
	.2byte 0x0000
_0803AEE4: .4byte gUnk_03005CF4
_0803AEE8:
	bl sub_080003F0
_0803AEEC:
	bl sub_0805F184
	cmp r0, #0
	bne _0803AEE8
	b _0803AEFA
_0803AEF6:
	bl sub_080003F0
_0803AEFA:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803AEF6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803AF1C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803AF24
_0803AF1C: .4byte 0x00140278
_0803AF20:
	bl sub_080003F0
_0803AF24:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803AF3A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803AF20
	bl sub_0805EFBC
_0803AF3A:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803AF58
	ldr r0, _0803AF54
	ldr r1, [r0, #0]
	adds r1, #0x80
	movs r2, #0x80
	lsls r2, r2, #7
	ldr r0, [r1, #0]
	orrs r0, r2
	str r0, [r1, #0]
	b _0803AF66
_0803AF54: .4byte gUnk_03005CF4
_0803AF58:
	ldr r0, _0803AF7C
	ldr r2, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #7
	ldr r0, [r2, #0x78]
	orrs r0, r1
	str r0, [r2, #0x78]
_0803AF66:
	ldr r0, _0803AF80
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803AFDA
	movs r0, #0x32
	bl sub_08006D08
	b _0803AFDA
	.2byte 0x0000
_0803AF7C: .4byte gUnk_03005CF4
_0803AF80: .4byte gUnk_030027D0
_0803AF84:
	adds r0, r1, #0
	b _0803B014
_0803AF88:
	bl sub_080003F0
_0803AF8C:
	bl sub_0805F184
	cmp r0, #0
	bne _0803AF88
	b _0803AF9A
_0803AF96:
	bl sub_080003F0
_0803AF9A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803AF96
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803AFBC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803AFC4
_0803AFBC: .4byte 0x00140274
_0803AFC0:
	bl sub_080003F0
_0803AFC4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803AFDA
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803AFC0
	bl sub_0805EFBC
_0803AFDA:
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	adds r2, r5, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r5, r0
	bls _0803B028
	ldr r0, _0803B020
	ldr r0, [r0, #0]
	ldr r3, _0803B024
	adds r1, r0, r3
	movs r3, #0
_0803B000:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _0803AF84
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _0803B000
	bl sub_080003F0
	movs r0, #0
_0803B014:
	cmp r0, #0
	beq _0803B070
	adds r0, #0x42
	strh r4, [r0, #0]
	b _0803B070
	.2byte 0x0000
_0803B020: .4byte gUnk_03005CF4
_0803B024: .4byte 0x000007A4
_0803B028:
	cmp r5, #0
	beq _0803B050
	subs r2, r5, #1
	cmp r2, #4
	bhi _0803B070
	ldr r1, _0803B04C
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
	b _0803B070
_0803B04C: .4byte gUnk_030056F4
_0803B050:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0803B068
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0, #0]
	b _0803B070
_0803B068: .4byte gUnk_03003CE0
_0803B06C:
	bl sub_080003F0
_0803B070:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B06C
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B094
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B09C
	.2byte 0x0000
_0803B094: .4byte 0x00140275
_0803B098:
	bl sub_080003F0
_0803B09C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803B098
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	beq _0803B10C
	b _0803B0B6
_0803B0B2:
	bl sub_080003F0
_0803B0B6:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B0B2
	b _0803B0C4
_0803B0C0:
	bl sub_080003F0
_0803B0C4:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B0C0
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B0E8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B0F0
	.2byte 0x0000
_0803B0E8: .4byte 0x00140276
_0803B0EC:
	bl sub_080003F0
_0803B0F0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803B15A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B0EC
	bl sub_0805EFBC
	b _0803B15A
_0803B108:
	bl sub_080003F0
_0803B10C:
	bl sub_0805F184
	cmp r0, #0
	bne _0803B108
	b _0803B11A
_0803B116:
	bl sub_080003F0
_0803B11A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803B116
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803B13C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803B144
_0803B13C: .4byte 0x00140277
_0803B140:
	bl sub_080003F0
_0803B144:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803B15A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803B140
	bl sub_0805EFBC
_0803B15A:
	adds r0, r5, #0
	bl sub_08029788
	adds r0, r5, #0
	movs r1, #3
	bl sub_0802939C
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803B190
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
_0803B190: .4byte gUnk_03003CE0
	thumb_func_end sub_0803AE6C
