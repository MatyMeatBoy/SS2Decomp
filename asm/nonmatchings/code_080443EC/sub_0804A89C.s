	thumb_func_start sub_0804A89C
sub_0804A89C: @ 0x0804A89C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	cmp r0, #6
	bls _0804A8A6
	b _0804AE3A
_0804A8A6:
	lsls r0, r0, #2
	ldr r1, _0804A8B0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0804A8B0: .4byte _0804A8B4
_0804A8B4:
	.4byte _0804A8D0
_0804A8B8: .4byte _0804AAD4
_0804A8BC: .4byte _0804AB74
_0804A8C0: .4byte _0804AD1E
_0804A8C4: .4byte _0804AD92
_0804A8C8: .4byte _0804AE04
_0804A8CC: .4byte _0804AE20
_0804A8D0:
	ldr r0, _0804A8F0
	movs r2, #0x98
	lsls r2, r2, #1
	movs r1, #0x60
	bl sub_080289C0
	adds r5, r0, #0
	ldr r0, _0804A8F4
	movs r2, #0x8c
	lsls r2, r2, #1
	movs r1, #0x38
	bl sub_080289C0
	adds r6, r0, #0
	movs r4, #0x1e
	b _0804A902
_0804A8F0: .4byte 0x0003004B
_0804A8F4: .4byte 0x0007004B
_0804A8F8:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804A914
_0804A902:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804A8F8
	b _0804A914
_0804A910:
	bl sub_080003F0
_0804A914:
	bl sub_0805F184
	cmp r0, #0
	bne _0804A910
	b _0804A922
_0804A91E:
	bl sub_080003F0
_0804A922:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804A91E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804A95C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _0804A964
_0804A95C: .4byte 0x00140035
_0804A960:
	bl sub_080003F0
_0804A964:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804A960
	b _0804A974
_0804A970:
	bl sub_080003F0
_0804A974:
	bl sub_0805F184
	cmp r0, #0
	bne _0804A970
	b _0804A982
_0804A97E:
	bl sub_080003F0
_0804A982:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804A97E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804A9BC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	movs r2, #3
	negs r2, r2
	adds r0, r6, #0
	movs r1, #0
	movs r3, #3
	bl sub_08028D98
	adds r0, r6, #0
	movs r1, #0
	movs r2, #3
	movs r3, #3
	bl sub_08028D98
	b _0804A9C4
_0804A9BC: .4byte 0x00140036
_0804A9C0:
	bl sub_080003F0
_0804A9C4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804A9C0
	b _0804A9D4
_0804A9D0:
	bl sub_080003F0
_0804A9D4:
	bl sub_0805F184
	cmp r0, #0
	bne _0804A9D0
	b _0804A9E2
_0804A9DE:
	bl sub_080003F0
_0804A9E2:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804A9DE
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804AA1C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _0804AA24
_0804AA1C: .4byte 0x00140037
_0804AA20:
	bl sub_080003F0
_0804AA24:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804AA20
	adds r0, r5, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r5, #0
	movs r1, #4
	bl sub_080290E4
	adds r0, r5, #0
	movs r1, #0x60
	movs r2, #0xcc
	movs r3, #0x28
	bl sub_08028AAC
	ldr r0, _0804AACC
	ldr r0, [r0, #0]
	ldr r2, _0804AAD0
	adds r1, r0, r2
	movs r2, #0
_0804AA54:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _0804AA68
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804AA54
	bl sub_080003F0
	movs r1, #0
_0804AA68:
	cmp r1, #0
	beq _0804AA70
	movs r0, #4
	strh r0, [r1, #0x36]
_0804AA70:
	adds r0, r6, #0
	movs r1, #8
	bl sub_0802939C
	adds r0, r6, #0
	movs r1, #5
	bl sub_080290E4
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r6, #0
	movs r1, #0x60
	movs r3, #0x14
	bl sub_08028AAC
	adds r0, r6, #0
	movs r1, #4
	bl sub_080290E4
	adds r0, r6, #0
	movs r1, #0x60
	movs r2, #0xd2
	movs r3, #0x14
	bl sub_08028AAC
	ldr r0, _0804AACC
	ldr r0, [r0, #0]
	ldr r4, _0804AAD0
	adds r1, r0, r4
	movs r2, #0
_0804AAAC:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0804AAC0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0804AAAC
	bl sub_080003F0
	movs r1, #0
_0804AAC0:
	cmp r1, #0
	bne _0804AAC6
	b _0804AE3A
_0804AAC6:
	movs r0, #4
	strh r0, [r1, #0x36]
	b _0804AE3A
_0804AACC: .4byte gUnk_03005CF4
_0804AAD0: .4byte 0x000007A4
_0804AAD4:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804AAF4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	b _0804AAFC
_0804AAF4: .4byte gUnk_03003CE0
_0804AAF8:
	bl sub_080003F0
_0804AAFC:
	bl sub_0805F184
	cmp r0, #0
	bne _0804AAF8
	b _0804AB0A
_0804AB06:
	bl sub_080003F0
_0804AB0A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804AB06
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804AB2C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0804AB34
	.2byte 0x0000
_0804AB2C: .4byte 0x00140038
_0804AB30:
	bl sub_080003F0
_0804AB34:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0804AB30
	b _0804AB44
_0804AB40:
	bl sub_080003F0
_0804AB44:
	bl sub_0805F184
	cmp r0, #0
	bne _0804AB40
	b _0804AB52
_0804AB4E:
	bl sub_080003F0
_0804AB52:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804AB4E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804AB70
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	b _0804AE3A
_0804AB70: .4byte 0x00140039
_0804AB74:
	movs r4, #0xfa
	lsls r4, r4, #1
	b _0804AB84
_0804AB7A:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804AB90
_0804AB84:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804AB7A
_0804AB90:
	movs r0, #1
	movs r1, #8
	bl sub_0802939C
	movs r2, #0xc
	negs r2, r2
	movs r0, #1
	movs r1, #0x12
	movs r3, #0xb4
	bl sub_08028D98
	movs r0, #1
	movs r1, #0
	bl sub_08029174
	movs r4, #0x28
	b _0804ABBC
_0804ABB2:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804ABC8
_0804ABBC:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804ABB2
_0804ABC8:
	movs r0, #1
	movs r1, #2
	bl sub_080290E4
	bl sub_080020F4
	cmp r0, #0
	bne _0804ACC8
	movs r3, #0
	movs r2, #0
	add r6, sp, #0xc
	ldr r0, _0804AC38
	ldr r0, [r0, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r1, r0, r4
_0804ABE8:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _0804ABF6
	ldrh r0, [r1, #2]
	cmp r0, #0x23
	bne _0804ABF6
	adds r3, #1
_0804ABF6:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _0804ABE8
	adds r5, r3, #0
	movs r3, #0
	movs r2, #0
	ldr r0, _0804AC38
	ldr r0, [r0, #0]
	movs r4, #0xb8
	lsls r4, r4, #2
	adds r1, r0, r4
_0804AC0E:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _0804AC1C
	ldrh r0, [r1, #2]
	cmp r0, #0x23
	bne _0804AC1C
	adds r3, #1
_0804AC1C:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x4a
	bls _0804AC0E
	adds r4, r3, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _0804AC44
	ldr r0, _0804AC3C
	ldr r0, [r0, #0]
	ldr r1, _0804AC40
	adds r0, r0, r1
	b _0804AC4C
_0804AC38: .4byte gUnk_030034E0
_0804AC3C: .4byte gUnk_03005CF4
_0804AC40: .4byte 0x000001C5
_0804AC44:
	ldr r0, _0804AC78
	ldr r0, [r0, #0]
	ldr r2, _0804AC7C
	adds r0, r0, r2
_0804AC4C:
	ldrb r0, [r0, #0]
	asrs r1, r0, #2
	movs r0, #1
	ands r1, r0
	adds r0, r5, r4
	cmn r0, r1
	bne _0804AC98
	movs r1, #1
	movs r2, #0x23
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0
_0804AC6A:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _0804AC6A
	b _0804AC84
	.2byte 0x0000
_0804AC78: .4byte gUnk_03005CF4
_0804AC7C: .4byte 0x000001B9
_0804AC80:
	bl sub_080003F0
_0804AC84:
	movs r0, #0x93
	lsls r0, r0, #8
	movs r1, #0x88
	lsls r1, r1, #8
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _0804AC80
	b _0804ACC8
_0804AC98:
	movs r0, #1
	add r1, sp, #8
	strh r0, [r1, #0]
	strh r0, [r1, #2]
	movs r1, #0
	adds r2, r6, #0
	movs r3, #0
_0804ACA6:
	adds r0, r2, r1
	strb r3, [r0, #0]
	adds r1, #1
	cmp r1, #0xb
	bls _0804ACA6
	b _0804ACB6
_0804ACB2:
	bl sub_080003F0
_0804ACB6:
	movs r0, #0x93
	lsls r0, r0, #8
	movs r1, #0x88
	lsls r1, r1, #8
	add r2, sp, #8
	bl sub_08067B9C
	cmp r0, #0
	beq _0804ACB2
_0804ACC8:
	movs r4, #0x28
	b _0804ACD6
_0804ACCC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804ACE2
_0804ACD6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804ACCC
_0804ACE2:
	movs r0, #1
	movs r1, #3
	bl sub_080290E4
	movs r4, #0x6e
	b _0804ACF8
_0804ACEE:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804AD04
_0804ACF8:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804ACEE
_0804AD04:
	movs r0, #1
	movs r1, #8
	bl sub_0802939C
	movs r1, #0x12
	negs r1, r1
	movs r0, #1
	movs r2, #0xc
	movs r3, #0xb4
	bl sub_08028D98
	movs r0, #1
	b _0804AD8A
_0804AD1E:
	movs r4, #0xfa
	lsls r4, r4, #1
	b _0804AD2E
_0804AD24:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804AD3A
_0804AD2E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804AD24
_0804AD3A:
	movs r0, #2
	movs r1, #8
	bl sub_0802939C
	movs r2, #0xc
	negs r2, r2
	movs r0, #2
	movs r1, #0x12
	movs r3, #0xb4
	bl sub_08028D98
	movs r0, #2
	movs r1, #0
	bl sub_08029174
	movs r4, #0xbe
	b _0804AD66
_0804AD5C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804AD72
_0804AD66:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804AD5C
_0804AD72:
	movs r0, #2
	movs r1, #8
	bl sub_0802939C
	movs r1, #0x12
	negs r1, r1
	movs r0, #2
	movs r2, #0xc
	movs r3, #0xb4
	bl sub_08028D98
	movs r0, #2
_0804AD8A:
	movs r1, #0
	bl sub_08029174
	b _0804AE3A
_0804AD92:
	movs r4, #0xfa
	lsls r4, r4, #1
	b _0804ADA2
_0804AD98:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804ADAE
_0804ADA2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804AD98
_0804ADAE:
	movs r2, #0xc
	negs r2, r2
	movs r0, #6
	movs r1, #0x12
	movs r3, #0xb4
	bl sub_08028D98
	movs r4, #0xbe
	b _0804ADCA
_0804ADC0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0804ADD6
_0804ADCA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0804ADC0
_0804ADD6:
	movs r1, #0x12
	negs r1, r1
	movs r0, #6
	movs r2, #0xc
	movs r3, #0xb4
	bl sub_08028D98
	movs r0, #6
	movs r1, #0x90
	movs r2, #0x88
	movs r3, #0
	bl sub_08028AAC
	movs r0, #0x93
	lsls r0, r0, #8
	movs r1, #0x88
	lsls r1, r1, #8
	movs r2, #4
	bl sub_0805D37C
	bl sub_080687A8
	b _0804AE3A
_0804AE04:
	ldr r0, _0804AE1C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #1
	movs r1, #0
	bl sub_0802949C
	b _0804AE3A
	.2byte 0x0000
_0804AE1C: .4byte gUnk_030056F4
_0804AE20:
	ldr r0, _0804AE44
	ldr r0, [r0, #0]
	movs r4, #0xb8
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #2
	movs r1, #0
	bl sub_0802949C
_0804AE3A:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0804AE44: .4byte gUnk_030056F4
	thumb_func_end sub_0804A89C
