	thumb_func_start sub_080605D0
sub_080605D0: @ 0x080605D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x10]
	ldr r0, _0806060C
	ldr r0, [r0, #0]
	str r0, [sp, #0x14]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08060610
	adds r1, r1, r0
	str r1, [sp, #0x18]
	movs r0, #1
	str r0, [sp, #0x24]
	adds r0, r1, #0
	adds r0, #0x77
	ldrb r0, [r0, #0]
	str r0, [sp, #0x28]
	adds r0, r1, #0
	adds r0, #0x78
	ldrb r0, [r0, #0]
	str r0, [sp, #0x2c]
	b _08060D78
	.2byte 0x0000
_0806060C: .4byte gUnk_030034E0
_08060610: .4byte gUnk_03003CE0
_08060614:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _08060644
	ldr r0, _08060654
	bl sub_080003F4
	ldr r0, [sp, #0x14]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x57
	bl sub_0805865C
	bl sub_080003F0
	bl sub_0800CB78
	cmp r0, #0
	beq _08060644
	b _08060D82
_08060644:
	movs r2, #8
	str r2, [sp, #0x1c]
	movs r3, #0x3c
	str r3, [sp, #0x20]
	ldr r4, _08060658
	str r4, [sp, #0x30]
	b _08060A4A
	.2byte 0x0000
_08060654: .4byte 0x00018A92
_08060658: .4byte gUnk_03005740
_0806065C:
	ldr r7, _0806070C
	adds r0, r6, r7
	lsrs r1, r0, #0x10
	str r1, [sp, #0x1c]
	cmp r0, #0
	bge _0806066C
	movs r2, #0
	str r2, [sp, #0x1c]
_0806066C:
	ldr r0, _08060710
	ldrh r2, [r0, #0]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08060680
	movs r7, #1
	str r7, [sp, #0x24]
_08060680:
	ldr r0, [sp, #0x18]
	adds r0, #0x77
	ldrb r1, [r0, #0]
	mov r8, r0
	ldr r0, [sp, #0x28]
	cmp r0, r1
	beq _08060694
	str r1, [sp, #0x28]
	movs r1, #1
	str r1, [sp, #0x24]
_08060694:
	ldr r0, [sp, #0x18]
	adds r0, #0x78
	ldrb r0, [r0, #0]
	ldr r3, [sp, #0x2c]
	cmp r3, r0
	beq _080606A6
	str r0, [sp, #0x2c]
	movs r7, #1
	str r7, [sp, #0x24]
_080606A6:
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ands r0, r2
	ldr r2, [sp, #0x14]
	adds r2, #0x68
	mov sl, r2
	cmp r0, #0
	beq _08060734
	ldr r3, [sp, #0x18]
	ldrh r0, [r3, #0x20]
	cmp r0, #5
	beq _08060720
	cmp r0, #2
	beq _08060720
	ldrh r0, [r2, #0]
	adds r0, #1
	strh r0, [r2, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r7, r8
	ldrb r7, [r7, #0]
	cmp r0, r7
	blo _080606D8
	strh r4, [r2, #0]
_080606D8:
	mov r1, sl
	ldrh r0, [r1, #0]
	bl sub_0805AD78
	ldr r0, [sp, #0x18]
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #1
	bls _080606F6
	ldr r2, [sp, #0x18]
	ldr r0, [r2, #0x30]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r2, #0x30]
_080606F6:
	movs r3, #0x3c
	str r3, [sp, #0x20]
	ldr r7, [sp, #0x18]
	strh r4, [r7, #0x26]
	strh r4, [r7, #0x24]
	ldrh r0, [r7, #0x20]
	cmp r0, #3
	beq _08060714
	cmp r0, #4
	beq _0806071A
	b _08060720
_0806070C: .4byte 0xFFFE0000
_08060710: .4byte gUnk_03001324
_08060714:
	ldr r0, [sp, #0x18]
	strh r4, [r0, #0x20]
	b _08060720
_0806071A:
	movs r0, #1
	ldr r1, [sp, #0x18]
	strh r0, [r1, #0x20]
_08060720:
	mov r2, sl
	ldrh r0, [r2, #0]
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0x57
	bl sub_0805865C
_08060734:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	bne _08060742
	ldr r4, [sp, #0x24]
	cmp r4, #0
	bne _08060742
	b _080608E0
_08060742:
	movs r0, #2
	movs r1, #4
	bl sub_0801A664
	ldr r7, [sp, #0x1c]
	lsls r0, r7, #0x10
	lsrs r2, r0, #0x10
	lsls r4, r2, #0x10
	asrs r1, r4, #0x10
	adds r6, r0, #0
	cmp r1, #7
	bgt _080607BA
	ldr r5, _080607EC
	asrs r0, r6, #0x10
	str r0, [sp, #0x34]
	ldr r1, _080607F0
	mov ip, r1
	movs r2, #0x30
	add r2, ip
	mov r9, r2
_0806076A:
	asrs r4, r4, #0x10
	ldr r3, [sp, #0x34]
	subs r2, r4, r3
	lsls r2, r2, #1
	ldr r7, _080607F4
	adds r1, r2, r7
	lsls r3, r4, #1
	mov r7, ip
	adds r0, r3, r7
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	adds r1, r5, #0
	adds r1, #0xc0
	adds r1, r2, r1
	mov r0, ip
	adds r0, #0x10
	adds r0, r3, r0
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r0, _080607F8
	adds r1, r2, r0
	mov r0, ip
	adds r0, #0x20
	adds r0, r3, r0
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r2, r2, r0
	add r3, r9
	ldrh r0, [r3, #0]
	strh r0, [r2, #0]
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	lsls r4, r2, #0x10
	asrs r0, r4, #0x10
	cmp r0, #7
	ble _0806076A
_080607BA:
	mov r3, r8
	ldrb r1, [r3, #0]
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _0806082C
	mov r4, sl
	ldrh r0, [r4, #0]
	cmp r0, #2
	bhi _08060804
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r7, _080607F4
	adds r2, r0, r7
	ldr r1, _080607FC
	strh r1, [r2, #0]
	ldr r1, [sp, #0x30]
	adds r1, #0xc0
	adds r0, r0, r1
	ldr r1, _08060800
	b _080608D2
_080607EC: .4byte gUnk_03005740
_080607F0: .4byte gUnk_084EBD7C
_080607F4: .4byte gUnk_030057C0
_080607F8: .4byte gUnk_03005840
_080607FC: .4byte 0x0000F032
_08060800: .4byte 0x0000F052
_08060804:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08060820
	adds r2, r0, r1
	ldr r1, _08060824
	strh r1, [r2, #0]
	ldr r1, [sp, #0x30]
	adds r1, #0xc0
	adds r0, r0, r1
	ldr r1, _08060828
	b _080608D2
_08060820: .4byte gUnk_030057C0
_08060824: .4byte 0x0000F033
_08060828: .4byte 0x0000F053
_0806082C:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _080608D4
	mov r3, sl
	ldrh r0, [r3, #0]
	cmp r0, #2
	bhi _08060874
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r4, _08060860
	adds r2, r0, r4
	ldr r1, _08060864
	strh r1, [r2, #0]
	ldr r1, [sp, #0x30]
	adds r1, #0xc0
	adds r1, r0, r1
	ldr r2, _08060868
	strh r2, [r1, #0]
	ldr r7, _0806086C
	adds r0, r0, r7
	ldr r1, _08060870
	b _080608D2
_08060860: .4byte gUnk_030057C0
_08060864: .4byte 0x0000F034
_08060868: .4byte 0x0000F054
_0806086C: .4byte gUnk_03005840
_08060870: .4byte 0x0000F074
_08060874:
	cmp r0, #5
	bhi _080608B0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0806089C
	adds r2, r0, r1
	ldr r1, _080608A0
	strh r1, [r2, #0]
	ldr r1, [sp, #0x30]
	adds r1, #0xc0
	adds r1, r0, r1
	ldr r2, _080608A4
	strh r2, [r1, #0]
	ldr r2, _080608A8
	adds r0, r0, r2
	ldr r1, _080608AC
	b _080608D2
_0806089C: .4byte gUnk_030057C0
_080608A0: .4byte 0x0000F035
_080608A4: .4byte 0x0000F055
_080608A8: .4byte gUnk_03005840
_080608AC: .4byte 0x0000F075
_080608B0:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _08060A70
	adds r2, r0, r3
	ldr r1, _08060A74
	strh r1, [r2, #0]
	ldr r1, [sp, #0x30]
	adds r1, #0xc0
	adds r1, r0, r1
	ldr r2, _08060A78
	strh r2, [r1, #0]
	ldr r4, _08060A7C
	adds r0, r0, r4
	ldr r1, _08060A80
_080608D2:
	strh r1, [r0, #0]
_080608D4:
	ldr r7, [sp, #0x1c]
	lsls r0, r7, #0x10
	cmp r0, #0
	bgt _080608E0
	movs r0, #0
	str r0, [sp, #0x24]
_080608E0:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _080608EE
	movs r2, #0x3c
	str r2, [sp, #0x20]
	movs r3, #0
	str r3, [sp, #0x1c]
_080608EE:
	mov r4, sl
	ldrh r0, [r4, #0]
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r4, r1, #0x10
	movs r7, #0xc0
	lsls r7, r7, #0xa
	adds r0, r4, r7
	lsrs r5, r0, #0x10
	ldr r0, [sp, #0x1c]
	lsls r6, r0, #0x10
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq _08060966
	lsls r0, r5, #0x10
	adds r7, r4, #0
	adds r5, r0, #0
	cmp r4, r5
	bge _08060960
	asrs r1, r6, #0x10
	movs r0, #7
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r9, r0
_0806092E:
	asrs r4, r4, #0x10
	asrs r1, r7, #0x10
	subs r1, r4, r1
	lsls r1, r1, #2
	ldr r2, _08060A84
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r0, r9
	ldr r2, _08060A88
	adds r1, r1, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x10
	lsls r2, r4, #4
	adds r2, #0x70
	ldr r3, [sp, #0x14]
	adds r2, r3, r2
	movs r3, #8
	bl sub_0805FC80
	adds r4, #1
	lsls r4, r4, #0x10
	cmp r4, r5
	blt _0806092E
_08060960:
	ldr r4, [sp, #0x10]
	cmp r4, #0
	bne _0806098E
_08060966:
	ldr r2, _08060A8C
	ldr r0, [r2, #0]
	ldr r1, [r0, #0x28]
	movs r0, #1
	ands r1, r0
	mov r0, r8
	lsls r7, r0, #0x10
	cmp r1, #0
	beq _0806098E
	movs r1, #1
	str r1, [sp, #0x24]
	adds r4, r2, #0
_0806097E:
	bl sub_080003F0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x28]
	ldr r2, [sp, #0x24]
	ands r0, r2
	cmp r0, #0
	bne _0806097E
_0806098E:
	asrs r1, r6, #0x10
	movs r0, #7
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r3, sl
	ldrh r1, [r3, #0]
	asrs r2, r7, #0x10
	subs r1, r1, r2
	lsls r1, r1, #2
	ldr r4, _08060A84
	adds r2, r1, r4
	movs r7, #0
	ldrsh r2, [r2, r7]
	ldr r3, _08060A88
	adds r1, r1, r3
	movs r4, #0
	ldrsh r1, [r1, r4]
	ldr r3, _08060A90
	adds r0, r0, r2
	subs r0, #1
	adds r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	adds r2, r3, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3, #0]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08007CF0
	bl sub_080003F0
	bl sub_0800CD34
	cmp r0, #0
	beq _080609E0
	b _08060D34
_080609E0:
	ldr r7, [sp, #0x10]
	cmp r7, #0
	beq _08060A4A
	bl sub_08058DB0
	cmp r0, #0
	beq _080609F0
	b _08060D34
_080609F0:
	bl sub_0800D11C
	cmp r0, #0
	beq _080609FA
	b _08060D34
_080609FA:
	bl sub_0800CC98
	cmp r0, #0
	beq _08060A04
	b _08060D34
_08060A04:
	bl sub_0800D060
	cmp r0, #0
	beq _08060A0E
	b _08060D34
_08060A0E:
	bl sub_08056E90
	cmp r0, #0
	beq _08060A18
	b _08060D34
_08060A18:
	ldr r1, [sp, #0x18]
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08060A28
	b _08060D34
_08060A28:
	ldr r2, [sp, #0x18]
	ldrh r0, [r2, #0x20]
	cmp r0, #0xc
	bne _08060A32
	b _08060D34
_08060A32:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08060A4A
	ldr r0, _08060A94
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08060A4A
	b _08060D34
_08060A4A:
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	ldr r3, _08060A98
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0x20]
	lsls r1, r1, #0x10
	ldr r4, [sp, #0x1c]
	lsls r6, r4, #0x10
	cmp r1, #0
	bgt _08060A62
	b _08060D34
_08060A62:
	bl sub_0800CB78
	adds r4, r0, #0
	cmp r4, #0
	bne _08060A6E
	b _0806065C
_08060A6E:
	b _08060D34
_08060A70: .4byte gUnk_030057C0
_08060A74: .4byte 0x0000F036
_08060A78: .4byte 0x0000F056
_08060A7C: .4byte gUnk_03005840
_08060A80: .4byte 0x0000F076
_08060A84: .4byte gUnk_084EBDBC
_08060A88: .4byte gUnk_084EBDBE
_08060A8C: .4byte gUnk_03006440
_08060A90: .4byte gUnk_03005D80
_08060A94: .4byte gUnk_03005CF4
_08060A98: .4byte 0xFFFF0000
_08060A9C:
	ldr r7, [sp, #0x18]
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08060AAC
	b _08060D6C
_08060AAC:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xc
	bne _08060AB4
	b _08060D6C
_08060AB4:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08060ACC
	ldr r0, _08060B94
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08060ACC
	b _08060D6C
_08060ACC:
	bl sub_0800CD34
	cmp r0, #0
	beq _08060AD6
	b _08060D6C
_08060AD6:
	ldr r1, [sp, #0x1c]
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #0xa
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x1c]
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08060AEE
	movs r4, #8
	str r4, [sp, #0x1c]
_08060AEE:
	ldr r7, [sp, #0x1c]
	lsls r0, r7, #0x10
	lsrs r2, r0, #0x10
	lsls r3, r2, #0x10
	asrs r1, r3, #0x10
	ldr r4, [sp, #0x18]
	adds r4, #0x77
	mov r8, r4
	ldr r7, [sp, #0x14]
	adds r7, #0x68
	mov sl, r7
	adds r6, r0, #0
	cmp r1, #7
	bgt _08060B68
	ldr r5, _08060B98
	asrs r0, r6, #0x10
	str r0, [sp, #0x34]
	ldr r1, _08060B9C
	mov ip, r1
	movs r2, #0x30
	add r2, ip
	mov r9, r2
_08060B1A:
	asrs r3, r3, #0x10
	ldr r4, [sp, #0x34]
	subs r1, r3, r4
	lsls r1, r1, #1
	ldr r7, _08060BA0
	adds r4, r1, r7
	lsls r2, r3, #1
	mov r7, ip
	adds r0, r2, r7
	ldrh r0, [r0, #0]
	strh r0, [r4, #0]
	ldr r0, _08060BA4
	adds r4, r1, r0
	mov r0, ip
	adds r0, #0x10
	adds r0, r2, r0
	ldrh r0, [r0, #0]
	strh r0, [r4, #0]
	ldr r7, _08060BA8
	adds r4, r1, r7
	mov r0, ip
	adds r0, #0x20
	adds r0, r2, r0
	ldrh r0, [r0, #0]
	strh r0, [r4, #0]
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r0, r5, r4
	adds r1, r1, r0
	add r2, r9
	ldrh r0, [r2, #0]
	strh r0, [r1, #0]
	adds r3, #1
	lsls r3, r3, #0x10
	lsrs r2, r3, #0x10
	lsls r3, r2, #0x10
	asrs r0, r3, #0x10
	cmp r0, #7
	ble _08060B1A
_08060B68:
	mov r7, r8
	ldrb r1, [r7, #0]
	subs r0, r1, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08060BDC
	mov r1, sl
	ldrh r0, [r1, #0]
	cmp r0, #2
	bhi _08060BB0
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _08060BA0
	adds r2, r0, r3
	ldr r1, _08060BAC
	strh r1, [r2, #0]
	ldr r4, _08060BA4
	b _08060C74
_08060B94: .4byte gUnk_03005CF4
_08060B98: .4byte gUnk_03005740
_08060B9C: .4byte gUnk_084EBD7C
_08060BA0: .4byte gUnk_030057C0
_08060BA4: .4byte gUnk_03005800
_08060BA8: .4byte gUnk_03005840
_08060BAC: .4byte 0x0000F032
_08060BB0:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r7, _08060BCC
	adds r2, r0, r7
	ldr r1, _08060BD0
	strh r1, [r2, #0]
	ldr r1, _08060BD4
	adds r0, r0, r1
	ldr r1, _08060BD8
	b _08060C78
	.2byte 0x0000
_08060BCC: .4byte gUnk_030057C0
_08060BD0: .4byte 0x0000F033
_08060BD4: .4byte gUnk_03005800
_08060BD8: .4byte 0x0000F053
_08060BDC:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bls _08060C7A
	mov r3, sl
	ldrh r0, [r3, #0]
	cmp r0, #2
	bhi _08060C24
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r4, _08060C10
	adds r2, r0, r4
	ldr r1, _08060C14
	strh r1, [r2, #0]
	ldr r7, _08060C18
	adds r2, r0, r7
	adds r1, #0x20
	strh r1, [r2, #0]
	ldr r1, _08060C1C
	adds r0, r0, r1
	ldr r1, _08060C20
	b _08060C78
	.2byte 0x0000
_08060C10: .4byte gUnk_030057C0
_08060C14: .4byte 0x0000F034
_08060C18: .4byte gUnk_03005800
_08060C1C: .4byte gUnk_03005840
_08060C20: .4byte 0x0000F074
_08060C24:
	cmp r0, #5
	bhi _08060C58
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r3, _08060C48
	adds r2, r0, r3
	ldr r1, _08060C4C
	strh r1, [r2, #0]
	ldr r4, _08060C50
	adds r2, r0, r4
	adds r1, #0x20
	strh r1, [r2, #0]
	ldr r7, _08060C54
	adds r0, r0, r7
	b _08060C76
_08060C48: .4byte gUnk_030057C0
_08060C4C: .4byte 0x0000F035
_08060C50: .4byte gUnk_03005800
_08060C54: .4byte gUnk_03005840
_08060C58:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	subs r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08060D94
	adds r2, r0, r1
	ldr r1, _08060D98
	strh r1, [r2, #0]
	ldr r3, _08060D9C
	adds r2, r0, r3
	adds r1, #0x20
	strh r1, [r2, #0]
	ldr r4, _08060DA0
_08060C74:
	adds r0, r0, r4
_08060C76:
	adds r1, #0x20
_08060C78:
	strh r1, [r0, #0]
_08060C7A:
	movs r0, #2
	movs r1, #4
	bl sub_0801A664
	mov r7, sl
	ldrh r0, [r7, #0]
	movs r1, #3
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #0xa
	adds r1, r0, r3
	adds r4, r0, #0
	lsrs r5, r1, #0x10
	cmp r4, r1
	bge _08060CEA
	asrs r1, r6, #0x10
	movs r0, #7
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r9, r0
	adds r7, r2, #0
_08060CB8:
	asrs r4, r4, #0x10
	subs r1, r4, r7
	lsls r1, r1, #2
	ldr r2, _08060DA4
	adds r0, r1, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	add r0, r9
	ldr r2, _08060DA8
	adds r1, r1, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r1, #0x10
	lsls r2, r4, #4
	adds r2, #0x70
	ldr r3, [sp, #0x14]
	adds r2, r3, r2
	movs r3, #8
	bl sub_0805FC80
	adds r4, #1
	lsls r4, r4, #0x10
	lsls r0, r5, #0x10
	cmp r4, r0
	blt _08060CB8
_08060CEA:
	asrs r1, r6, #0x10
	movs r0, #7
	subs r0, r0, r1
	lsls r0, r0, #3
	mov r4, sl
	ldrh r2, [r4, #0]
	mov r7, r8
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r2, r2, r1
	lsls r2, r2, #2
	ldr r3, _08060DA4
	adds r1, r2, r3
	movs r7, #0
	ldrsh r4, [r1, r7]
	ldr r1, _08060DA8
	adds r2, r2, r1
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r3, _08060DAC
	adds r0, r0, r4
	adds r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	adds r2, r3, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3, #0]
	str r2, [sp, #0xc]
	movs r2, #7
	movs r3, #0
	bl sub_08007CF0
	bl sub_080003F0
_08060D34:
	asrs r0, r6, #0x10
	cmp r0, #7
	bgt _08060D6C
	ldr r4, [sp, #0x10]
	cmp r4, #0
	bne _08060D42
	b _08060ACC
_08060D42:
	bl sub_08058DB0
	cmp r0, #0
	bne _08060D6C
	bl sub_0800D11C
	cmp r0, #0
	bne _08060D6C
	bl sub_0800CC98
	cmp r0, #0
	bne _08060D6C
	bl sub_08056E90
	cmp r0, #0
	bne _08060D6C
	bl sub_0800D060
	cmp r0, #0
	bne _08060D6C
	b _08060A9C
_08060D6C:
	bl sub_080003F0
	movs r0, #2
	movs r1, #4
	bl sub_0801A664
_08060D78:
	bl sub_0800CB78
	cmp r0, #0
	bne _08060D82
	b _08060614
_08060D82:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08060D94: .4byte gUnk_030057C0
_08060D98: .4byte 0x0000F036
_08060D9C: .4byte gUnk_03005800
_08060DA0: .4byte gUnk_03005840
_08060DA4: .4byte gUnk_084EBDBC
_08060DA8: .4byte gUnk_084EBDBE
_08060DAC: .4byte gUnk_03005D80
	thumb_func_end sub_080605D0
