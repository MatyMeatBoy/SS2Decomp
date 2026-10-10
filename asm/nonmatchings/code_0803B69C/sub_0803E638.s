	thumb_func_start sub_0803E638
sub_0803E638: @ 0x0803E638
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	movs r1, #0
	ldr r0, _0803E68C
	ldr r0, [r0, #0]
	adds r0, #0x68
	strh r1, [r0, #0]
	movs r0, #0
	bl sub_0805AD78
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803E690
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	bl sub_0800CF90
	movs r4, #1
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x24]
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x28]
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x2c]
	b _0803E69E
	.2byte 0x0000
_0803E68C: .4byte gUnk_030034E0
_0803E690: .4byte gUnk_03003CE0
_0803E694:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803E6AA
_0803E69E:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803E694
_0803E6AA:
	movs r0, #0
	movs r1, #2
	bl sub_0801A664
	movs r4, #1
	b _0803E6C0
_0803E6B6:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803E6CC
_0803E6C0:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803E6B6
_0803E6CC:
	ldr r2, _0803E71C
	movs r0, #0x20
	movs r1, #0x78
	bl sub_080289C0
	movs r1, #1
	bl sub_0802939C
	ldr r2, _0803E720
	movs r0, #0x37
	movs r1, #0x9f
	bl sub_080289C0
	mov r9, r0
	movs r1, #0xa
	bl sub_0802939C
	ldr r0, _0803E724
	ldr r2, _0803E728
	movs r1, #0x78
	bl sub_080289C0
	str r0, [sp, #0x20]
	bl sub_080020F4
	mov r8, r0
	cmp r0, #0
	bne _0803E738
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0803E730
	ldr r0, _0803E72C
	movs r1, #9
	bl sub_08068070
	b _0803E738
	.2byte 0x0000
_0803E71C: .4byte 0x00000141
_0803E720: .4byte 0x00000183
_0803E724: .4byte 0x00040031
_0803E728: .4byte 0x0000018D
_0803E72C: .4byte sub_0803F454
_0803E730:
	ldr r0, _0803E748
	movs r1, #0xa
	bl sub_08068070
_0803E738:
	mov r3, r8
	cmp r3, #1
	beq _0803E764
	cmp r3, #1
	bgt _0803E74C
	cmp r3, #0
	beq _0803E758
	b _0803E79C
_0803E748: .4byte sub_0803F454
_0803E74C:
	mov r0, r8
	cmp r0, #2
	beq _0803E770
	cmp r0, #3
	beq _0803E788
	b _0803E79C
_0803E758:
	ldr r2, _0803E760
	movs r0, #0
	movs r1, #0
	b _0803E778
_0803E760: .4byte 0x00000183
_0803E764:
	ldr r2, _0803E76C
	movs r0, #0
	movs r1, #0x19
	b _0803E778
_0803E76C: .4byte 0x00000153
_0803E770:
	movs r2, #0xa5
	lsls r2, r2, #1
	movs r0, #0
	movs r1, #0x24
_0803E778:
	movs r3, #0
	bl sub_08028AAC
	movs r0, #0
	movs r1, #6
	bl sub_080290E4
	b _0803E79C
_0803E788:
	ldr r2, _0803E80C
	movs r0, #0
	movs r1, #0x2f
	movs r3, #0
	bl sub_08028AAC
	movs r0, #0
	movs r1, #6
	bl sub_080290E4
_0803E79C:
	bl sub_080020F4
	ldr r1, _0803E810
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r0, #0x93
	str r0, [sp, #0x1c]
	negs r2, r0
	ldr r0, _0803E814
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r7, [r1, r3]
	adds r0, #0x82
	movs r1, #0
	ldrsh r6, [r0, r1]
	movs r4, #0
	mov sl, r4
	lsls r5, r2, #0x10
_0803E7CC:
	add r0, sp, #8
	adds r1, r7, #0
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x24]
	adds r1, r6, #0
	asrs r2, r5, #0x10
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
	movs r0, #0x80
	lsls r0, r0, #3
	adds r4, r4, r0
	cmp r4, r0
	ble _0803E7CC
	movs r0, #0x1e
	bl sub_0801AA34
	b _0803E81C
_0803E80C: .4byte 0x00000141
_0803E810: .4byte gUnk_03003CE0
_0803E814: .4byte gUnk_03003170
_0803E818:
	bl sub_080003F0
_0803E81C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0803E818
	ldr r0, _0803E838
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803E840
	movs r0, #0x36
	bl sub_08006D08
	b _0803E840
_0803E838: .4byte gUnk_030027D0
_0803E83C:
	bl sub_080003F0
_0803E840:
	bl sub_0805F184
	cmp r0, #0
	bne _0803E83C
	b _0803E84E
_0803E84A:
	bl sub_080003F0
_0803E84E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803E84A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803E890
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	ldr r0, _0803E894
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803E87C
	movs r0, #0x37
	bl sub_08006D08
_0803E87C:
	mov r1, r8
	cmp r1, #0
	bne _0803E8E6
	ldr r6, _0803E898
	ldr r0, _0803E89C
	ldr r0, [r0, #0]
	ldr r2, _0803E8A0
	adds r4, r0, r2
	movs r5, #0
	b _0803E8A8
_0803E890: .4byte 0x0014047B
_0803E894: .4byte gUnk_030027D0
_0803E898: .4byte sub_0803F454
_0803E89C: .4byte gUnk_03005CF4
_0803E8A0: .4byte 0x00000E34
_0803E8A4:
	adds r5, #1
	adds r4, #0x28
_0803E8A8:
	cmp r5, #0x1d
	bhi _0803E8E6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0803E8A4
	b _0803E8BC
_0803E8B8:
	bl sub_080003F0
_0803E8BC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0803E8B8
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
	movs r1, #0
	bl sub_08000274
_0803E8E6:
	movs r0, #0xf0
	ldr r1, [sp, #0x1c]
	subs r0, r0, r1
	ldr r1, _0803E950
	adds r2, r1, #0
	adds r2, #0x80
	movs r3, #0
	ldrsh r7, [r2, r3]
	adds r1, #0x82
	movs r2, #0
	ldrsh r6, [r1, r2]
	movs r4, #0
	mov sl, r4
	lsls r5, r0, #0x10
_0803E902:
	ldr r0, [sp, #0x28]
	adds r1, r7, #0
	mov r3, sl
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0x2c]
	adds r1, r6, #0
	asrs r2, r5, #0x10
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
	adds r4, #2
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _0803E902
	ldr r0, _0803E954
	ldr r2, [r0, #0]
	movs r1, #1
	ldr r0, [r2, #0x38]
	orrs r0, r1
	str r0, [r2, #0x38]
	movs r0, #0x37
	bl sub_08006D5C
	movs r4, #0x14
	b _0803E962
_0803E950: .4byte gUnk_03003170
_0803E954: .4byte gUnk_03005CF4
_0803E958:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803E96E
_0803E962:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803E958
_0803E96E:
	ldr r0, [sp, #0x20]
	movs r1, #3
	bl sub_080290E4
	b _0803E97C
_0803E978:
	bl sub_080003F0
_0803E97C:
	bl sub_0805F184
	cmp r0, #0
	bne _0803E978
	b _0803E98A
_0803E986:
	bl sub_080003F0
_0803E98A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803E986
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803E9AC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803E9B4
	.2byte 0x0000
_0803E9AC: .4byte 0x0014047C
_0803E9B0:
	bl sub_080003F0
_0803E9B4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803E9B0
	movs r4, #0x1e
	b _0803E9CC
_0803E9C2:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803E9D8
_0803E9CC:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803E9C2
_0803E9D8:
	ldr r0, [sp, #0x20]
	movs r1, #4
	bl sub_080290E4
	movs r4, #0x1e
	b _0803E9EE
_0803E9E4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803EA00
_0803E9EE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803E9E4
	b _0803EA00
_0803E9FC:
	bl sub_080003F0
_0803EA00:
	bl sub_0805F184
	cmp r0, #0
	bne _0803E9FC
	b _0803EA0E
_0803EA0A:
	bl sub_080003F0
_0803EA0E:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803EA0A
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803EA30
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803EA38
	.2byte 0x0000
_0803EA30: .4byte 0x0014047D
_0803EA34:
	bl sub_080003F0
_0803EA38:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803EA34
	ldr r5, _0803EA94
	ldr r0, [r5, #0]
	movs r4, #0x20
	ands r0, r4
	cmp r0, #0
	bne _0803EA54
	movs r0, #0x36
	bl sub_08006D08
_0803EA54:
	ldr r1, _0803EA98
	ldr r0, _0803EA9C
	str r1, [r0, #0]
	ldr r0, [r5, #0]
	ands r0, r4
	cmp r0, #0
	bne _0803EA68
	adds r0, r1, #0
	bl sub_08006CB4
_0803EA68:
	ldr r0, [sp, #0x20]
	movs r1, #0
	movs r2, #0x32
	movs r3, #0x1e
	bl sub_08028D98
	mov r0, r8
	cmp r0, #0
	bne _0803EB4E
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _0803EAF0
	ldr r6, _0803EAA0
	ldr r0, _0803EAA4
	ldr r0, [r0, #0]
	ldr r1, _0803EAA8
	adds r4, r0, r1
	movs r5, #0
	b _0803EAB0
_0803EA94: .4byte gUnk_030027D0
_0803EA98: .4byte 0x00000187
_0803EA9C: .4byte gUnk_03005CF8
_0803EAA0: .4byte sub_0803F454
_0803EAA4: .4byte gUnk_03005CF4
_0803EAA8: .4byte 0x00000E34
_0803EAAC:
	adds r5, #1
	adds r4, #0x28
_0803EAB0:
	cmp r5, #0x1d
	bhi _0803EB4E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0803EAAC
	b _0803EAC4
_0803EAC0:
	bl sub_080003F0
_0803EAC4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0803EAC0
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
	movs r1, #8
	bl sub_08000274
	b _0803EB4E
_0803EAF0:
	ldr r6, _0803EB00
	ldr r0, _0803EB04
	ldr r0, [r0, #0]
	ldr r3, _0803EB08
	adds r4, r0, r3
	movs r5, #0
	b _0803EB10
	.2byte 0x0000
_0803EB00: .4byte sub_0803F454
_0803EB04: .4byte gUnk_03005CF4
_0803EB08: .4byte 0x00000E34
_0803EB0C:
	adds r5, #1
	adds r4, #0x28
_0803EB10:
	cmp r5, #0x1d
	bhi _0803EB4E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0803EB0C
	b _0803EB24
_0803EB20:
	bl sub_080003F0
_0803EB24:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0803EB20
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
	movs r1, #1
	bl sub_08000274
_0803EB4E:
	ldr r0, _0803EB6C
	ldr r2, [r0, #0]
	movs r0, #4
	ldr r1, [r2, #0x38]
	ands r1, r0
	cmp r1, #0
	beq _0803EB5E
	movs r1, #1
_0803EB5E:
	cmp r1, #0
	beq _0803EBA6
	ldr r6, _0803EB70
	ldr r3, _0803EB74
	adds r4, r2, r3
	movs r5, #0
	b _0803EB7C
_0803EB6C: .4byte gUnk_03005CF4
_0803EB70: .4byte sub_0803F210
_0803EB74: .4byte 0x00000E34
_0803EB78:
	adds r5, #1
	adds r4, #0x28
_0803EB7C:
	cmp r5, #0x1d
	bhi _0803EBFC
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0803EB78
	b _0803EB90
_0803EB8C:
	bl sub_080003F0
_0803EB90:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0803EB8C
	b _0803EBE0
_0803EBA2:
	adds r0, r1, #0
	b _0803ECBC
_0803EBA6:
	ldr r6, _0803EBB0
	ldr r3, _0803EBB4
	adds r4, r2, r3
	movs r5, #0
	b _0803EBBC
_0803EBB0: .4byte sub_0803F348
_0803EBB4: .4byte 0x00000E34
_0803EBB8:
	adds r5, #1
	adds r4, #0x28
_0803EBBC:
	cmp r5, #0x1d
	bhi _0803EBFC
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0803EBB8
	b _0803EBD0
_0803EBCC:
	bl sub_080003F0
_0803EBD0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0803EBCC
_0803EBE0:
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
	mov r1, r9
	bl sub_08000274
	str r4, [sp, #0x18]
_0803EBFC:
	movs r4, #1
	b _0803EC0A
_0803EC00:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803EC16
_0803EC0A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803EC00
_0803EC16:
	ldr r0, [sp, #0x18]
	bl sub_08000470
	cmp r0, #0
	bne _0803EBFC
	b _0803EC26
_0803EC22:
	bl sub_080003F0
_0803EC26:
	bl sub_0805F184
	cmp r0, #0
	bne _0803EC22
	b _0803EC34
_0803EC30:
	bl sub_080003F0
_0803EC34:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803EC30
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803EC54
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803EC5C
_0803EC54: .4byte 0x0014047E
_0803EC58:
	bl sub_080003F0
_0803EC5C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803EC58
	movs r5, #2
_0803EC68:
	movs r4, #1
	b _0803EC76
_0803EC6C:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803EC82
_0803EC76:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803EC6C
_0803EC82:
	ldr r0, _0803ECC4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x38]
	ands r0, r5
	cmp r0, #0
	beq _0803EC90
	movs r0, #1
_0803EC90:
	cmp r0, #0
	beq _0803EC68
	mov r2, r9
	movs r4, #3
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r9, r0
	bls _0803ECCC
	ldr r3, _0803ECC8
	adds r1, r1, r3
	movs r3, #0
_0803ECA6:
	ldr r0, [r1, #0]
	cmp r0, r2
	bne _0803ECAE
	b _0803EBA2
_0803ECAE:
	adds r3, #1
	adds r1, #0x70
	cmp r3, #0xe
	bls _0803ECA6
	bl sub_080003F0
	movs r0, #0
_0803ECBC:
	cmp r0, #0
	beq _0803ED0E
	adds r0, #0x42
	b _0803ED0C
_0803ECC4: .4byte gUnk_03005CF4
_0803ECC8: .4byte 0x000007A4
_0803ECCC:
	mov r0, r9
	cmp r0, #0
	beq _0803ECF8
	mov r2, r9
	subs r2, #1
	cmp r2, #4
	bhi _0803ED0E
	ldr r1, _0803ECF4
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
	b _0803ED0E
_0803ECF4: .4byte gUnk_030056F4
_0803ECF8:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r1, _0803ED30
	adds r0, r0, r1
	movs r1, #0x8f
	lsls r1, r1, #1
	adds r0, r0, r1
_0803ED0C:
	strh r4, [r0, #0]
_0803ED0E:
	mov r0, r9
	movs r1, #0x11
	bl sub_0802939C
	mov r0, r9
	movs r1, #0x24
	movs r2, #0
	movs r3, #4
	bl sub_08028D98
	ldr r4, _0803ED34
	ldr r0, [r4, #0]
	bl sub_08006CD0
	movs r0, #0
	str r0, [r4, #0]
	b _0803ED3C
_0803ED30: .4byte gUnk_03003CE0
_0803ED34: .4byte gUnk_03005CF8
_0803ED38:
	bl sub_080003F0
_0803ED3C:
	bl sub_0805F184
	cmp r0, #0
	bne _0803ED38
	b _0803ED4A
_0803ED46:
	bl sub_080003F0
_0803ED4A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803ED46
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803ED6C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803ED74
	.2byte 0x0000
_0803ED6C: .4byte 0x0014047F
_0803ED70:
	bl sub_080003F0
_0803ED74:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803ED70
	mov r0, r9
	movs r1, #0x12
	bl sub_0802939C
	movs r2, #0xaa
	lsls r2, r2, #1
	mov r0, r9
	movs r1, #0x82
	movs r3, #0x28
	bl sub_08028AAC
	mov r0, r9
	movs r1, #0xb
	bl sub_0802939C
	b _0803EDA2
_0803ED9E:
	bl sub_080003F0
_0803EDA2:
	bl sub_0805F184
	cmp r0, #0
	bne _0803ED9E
	b _0803EDB0
_0803EDAC:
	bl sub_080003F0
_0803EDB0:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803EDAC
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803EDD0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803EDD8
_0803EDD0: .4byte 0x00140480
_0803EDD4:
	bl sub_080003F0
_0803EDD8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803EDD4
	movs r0, #0x1e
	bl sub_0801AA8C
	b _0803EDEE
_0803EDEA:
	bl sub_080003F0
_0803EDEE:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0803EDEA
	ldr r0, _0803EE4C
	ldr r0, [r0, #0]
	ldr r2, _0803EE50
	adds r1, r0, r2
	movs r2, #0
_0803EE00:
	ldr r0, [r1, #0]
	cmp r0, r9
	beq _0803EE14
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0803EE00
	bl sub_080003F0
	movs r1, #0
_0803EE14:
	cmp r1, #0
	beq _0803EE1C
	movs r0, #4
	strh r0, [r1, #0x36]
_0803EE1C:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	ldr r2, _0803EE54
	ldr r0, [sp, #0x20]
	movs r1, #0x8c
	movs r3, #0
	bl sub_08028AAC
	ldr r0, [sp, #0x20]
	movs r1, #0
	bl sub_080290E4
	ldr r0, _0803EE4C
	ldr r2, [r0, #0]
	movs r1, #2
	negs r1, r1
	ldr r0, [r2, #0x38]
	ands r0, r1
	str r0, [r2, #0x38]
	movs r4, #0x3c
	b _0803EE62
	.2byte 0x0000
_0803EE4C: .4byte gUnk_03005CF4
_0803EE50: .4byte 0x000007A4
_0803EE54: .4byte 0x00000133
_0803EE58:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803EE6E
_0803EE62:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803EE58
_0803EE6E:
	movs r0, #0xc
	movs r1, #2
	bl sub_0802A228
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0803E638
