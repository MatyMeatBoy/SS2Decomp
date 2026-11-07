	thumb_func_start sub_080567D4
sub_080567D4: @ 0x080567D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #0]
	ldr r1, _0805681C
	movs r0, #0x2c
	ldr r3, [sp, #0]
	adds r2, r3, #0
	muls r2, r0, r2
	adds r0, r1, #0
	adds r0, #0x20
	adds r0, r2, r0
	ldr r0, [r0, #0]
	adds r6, r1, #0
	cmp r0, #0
	beq _0805685C
	adds r0, r6, #0
	adds r0, #0x1c
	adds r0, r2, r0
	ldr r5, [r0, #0]
	lsrs r4, r5, #3
	movs r0, #7
	ands r5, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08056828
	ldr r0, _08056820
	ldr r0, [r0, #0]
	ldr r7, _08056824
	adds r0, r0, r7
	b _08056830
	.2byte 0x0000
_0805681C: .4byte gUnk_084B23A8
_08056820: .4byte gUnk_03005CF4
_08056824: .4byte 0x000001C3
_08056828:
	ldr r0, _0805683C
	ldr r0, [r0, #0]
	ldr r1, _08056840
	adds r0, r0, r1
_08056830:
	adds r0, r0, r4
	ldrb r4, [r0, #0]
	asrs r4, r5
	movs r0, #1
	ands r4, r0
	b _08056878
_0805683C: .4byte gUnk_03005CF4
_08056840: .4byte 0x000001B7
_08056844:
	ldr r0, _08056854
	ldr r0, [r0, #0]
	ldr r2, _08056858
	adds r1, r0, r2
	movs r0, #0
	strb r0, [r1, #0]
	b _08056C9E
	.2byte 0x0000
_08056854: .4byte gUnk_03005CF4
_08056858: .4byte 0x000001C1
_0805685C:
	adds r0, r6, #0
	adds r0, #0x1c
	adds r0, r2, r0
	ldr r2, [r0, #0]
	ldr r0, _080568BC
	ldr r1, [r0, #0]
	movs r0, #1
	lsls r0, r2
	ldr r1, [r1, #0x38]
	ands r1, r0
	cmp r1, #0
	beq _08056876
	movs r1, #1
_08056876:
	adds r4, r1, #0
_08056878:
	cmp r4, #0
	beq _0805687E
	b _08056C84
_0805687E:
	ldr r3, _080568C0
	str r3, [sp, #4]
	ldr r7, [sp, #0]
	movs r0, #0x2c
	adds r4, r7, #0
	muls r4, r0, r4
	mov sl, r4
	adds r0, r3, #0
	adds r0, #0xc
	add r0, sl
	str r0, [sp, #8]
	adds r0, r3, #0
	adds r0, #0x14
	add r0, sl
	str r0, [sp, #0xc]
	adds r0, r3, #0
	adds r0, #0x24
	add r0, sl
	str r0, [sp, #0x10]
_080568A4:
	ldr r0, [sp, #4]
	adds r0, #8
	add r0, sl
	ldr r0, [r0, #0]
	lsrs r0, r0, #1
	mov r8, r0
	ldr r1, [sp, #8]
	ldr r0, [r1, #0]
	lsrs r6, r0, #1
	ldr r2, _080568C4
	mov r9, r2
	b _080568E2
_080568BC: .4byte gUnk_03005CF4
_080568C0: .4byte gUnk_084B23A8
_080568C4: .4byte gUnk_03003D70
_080568C8:
	mov r7, r8
	adds r0, r1, r7
	cmp r4, r0
	bhi _08056934
	adds r0, r5, #4
	adds r0, r2, r0
	ldr r1, [r0, #0]
	subs r0, r1, r6
	cmp r3, r0
	blo _08056934
	adds r0, r1, r6
	cmp r3, r0
	bhi _08056934
_080568E2:
	movs r4, #1
	b _080568F0
_080568E6:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080568FC
_080568F0:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080568E6
_080568FC:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r2, _08056940
	adds r0, r0, r2
	ldr r0, [r0, #0]
	asrs r4, r0, #8
	bl sub_080020F4
	movs r3, #0xa6
	lsls r3, r3, #1
	muls r0, r3, r0
	add r0, r9
	ldr r0, [r0, #0]
	asrs r3, r0, #8
	ldr r5, _08056944
	ldr r7, [sp, #0]
	movs r0, #0x2c
	adds r2, r7, #0
	muls r2, r0, r2
	adds r0, r2, r5
	ldr r1, [r0, #0]
	mov r7, r8
	subs r0, r1, r7
	cmp r4, r0
	bhs _080568C8
_08056934:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r9, r0
_0805693A:
	movs r4, #1
	b _08056952
	.2byte 0x0000
_08056940: .4byte gUnk_03003D6C
_08056944: .4byte gUnk_084B23A8
_08056948:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0805695E
_08056952:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08056948
_0805695E:
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _080569EC
	adds r0, r0, r2
	ldr r0, [r0, #0]
	asrs r4, r0, #8
	bl sub_080020F4
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r7, _080569F0
	adds r0, r0, r7
	ldr r0, [r0, #0]
	asrs r3, r0, #8
	ldr r7, _080569F4
	ldr r0, [sp, #0]
	movs r1, #0x2c
	adds r5, r0, #0
	muls r5, r1, r5
	adds r0, r5, r7
	ldr r1, [r0, #0]
	mov r2, r8
	subs r0, r1, r2
	cmp r4, r0
	blo _0805693A
	adds r0, r1, r2
	cmp r4, r0
	bhi _0805693A
	adds r0, r7, #4
	adds r0, r5, r0
	ldr r1, [r0, #0]
	subs r0, r1, r6
	cmp r3, r0
	blo _0805693A
	adds r0, r1, r6
	cmp r3, r0
	bhi _0805693A
	bl sub_0800CCCC
	adds r4, r0, #0
	cmp r4, #1
	bne _080569BC
	b _08056C9E
_080569BC:
	adds r2, r7, #0
	adds r1, r5, #0
	adds r0, r2, #0
	adds r0, #0x20
	adds r0, r1, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08056A1C
	adds r0, r2, #0
	adds r0, #0x1c
	adds r0, r1, r0
	ldr r5, [r0, #0]
	lsrs r4, r5, #3
	movs r0, #7
	ands r5, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08056A00
	ldr r0, _080569F8
	ldr r0, [r0, #0]
	ldr r3, _080569FC
	adds r0, r0, r3
	b _08056A08
_080569EC: .4byte gUnk_03003D6C
_080569F0: .4byte gUnk_03003D70
_080569F4: .4byte gUnk_084B23A8
_080569F8: .4byte gUnk_03005CF4
_080569FC: .4byte 0x000001C3
_08056A00:
	ldr r0, _08056A14
	ldr r0, [r0, #0]
	ldr r7, _08056A18
	adds r0, r0, r7
_08056A08:
	adds r0, r0, r4
	ldrb r4, [r0, #0]
	asrs r4, r5
	movs r0, #1
	ands r4, r0
	b _08056A38
_08056A14: .4byte gUnk_03005CF4
_08056A18: .4byte 0x000001B7
_08056A1C:
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r5, r0
	ldr r2, [r0, #0]
	ldr r0, _08056A98
	ldr r1, [r0, #0]
	movs r0, #1
	lsls r0, r2
	ldr r1, [r1, #0x38]
	ands r1, r0
	cmp r1, #0
	beq _08056A36
	movs r1, #1
_08056A36:
	adds r4, r1, #0
_08056A38:
	cmp r4, #0
	beq _08056A3E
	b _08056C9E
_08056A3E:
	ldr r1, [sp, #4]
	adds r1, #0x10
	mov r2, sl
	adds r0, r2, r1
	ldr r5, [r0, #0]
	ldr r3, [sp, #0xc]
	ldr r4, [r3, #0]
	movs r3, #0
	movs r2, #0
	adds r6, r1, #0
	subs r6, #0x10
	ldr r0, _08056A9C
	ldr r0, [r0, #0]
	movs r7, #0xa8
	lsls r7, r7, #1
	adds r1, r0, r7
_08056A5E:
	ldrh r0, [r1, #0]
	cmp r0, r5
	bne _08056A6C
	ldrh r0, [r1, #2]
	cmp r0, r4
	bne _08056A6C
	adds r3, #1
_08056A6C:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _08056A5E
	adds r0, r6, #0
	adds r0, #0x18
	add r0, sl
	ldr r0, [r0, #0]
	cmp r3, r0
	bhs _08056A82
	b _08056C50
_08056A82:
	bl sub_080020F4
	mov r8, r0
	ldr r0, _08056AA0
	mov r1, r8
	bl sub_08068070
	ldr r5, _08056A98
_08056A92:
	movs r4, #1
	b _08056AAE
	.2byte 0x0000
_08056A98: .4byte gUnk_03005CF4
_08056A9C: .4byte gUnk_030034E0
_08056AA0: .4byte sub_08056CB4
_08056AA4:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08056ABA
_08056AAE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08056AA4
_08056ABA:
	bl sub_0800CE30
	cmp r0, #0
	beq _08056AD0
	ldr r0, [r5, #0]
	ldr r1, _08056ACC
	adds r0, r0, r1
	b _08056AD6
	.2byte 0x0000
_08056ACC: .4byte 0x000001C1
_08056AD0:
	ldr r0, [r5, #0]
	ldr r2, _08056B20
	adds r0, r0, r2
_08056AD6:
	ldrb r0, [r0, #0]
	ldr r2, _08056B24
	adds r6, r0, #0
	cmp r6, #7
	ble _08056A92
	movs r0, #3
	ands r6, r0
	cmp r6, r8
	beq _08056AEA
	b _08056C9E
_08056AEA:
	ldr r3, _08056B28
	ldr r4, [sp, #0]
	movs r7, #0x2c
	adds r1, r4, #0
	muls r1, r7, r1
	adds r0, r3, #0
	adds r0, #0x20
	adds r0, r1, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08056B4C
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r1, r0
	ldr r5, [r0, #0]
	lsrs r4, r5, #3
	movs r0, #7
	ands r5, r0
	bl sub_0800CE30
	cmp r0, #0
	beq _08056B30
	ldr r0, _08056B24
	ldr r0, [r0, #0]
	ldr r1, _08056B2C
	adds r0, r0, r1
	b _08056B38
_08056B20: .4byte 0x000001B5
_08056B24: .4byte gUnk_03005CF4
_08056B28: .4byte gUnk_084B23A8
_08056B2C: .4byte 0x000001C3
_08056B30:
	ldr r0, _08056B44
	ldr r0, [r0, #0]
	ldr r2, _08056B48
	adds r0, r0, r2
_08056B38:
	adds r0, r0, r4
	ldrb r4, [r0, #0]
	asrs r4, r5
	movs r0, #1
	ands r4, r0
	b _08056B66
_08056B44: .4byte gUnk_03005CF4
_08056B48: .4byte 0x000001B7
_08056B4C:
	adds r0, r3, #0
	adds r0, #0x1c
	adds r0, r1, r0
	ldr r1, [r0, #0]
	ldr r2, [r2, #0]
	movs r0, #1
	lsls r0, r1
	ldr r1, [r2, #0x38]
	ands r1, r0
	cmp r1, #0
	beq _08056B64
	movs r1, #1
_08056B64:
	adds r4, r1, #0
_08056B66:
	cmp r4, #0
	beq _08056B8C
	bl sub_0800CE30
	adds r1, r0, #0
	cmp r1, #0
	beq _08056B76
	b _08056844
_08056B76:
	ldr r0, _08056B84
	ldr r0, [r0, #0]
	ldr r3, _08056B88
	adds r0, r0, r3
	strb r1, [r0, #0]
	b _08056C9E
	.2byte 0x0000
_08056B84: .4byte gUnk_03005CF4
_08056B88: .4byte 0x000001B5
_08056B8C:
	ldr r0, _08056C18
	movs r1, #0
	bl sub_08068070
	movs r4, #5
	bl sub_080020F4
	movs r7, #0xa6
	lsls r7, r7, #1
	muls r0, r7, r0
	ldr r1, _08056C1C
	adds r0, r0, r1
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r4, [r0, #0]
	ldr r0, [sp, #4]
	adds r0, #0x10
	add r0, sl
	ldr r1, [sp, #4]
	adds r1, #0x18
	add r1, sl
	ldr r7, [r0, #0]
	ldr r3, [sp, #0xc]
	ldr r6, [r3, #0]
	ldr r3, [r1, #0]
	movs r4, #0
	ldr r0, _08056C20
	mov r8, r0
	movs r5, #0
_08056BC8:
	mov r1, r8
	ldr r0, [r1, #0]
	lsls r1, r4, #4
	adds r1, r0, r1
	movs r0, #0xa8
	lsls r0, r0, #1
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	cmp r0, r7
	bne _08056BF2
	movs r0, #0xa9
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	cmp r0, r6
	bne _08056BF2
	subs r3, #1
	strh r5, [r2, #0]
	strh r5, [r1, #0]
	cmp r3, #0
	beq _08056BF8
_08056BF2:
	adds r4, #1
	cmp r4, #0x18
	bls _08056BC8
_08056BF8:
	ldr r0, [sp, #4]
	adds r0, #0x1c
	add r0, sl
	ldr r4, [r0, #0]
	ldr r0, [sp, #4]
	adds r0, #0x20
	add r0, sl
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08056C28
	ldr r0, _08056C24
	adds r1, r4, #0
	bl sub_08068070
	b _08056C30
	.2byte 0x0000
_08056C18: .4byte sub_0805A43C
_08056C1C: .4byte gUnk_03003CE0
_08056C20: .4byte gUnk_030034E0
_08056C24: .4byte sub_0805990C
_08056C28:
	ldr r0, _08056C48
	adds r1, r4, #0
	bl sub_08068070
_08056C30:
	ldr r0, [sp, #4]
	adds r0, #0x28
	add r0, sl
	ldr r1, [r0, #0]
	adds r1, #5
	ldr r3, [sp, #0x10]
	ldr r2, [r3, #0]
	ldr r0, _08056C4C
	bl sub_08068820
	b _08056C9E
	.2byte 0x0000
_08056C48: .4byte sub_08059954
_08056C4C: .4byte sub_0805A474
_08056C50:
	ldr r0, _08056C7C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08056C62
	movs r0, #0x61
	bl sub_08006D08
_08056C62:
	movs r4, #6
	bl sub_080020F4
	movs r7, #0xa6
	lsls r7, r7, #1
	muls r0, r7, r0
	ldr r1, _08056C80
	adds r0, r0, r1
	movs r2, #0x8f
	lsls r2, r2, #1
	adds r0, r0, r2
	strh r4, [r0, #0]
	b _080568A4
_08056C7C: .4byte gUnk_030027D0
_08056C80: .4byte gUnk_03003CE0
_08056C84:
	movs r0, #0x2c
	ldr r3, [sp, #0]
	muls r0, r3, r0
	adds r1, r6, #0
	adds r1, #0x28
	adds r0, r0, r1
	ldr r0, [r0, #0]
	adds r0, #5
	ldr r2, _08056CB0
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
_08056C9E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08056CB0: .4byte 0x0000270F
	thumb_func_end sub_080567D4
