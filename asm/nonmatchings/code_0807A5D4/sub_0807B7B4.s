	thumb_func_start sub_0807B7B4
sub_0807B7B4: @ 0x0807B7B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	ldr r0, _0807B870
	ldr r1, [r0, #0]
	movs r0, #2
	str r0, [r1, #0]
	movs r0, #0xf8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0807B874
	adds r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, _0807B878
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1, #0]
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xc]
	ldr r0, _0807B87C
	movs r4, #0xc0
	lsls r4, r4, #0x13
	movs r5, #0xf
	str r5, [sp, #0]
	movs r1, #0x1a
	adds r2, r4, #0
	movs r3, #0
	bl sub_0800B7DC
	ldr r0, _0807B880
	str r5, [sp, #0]
	movs r1, #0x1b
	adds r2, r4, #0
	movs r3, #0
	bl sub_0800B7DC
	ldr r0, _0807B884
	movs r1, #0xe
	str r1, [sp, #0]
	movs r1, #0x1f
	adds r2, r4, #0
	movs r3, #0
	bl sub_0800B650
	ldr r0, _0807B888
	bl sub_08007290
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xe
	movs r2, #1
	bl sub_08000AF0
	ldr r2, _0807B88C
	ldr r1, _0807B890
	ldr r0, _0807B894
	ldr r0, [r0, #0]
	movs r3, #0xa5
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	adds r3, #0xb0
	adds r1, r2, r3
	strh r0, [r1, #0]
	ldr r0, _0807B898
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _0807B938
	lsls r0, r0, #2
	ldr r1, _0807B89C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0807B870: .4byte gUnk_03006440
_0807B874: .4byte gUnk_03003CE0
_0807B878: .4byte gUnk_03001250
_0807B87C: .4byte 0x40000003
_0807B880: .4byte 0x40000005
_0807B884: .4byte 0x40000004
_0807B888: .4byte 0x00070003
_0807B88C: .4byte gUnk_03001F40
_0807B890: .4byte gUnk_084EBD38
_0807B894: .4byte gUnk_03005CF4
_0807B898: .4byte gUnk_03003470
_0807B89C: .4byte _0807B8A0
_0807B8A0:
	.4byte _0807B8B4
_0807B8A4: .4byte _0807B8CC
_0807B8A8: .4byte _0807B8E4
_0807B8AC: .4byte _0807B8FC
_0807B8B0: .4byte _0807B920
_0807B8B4:
	ldr r0, _0807B8C4
	ldr r0, [r0, #0]
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _0807B8C8
	b _0807B908
	.2byte 0x0000
_0807B8C4: .4byte gUnk_03006440
_0807B8C8: .4byte 0x00050006
_0807B8CC:
	ldr r0, _0807B8DC
	ldr r0, [r0, #0]
	movs r2, #0xb7
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, _0807B8E0
	b _0807B908
	.2byte 0x0000
_0807B8DC: .4byte gUnk_03006440
_0807B8E0: .4byte 0x00050007
_0807B8E4:
	ldr r0, _0807B8F4
	ldr r0, [r0, #0]
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r1, _0807B8F8
	b _0807B908
	.2byte 0x0000
_0807B8F4: .4byte gUnk_03006440
_0807B8F8: .4byte 0x00050008
_0807B8FC:
	ldr r0, _0807B918
	ldr r0, [r0, #0]
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _0807B91C
_0807B908:
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
	b _0807B938
	.2byte 0x0000
_0807B918: .4byte gUnk_03006440
_0807B91C: .4byte 0x00050009
_0807B920:
	ldr r0, _0807BAB4
	ldr r0, [r0, #0]
	movs r2, #0xb7
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, _0807BAB8
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
_0807B938:
	movs r0, #0
	movs r1, #1
	bl sub_08000990
	ldr r1, _0807BABC
	ldr r0, [sp, #0x10]
	ands r0, r1
	ldr r1, _0807BAC0
	orrs r0, r1
	str r0, [sp, #0x10]
	add r4, sp, #0x10
	movs r0, #1
	adds r1, r4, #0
	bl sub_08000AA8
	ldr r0, _0807BAC4
	strh r0, [r4, #0]
	movs r0, #2
	adds r1, r4, #0
	bl sub_08000AA8
	ldr r0, _0807BAC8
	strh r0, [r4, #0]
	movs r0, #3
	adds r1, r4, #0
	bl sub_08000AA8
	bl sub_0805F184
	cmp r0, #0
	beq _0807B978
	b _0807BD28
_0807B978:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0807B982
	b _0807BD28
_0807B982:
	bl sub_0800D060
	cmp r0, #0
	beq _0807B98C
	b _0807BD28
_0807B98C:
	bl sub_080020F4
	ldr r1, _0807BACC
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r5, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r5, r0
	cmp r5, #0
	beq _0807B9AA
	b _0807BD28
_0807B9AA:
	movs r0, #0
	bl sub_08060DB0
	movs r0, #0
	bl sub_08061688
	movs r0, #0x88
	bl sub_08001108
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, _0807BAD0
	bl sub_0800115C
	str r0, [sp, #0x18]
	bl sub_08000D8C
	movs r0, #6
	bl sub_0801AB50
	movs r0, #0xe8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	movs r0, #8
	movs r1, #2
	bl sub_08000C08
	bl sub_0800CB9C
	cmp r0, #0
	bne _0807B9F6
	movs r0, #0xd7
	bl sub_08058688
_0807B9F6:
	str r5, [sp, #0]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	ldr r4, _0807BAB4
	ldr r3, [r4, #0]
	str r5, [r3, #4]
	str r5, [r3, #8]
	str r5, [r3, #0x18]
	movs r0, #0x16
	str r0, [r3, #0x1c]
	str r5, [r3, #0x20]
	movs r0, #1
	str r0, [r3, #0x24]
	str r5, [r3, #0x28]
	adds r0, r3, #0
	adds r0, #0xd8
	str r5, [r0, #0]
	adds r0, #4
	str r5, [r0, #0]
	adds r0, #4
	movs r2, #0x58
	str r2, [r0, #0]
	adds r0, #4
	movs r1, #0x20
	str r1, [r0, #0]
	adds r0, #4
	str r2, [r0, #0]
	adds r0, #4
	str r1, [r0, #0]
	adds r0, #4
	str r5, [r0, #0]
	adds r0, #4
	strh r5, [r0, #0]
	str r5, [r3, #0x2c]
	bl sub_0805D3D4
	ldr r2, [r4, #0]
	str r0, [r2, #0x34]
	str r5, [r2, #0x38]
	adds r0, r2, #0
	adds r0, #0x4c
	strh r5, [r0, #0]
	adds r0, #2
	strh r5, [r0, #0]
	adds r0, #2
	strh r5, [r0, #0]
	adds r0, #2
	strh r5, [r0, #0]
	adds r1, r2, #0
	adds r1, #0x68
	movs r0, #5
	strh r0, [r1, #0]
	adds r1, #2
	movs r0, #0x64
	strh r0, [r1, #0]
	ldr r0, _0807BAD4
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r7, [r0, #0]
	ldr r3, _0807BAD8
	mov r8, r3
	movs r5, #0
_0807BA7C:
	ldr r6, _0807BAB4
	ldr r4, [r6, #0]
	lsls r2, r5, #3
	adds r0, r4, #0
	adds r0, #0x74
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0, #0]
	adds r4, #0x78
	adds r4, r4, r2
	adds r0, r5, #0
	movs r1, #5
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r4, #0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	bls _0807BA7C
	adds r5, r6, #0
	ldr r6, _0807BACC
	movs r0, #0x30
	adds r0, r0, r6
	mov sl, r0
	b _0807BCD2
_0807BAB4: .4byte gUnk_03006440
_0807BAB8: .4byte 0x0005000A
_0807BABC: .4byte 0xFFFF0000
_0807BAC0: .4byte 0x00001D03
_0807BAC4: .4byte 0x00009A01
_0807BAC8: .4byte 0x00001F03
_0807BACC: .4byte gUnk_03003CE0
_0807BAD0: .4byte sub_0808528C
_0807BAD4: .4byte gUnk_030034E0
_0807BAD8: .4byte 0x00FFFFFF
_0807BADC:
	bl sub_0807C29C
	ldr r2, [r5, #0]
	ldr r3, [r2, #0x28]
	movs r4, #1
	ands r3, r4
	cmp r3, #0
	beq _0807BAEE
	b _0807BC50
_0807BAEE:
	ldr r0, _0807BB14
	strh r3, [r0, #0xa]
	ldr r0, [r2, #0x1c]
	cmp r0, #0x16
	bne _0807BB18
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r2, r1
	adds r1, r2, #0
	adds r1, #0xe0
	ldr r1, [r1, #0]
	adds r2, #0xe4
	ldr r2, [r2, #0]
	str r3, [sp, #0]
	movs r3, #0xb
	bl sub_08065230
	b _0807BB4A
	.2byte 0x0000
_0807BB14: .4byte gUnk_03001250
_0807BB18:
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r2, r3
	adds r1, r2, #0
	adds r1, #0xe0
	ldr r1, [r1, #0]
	adds r2, #0xe4
	ldr r2, [r2, #0]
	subs r2, #4
	str r4, [sp, #0]
	movs r3, #0xb
	bl sub_08065230
	ldr r2, [r5, #0]
	adds r0, r2, #0
	adds r0, #0xe0
	ldr r0, [r0, #0]
	adds r1, r2, #0
	adds r1, #0xe4
	ldr r1, [r1, #0]
	subs r1, #4
	adds r2, #0xf4
	movs r3, #8
	bl sub_0805FC80
_0807BB4A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r6
	adds r0, #0x64
	ldrh r0, [r0, #0]
	cmp r8, r0
	bne _0807BB78
	ldr r0, [r5, #0]
	adds r1, r0, #0
	adds r1, #0x6a
	ldrh r1, [r1, #0]
	ldr r0, [r0, #4]
	cmp r1, r0
	bne _0807BB78
	ldr r0, _0807BBAC
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r0, [r0, #0]
	cmp r7, r0
	beq _0807BC28
_0807BB78:
	ldr r3, [r5, #0]
	adds r0, r3, #0
	adds r0, #0x68
	ldrh r1, [r0, #0]
	adds r2, r1, #1
	strh r2, [r0, #0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #5
	bls _0807BC28
	ldr r0, [r3, #0x1c]
	cmp r0, #0x16
	bne _0807BBE8
	ldr r0, [r3, #0x18]
	cmp r0, #7
	beq _0807BBB0
	adds r0, r3, #0
	adds r0, #0xf0
	ldr r2, [r0, #0]
	movs r0, #0xf
	movs r1, #0x12
	movs r3, #0x80
	lsls r3, r3, #0x18
	bl sub_0805FFBC
	b _0807BBF8
_0807BBAC: .4byte gUnk_030034E0
_0807BBB0:
	ldr r1, _0807BBE4
	ldr r0, [r3, #4]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	adds r4, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	b _0807BBF8
	.2byte 0x0000
_0807BBE4: .4byte gUnk_084ECB98
_0807BBE8:
	adds r2, r3, #0
	adds r2, #0xf4
	movs r0, #0xf
	movs r1, #0x12
	movs r3, #0x80
	lsls r3, r3, #0x18
	bl sub_0805FFBC
_0807BBF8:
	ldr r0, _0807BC48
	ldr r0, [r0, #0]
	adds r0, #0x68
	ldrh r7, [r0, #0]
	ldr r0, [sp, #0x14]
	bl sub_080811E0
	ldr r1, [r5, #0]
	adds r2, r1, #0
	adds r2, #0x68
	movs r0, #0
	strh r0, [r2, #0]
	ldr r0, [r1, #4]
	adds r1, #0x6a
	strh r0, [r1, #0]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r6
	adds r0, #0x64
	ldrh r0, [r0, #0]
	mov r8, r0
_0807BC28:
	bl sub_08080A78
	ldr r4, _0807BC4C
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _0807BCA2
	movs r0, #2
	movs r1, #0x12
	bl sub_0801A664
	ldr r1, [r4, #0]
	movs r0, #0
	str r0, [r1, #0x2c]
	b _0807BCA2
	.2byte 0x0000
_0807BC48: .4byte gUnk_030034E0
_0807BC4C: .4byte gUnk_03006440
_0807BC50:
	adds r1, r2, #0
	adds r1, #0x6a
	movs r0, #0x64
	strh r0, [r1, #0]
	str r4, [r2, #0x2c]
	movs r0, #2
	movs r1, #0x12
	bl sub_0801A664
	ldr r1, _0807BC80
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0xa]
	ldr r1, [r5, #0]
	ldr r0, [r1, #0x18]
	cmp r0, #9
	bne _0807BC88
	ldr r2, _0807BC84
	adds r0, r1, r2
	ldr r0, [r0, #0]
	bl sub_08082960
	b _0807BCA2
	.2byte 0x0000
_0807BC80: .4byte gUnk_03001250
_0807BC84: .4byte 0x000005B4
_0807BC88:
	ldr r0, [r1, #0x1c]
	cmp r0, #0x16
	bne _0807BC9A
	adds r0, r1, #0
	adds r0, #0xf0
	ldr r0, [r0, #0]
	bl sub_080815F4
	b _0807BCA2
_0807BC9A:
	adds r0, r1, #0
	adds r0, #0xf4
	bl sub_080815F4
_0807BCA2:
	movs r3, #0x40
	add r9, r3
	ldr r0, _0807BCF8
	mov r2, r9
	lsrs r1, r2, #8
	strh r1, [r0, #0xe]
	bl sub_080003F0
	bl sub_0801AAE0
	cmp r0, #0
	beq _0807BCD2
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	add r0, sl
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0807BCE4
_0807BCD2:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _0807BCE4
	bl sub_080021A8
	cmp r0, #0
	bne _0807BCE4
	b _0807BADC
_0807BCE4:
	bl sub_0806617C
	movs r0, #0
	bl sub_080586B4
	movs r0, #6
	bl sub_0801ABE8
	b _0807BD04
	.2byte 0x0000
_0807BCF8: .4byte gUnk_03001250
_0807BCFC:
	bl sub_08080A78
	bl sub_080003F0
_0807BD04:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0807BCFC
	bl sub_08000E48
	ldr r0, [sp, #0x18]
	bl sub_0800115C
	ldr r0, [sp, #0x1c]
	bl sub_08001108
	movs r0, #0
	bl sub_080653D4
	movs r0, #0
	bl sub_080653FC
_0807BD28:
	movs r0, #0x10
	movs r1, #8
	bl sub_08000C08
	movs r0, #2
	movs r1, #0x12
	bl sub_0801A664
	movs r0, #3
	bl sub_08057B64
	lsls r0, r0, #0x10
	ldr r3, _0807BD70
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	cmp r0, #7
	bhi _0807BD52
	movs r0, #0
	movs r1, #0xe
	bl sub_0802A590
_0807BD52:
	movs r0, #0xa
	bl sub_08057624
	ldr r0, _0807BD74
	bl sub_08000420
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0807BD70: .4byte 0xFFFE0000
_0807BD74: .4byte 0x11201100
	thumb_func_end sub_0807B7B4
