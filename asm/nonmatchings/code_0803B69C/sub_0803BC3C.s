	thumb_func_start sub_0803BC3C
sub_0803BC3C: @ 0x0803BC3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0803BC78
	adds r1, r1, r0
	ldr r0, [r1, #0x30]
	movs r4, #1
	orrs r0, r4
	str r0, [r1, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	bl sub_0800CE30
	cmp r0, #0
	beq _0803BC84
	ldr r0, _0803BC7C
	ldr r0, [r0, #0]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	b _0803BC8E
_0803BC78: .4byte gUnk_03003CE0
_0803BC7C: .4byte gUnk_03005CF4
_0803BC80:
	adds r0, r1, #0
	b _0803BD52
_0803BC84:
	ldr r0, _0803BC9C
	ldr r0, [r0, #0]
	movs r3, #0xdc
	lsls r3, r3, #1
	adds r0, r0, r3
_0803BC8E:
	ldrb r0, [r0, #0]
	ands r0, r4
	cmp r0, #0
	beq _0803BC98
	b _0803BF90
_0803BC98:
	b _0803BCA4
	.2byte 0x0000
_0803BC9C: .4byte gUnk_03005CF4
_0803BCA0:
	bl sub_080003F0
_0803BCA4:
	bl sub_0805F184
	cmp r0, #0
	bne _0803BCA0
	b _0803BCB2
_0803BCAE:
	bl sub_080003F0
_0803BCB2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803BCAE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803BCD4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803BCDC
_0803BCD4: .4byte 0x0014028B
_0803BCD8:
	bl sub_080003F0
_0803BCDC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803BCF2
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803BCD8
	bl sub_0805EFBC
_0803BCF2:
	movs r3, #0
	movs r2, #0
	ldr r0, _0803BD5C
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_0803BD00:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _0803BD0E
	ldrh r0, [r1, #2]
	cmp r0, #0x30
	bne _0803BD0E
	adds r3, #1
_0803BD0E:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _0803BD00
	cmp r3, #0
	bgt _0803BD1C
	b _0803BFDE
_0803BD1C:
	bl sub_080020F4
	cmp r0, #0
	beq _0803BD26
	b _0803BFDE
_0803BD26:
	adds r2, r5, #0
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r2, r0
	bls _0803BD68
	ldr r0, _0803BD60
	ldr r0, [r0, #0]
	ldr r3, _0803BD64
	adds r1, r0, r3
	movs r3, #0
	add r6, sp, #0xc
_0803BD3E:
	ldr r0, [r1, #0]
	cmp r0, r2
	beq _0803BC80
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _0803BD3E
	bl sub_080003F0
	movs r0, #0
_0803BD52:
	cmp r0, #0
	beq _0803BDB8
	adds r0, #0x42
	strh r4, [r0, #0]
	b _0803BDB8
_0803BD5C: .4byte gUnk_030034E0
_0803BD60: .4byte gUnk_03005CF4
_0803BD64: .4byte 0x000007A4
_0803BD68:
	cmp r5, #0
	beq _0803BD94
	subs r2, r5, #1
	add r6, sp, #0xc
	cmp r2, #4
	bhi _0803BDB8
	ldr r1, _0803BD90
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
	b _0803BDB8
	.2byte 0x0000
_0803BD90: .4byte gUnk_030056F4
_0803BD94:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0803BDB0
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r4, [r0, #0]
	add r6, sp, #0xc
	b _0803BDB8
	.2byte 0x0000
_0803BDB0: .4byte gUnk_03003CE0
_0803BDB4:
	bl sub_080003F0
_0803BDB8:
	bl sub_0805F184
	cmp r0, #0
	bne _0803BDB4
	b _0803BDC6
_0803BDC2:
	bl sub_080003F0
_0803BDC6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803BDC2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803BDE8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803BDF0
_0803BDE8: .4byte 0x0014028C
_0803BDEC:
	bl sub_080003F0
_0803BDF0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803BE06
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803BDEC
	bl sub_0805EFBC
_0803BE06:
	movs r4, #1
	movs r3, #0
	ldr r7, _0803BE88
	movs r5, #0
_0803BE0E:
	ldr r0, [r7, #0]
	lsls r1, r3, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, #1
	bne _0803BE36
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, #0x30
	bne _0803BE36
	subs r4, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r4, #0
	beq _0803BE3C
_0803BE36:
	adds r3, #1
	cmp r3, #0x18
	bls _0803BE0E
_0803BE3C:
	bl sub_0800CE30
	cmp r0, #0
	bne _0803BEEA
	movs r1, #6
	movs r2, #0x52
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_0803BE54:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _0803BE54
	movs r4, #0
_0803BE60:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _0803BE60
	ldr r0, _0803BE8C
	movs r1, #8
	bl sub_08068070
	ldr r0, _0803BE90
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803BE98
	movs r0, #0x33
	bl sub_08006D08
	b _0803BE98
_0803BE88: .4byte gUnk_030034E0
_0803BE8C: .4byte sub_0805990C
_0803BE90: .4byte gUnk_030027D0
_0803BE94:
	bl sub_080003F0
_0803BE98:
	bl sub_0805F184
	cmp r0, #0
	bne _0803BE94
	b _0803BEA6
_0803BEA2:
	bl sub_080003F0
_0803BEA6:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803BEA2
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803BEC8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803BED0
_0803BEC8: .4byte 0x0014028D
_0803BECC:
	bl sub_080003F0
_0803BED0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803BEDC
	b _0803BFDE
_0803BEDC:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803BECC
	bl sub_0805EFBC
	b _0803BFDE
_0803BEEA:
	movs r1, #1
	movs r2, #0x63
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	adds r1, r6, #0
	movs r2, #0
_0803BEFA:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _0803BEFA
	movs r4, #0
_0803BF06:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _0803BF06
	ldr r0, _0803BF30
	movs r1, #8
	bl sub_08068070
	ldr r0, _0803BF34
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803BF3C
	movs r0, #0x33
	bl sub_08006D08
	b _0803BF3C
	.2byte 0x0000
_0803BF30: .4byte sub_0805990C
_0803BF34: .4byte gUnk_030027D0
_0803BF38:
	bl sub_080003F0
_0803BF3C:
	bl sub_0805F184
	cmp r0, #0
	bne _0803BF38
	b _0803BF4A
_0803BF46:
	bl sub_080003F0
_0803BF4A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803BF46
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803BF6C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803BF74
_0803BF6C: .4byte 0x0014028E
_0803BF70:
	bl sub_080003F0
_0803BF74:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803BFDE
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803BF70
	bl sub_0805EFBC
	b _0803BFDE
_0803BF8C:
	bl sub_080003F0
_0803BF90:
	bl sub_0805F184
	cmp r0, #0
	bne _0803BF8C
	b _0803BF9E
_0803BF9A:
	bl sub_080003F0
_0803BF9E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803BF9A
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803BFC0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803BFC8
_0803BFC0: .4byte 0x0014028F
_0803BFC4:
	bl sub_080003F0
_0803BFC8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803BFDE
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803BFC4
	bl sub_0805EFBC
_0803BFDE:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803C004
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
_0803C004: .4byte gUnk_03003CE0
	thumb_func_end sub_0803BC3C
