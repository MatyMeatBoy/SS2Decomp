	thumb_func_start sub_0807A5D4
sub_0807A5D4: @ 0x0807A5D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x15c
	ldr r0, _0807A6B8
	ldr r1, [r0, #0]
	movs r0, #1
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
	ldr r0, _0807A6BC
	adds r1, r1, r0
	str r1, [sp, #0x154]
	ldr r0, _0807A6C0
	movs r4, #0
	strh r4, [r0, #2]
	strh r4, [r0, #0]
	strh r4, [r0, #6]
	strh r4, [r0, #4]
	strh r4, [r0, #0xa]
	strh r4, [r0, #8]
	strh r4, [r0, #0xe]
	strh r4, [r0, #0xc]
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, #6
	movs r6, #0xc0
	lsls r6, r6, #0x13
	movs r5, #0xf
	str r5, [sp, #0]
	movs r1, #0x1d
	adds r2, r6, #0
	movs r3, #0
	bl sub_0800B7DC
	str r5, [sp, #0]
	movs r0, #0xf
	movs r1, #0x1a
	adds r2, r6, #0
	movs r3, #0
	bl sub_0800B7DC
	str r5, [sp, #0]
	movs r0, #0xe
	movs r1, #0x1b
	adds r2, r6, #0
	movs r3, #0
	bl sub_0800B7DC
	ldr r0, _0807A6C4
	movs r1, #0xe
	str r1, [sp, #0]
	movs r1, #0x1f
	adds r2, r6, #0
	movs r3, #0
	bl sub_0800B650
	movs r0, #7
	str r0, [sp, #0]
	str r4, [sp, #4]
	movs r0, #4
	movs r1, #0x38
	movs r2, #1
	movs r3, #0xa
	bl sub_0800903C
	ldr r0, _0807A6C8
	bl sub_08007290
	adds r1, r0, #0
	movs r0, #0xe0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r0, #0xe
	movs r2, #1
	bl sub_08000AF0
	ldr r2, _0807A6CC
	ldr r1, _0807A6D0
	ldr r0, _0807A6D4
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
	ldr r0, _0807A6D8
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _0807A778
	lsls r0, r0, #2
	ldr r1, _0807A6DC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0807A6B8: .4byte gUnk_03006440
_0807A6BC: .4byte gUnk_03003CE0
_0807A6C0: .4byte gUnk_03001250
_0807A6C4: .4byte 0x40000004
_0807A6C8: .4byte 0x00070003
_0807A6CC: .4byte gUnk_03001F40
_0807A6D0: .4byte gUnk_084EBD38
_0807A6D4: .4byte gUnk_03005CF4
_0807A6D8: .4byte gUnk_03003470
_0807A6DC: .4byte _0807A6E0
_0807A6E0:
	.4byte _0807A6F4
_0807A6E4: .4byte _0807A70C
_0807A6E8: .4byte _0807A724
_0807A6EC: .4byte _0807A73C
_0807A6F0: .4byte _0807A760
_0807A6F4:
	ldr r0, _0807A704
	ldr r0, [r0, #0]
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _0807A708
	b _0807A748
	.2byte 0x0000
_0807A704: .4byte gUnk_03006440
_0807A708: .4byte 0x00050006
_0807A70C:
	ldr r0, _0807A71C
	ldr r0, [r0, #0]
	movs r2, #0xb7
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, _0807A720
	b _0807A748
	.2byte 0x0000
_0807A71C: .4byte gUnk_03006440
_0807A720: .4byte 0x00050007
_0807A724:
	ldr r0, _0807A734
	ldr r0, [r0, #0]
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r1, _0807A738
	b _0807A748
	.2byte 0x0000
_0807A734: .4byte gUnk_03006440
_0807A738: .4byte 0x00050008
_0807A73C:
	ldr r0, _0807A758
	ldr r0, [r0, #0]
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _0807A75C
_0807A748:
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
	b _0807A778
	.2byte 0x0000
_0807A758: .4byte gUnk_03006440
_0807A75C: .4byte 0x00050009
_0807A760:
	ldr r0, _0807A850
	ldr r0, [r0, #0]
	movs r2, #0xb7
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, _0807A854
	movs r3, #1
	negs r3, r3
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
_0807A778:
	movs r0, #0
	movs r1, #1
	bl sub_08000990
	movs r0, #0xf8
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	ldr r1, _0807A858
	add r5, sp, #0x130
	ldr r0, [r5, #0]
	ands r0, r1
	ldr r1, _0807A85C
	orrs r0, r1
	str r0, [r5, #0]
	adds r4, r5, #0
	movs r0, #1
	adds r1, r4, #0
	bl sub_08000AA8
	ldr r0, _0807A860
	strh r0, [r5, #0]
	movs r0, #2
	adds r1, r4, #0
	bl sub_08000AA8
	ldr r0, _0807A864
	strh r0, [r5, #0]
	movs r0, #3
	adds r1, r4, #0
	bl sub_08000AA8
	movs r3, #0
	str r3, [sp, #0x140]
	movs r0, #0xa
	str r0, [sp, #0x13c]
	movs r1, #0
	str r1, [sp, #0x138]
	movs r2, #0x80
	lsls r2, r2, #3
	str r2, [sp, #0x14c]
	ldr r4, _0807A850
	ldr r0, [r4, #0]
	movs r1, #1
	str r1, [r0, #0x24]
	ldr r3, [sp, #0x138]
	str r3, [r0, #4]
	ldr r1, _0807A868
	str r1, [r0, #0xc]
	movs r1, #0xc4
	lsls r1, r1, #3
	adds r0, r0, r1
	str r3, [r0, #0]
	movs r0, #8
	movs r1, #2
	bl sub_08000C08
	bl sub_0805F184
	cmp r0, #0
	beq _0807A7FA
	bl _0807B744
_0807A7FA:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0807A806
	bl _0807B744
_0807A806:
	bl sub_0800D060
	cmp r0, #0
	beq _0807A812
	bl _0807B744
_0807A812:
	bl sub_080020F4
	ldr r1, _0807A86C
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r0, r2, r0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0807A832
	bl _0807B744
_0807A832:
	bl sub_0808516C
	movs r0, #6
	bl sub_0801AB50
	bl sub_0800CB9C
	cmp r0, #0
	bne _0807A84A
	movs r0, #0xd7
	bl sub_08058688
_0807A84A:
	ldr r0, [r4, #0]
	bl _0807B710
_0807A850: .4byte gUnk_03006440
_0807A854: .4byte 0x0005000A
_0807A858: .4byte 0xFFFF0000
_0807A85C: .4byte 0x00001D01
_0807A860: .4byte 0x00009A02
_0807A864: .4byte 0x00001F03
_0807A868: .4byte 0x0000FFFF
_0807A86C: .4byte gUnk_03003CE0
_0807A870:
	bl sub_0800CF10
	cmp r0, #0
	bne _0807A8AC
	bl sub_0805F184
	cmp r0, #0
	bne _0807A8AC
	bl sub_0800CDF8
	cmp r0, #0
	bne _0807A8AC
	bl sub_0800D060
	cmp r0, #0
	bne _0807A8AC
	bl sub_080020F4
	ldr r2, _0807A8FC
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r2, #0x30
	adds r0, r0, r2
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0807A8BC
_0807A8AC:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0807A8BC
	ldr r0, _0807A900
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0x24]
_0807A8BC:
	bl sub_0800CD8C
	cmp r0, #0
	bne _0807A8CC
	bl sub_0801AAE0
	cmp r0, #0
	bne _0807A8DA
_0807A8CC:
	ldr r0, _0807A904
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, _0807A908
	strh r1, [r0, #0]
	ldr r0, _0807A90C
	strh r1, [r0, #0]
_0807A8DA:
	bl sub_080021A8
	cmp r0, #0
	beq _0807A8E6
	bl _0807B71A
_0807A8E6:
	ldr r0, _0807A900
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #5
	bls _0807A8F2
	b _0807AED0
_0807A8F2:
	lsls r0, r0, #2
	ldr r1, _0807A910
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0807A8FC: .4byte gUnk_03003CE0
_0807A900: .4byte gUnk_03006440
_0807A904: .4byte gUnk_0300130C
_0807A908: .4byte gUnk_03001324
_0807A90C: .4byte gUnk_03001308
_0807A910: .4byte _0807A914
_0807A914:
	.4byte _0807A92C
_0807A918: .4byte _0807A9C4
_0807A91C: .4byte _0807AA6C
_0807A920: .4byte _0807ACEA
_0807A924: .4byte _0807AED0
_0807A928: .4byte _0807AED0
_0807A92C:
	ldr r0, _0807A948
	ldrh r1, [r0, #0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0807A950
	ldr r0, _0807A94C
	ldr r1, [r0, #0]
	movs r0, #1
	str r0, [r1, #4]
	b _0807AADC
	.2byte 0x0000
_0807A948: .4byte gUnk_03001308
_0807A94C: .4byte gUnk_03006440
_0807A950:
	ldr r0, _0807A96C
	ldrh r1, [r0, #0]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0807A974
	movs r0, #0x10
	bl sub_0805865C
	ldr r0, _0807A970
	ldr r0, [r0, #0]
	str r4, [r0, #0x24]
	b _0807AED0
_0807A96C: .4byte gUnk_03001324
_0807A970: .4byte gUnk_03006440
_0807A974:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807A97E
	b _0807AED0
_0807A97E:
	ldr r0, _0807A9B8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x1a]
	ldr r0, _0807A9BC
	ldr r0, [r0, #0]
	str r2, [r0, #4]
	add r0, sp, #0x124
	movs r1, #0
	strh r1, [r0, #0]
	ldr r2, _0807A9C0
	add r1, sp, #8
	bl sub_080B8578
	ldr r0, _0807A9B8
	ldr r0, [r0, #0]
	adds r0, #0x10
	add r1, sp, #0x28
	movs r2, #0x10
	bl sub_080B8578
	ldr r0, _0807A9BC
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x14]
	movs r2, #0x2e
	str r2, [sp, #0x148]
	b _0807AA56
	.2byte 0x0000
_0807A9B8: .4byte gUnk_030034E0
_0807A9BC: .4byte gUnk_03006440
_0807A9C0: .4byte 0x01000010
_0807A9C4:
	ldr r0, _0807A9E0
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0807A9E8
	ldr r0, _0807A9E4
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #4]
	b _0807AADC
	.2byte 0x0000
_0807A9E0: .4byte gUnk_03001308
_0807A9E4: .4byte gUnk_03006440
_0807A9E8:
	ldr r0, _0807A9FC
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0807AA04
	ldr r0, _0807AA00
	ldr r0, [r0, #0]
	str r2, [r0, #0x24]
	b _0807AED0
_0807A9FC: .4byte gUnk_03001324
_0807AA00: .4byte gUnk_03006440
_0807AA04:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0807AA0E
	b _0807AED0
_0807AA0E:
	ldr r0, _0807AA60
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x30]
	ldr r0, _0807AA64
	ldr r1, [r0, #0]
	movs r0, #3
	str r0, [r1, #4]
	movs r0, #0x93
	lsls r0, r0, #1
	add r0, sp
	movs r1, #0
	strh r1, [r0, #0]
	add r1, sp, #0xb8
	ldr r2, _0807AA68
	bl sub_080B8578
	ldr r4, _0807AA60
	ldr r0, [r4, #0]
	adds r0, #0x30
	add r1, sp, #0xdc
	movs r2, #0x12
	bl sub_080B8578
	ldr r0, [r4, #0]
	adds r0, #0x30
	add r1, sp, #0x100
	movs r2, #0x12
	bl sub_080B8578
	ldr r0, _0807AA64
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x14]
	movs r3, #0x2f
	str r3, [sp, #0x148]
_0807AA56:
	movs r0, #0xf
	bl sub_0805865C
	b _0807AED0
	.2byte 0x0000
_0807AA60: .4byte gUnk_030034E0
_0807AA64: .4byte gUnk_03006440
_0807AA68: .4byte 0x01000012
_0807AA6C:
	ldr r0, _0807AA90
	ldrh r2, [r0, #0]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0807AA9C
	ldr r0, _0807AA94
	ldr r0, [r0, #0]
	movs r1, #0
	str r1, [r0, #4]
	add r0, sp, #0x128
	strh r1, [r0, #0]
	ldr r2, _0807AA98
	add r1, sp, #8
	bl sub_080B8578
	b _0807AD0C
	.2byte 0x0000
_0807AA90: .4byte gUnk_03001324
_0807AA94: .4byte gUnk_03006440
_0807AA98: .4byte 0x01000010
_0807AA9C:
	ldr r0, _0807AAB8
	ldrh r1, [r0, #0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807AAC0
	ldr r0, _0807AABC
	ldr r1, [r0, #0]
	ldr r0, [r1, #0xc]
	cmp r0, #2
	bls _0807AAB4
	b _0807AED0
_0807AAB4:
	adds r0, #1
	b _0807AADA
_0807AAB8: .4byte gUnk_03001308
_0807AABC: .4byte gUnk_03006440
_0807AAC0:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0807AAE8
	ldr r0, _0807AAE4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0807AAD8
	b _0807AED0
_0807AAD8:
	subs r0, #1
_0807AADA:
	str r0, [r1, #0xc]
_0807AADC:
	movs r0, #0xe
	bl sub_0805865C
	b _0807AED0
_0807AAE4: .4byte gUnk_03006440
_0807AAE8:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0807AB14
	movs r0, #0xf
	bl sub_0805865C
	ldr r0, _0807AB0C
	ldr r0, [r0, #0]
	str r4, [r0, #4]
	add r0, sp, #0x28
	ldr r1, _0807AB10
	ldr r1, [r1, #0]
	adds r1, #0x10
	movs r2, #0x10
	bl sub_080B8578
	b _0807AED0
_0807AB0C: .4byte gUnk_03006440
_0807AB10: .4byte gUnk_030034E0
_0807AB14:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0807AC04
	add r2, sp, #0x28
	ldrh r0, [r2, #0xa]
	cmp r0, #0
	bne _0807AB26
	b _0807AED0
_0807AB26:
	ldr r0, _0807AB40
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	cmp r0, #1
	beq _0807ABD4
	cmp r0, #1
	blo _0807AB44
	cmp r0, #2
	beq _0807ABA2
	cmp r0, #3
	beq _0807AB74
	b _0807AED0
	.2byte 0x0000
_0807AB40: .4byte gUnk_03006440
_0807AB44:
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _0807AB70
	cmp r1, r0
	ble _0807AB50
	b _0807AED0
_0807AB50:
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0, #0]
	adds r0, #1
	strh r0, [r1, #0]
	ldrh r0, [r2, #0]
	adds r0, #1
	strh r0, [r2, #0]
	ldrh r0, [r2, #0xa]
	subs r0, #1
	strh r0, [r2, #0xa]
	adds r0, r1, #0
	ldrh r0, [r0, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	b _0807AD5C
_0807AB70: .4byte 0x000001F3
_0807AB74:
	movs r3, #6
	ldrsh r1, [r2, r3]
	movs r0, #0xa6
	lsls r0, r0, #1
	cmp r1, r0
	ble _0807AB82
	b _0807AED0
_0807AB82:
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0, #6]
	adds r0, #1
	strh r0, [r1, #6]
	ldrh r0, [r2, #6]
	adds r0, #1
	strh r0, [r2, #6]
	ldrh r0, [r2, #0xa]
	subs r0, #1
	strh r0, [r2, #0xa]
	adds r0, r1, #0
	ldrh r0, [r0, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	b _0807AD5C
_0807ABA2:
	movs r0, #4
	ldrsh r1, [r2, r0]
	ldr r0, _0807ABD0
	cmp r1, r0
	ble _0807ABAE
	b _0807AED0
_0807ABAE:
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0, #4]
	adds r0, #1
	strh r0, [r1, #4]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	ldrh r0, [r2, #0xa]
	subs r0, #1
	strh r0, [r2, #0xa]
	adds r0, r1, #0
	ldrh r0, [r0, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	b _0807AD5C
	.2byte 0x0000
_0807ABD0: .4byte 0x000001F3
_0807ABD4:
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x10
	ldr r1, _0807AC00
	cmp r0, r1
	ble _0807ABE0
	b _0807AED0
_0807ABE0:
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0, #2]
	adds r0, #1
	strh r0, [r1, #2]
	ldrh r0, [r2, #2]
	adds r0, #1
	strh r0, [r2, #2]
	ldrh r0, [r2, #0xa]
	subs r0, #1
	strh r0, [r2, #0xa]
	adds r0, r1, #0
	ldrh r0, [r0, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	b _0807AD5C
_0807AC00: .4byte 0x01F30000
_0807AC04:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0807AC0E
	b _0807AED0
_0807AC0E:
	ldr r0, _0807AC28
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	cmp r0, #1
	beq _0807ACBC
	cmp r0, #1
	blo _0807AC2C
	cmp r0, #2
	beq _0807AC8C
	cmp r0, #3
	beq _0807AC5C
	b _0807AED0
	.2byte 0x0000
_0807AC28: .4byte gUnk_03006440
_0807AC2C:
	add r0, sp, #8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _0807AC38
	b _0807AED0
_0807AC38:
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0, #0xa]
	subs r0, #1
	strh r0, [r1, #0xa]
	add r1, sp, #0x28
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	add r2, sp, #8
	adds r0, r2, #0
	ldrh r0, [r0, #0]
	subs r0, #1
	strh r0, [r2, #0]
	ldrh r0, [r1, #0]
	subs r0, #1
	strh r0, [r1, #0]
	b _0807AD5C
_0807AC5C:
	add r0, sp, #8
	movs r2, #6
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0807AC68
	b _0807AED0
_0807AC68:
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0, #0xa]
	subs r0, #1
	strh r0, [r1, #0xa]
	add r1, sp, #0x28
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	add r2, sp, #8
	adds r0, r2, #0
	ldrh r0, [r0, #6]
	subs r0, #1
	strh r0, [r2, #6]
	ldrh r0, [r1, #6]
	subs r0, #1
	strh r0, [r1, #6]
	b _0807AD5C
_0807AC8C:
	add r0, sp, #8
	movs r3, #4
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bne _0807AC98
	b _0807AED0
_0807AC98:
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0, #0xa]
	subs r0, #1
	strh r0, [r1, #0xa]
	add r1, sp, #0x28
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	add r2, sp, #8
	adds r0, r2, #0
	ldrh r0, [r0, #4]
	subs r0, #1
	strh r0, [r2, #4]
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	b _0807AD5C
_0807ACBC:
	add r0, sp, #8
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _0807ACC6
	b _0807AED0
_0807ACC6:
	add r1, sp, #8
	adds r0, r1, #0
	ldrh r0, [r0, #0xa]
	subs r0, #1
	strh r0, [r1, #0xa]
	add r1, sp, #0x28
	ldrh r0, [r1, #0xa]
	adds r0, #1
	strh r0, [r1, #0xa]
	add r2, sp, #8
	adds r0, r2, #0
	ldrh r0, [r0, #2]
	subs r0, #1
	strh r0, [r2, #2]
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
	b _0807AD5C
_0807ACEA:
	ldr r0, _0807AD14
	ldrh r2, [r0, #0]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0807AD20
	add r0, sp, #0xdc
	ldr r1, _0807AD18
	ldr r1, [r1, #0]
	adds r1, #0x30
	movs r2, #0x12
	bl sub_080B8578
	ldr r0, _0807AD1C
	ldr r1, [r0, #0]
	movs r0, #1
	str r0, [r1, #4]
_0807AD0C:
	movs r0, #0x10
	bl sub_0805865C
	b _0807AED0
_0807AD14: .4byte gUnk_03001324
_0807AD18: .4byte gUnk_030034E0
_0807AD1C: .4byte gUnk_03006440
_0807AD20:
	ldr r0, _0807AD3C
	ldrh r1, [r0, #0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0807AD44
	ldr r0, _0807AD40
	ldr r1, [r0, #0]
	ldr r0, [r1, #0xc]
	cmp r0, #6
	bls _0807AD38
	b _0807AED0
_0807AD38:
	adds r0, #1
	b _0807AD5A
_0807AD3C: .4byte gUnk_03001308
_0807AD40: .4byte gUnk_03006440
_0807AD44:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0807AD68
	ldr r0, _0807AD64
	ldr r1, [r0, #0]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bne _0807AD58
	b _0807AED0
_0807AD58:
	subs r0, #1
_0807AD5A:
	str r0, [r1, #0xc]
_0807AD5C:
	movs r0, #0x62
	bl sub_0805865C
	b _0807AED0
_0807AD64: .4byte gUnk_03006440
_0807AD68:
	movs r4, #1
	adds r6, r4, #0
	ands r6, r2
	cmp r6, #0
	beq _0807AD98
	movs r0, #0xf
	bl sub_0805865C
	ldr r0, _0807AD90
	ldr r0, [r0, #0]
	str r4, [r0, #4]
	add r0, sp, #0x100
	ldr r1, _0807AD94
	ldr r1, [r1, #0]
	adds r1, #0x30
	movs r2, #0x12
	bl sub_080B8578
	b _0807AED0
	.2byte 0x0000
_0807AD90: .4byte gUnk_03006440
_0807AD94: .4byte gUnk_030034E0
_0807AD98:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	beq _0807AE56
	add r4, sp, #0x100
	ldrh r0, [r4, #0]
	cmp r0, #0
	bne _0807ADAE
	b _0807AED0
_0807ADAE:
	ldr r7, _0807AE2C
	ldr r0, [r7, #0]
	ldr r0, [r0, #0xc]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldrh r0, [r0, #4]
	cmp r0, #6
	bls _0807ADC0
	b _0807AED0
_0807ADC0:
	movs r0, #0x3a
	bl sub_0805865C
	ldr r5, [r7, #0]
	ldr r1, [r5, #0xc]
	lsls r1, r1, #2
	adds r1, r4, r1
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	ldr r0, [r5, #0xc]
	lsls r3, r0, #2
	adds r2, r4, r3
	ldrh r1, [r2, #6]
	ldrh r0, [r2, #4]
	adds r0, #1
	cmp r1, r0
	blt _0807AE3E
	strh r0, [r2, #4]
	add r2, sp, #0xb8
	ldr r1, [r5, #0xc]
	lsls r1, r1, #2
	adds r1, r2, r1
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	ldrh r0, [r4, #0]
	subs r0, #1
	strh r0, [r4, #0]
	ldrh r0, [r2, #0]
	adds r0, #1
	strh r0, [r2, #0]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #2
	adds r2, r2, r0
	ldrh r0, [r2, #6]
	adds r0, #1
	strh r0, [r2, #6]
	ldr r1, [r5, #0xc]
	lsls r1, r1, #3
	adds r1, #0x28
	movs r0, #0xa0
	bl sub_08085218
	ldr r2, [r7, #0]
	ldr r0, [r2, #0xc]
	lsls r0, r0, #2
	adds r1, r4, r0
	ldrh r0, [r1, #4]
	cmp r0, #6
	bhi _0807AE30
	strh r6, [r1, #6]
	b _0807AED0
	.2byte 0x0000
_0807AE2C: .4byte gUnk_03006440
_0807AE30:
	strh r6, [r1, #6]
	ldr r0, [r2, #0xc]
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #7
	strh r1, [r0, #4]
	b _0807AED0
_0807AE3E:
	add r2, sp, #0xb8
	adds r1, r2, r3
	ldrh r0, [r1, #6]
	adds r0, #1
	strh r0, [r1, #6]
	ldrh r0, [r4, #0]
	subs r0, #1
	strh r0, [r4, #0]
	ldrh r0, [r2, #0]
	adds r0, #1
	strh r0, [r2, #0]
	b _0807AED0
_0807AE56:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0807AED0
	add r5, sp, #0xb8
	ldr r6, _0807AEE8
	ldr r0, [r6, #0]
	ldr r0, [r0, #0xc]
	lsls r0, r0, #2
	adds r0, r5, r0
	ldrh r0, [r0, #6]
	cmp r0, #0
	beq _0807AED0
	movs r0, #0x3c
	bl sub_0805865C
	add r4, sp, #0x100
	ldr r3, [r6, #0]
	ldr r1, [r3, #0xc]
	lsls r1, r1, #2
	adds r1, r4, r1
	ldrh r0, [r1, #6]
	subs r0, #1
	strh r0, [r1, #6]
	ldr r1, [r3, #0xc]
	lsls r1, r1, #2
	adds r1, r5, r1
	ldrh r0, [r1, #6]
	subs r0, #1
	strh r0, [r1, #6]
	ldrh r0, [r4, #0]
	adds r0, #1
	strh r0, [r4, #0]
	ldr r0, [r3, #0xc]
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r1, [r2, #6]
	movs r5, #0x80
	lsls r5, r5, #8
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0807AED0
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	ldr r0, [r3, #0xc]
	lsls r0, r0, #2
	adds r2, r4, r0
	ldrh r1, [r2, #4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0807AEC4
	strh r7, [r2, #4]
_0807AEC4:
	ldr r0, [r6, #0]
	ldr r0, [r0, #0xc]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldrh r1, [r0, #4]
	strh r1, [r0, #6]
_0807AED0:
	ldr r0, _0807AEE8
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #4
	bls _0807AEDC
	b _0807B262
_0807AEDC:
	lsls r0, r0, #2
	ldr r1, _0807AEEC
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0807AEE8: .4byte gUnk_03006440
_0807AEEC: .4byte _0807AEF0
_0807AEF0:
	.4byte _0807AF04
_0807AEF4: .4byte _0807AF24
_0807AEF8: .4byte _0807AF48
_0807AEFC: .4byte _0807B0E0
_0807AF00: .4byte _0807B262
_0807AF04:
	ldr r1, _0807AF20
	movs r0, #0
	strh r0, [r1, #0xa]
	ldr r0, [sp, #0x150]
	cmp r0, #0
	bne _0807AF12
	b _0807B262
_0807AF12:
	movs r0, #2
	movs r1, #0x12
	bl sub_0801A664
	movs r1, #0
	str r1, [sp, #0x150]
	b _0807B262
_0807AF20: .4byte gUnk_03001250
_0807AF24:
	ldr r1, _0807AF44
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0xa]
	ldr r2, [sp, #0x150]
	cmp r2, #0
	bne _0807AF34
	b _0807B262
_0807AF34:
	movs r0, #2
	movs r1, #0x12
	bl sub_0801A664
	movs r3, #0
	str r3, [sp, #0x150]
	b _0807B262
	.2byte 0x0000
_0807AF44: .4byte gUnk_03001250
_0807AF48:
	ldr r0, _0807AF78
	ldr r2, [r0, #0]
	ldr r1, [r2, #0xc]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	beq _0807AF66
	lsls r0, r0, #3
	adds r0, #0x2e
	str r0, [sp, #0x144]
	lsls r0, r1, #3
	adds r0, #0x2e
	str r0, [sp, #0x148]
	str r1, [r2, #0x14]
	movs r0, #0
	str r0, [sp, #0x14c]
_0807AF66:
	movs r4, #0x80
	lsls r4, r4, #3
	ldr r1, [sp, #0x14c]
	cmp r1, r4
	ble _0807AF7C
	add r0, sp, #0x134
	ldr r2, [sp, #0x148]
	str r2, [r0, #0]
	b _0807AF9E
_0807AF78: .4byte gUnk_03006440
_0807AF7C:
	add r0, sp, #0x134
	ldr r1, [sp, #0x144]
	ldr r2, [sp, #0x148]
	ldr r3, [sp, #0x14c]
	bl sub_080659F4
	ldr r3, [sp, #0x14c]
	subs r0, r4, r3
	asrs r0, r0, #1
	adds r3, r3, r0
	str r3, [sp, #0x14c]
	subs r0, r4, r3
	asrs r0, r0, #1
	cmp r0, #0
	bne _0807AF9E
	adds r3, #1
	str r3, [sp, #0x14c]
_0807AF9E:
	ldr r5, _0807AFDC
	ldr r0, [r5, #0]
	movs r4, #0xb7
	lsls r4, r4, #3
	adds r0, r0, r4
	add r1, sp, #0x134
	ldr r2, [r1, #0]
	movs r1, #0
	str r1, [sp, #0]
	movs r1, #2
	str r1, [sp, #4]
	movs r1, #8
	movs r3, #0x16
	bl sub_080659BC
	add r0, sp, #0x28
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	beq _0807B018
	ldr r0, [r5, #0]
	ldr r1, [r0, #0xc]
	cmp r1, #1
	beq _0807AFEC
	cmp r1, #1
	blo _0807AFE0
	cmp r1, #2
	beq _0807AFF6
	cmp r1, #3
	beq _0807B008
	b _0807B018
	.2byte 0x0000
_0807AFDC: .4byte gUnk_03006440
_0807AFE0:
	adds r0, r0, r4
	movs r1, #1
	str r1, [sp, #0]
	movs r1, #0x40
	movs r2, #0x2f
	b _0807B000
_0807AFEC:
	adds r0, r0, r4
	str r1, [sp, #0]
	movs r1, #0x40
	movs r2, #0x37
	b _0807B000
_0807AFF6:
	adds r0, r0, r4
	movs r1, #1
	str r1, [sp, #0]
	movs r1, #0x40
	movs r2, #0x3f
_0807B000:
	movs r3, #3
	bl sub_08065230
	b _0807B018
_0807B008:
	adds r0, r0, r4
	movs r1, #1
	str r1, [sp, #0]
	movs r1, #0x40
	movs r2, #0x47
	movs r3, #3
	bl sub_08065230
_0807B018:
	ldr r0, _0807B030
	ldr r2, [r0, #0]
	ldr r1, [r2, #0xc]
	cmp r1, #1
	beq _0807B04E
	cmp r1, #1
	blo _0807B034
	cmp r1, #2
	beq _0807B066
	cmp r1, #3
	beq _0807B084
	b _0807B0A2
_0807B030: .4byte gUnk_03006440
_0807B034:
	add r0, sp, #8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0807B0A2
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r2, r3
	movs r1, #2
	str r1, [sp, #0]
	movs r1, #0x20
	movs r2, #0x2f
	b _0807B07C
_0807B04E:
	add r0, sp, #8
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0807B0A2
	movs r1, #0xb7
	lsls r1, r1, #3
	adds r0, r2, r1
	movs r1, #2
	str r1, [sp, #0]
	movs r1, #0x20
	movs r2, #0x37
	b _0807B07C
_0807B066:
	add r0, sp, #8
	movs r3, #4
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0807B0A2
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r2, r3
	str r1, [sp, #0]
	movs r1, #0x20
	movs r2, #0x3f
_0807B07C:
	movs r3, #3
	bl sub_08065230
	b _0807B0A2
_0807B084:
	add r0, sp, #8
	movs r1, #6
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0807B0A2
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r2, r3
	movs r1, #2
	str r1, [sp, #0]
	movs r1, #0x20
	movs r2, #0x47
	movs r3, #3
	bl sub_08065230
_0807B0A2:
	ldr r0, _0807B0DC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x158]
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
	movs r2, #0x11
	bl sub_0801A3D0
	movs r2, #1
	str r2, [sp, #0x150]
	b _0807B262
_0807B0DC: .4byte gUnk_03006440
_0807B0E0:
	ldr r0, _0807B110
	ldr r2, [r0, #0]
	ldr r1, [r2, #0xc]
	ldr r0, [r2, #0x14]
	cmp r1, r0
	beq _0807B0FE
	lsls r0, r0, #3
	adds r0, #0x2f
	str r0, [sp, #0x144]
	lsls r0, r1, #3
	adds r0, #0x2f
	str r0, [sp, #0x148]
	str r1, [r2, #0x14]
	movs r3, #0
	str r3, [sp, #0x14c]
_0807B0FE:
	movs r4, #0x80
	lsls r4, r4, #3
	ldr r0, [sp, #0x14c]
	cmp r0, r4
	ble _0807B114
	add r0, sp, #0x134
	ldr r1, [sp, #0x148]
	str r1, [r0, #0]
	b _0807B136
_0807B110: .4byte gUnk_03006440
_0807B114:
	add r0, sp, #0x134
	ldr r1, [sp, #0x144]
	ldr r2, [sp, #0x148]
	ldr r3, [sp, #0x14c]
	bl sub_080659F4
	ldr r2, [sp, #0x14c]
	subs r0, r4, r2
	asrs r0, r0, #1
	adds r2, r2, r0
	str r2, [sp, #0x14c]
	subs r0, r4, r2
	asrs r0, r0, #1
	cmp r0, #0
	bne _0807B136
	adds r2, #1
	str r2, [sp, #0x14c]
_0807B136:
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _0807B212
	lsls r0, r0, #2
	ldr r1, _0807B14C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0807B14C: .4byte _0807B150
_0807B150:
	.4byte _0807B170
_0807B154: .4byte _0807B184
_0807B158: .4byte _0807B198
_0807B15C: .4byte _0807B1AC
_0807B160: .4byte _0807B1C0
_0807B164: .4byte _0807B1D4
_0807B168: .4byte _0807B1E8
_0807B16C: .4byte _0807B1FC
_0807B170:
	ldr r0, _0807B17C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	ldr r3, _0807B180
	adds r0, r0, r3
	b _0807B206
_0807B17C: .4byte gUnk_03006440
_0807B180: .4byte 0x000003ED
_0807B184:
	ldr r0, _0807B190
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	ldr r1, _0807B194
	b _0807B204
	.2byte 0x0000
_0807B190: .4byte gUnk_03006440
_0807B194: .4byte 0x000003F5
_0807B198:
	ldr r0, _0807B1A4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	ldr r2, _0807B1A8
	adds r0, r0, r2
	b _0807B206
_0807B1A4: .4byte gUnk_03006440
_0807B1A8: .4byte 0x000003FD
_0807B1AC:
	ldr r0, _0807B1B8
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	ldr r3, _0807B1BC
	adds r0, r0, r3
	b _0807B206
_0807B1B8: .4byte gUnk_03006440
_0807B1BC: .4byte 0x00000405
_0807B1C0:
	ldr r0, _0807B1CC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	ldr r1, _0807B1D0
	b _0807B204
	.2byte 0x0000
_0807B1CC: .4byte gUnk_03006440
_0807B1D0: .4byte 0x0000040D
_0807B1D4:
	ldr r0, _0807B1E0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	ldr r2, _0807B1E4
	adds r0, r0, r2
	b _0807B206
_0807B1E0: .4byte gUnk_03006440
_0807B1E4: .4byte 0x00000415
_0807B1E8:
	ldr r0, _0807B1F4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	ldr r3, _0807B1F8
	adds r0, r0, r3
	b _0807B206
_0807B1F4: .4byte gUnk_03006440
_0807B1F8: .4byte 0x0000041D
_0807B1FC:
	ldr r0, _0807B280
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	ldr r1, _0807B284
_0807B204:
	adds r0, r0, r1
_0807B206:
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	str r0, [sp, #0x158]
_0807B212:
	ldr r4, [sp, #0x158]
	adds r4, #2
	adds r0, r4, #0
	bl sub_0801A638
	adds r1, r0, #0
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	lsrs r1, r1, #0x1f
	adds r1, r0, r1
	asrs r1, r1, #1
	movs r5, #1
	ands r0, r5
	adds r1, r1, r0
	negs r1, r1
	lsls r1, r1, #0x10
	movs r2, #0xf0
	lsls r2, r2, #0xc
	adds r1, r1, r2
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x11
	bl sub_0801A3D0
	ldr r0, _0807B280
	ldr r0, [r0, #0]
	movs r3, #0xb7
	lsls r3, r3, #3
	adds r0, r0, r3
	add r1, sp, #0x134
	ldr r2, [r1, #0]
	str r5, [sp, #0]
	movs r1, #2
	str r1, [sp, #4]
	movs r1, #0x70
	movs r3, #0x16
	bl sub_080659BC
	movs r0, #1
	str r0, [sp, #0x150]
_0807B262:
	ldr r0, _0807B280
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #1
	bhi _0807B28C
	ldr r0, _0807B288
	ldr r2, [sp, #0x140]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	asrs r0, r0, #6
	adds r0, #6
	str r0, [sp, #0x13c]
	b _0807B29A
_0807B280: .4byte gUnk_03006440
_0807B284: .4byte 0x00000425
_0807B288: .4byte gUnk_080B9704
_0807B28C:
	ldr r0, [sp, #0x13c]
	adds r0, #1
	str r0, [sp, #0x13c]
	cmp r0, #0xa
	bls _0807B29A
	movs r1, #0xa
	str r1, [sp, #0x13c]
_0807B29A:
	ldr r2, [sp, #0x140]
	adds r2, #4
	str r2, [sp, #0x140]
	cmp r2, #0xff
	bls _0807B2A8
	movs r3, #0
	str r3, [sp, #0x140]
_0807B2A8:
	ldr r0, [sp, #0x13c]
	lsls r3, r0, #0x10
	lsrs r3, r3, #0x10
	movs r1, #7
	str r1, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #4
	movs r1, #0x38
	movs r2, #1
	bl sub_0800903C
	ldr r2, [sp, #0x138]
	adds r2, #0x40
	str r2, [sp, #0x138]
	ldr r1, _0807B3E0
	lsrs r0, r2, #8
	strh r0, [r1, #0xe]
	ldr r3, _0807B3E4
	mov r8, r3
	ldr r0, [r3, #0]
	movs r1, #0x11
	movs r2, #0xe
	bl sub_0801A3D0
	mov r1, r8
	ldr r0, [r1, #0]
	ldr r2, [r0, #0x20]
	adds r2, #1
	movs r0, #0xc
	movs r1, #0xb
	movs r3, #0
	bl sub_0805FB7C
	mov r2, r8
	ldr r0, [r2, #0]
	ldr r2, [r0, #0x1c]
	movs r0, #0xa
	str r0, [sp, #0]
	movs r0, #0x1c
	movs r1, #1
	movs r3, #0
	bl sub_08065504
	ldr r3, _0807B3E8
	mov r9, r3
	ldr r0, [r3, #0]
	ldr r7, [r0, #4]
	cmp r7, #3
	bne _0807B30E
	b _0807B58E
_0807B30E:
	cmp r7, #2
	bne _0807B3EC
	mov r1, r8
	ldr r0, [r1, #0]
	adds r0, #0x10
	add r5, sp, #0x48
	adds r1, r5, #0
	movs r2, #0x10
	bl sub_080B8578
	add r4, sp, #0x28
	mov r2, r8
	ldr r1, [r2, #0]
	adds r1, #0x10
	adds r0, r4, #0
	movs r2, #0x10
	bl sub_080B8578
	add r2, sp, #0x68
	add r6, sp, #0x88
	mov r3, r8
	ldr r0, [r3, #0]
	adds r0, #0x30
	str r0, [sp, #0]
	ldr r0, [sp, #0x154]
	movs r1, #0
	adds r3, r6, #0
	bl sub_0801BA74
	ldrh r0, [r6, #0xa]
	ldr r1, [sp, #0x154]
	adds r1, #0x62
	strh r0, [r1, #0]
	ldrh r1, [r6, #8]
	ldr r0, [sp, #0x154]
	adds r0, #0x60
	strh r1, [r0, #0]
	mov r0, r8
	ldr r1, [r0, #0]
	adds r1, #0x10
	adds r0, r5, #0
	movs r2, #0x10
	bl sub_080B8578
	ldrh r2, [r4, #0xa]
	movs r0, #7
	movs r1, #3
	movs r3, #0
	bl sub_0805FB7C
	add r0, sp, #8
	movs r1, #0
	ldrsh r0, [r0, r1]
	negs r3, r0
	orrs r3, r0
	asrs r3, r3, #0x1f
	ands r3, r7
	movs r0, #0
	ldrsh r2, [r4, r0]
	movs r0, #7
	movs r1, #5
	bl sub_0805FB7C
	add r0, sp, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	negs r3, r0
	orrs r3, r0
	asrs r3, r3, #0x1f
	ands r3, r7
	movs r1, #2
	ldrsh r2, [r4, r1]
	movs r0, #7
	movs r1, #6
	bl sub_0805FB7C
	add r0, sp, #8
	movs r2, #4
	ldrsh r0, [r0, r2]
	negs r3, r0
	orrs r3, r0
	asrs r3, r3, #0x1f
	ands r3, r7
	movs r0, #4
	ldrsh r2, [r4, r0]
	movs r0, #7
	movs r1, #7
	bl sub_0805FB7C
	add r0, sp, #8
	movs r1, #6
	ldrsh r0, [r0, r1]
	negs r3, r0
	orrs r3, r0
	asrs r3, r3, #0x1f
	ands r3, r7
	movs r0, #6
	ldrsh r2, [r4, r0]
	movs r0, #7
	movs r1, #8
	bl sub_0805FB7C
	adds r5, r6, #0
	b _0807B486
_0807B3E0: .4byte gUnk_03001250
_0807B3E4: .4byte gUnk_030034E0
_0807B3E8: .4byte gUnk_03006440
_0807B3EC:
	add r5, sp, #0x88
	mov r1, r8
	ldr r0, [r1, #0]
	adds r0, #0x30
	str r0, [sp, #0]
	ldr r0, [sp, #0x154]
	movs r1, #0
	add r2, sp, #8
	adds r3, r5, #0
	bl sub_0801BA74
	mov r2, r8
	ldr r0, [r2, #0]
	ldrh r2, [r0, #0x1a]
	movs r0, #7
	movs r1, #3
	movs r3, #0
	bl sub_0805FB7C
	add r0, sp, #8
	movs r3, #0
	ldrsh r0, [r0, r3]
	negs r3, r0
	orrs r3, r0
	asrs r3, r3, #0x1f
	movs r4, #2
	ands r3, r4
	ldr r0, [sp, #0x154]
	movs r1, #0x38
	ldrsh r2, [r0, r1]
	movs r0, #7
	movs r1, #5
	bl sub_0805FB7C
	add r0, sp, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	negs r3, r0
	orrs r3, r0
	asrs r3, r3, #0x1f
	ands r3, r4
	ldr r0, [sp, #0x154]
	movs r1, #0x3a
	ldrsh r2, [r0, r1]
	movs r0, #7
	movs r1, #6
	bl sub_0805FB7C
	add r0, sp, #8
	movs r2, #4
	ldrsh r0, [r0, r2]
	negs r3, r0
	orrs r3, r0
	asrs r3, r3, #0x1f
	ands r3, r4
	ldr r0, [sp, #0x154]
	movs r1, #0x3c
	ldrsh r2, [r0, r1]
	movs r0, #7
	movs r1, #7
	bl sub_0805FB7C
	add r0, sp, #8
	movs r2, #6
	ldrsh r0, [r0, r2]
	negs r3, r0
	orrs r3, r0
	asrs r3, r3, #0x1f
	ands r3, r4
	ldr r0, [sp, #0x154]
	movs r1, #0x3e
	ldrsh r2, [r0, r1]
	movs r0, #7
	movs r1, #8
	bl sub_0805FB7C
_0807B486:
	movs r3, #0
	ldrsh r2, [r5, r3]
	movs r0, #7
	movs r1, #0xa
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #2
	ldrsh r2, [r5, r0]
	movs r0, #7
	movs r1, #0xb
	movs r3, #0
	bl sub_0805FB7C
	movs r1, #0x24
	ldrsh r2, [r5, r1]
	movs r0, #5
	movs r1, #0xd
	movs r3, #0
	bl sub_0805FB7C
	movs r3, #0x26
	ldrsh r2, [r5, r3]
	movs r0, #5
	movs r1, #0xe
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #0x28
	ldrsh r2, [r5, r0]
	movs r0, #5
	movs r1, #0xf
	movs r3, #0
	bl sub_0805FB7C
	movs r1, #0x2a
	ldrsh r2, [r5, r1]
	movs r0, #0xc
	movs r1, #0xd
	movs r3, #0
	bl sub_0805FB7C
	movs r3, #0x2c
	ldrsh r2, [r5, r3]
	movs r0, #0xc
	movs r1, #0xe
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #0x2e
	ldrsh r2, [r5, r0]
	movs r0, #0xc
	movs r1, #0xf
	movs r3, #0
	bl sub_0805FB7C
	ldr r4, _0807B554
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0x30]
	bl sub_08085064
	movs r6, #0
	mov r8, r4
	ldr r1, _0807B558
	mov sl, r1
	movs r2, #0xb7
	lsls r2, r2, #3
	mov r9, r2
	movs r7, #0x30
	movs r4, #0x95
	lsls r4, r4, #1
	add r4, sp
_0807B516:
	adds r1, r6, #5
	mov r3, r8
	ldr r0, [r3, #0]
	lsls r5, r6, #2
	adds r0, r0, r5
	ldrh r2, [r0, #0x34]
	movs r0, #0x15
	movs r3, #0
	bl sub_0805FB7C
	mov r1, r8
	ldr r0, [r1, #0]
	adds r1, r0, r5
	ldrh r0, [r1, #0x34]
	cmp r0, #6
	bhi _0807B55C
	adds r1, r0, #0
	adds r1, #1
	adds r0, r6, #0
	movs r2, #3
	bl sub_08085014
	mov r2, r8
	ldr r0, [r2, #0]
	adds r0, r0, r5
	ldrh r1, [r0, #0x36]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08085014
	b _0807B584
_0807B554: .4byte gUnk_030034E0
_0807B558: .4byte gUnk_03006440
_0807B55C:
	mov r3, sl
	ldr r0, [r3, #0]
	add r0, r9
	movs r1, #1
	str r1, [sp, #0]
	movs r1, #0x23
	adds r2, r4, #0
	add r3, sp, #0x12c
	bl sub_08065370
	mov r1, sl
	ldr r0, [r1, #0]
	add r0, r9
	ldrh r1, [r4, #0]
	str r1, [sp, #0]
	movs r1, #0xb0
	adds r2, r7, #0
	movs r3, #0x23
	bl sub_08065230
_0807B584:
	adds r7, #8
	adds r6, #1
	cmp r6, #7
	bls _0807B516
	b _0807B708
_0807B58E:
	add r4, sp, #0x88
	add r5, sp, #0x100
	str r5, [sp, #0]
	ldr r0, [sp, #0x154]
	movs r1, #0
	add r2, sp, #8
	adds r3, r4, #0
	bl sub_0801BA74
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r0, #7
	movs r1, #0xa
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r0, #7
	movs r1, #0xb
	movs r3, #0
	bl sub_0805FB7C
	movs r1, #0x24
	ldrsh r2, [r4, r1]
	movs r0, #5
	movs r1, #0xd
	movs r3, #0
	bl sub_0805FB7C
	movs r3, #0x26
	ldrsh r2, [r4, r3]
	movs r0, #5
	movs r1, #0xe
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #0x28
	ldrsh r2, [r4, r0]
	movs r0, #5
	movs r1, #0xf
	movs r3, #0
	bl sub_0805FB7C
	movs r1, #0x2a
	ldrsh r2, [r4, r1]
	movs r0, #0xc
	movs r1, #0xd
	movs r3, #0
	bl sub_0805FB7C
	movs r3, #0x2c
	ldrsh r2, [r4, r3]
	movs r0, #0xc
	movs r1, #0xe
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #0x2e
	ldrsh r2, [r4, r0]
	movs r0, #0xc
	movs r1, #0xf
	movs r3, #0
	bl sub_0805FB7C
	mov r1, r8
	ldr r0, [r1, #0]
	ldrh r2, [r0, #0x1a]
	movs r0, #7
	movs r1, #3
	movs r3, #0
	bl sub_0805FB7C
	add r0, sp, #8
	movs r2, #0
	ldrsh r0, [r0, r2]
	negs r3, r0
	orrs r3, r0
	asrs r3, r3, #0x1f
	movs r4, #2
	ands r3, r4
	add r0, sp, #8
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #7
	movs r1, #5
	bl sub_0805FB7C
	add r0, sp, #8
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	negs r3, r0
	orrs r3, r0
	asrs r3, r3, #0x1f
	ands r3, r4
	add r0, sp, #8
	movs r1, #2
	ldrsh r2, [r0, r1]
	movs r0, #7
	movs r1, #6
	bl sub_0805FB7C
	add r0, sp, #8
	movs r2, #4
	ldrsh r0, [r0, r2]
	negs r3, r0
	orrs r3, r0
	asrs r3, r3, #0x1f
	ands r3, r4
	add r0, sp, #8
	movs r1, #4
	ldrsh r2, [r0, r1]
	movs r0, #7
	movs r1, #7
	bl sub_0805FB7C
	add r0, sp, #8
	movs r2, #6
	ldrsh r0, [r0, r2]
	negs r3, r0
	orrs r3, r0
	asrs r3, r3, #0x1f
	ands r3, r4
	add r0, sp, #8
	movs r1, #6
	ldrsh r2, [r0, r1]
	movs r0, #7
	movs r1, #8
	bl sub_0805FB7C
	ldrh r0, [r5, #0]
	bl sub_08085064
	movs r6, #0
	movs r2, #0xb7
	lsls r2, r2, #3
	mov r8, r2
	movs r5, #0x95
	lsls r5, r5, #1
	add r5, sp
	movs r7, #0x30
	add r4, sp, #0x104
_0807B6AC:
	adds r1, r6, #5
	ldrh r2, [r4, #0]
	movs r0, #0x15
	movs r3, #0
	bl sub_0805FB7C
	ldrh r0, [r4, #0]
	cmp r0, #6
	bhi _0807B6D6
	adds r1, r0, #0
	adds r1, #1
	adds r0, r6, #0
	movs r2, #3
	bl sub_08085014
	ldrh r1, [r4, #2]
	adds r0, r6, #0
	movs r2, #0
	bl sub_08085014
	b _0807B6FE
_0807B6D6:
	mov r3, r9
	ldr r0, [r3, #0]
	add r0, r8
	movs r1, #1
	str r1, [sp, #0]
	movs r1, #0x23
	adds r2, r5, #0
	add r3, sp, #0x12c
	bl sub_08065370
	mov r1, r9
	ldr r0, [r1, #0]
	add r0, r8
	ldrh r1, [r5, #0]
	str r1, [sp, #0]
	movs r1, #0xb0
	adds r2, r7, #0
	movs r3, #0x23
	bl sub_08065230
_0807B6FE:
	adds r7, #8
	adds r4, #4
	adds r6, #1
	cmp r6, #7
	bls _0807B6AC
_0807B708:
	bl sub_080003F0
	ldr r0, _0807B72C
	ldr r0, [r0, #0]
_0807B710:
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _0807B71A
	bl _0807A870
_0807B71A:
	bl sub_0806617C
	movs r0, #0
	bl sub_080586B4
	movs r0, #6
	bl sub_0801ABE8
	b _0807B734
_0807B72C: .4byte gUnk_03006440
_0807B730:
	bl sub_080003F0
_0807B734:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0807B730
	bl sub_0800D2F4
	bl sub_080851B8
_0807B744:
	movs r0, #0x10
	movs r1, #8
	bl sub_08000C08
	movs r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	bl sub_080020F4
	ldr r1, _0807B7AC
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #9
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	movs r0, #2
	movs r1, #0x11
	bl sub_0801A664
	movs r0, #3
	bl sub_08057B64
	adds r6, r0, #0
	subs r0, r6, #2
	cmp r0, #7
	bhi _0807B794
	movs r0, #0
	movs r1, #0xe
	bl sub_0802A590
_0807B794:
	ldr r0, _0807B7B0
	bl sub_08000420
	add sp, #0x15c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0807B7AC: .4byte gUnk_03003CE0
_0807B7B0: .4byte 0x11201100
	thumb_func_end sub_0807A5D4
