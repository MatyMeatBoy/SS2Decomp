	thumb_func_start sub_080226A4
sub_080226A4: @ 0x080226A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_080653CC
	adds r5, r0, #0
	bl sub_080020F4
	mov sl, r0
	ldr r3, _0802271C
	ldr r0, [r3, #0]
	movs r2, #0
	strh r2, [r0, #0]
	strh r2, [r0, #2]
	movs r1, #9
	strh r1, [r0, #8]
	str r2, [r0, #0x38]
	str r2, [r0, #0x48]
	ldr r1, _08022720
	str r1, [r0, #0x4c]
	strh r2, [r0, #0x36]
	movs r1, #1
	strh r1, [r0, #4]
	str r2, [r0, #0x44]
	str r2, [r0, #0x54]
	str r2, [r0, #0x6c]
	ldr r0, _08022724
	str r2, [r0, #0]
	mov r1, sp
	adds r1, #6
	strh r2, [r1, #0]
	add r0, sp, #4
	strh r2, [r0, #0]
	movs r6, #0
	adds r7, r1, #0
	movs r4, #0xfc
	lsls r4, r4, #3
	movs r1, #0
_080226F6:
	ldr r0, [r3, #0]
	adds r0, r0, r4
	adds r0, r0, r1
	str r2, [r0, #0]
	adds r1, #0x70
	adds r6, #1
	cmp r6, #0xe
	bls _080226F6
	movs r6, #0
	movs r1, #0
	ldr r0, _08022728
_0802270C:
	str r1, [r0, #8]
	str r1, [r0, #4]
	str r1, [r0, #0]
	adds r0, #0xc
	adds r6, #1
	cmp r6, #2
	bls _0802270C
	b _08022730
_0802271C: .4byte gUnk_03005CF4
_08022720: .4byte 0x00100001
_08022724: .4byte gUnk_03005CF8
_08022728: .4byte gUnk_03005700
_0802272C:
	bl sub_080003F0
_08022730:
	bl sub_08067C18
	cmp r0, #0
	beq _0802272C
	b _08022768
_0802273A:
	bl sub_0800CB9C
	cmp r0, #0
	beq _08022764
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r1, #0x21
	add r2, sp, #4
	adds r3, r7, #0
	bl sub_08065370
	add r0, sp, #4
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r1, #0x78
	movs r2, #0x64
	movs r3, #0x21
	bl sub_08065230
_08022764:
	bl sub_080003F0
_08022768:
	bl sub_08067C08
	cmp r0, #0
	beq _0802273A
	bl sub_08067BF8
	bl sub_08002204
	cmp r0, #0
	beq _08022780
	bl sub_08066624
_08022780:
	movs r0, #5
	bl sub_08057624
	b _0802278C
_08022788:
	bl sub_080003F0
_0802278C:
	bl sub_08067C18
	cmp r0, #0
	beq _08022788
	b _0802279A
_08022796:
	bl sub_080003F0
_0802279A:
	bl sub_08067C08
	cmp r0, #0
	beq _08022796
	bl sub_08067BF8
	bl sub_0800CB9C
	cmp r0, #0
	beq _080227F0
	movs r0, #7
	bl sub_08057AE8
	cmp r0, #0
	beq _080227BE
	movs r0, #0x15
	bl sub_08057A5C
_080227BE:
	movs r0, #0x15
	bl sub_08057AE8
	bl sub_0805C7B8
	movs r6, #0
	ldr r5, _080227EC
	movs r4, #0xf3
	lsls r4, r4, #1
	movs r2, #0
	movs r3, #0xf4
	lsls r3, r3, #1
_080227D6:
	ldr r0, [r5, #0]
	lsls r1, r6, #5
	adds r0, r0, r1
	adds r1, r0, r4
	strh r2, [r1, #0]
	adds r0, r0, r3
	strh r2, [r0, #0]
	adds r6, #1
	cmp r6, #0xf
	bls _080227D6
	b _08022800
_080227EC: .4byte gUnk_03004210
_080227F0:
	ldr r0, _08022828
	ldr r0, [r0, #0]
	ldr r1, _0802282C
	ldr r1, [r1, #0]
	adds r0, #0x70
	ldr r2, _08022830
	bl memcpy
_08022800:
	ldr r0, _08022828
	ldr r1, [r0, #0]
	ldr r0, _0802282C
	ldr r0, [r0, #0]
	adds r0, #0xda
	ldrh r0, [r0, #0]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r2, r1, r3
	strh r0, [r2, #0]
	ldr r0, [r1, #0x70]
	cmp r0, #4
	bls _0802281C
	b _08022E3E
_0802281C:
	lsls r0, r0, #2
	ldr r1, _08022834
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08022828: .4byte gUnk_03005CF4
_0802282C: .4byte gUnk_03004210
_08022830: .4byte 0x0000051C
_08022834: .4byte _08022838
_08022838:
	.4byte _0802284C
_0802283C: .4byte _0802294C
_08022840: .4byte _0802284C
_08022844: .4byte _080229A8
_08022848: .4byte _08022B3E
_0802284C:
	bl sub_08057170
	bl sub_080572A4
	bl sub_0800CE30
	cmp r0, #0
	beq _08022872
	movs r0, #0x27
	bl sub_08057AE8
	cmp r0, #0
	bne _08022872
	movs r0, #0x27
	bl sub_080579D8
	movs r0, #0
	bl sub_0805C7B8
_08022872:
	movs r0, #0
	movs r1, #4
	movs r2, #1
	bl sub_08023274
	ldr r4, _08022938
	ldr r1, [r4, #0]
	movs r0, #0
	strh r0, [r1, #0x36]
	bl sub_0800CCDC
	bl sub_08057C0C
	ldr r1, [r4, #0]
	str r0, [r1, #0x50]
	movs r6, #0
	ldr r3, _0802293C
	ldr r4, _08022940
	mov ip, r4
	mov r9, ip
_0802289A:
	ldr r1, [r3, #0]
	lsls r2, r6, #5
	mov r5, r9
	ldr r0, [r5, #0]
	adds r0, r0, r2
	adds r1, r2, r1
	movs r7, #0xee
	lsls r7, r7, #1
	adds r0, r0, r7
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	ldr r0, [r3, #0]
	adds r2, r2, r0
	ldrh r1, [r2, #8]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _080228CC
	strh r0, [r2, #0xa]
_080228CC:
	adds r6, #1
	cmp r6, #0xf
	bls _0802289A
	ldr r1, _08022944
	movs r0, #1
	strh r0, [r1, #0]
	movs r6, #0
	adds r4, r1, #0
	ldr r7, _0802293C
	mov r9, r7
_080228E0:
	mov r0, r9
	ldr r1, [r0, #0]
	lsls r2, r6, #5
	mov r3, ip
	ldr r0, [r3, #0]
	adds r0, r0, r2
	adds r1, r2, r1
	movs r5, #0xee
	lsls r5, r5, #1
	adds r0, r0, r5
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r3, r7}
	stm r1!, {r3, r7}
	mov r5, r9
	ldr r0, [r5, #0]
	adds r2, r2, r0
	ldrh r1, [r2, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802291C
	ldrh r2, [r2, #0xc]
	ldr r7, _08022944
	ldrh r7, [r7, #0]
	cmp r2, r7
	bls _0802291C
	strh r2, [r4, #0]
_0802291C:
	adds r6, #1
	cmp r6, #0xf
	bls _080228E0
	ldrh r0, [r4, #0]
	adds r0, #1
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	ldr r1, _08022948
	cmp r0, r1
	bhi _08022932
	b _08022E3E
_08022932:
	movs r0, #1
	strh r0, [r4, #0]
	b _08022E3E
_08022938: .4byte gUnk_03005CF4
_0802293C: .4byte gUnk_03005D58
_08022940: .4byte gUnk_03004210
_08022944: .4byte gUnk_03005D5C
_08022948: .4byte 0xFFFE0000
_0802294C:
	bl sub_08057170
	bl sub_080572A4
	movs r0, #0xc
	movs r1, #1
	bl sub_08022E60
	bl sub_0800CE30
	cmp r0, #0
	beq _0802297C
	movs r0, #0x27
	bl sub_08057AE8
	cmp r0, #0
	bne _08022982
	movs r0, #0x27
	bl sub_080579D8
	movs r0, #0
	bl sub_0805C7B8
	b _08022982
_0802297C:
	movs r0, #0
	bl sub_0805C7B8
_08022982:
	ldr r4, _080229A0
	ldr r1, [r4, #0]
	movs r2, #0
	movs r0, #1
	strh r0, [r1, #0x36]
	str r2, [r1, #0x70]
	bl sub_08057C0C
	ldr r1, [r4, #0]
	str r0, [r1, #0x50]
	adds r1, #0x8e
	ldr r0, _080229A4
	strh r0, [r1, #0]
	b _08022E3E
	.2byte 0x0000
_080229A0: .4byte gUnk_03005CF4
_080229A4: .4byte 0x0000FFFF
_080229A8:
	movs r0, #0
	movs r1, #4
	movs r2, #1
	bl sub_08023274
	ldr r5, _08022B10
	ldr r6, [r5, #0]
	movs r0, #0
	strh r0, [r6, #0x36]
	ldr r3, _08022B14
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r4, sl
	muls r4, r0, r4
	adds r0, r4, r3
	mov ip, r0
	mov r2, ip
	adds r2, #0xa4
	adds r0, r6, #0
	adds r0, #0xa0
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	str r1, [r2, #4]
	adds r0, r6, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	mov r1, ip
	strh r0, [r1, #0x2e]
	adds r0, r6, #0
	adds r0, #0x8e
	ldrh r0, [r0, #0]
	strh r0, [r1, #0x2c]
	adds r0, r6, #0
	adds r0, #0x90
	ldrh r1, [r0, #0]
	mov r0, ip
	adds r0, #0xc4
	strh r1, [r0, #0]
	adds r0, r6, #0
	adds r0, #0x92
	ldrh r0, [r0, #0]
	mov r1, ip
	adds r1, #0xc2
	strh r0, [r1, #0]
	adds r0, r6, #0
	adds r0, #0x94
	ldrh r1, [r0, #0]
	mov r0, ip
	adds r0, #0xc6
	strh r1, [r0, #0]
	movs r6, #0
	adds r3, #0x34
	adds r4, r4, r3
	mov r9, r4
	movs r2, #0
	adds r3, r5, #0
	mov ip, r3
	ldr r3, _08022B18
_08022A1E:
	mov r4, r9
	ldr r0, [r4, #0]
	mov r5, ip
	ldr r1, [r5, #0]
	adds r1, r1, r2
	adds r0, r2, r0
	adds r1, r1, r3
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	adds r2, #0x28
	adds r6, #1
	cmp r6, #7
	bls _08022A1E
	ldr r1, _08022B1C
	movs r0, #1
	strh r0, [r1, #0]
	movs r6, #0
	ldr r7, _08022B20
	mov ip, r7
	adds r4, r1, #0
	ldr r0, _08022B24
	mov r9, r0
_08022A56:
	ldr r2, _08022B28
	ldr r1, [r2, #0]
	lsls r2, r6, #5
	mov r3, ip
	ldr r0, [r3, #0]
	adds r0, r0, r2
	adds r1, r2, r1
	movs r5, #0xee
	lsls r5, r5, #1
	adds r0, r0, r5
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r3, r7}
	stm r1!, {r3, r7}
	ldr r5, _08022B28
	ldr r0, [r5, #0]
	adds r2, r2, r0
	ldrh r1, [r2, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08022A92
	ldrh r2, [r2, #0xc]
	ldr r7, _08022B1C
	ldrh r7, [r7, #0]
	cmp r2, r7
	bls _08022A92
	strh r2, [r4, #0]
_08022A92:
	adds r6, #1
	cmp r6, #0xf
	bls _08022A56
	ldrh r0, [r4, #0]
	adds r0, #1
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	ldr r1, _08022B2C
	cmp r0, r1
	bls _08022AAA
	movs r0, #1
	strh r0, [r4, #0]
_08022AAA:
	movs r6, #0
	ldr r4, _08022B10
	ldr r3, _08022B20
_08022AB0:
	ldr r1, [r4, #0]
	lsls r2, r6, #1
	adds r1, #0x22
	adds r1, r1, r2
	ldr r0, [r3, #0]
	adds r0, #0xdc
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	adds r6, #1
	cmp r6, #9
	bls _08022AB0
	ldr r0, _08022B10
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x9c
	ldr r0, [r0, #0]
	mov r1, r9
	str r0, [r1, #0]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r1, [r0, #0]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x98
	ldr r0, [r0, #0]
	str r0, [r2, #0x38]
	bl sub_08057C0C
	ldr r4, _08022B10
	ldr r1, [r4, #0]
	str r0, [r1, #0x50]
	bl sub_0800CDE4
	bl sub_0800CE54
	bl sub_08057314
	cmp r0, #0
	beq _08022B30
	bl sub_080267DC
	bl sub_0800CEFC
	b _08022B38
_08022B10: .4byte gUnk_03005CF4
_08022B14: .4byte gUnk_03003CE0
_08022B18: .4byte 0x0000044C
_08022B1C: .4byte gUnk_03005D5C
_08022B20: .4byte gUnk_03004210
_08022B24: .4byte gUnk_03003478
_08022B28: .4byte gUnk_03005D58
_08022B2C: .4byte 0xFFFE0000
_08022B30:
	mov r0, sl
	movs r1, #1
	bl sub_080657C4
_08022B38:
	bl sub_0800CCCC
	b _08022E3E
_08022B3E:
	ldr r4, _08022BF8
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	adds r1, #0x8e
	ldrh r1, [r1, #0]
	bl sub_0802A228
	ldr r1, _08022BFC
	ldr r0, [r4, #0]
	adds r0, #0x9c
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r1, _08022C00
	movs r0, #1
	strh r0, [r1, #0]
	movs r6, #0
	ldr r3, _08022C04
_08022B64:
	ldr r1, [r3, #0]
	lsls r2, r6, #5
	ldr r0, _08022C08
	ldr r0, [r0, #0]
	adds r0, r0, r2
	adds r1, r2, r1
	movs r5, #0xee
	lsls r5, r5, #1
	adds r0, r0, r5
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r4, r7}
	stm r1!, {r4, r7}
	ldr r0, [r3, #0]
	adds r2, r2, r0
	ldrh r1, [r2, #0xa]
	movs r0, #1
	ands r0, r1
	ldr r4, _08022C00
	cmp r0, #0
	beq _08022B9C
	ldrh r2, [r2, #0xc]
	ldrh r0, [r4, #0]
	cmp r2, r0
	bls _08022B9C
	strh r2, [r4, #0]
_08022B9C:
	adds r6, #1
	cmp r6, #0xf
	bls _08022B64
	ldrh r0, [r4, #0]
	adds r0, #1
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	ldr r1, _08022C0C
	cmp r0, r1
	bls _08022BB4
	movs r0, #1
	strh r0, [r4, #0]
_08022BB4:
	movs r6, #0
	ldr r4, _08022BF8
	ldr r3, _08022C08
_08022BBA:
	ldr r1, [r4, #0]
	lsls r2, r6, #1
	adds r1, #0x22
	adds r1, r1, r2
	ldr r0, [r3, #0]
	adds r0, #0xdc
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	adds r6, #1
	cmp r6, #9
	bls _08022BBA
	movs r6, #0
	ldr r5, _08022BF8
	movs r4, #0x8b
	lsls r4, r4, #2
	ldr r3, _08022C08
	movs r2, #0xde
	lsls r2, r2, #1
_08022BE0:
	ldr r0, [r5, #0]
	adds r0, r0, r4
	adds r0, r0, r6
	ldr r1, [r3, #0]
	adds r1, r1, r2
	adds r1, r1, r6
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r6, #1
	cmp r6, #9
	bls _08022BE0
	b _08022E3E
_08022BF8: .4byte gUnk_03005CF4
_08022BFC: .4byte gUnk_03003478
_08022C00: .4byte gUnk_03005D5C
_08022C04: .4byte gUnk_03005D58
_08022C08: .4byte gUnk_03004210
_08022C0C: .4byte 0xFFFE0000
_08022C10:
	ldr r0, _08022C1C
	ldr r0, [r0, #0]
	ldr r5, _08022C20
	adds r0, r0, r5
	ldr r5, [r0, #0]
	b _08022CB2
_08022C1C: .4byte gUnk_03005CF4
_08022C20: .4byte 0x0000071C
_08022C24:
	ldrh r0, [r5, #0]
	cmp r0, #2
	beq _08022CAC
	cmp r0, #2
	bgt _08022C34
	cmp r0, #1
	beq _08022C38
	b _08022CAC
_08022C34:
	cmp r0, #7
	bne _08022CAC
_08022C38:
	bl sub_0800CCCC
	cmp r0, #0
	bne _08022C62
	ldrh r0, [r5, #0]
	bl sub_0805A4A0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r1
	ldr r4, [r0, #0]
	adds r0, r5, #0
	bl _call_via_r4
	mov r8, r0
	b _08022CAC
_08022C62:
	ldr r6, _08022C90
	ldr r0, [r6, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r1, #0x24
	adds r1, r1, r0
	ldr r4, [r1, #0]
	bl sub_08056E90
	cmp r0, #0
	beq _08022C98
	ldr r0, [r6, #0]
	ldr r1, [r0, #0x40]
	ldr r0, _08022C94
	cmp r1, r0
	beq _08022C98
	adds r0, r5, #0
	bl sub_080277E0
	b _08022CA0
_08022C90: .4byte gUnk_03005CF4
_08022C94: .4byte 0x000092BC
_08022C98:
	adds r0, r5, #0
	bl _call_via_r4
	mov r8, r0
_08022CA0:
	mov r7, r8
	cmp r7, #0
	beq _08022CAC
	movs r0, #0
	bl sub_080570DC
_08022CAC:
	movs r0, #0x92
	lsls r0, r0, #1
	adds r5, r5, r0
_08022CB2:
	ldrh r0, [r5, #0]
	cmp r0, #0
	bne _08022C24
	bl sub_0800BA6C
	cmp r0, #0
	bne _08022CC2
	b _08022E3A
_08022CC2:
	bl sub_0800CDC0
	cmp r0, #0
	beq _08022CD4
	ldr r0, _08022D10
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08022CD4
	b _08022E3A
_08022CD4:
	ldr r2, _08022D14
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x8c
	adds r0, r1, r0
	ldr r5, [r0, #0]
	adds r2, #0x90
	adds r1, r1, r2
	ldr r4, [r1, #0]
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800BCA0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #2
	cmp r0, #4
	bls _08022D06
	b _08022E3A
_08022D06:
	lsls r0, r0, #2
	ldr r1, _08022D18
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08022D10: .4byte gUnk_030056FC
_08022D14: .4byte gUnk_03003CE0
_08022D18: .4byte _08022D1C
_08022D1C:
	.4byte _08022D30
_08022D20: .4byte _08022D64
_08022D24: .4byte _08022D9C
_08022D28: .4byte _08022DD4
_08022D2C: .4byte _08022E0C
_08022D30:
	ldr r0, _08022D5C
	bl sub_08000440
	cmp r0, #0
	beq _08022D3E
	bl sub_0800A03C
_08022D3E:
	ldr r1, _08022D60
	adds r0, r1, #0
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _08022E3A
	adds r0, r1, #0
	adds r0, #0xa8
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08022E3A
	movs r0, #0
	movs r1, #0x3c
	b _08022D8C
	.2byte 0x0000
_08022D5C: .4byte 0x000514C8
_08022D60: .4byte gUnk_03003170
_08022D64:
	ldr r0, _08022D94
	bl sub_08000440
	cmp r0, #0
	beq _08022D72
	bl sub_0800A03C
_08022D72:
	ldr r1, _08022D98
	adds r0, r1, #0
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _08022E3A
	adds r0, r1, #0
	adds r0, #0xa8
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08022E3A
	movs r0, #6
	movs r1, #0x2d
_08022D8C:
	movs r2, #0
	bl sub_08029A7C
	b _08022E3A
_08022D94: .4byte 0x000514C8
_08022D98: .4byte gUnk_03003170
_08022D9C:
	ldr r0, _08022DCC
	bl sub_08000440
	cmp r0, #0
	beq _08022DAA
	bl sub_0800A03C
_08022DAA:
	ldr r1, _08022DD0
	adds r0, r1, #0
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08022DBA
	cmp r0, #2
	bne _08022E3A
_08022DBA:
	adds r0, r1, #0
	adds r0, #0xa8
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08022E3A
	movs r0, #1
	movs r1, #0xa
	b _08022DFC
	.2byte 0x0000
_08022DCC: .4byte 0x000514C8
_08022DD0: .4byte gUnk_03003170
_08022DD4:
	ldr r0, _08022E04
	bl sub_08000440
	cmp r0, #0
	beq _08022DE2
	bl sub_0800A03C
_08022DE2:
	ldr r1, _08022E08
	adds r0, r1, #0
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08022E3A
	adds r0, r1, #0
	adds r0, #0xa8
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08022E3A
	movs r0, #1
	movs r1, #8
_08022DFC:
	movs r2, #0
	bl sub_08029CEC
	b _08022E3A
_08022E04: .4byte 0x000514C8
_08022E08: .4byte gUnk_03003170
_08022E0C:
	ldr r0, _08022E58
	bl sub_08000440
	cmp r0, #0
	beq _08022E1A
	bl sub_0800A03C
_08022E1A:
	ldr r1, _08022E5C
	adds r0, r1, #0
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _08022E3A
	adds r0, r1, #0
	adds r0, #0xa8
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _08022E3A
	movs r0, #1
	movs r1, #6
	movs r2, #0
	bl sub_08029CEC
_08022E3A:
	bl sub_080003F0
_08022E3E:
	bl sub_0800CB78
	cmp r0, #0
	bne _08022E48
	b _08022C10
_08022E48:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08022E58: .4byte 0x000514C8
_08022E5C: .4byte gUnk_03003170
	thumb_func_end sub_080226A4
