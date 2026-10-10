	thumb_func_start sub_08047B2C
sub_08047B2C: @ 0x08047B2C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	cmp r0, #2
	bne _08047B3E
	b _08048074
_08047B3E:
	cmp r0, #2
	bgt _08047B48
	cmp r0, #0
	beq _08047B50
	b _080480D0
_08047B48:
	cmp r0, #3
	bne _08047B4E
	b _080480A4
_08047B4E:
	b _080480D0
_08047B50:
	movs r4, #0x1e
	add r0, sp, #0xc
	mov r9, r0
	b _08047B62
_08047B58:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08047B6E
_08047B62:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08047B58
_08047B6E:
	movs r0, #1
	movs r1, #0x40
	movs r2, #0xb0
	movs r3, #0x1e
	bl sub_08028AAC
	movs r4, #0x1e
	b _08047B88
_08047B7E:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08047B9A
_08047B88:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08047B7E
	b _08047B9A
_08047B96:
	bl sub_080003F0
_08047B9A:
	bl sub_0805F184
	cmp r0, #0
	bne _08047B96
	b _08047BA8
_08047BA4:
	bl sub_080003F0
_08047BA8:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047BA4
	movs r0, #0x2d
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08047BCE
_08047BCA:
	bl sub_080003F0
_08047BCE:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08047BCA
	b _08047BDE
_08047BDA:
	bl sub_080003F0
_08047BDE:
	bl sub_0805F184
	cmp r0, #0
	bne _08047BDA
	b _08047BEC
_08047BE8:
	bl sub_080003F0
_08047BEC:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047BE8
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08047C28
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _08047C30
	.2byte 0x0000
_08047C28: .4byte 0x00140001
_08047C2C:
	bl sub_080003F0
_08047C30:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08047C2C
	movs r1, #0x22
	mov sl, r1
	ldr r0, _08047CAC
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
_08047C54:
	add r0, sp, #8
	adds r1, r6, #0
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	mov r0, r9
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
	add r4, sl
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08047C54
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08047CB0
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	b _08047CB8
_08047CAC: .4byte gUnk_03003170
_08047CB0: .4byte gUnk_03003CE0
_08047CB4:
	bl sub_080003F0
_08047CB8:
	bl sub_0805F184
	cmp r0, #0
	bne _08047CB4
	b _08047CC6
_08047CC2:
	bl sub_080003F0
_08047CC6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047CC2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08047D00
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _08047D08
_08047D00: .4byte 0x00140002
_08047D04:
	bl sub_080003F0
_08047D08:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08047D04
	b _08047D18
_08047D14:
	bl sub_080003F0
_08047D18:
	bl sub_0805F184
	cmp r0, #0
	bne _08047D14
	b _08047D26
_08047D22:
	bl sub_080003F0
_08047D26:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047D22
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08047D60
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _08047D68
_08047D60: .4byte 0x00140003
_08047D64:
	bl sub_080003F0
_08047D68:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08047D64
	b _08047D78
_08047D74:
	bl sub_080003F0
_08047D78:
	bl sub_0805F184
	cmp r0, #0
	bne _08047D74
	b _08047D86
_08047D82:
	bl sub_080003F0
_08047D86:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047D82
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08047DC0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _08047DC8
_08047DC0: .4byte 0x00140004
_08047DC4:
	bl sub_080003F0
_08047DC8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08047DC4
	b _08047DD8
_08047DD4:
	bl sub_080003F0
_08047DD8:
	bl sub_0805F184
	cmp r0, #0
	bne _08047DD4
	b _08047DE6
_08047DE2:
	bl sub_080003F0
_08047DE6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047DE2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08047E20
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _08047E28
_08047E20: .4byte 0x00140005
_08047E24:
	bl sub_080003F0
_08047E28:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08047E24
	b _08047E38
_08047E34:
	bl sub_080003F0
_08047E38:
	bl sub_0805F184
	cmp r0, #0
	bne _08047E34
	b _08047E46
_08047E42:
	bl sub_080003F0
_08047E46:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047E42
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08047E80
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _08047E88
_08047E80: .4byte 0x00140006
_08047E84:
	bl sub_080003F0
_08047E88:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08047E84
	b _08047E98
_08047E94:
	bl sub_080003F0
_08047E98:
	bl sub_0805F184
	cmp r0, #0
	bne _08047E94
	b _08047EA6
_08047EA2:
	bl sub_080003F0
_08047EA6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047EA2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08047EE0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _08047EE8
_08047EE0: .4byte 0x00140007
_08047EE4:
	bl sub_080003F0
_08047EE8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08047EE4
	b _08047EF8
_08047EF4:
	bl sub_080003F0
_08047EF8:
	bl sub_0805F184
	cmp r0, #0
	bne _08047EF4
	b _08047F06
_08047F02:
	bl sub_080003F0
_08047F06:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047F02
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08047F40
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _08047F48
_08047F40: .4byte 0x00140008
_08047F44:
	bl sub_080003F0
_08047F48:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08047F44
	b _08047F58
_08047F54:
	bl sub_080003F0
_08047F58:
	bl sub_0805F184
	cmp r0, #0
	bne _08047F54
	b _08047F66
_08047F62:
	bl sub_080003F0
_08047F66:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047F62
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08047FA0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _08047FA8
_08047FA0: .4byte 0x00140009
_08047FA4:
	bl sub_080003F0
_08047FA8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08047FA4
	b _08047FB8
_08047FB4:
	bl sub_080003F0
_08047FB8:
	bl sub_0805F184
	cmp r0, #0
	bne _08047FB4
	b _08047FC6
_08047FC2:
	bl sub_080003F0
_08047FC6:
	bl sub_0805EF90
	cmp r0, #0
	bne _08047FC2
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048000
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _08048008
_08048000: .4byte 0x0014000A
_08048004:
	bl sub_080003F0
_08048008:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048004
	b _08048018
_08048014:
	bl sub_080003F0
_08048018:
	bl sub_0805F184
	cmp r0, #0
	bne _08048014
	b _08048026
_08048022:
	bl sub_080003F0
_08048026:
	bl sub_0805EF90
	cmp r0, #0
	bne _08048022
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _08048060
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
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
	b _08048068
_08048060: .4byte 0x0014000B
_08048064:
	bl sub_080003F0
_08048068:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _08048064
	b _080480D0
_08048074:
	ldr r0, _0804809C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08048086
	movs r0, #0x45
	bl sub_08006D08
_08048086:
	ldr r0, _080480A0
	ldr r0, [r0, #0]
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #1
	movs r1, #0
	bl sub_0802949C
	b _080480D0
_0804809C: .4byte gUnk_030027D0
_080480A0: .4byte gUnk_030056F4
_080480A4:
	ldr r0, _080480E0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080480B6
	movs r0, #0x45
	bl sub_08006D08
_080480B6:
	ldr r0, _080480E4
	ldr r0, [r0, #0]
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	movs r1, #3
	bl sub_08019EB8
	movs r0, #2
	movs r1, #0
	bl sub_0802949C
_080480D0:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080480E0: .4byte gUnk_030027D0
_080480E4: .4byte gUnk_030056F4
	thumb_func_end sub_08047B2C
