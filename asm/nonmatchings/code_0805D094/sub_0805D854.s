	thumb_func_start sub_0805D854
sub_0805D854: @ 0x0805D854
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sl, r0
	mov r1, sl
	adds r1, #0x30
	movs r2, #0
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, _0805D890
	strh r2, [r0, #0]
	strh r2, [r0, #2]
	movs r0, #0
	str r0, [sp, #0x10]
_0805D876:
	mov r0, sl
	adds r0, #0x30
	ldrb r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #5
	bls _0805D884
	b _0805DAB6
_0805D884:
	lsls r0, r1, #2
	ldr r1, _0805D894
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0805D890: .4byte gUnk_03001250
_0805D894: .4byte _0805D898
_0805D898:
	.4byte _0805D8B0
_0805D89C: .4byte _0805D8C6
_0805D8A0: .4byte _0805D91C
_0805D8A4: .4byte _0805D9B0
_0805D8A8: .4byte _0805DA24
_0805D8AC: .4byte _0805DA94
_0805D8B0:
	ldr r2, _0805D904
	mov r0, sl
	adds r0, #0x31
	movs r1, #1
	ldrb r0, [r0, #0]
	lsls r1, r0
	ldrb r0, [r2, #0]
	bics r0, r1
	strb r0, [r2, #0]
	bl sub_0800035C
_0805D8C6:
	movs r1, #0
	str r1, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #2
	strb r0, [r4, #0]
	ldr r1, _0805D908
	adds r0, #0xff
	strh r0, [r1, #0x38]
	ldr r0, _0805D90C
	strh r0, [r1, #0x3a]
	ldr r2, _0805D910
	ldr r1, _0805D914
	ldr r0, _0805D918
	ldr r0, [r0, #0]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	strh r0, [r2, #0]
	movs r7, #0
	str r7, [sp, #0x14]
	bl sub_08000B38
	movs r0, #0xdc
	bl sub_0805865C
	b _0805DAB6
_0805D904: .4byte gUnk_03005D70
_0805D908: .4byte gUnk_03001250
_0805D90C: .4byte 0x00003F3F
_0805D910: .4byte gUnk_03001F40
_0805D914: .4byte gUnk_084EBD38
_0805D918: .4byte gUnk_03005CF4
_0805D91C:
	bl sub_0800CC98
	cmp r0, #0
	bne _0805D960
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0805D956
	movs r1, #0x80
	lsls r1, r1, #7
	movs r0, #0
	movs r2, #1
	bl sub_080009C0
	ldr r2, _0805D998
	ldr r1, _0805D99C
	ldr r0, _0805D9A0
	ldr r0, [r0, #0]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	strh r0, [r2, #0]
	bl sub_08000B38
	movs r7, #1
	str r7, [sp, #0x14]
_0805D956:
	ldr r0, _0805D9A4
	ldr r1, _0805D9A8
	strh r1, [r0, #0x38]
	ldr r1, _0805D9AC
	strh r1, [r0, #0x3a]
_0805D960:
	ldr r0, [sp, #0]
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0]
	mov r1, sl
	ldrh r1, [r1, #0x2c]
	cmp r0, r1
	bhs _0805D974
	b _0805DAB6
_0805D974:
	mov r2, sl
	ldrh r2, [r2, #0x2c]
	str r2, [sp, #0]
	ldr r0, [sp, #4]
	adds r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	mov r3, sl
	ldrh r3, [r3, #0x2e]
	cmp r0, r3
	bhs _0805D98E
	b _0805DAB6
_0805D98E:
	mov r7, sl
	ldrh r7, [r7, #0x2e]
	str r7, [sp, #4]
	movs r0, #3
	b _0805DAB4
_0805D998: .4byte gUnk_03001F40
_0805D99C: .4byte gUnk_084EBD38
_0805D9A0: .4byte gUnk_03005CF4
_0805D9A4: .4byte gUnk_03001250
_0805D9A8: .4byte 0x00000101
_0805D9AC: .4byte 0x00003F3F
_0805D9B0:
	bl sub_0800CC98
	cmp r0, #0
	beq _0805D9BA
	b _0805DAB6
_0805D9BA:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0805D9E8
	movs r1, #0x80
	lsls r1, r1, #7
	movs r0, #0
	movs r2, #1
	bl sub_080009C0
	ldr r2, _0805DA0C
	ldr r1, _0805DA10
	ldr r0, _0805DA14
	ldr r0, [r0, #0]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	strh r0, [r2, #0]
	movs r7, #1
	str r7, [sp, #0x14]
_0805D9E8:
	ldr r2, _0805DA0C
	ldr r1, _0805DA10
	ldr r0, _0805DA14
	ldr r0, [r0, #0]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	strh r0, [r2, #0]
	ldr r1, _0805DA18
	ldr r0, _0805DA1C
	strh r0, [r1, #0x38]
	ldr r0, _0805DA20
	strh r0, [r1, #0x3a]
	b _0805DAB6
_0805DA0C: .4byte gUnk_03001F40
_0805DA10: .4byte gUnk_084EBD38
_0805DA14: .4byte gUnk_03005CF4
_0805DA18: .4byte gUnk_03001250
_0805DA1C: .4byte 0x00000101
_0805DA20: .4byte 0x00003F3F
_0805DA24:
	ldr r0, [sp, #4]
	subs r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0805DA3C
	movs r7, #0
	str r7, [sp, #4]
_0805DA3C:
	ldr r0, [sp, #0]
	subs r0, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0]
	ands r0, r1
	cmp r0, #0
	beq _0805DA50
	movs r0, #0
	str r0, [sp, #0]
_0805DA50:
	ldr r1, [sp, #0]
	cmp r1, #0
	bne _0805DAB6
	ldr r2, [sp, #4]
	cmp r2, #0
	bne _0805DAB6
	bl sub_0800CC98
	cmp r0, #0
	bne _0805DA7A
	ldr r3, [sp, #0x14]
	cmp r3, #1
	bne _0805DA7A
	movs r1, #0x80
	lsls r1, r1, #7
	movs r0, #0
	movs r2, #1
	bl sub_080009F8
	movs r7, #0
	str r7, [sp, #0x14]
_0805DA7A:
	movs r0, #5
	strb r0, [r4, #0]
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, _0805DA90
	mov r1, sp
	ldrh r1, [r1, #0x10]
	strh r1, [r0, #0]
	bl sub_08000B38
	b _0805DAB6
_0805DA90: .4byte gUnk_03001F40
_0805DA94:
	mov r2, sl
	ldrh r1, [r2, #0x2e]
	lsrs r0, r1, #1
	mvns r0, r0
	ldrh r3, [r2, #0x2a]
	adds r0, r0, r3
	adds r1, #2
	bl sub_0801A664
	ldr r0, [sp, #0x10]
	adds r7, r0, #0
	adds r7, #1
	str r7, [sp, #0x10]
	cmp r0, #3
	bls _0805DAB6
	movs r0, #0
_0805DAB4:
	strb r0, [r4, #0]
_0805DAB6:
	ldrb r0, [r4, #0]
	cmp r0, #5
	bne _0805DABE
	b _0805DBF2
_0805DABE:
	cmp r0, #0
	bne _0805DAC4
	b _0805DBF2
_0805DAC4:
	ldr r0, [sp, #0]
	lsrs r2, r0, #1
	mov r3, sl
	ldrh r1, [r3, #0x28]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r3, #1
	ldr r0, [sp, #0]
	ands r0, r3
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r7, [sp, #4]
	lsrs r2, r7, #1
	mov r0, sl
	ldrh r1, [r0, #0x2a]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	adds r0, r7, #0
	ands r0, r3
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_0800CC98
	cmp r0, #0
	bne _0805DBF2
	ldr r1, _0805DBF8
	mov ip, r1
	ldr r2, [sp, #8]
	subs r2, #1
	mov r9, r2
	lsls r2, r2, #1
	ldr r4, [sp, #0xc]
	subs r4, #1
	lsls r7, r4, #6
	adds r0, r2, r7
	add r0, ip
	ldr r1, _0805DBFC
	strh r1, [r0, #0]
	mov r0, r8
	adds r0, #1
	lsls r6, r0, #6
	adds r2, r2, r6
	add r2, ip
	ldr r0, _0805DC00
	strh r0, [r2, #0]
	adds r3, r5, #1
	lsls r2, r3, #1
	adds r0, r2, r7
	add r0, ip
	adds r1, #2
	strh r1, [r0, #0]
	adds r2, r2, r6
	add r2, ip
	ldr r0, _0805DC04
	strh r0, [r2, #0]
	ldr r2, [sp, #8]
	mov r0, r9
	str r0, [sp, #0x18]
	str r4, [sp, #0x20]
	str r3, [sp, #0x1c]
	adds r1, r5, #2
	str r1, [sp, #0x24]
	mov r3, r8
	adds r3, #2
	str r3, [sp, #0x28]
	cmp r2, r5
	bhi _0805DB8E
	mov r3, ip
	adds r4, r7, #0
	ldr r7, _0805DC08
	mov r9, r7
	ldr r0, _0805DC0C
	mov ip, r0
_0805DB72:
	lsls r0, r2, #1
	adds r1, r0, r4
	adds r1, r1, r3
	mov r7, r9
	strh r7, [r1, #0]
	adds r0, r0, r6
	adds r0, r0, r3
	mov r1, ip
	strh r1, [r0, #0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r5
	bls _0805DB72
_0805DB8E:
	ldr r4, [sp, #0xc]
	cmp r4, r8
	bhi _0805DBBA
	ldr r2, _0805DBF8
	ldr r3, [sp, #0x18]
	lsls r6, r3, #1
	ldr r5, _0805DC10
	ldr r7, [sp, #0x1c]
	lsls r3, r7, #1
	ldr r7, _0805DC14
_0805DBA2:
	lsls r0, r4, #6
	adds r1, r6, r0
	adds r1, r1, r2
	strh r5, [r1, #0]
	adds r0, r3, r0
	adds r0, r0, r2
	strh r7, [r0, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r8
	bls _0805DBA2
_0805DBBA:
	ldr r0, [sp, #0x18]
	lsls r1, r0, #3
	adds r1, #3
	lsls r1, r1, #8
	ldr r2, [sp, #0x24]
	lsls r0, r2, #3
	subs r0, #3
	orrs r1, r0
	ldr r3, _0805DC18
	strh r1, [r3, #0x32]
	ldr r7, [sp, #0x20]
	lsls r1, r7, #3
	adds r1, #3
	lsls r1, r1, #8
	ldr r2, [sp, #0x28]
	lsls r0, r2, #3
	subs r0, #3
	orrs r1, r0
	strh r1, [r3, #0x36]
	mov r3, sl
	ldrh r1, [r3, #0x2e]
	lsrs r0, r1, #1
	mvns r0, r0
	ldrh r7, [r3, #0x2a]
	adds r0, r0, r7
	adds r1, #3
	bl sub_0801A664
_0805DBF2:
	bl sub_080003F0
	b _0805D876
_0805DBF8: .4byte gUnk_03005740
_0805DBFC: .4byte 0x0000F120
_0805DC00: .4byte 0x0000F126
_0805DC04: .4byte 0x0000F128
_0805DC08: .4byte 0x0000F121
_0805DC0C: .4byte 0x0000F127
_0805DC10: .4byte 0x0000F123
_0805DC14: .4byte 0x0000F125
_0805DC18: .4byte gUnk_03001250
	thumb_func_end sub_0805D854
