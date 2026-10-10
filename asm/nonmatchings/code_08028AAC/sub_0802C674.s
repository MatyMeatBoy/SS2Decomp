	thumb_func_start sub_0802C674
sub_0802C674: @ 0x0802C674
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_0800CE30
	cmp r0, #0
	beq _0802C694
	ldr r0, _0802C68C
	ldr r0, [r0, #0]
	ldr r1, _0802C690
	adds r0, r0, r1
	b _0802C69C
_0802C68C: .4byte gUnk_03005CF4
_0802C690: .4byte 0x000001BF
_0802C694:
	ldr r0, _0802C6B0
	ldr r0, [r0, #0]
	ldr r2, _0802C6B4
	adds r0, r0, r2
_0802C69C:
	ldrb r0, [r0, #0]
	mov r8, r0
	cmp r0, #1
	beq _0802C73C
	cmp r0, #1
	bgt _0802C6B8
	cmp r0, #0
	beq _0802C6CC
	b _0802C8EE
	.2byte 0x0000
_0802C6B0: .4byte gUnk_03005CF4
_0802C6B4: .4byte 0x000001B3
_0802C6B8:
	mov r0, r8
	cmp r0, #2
	bne _0802C6C0
	b _0802C812
_0802C6C0:
	cmp r0, #3
	bne _0802C6C6
	b _0802C888
_0802C6C6:
	b _0802C8EE
_0802C6C8:
	adds r2, r1, #0
	b _0802C6F6
_0802C6CC:
	movs r0, #0xc
	movs r1, #0xda
	movs r2, #0xe9
	bl sub_080289C0
	adds r6, r0, #0
	ldr r0, _0802C728
	ldr r0, [r0, #0]
	ldr r2, _0802C72C
	adds r1, r0, r2
	movs r2, #0
_0802C6E2:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802C6C8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C6E2
	bl sub_080003F0
	movs r2, #0
_0802C6F6:
	cmp r2, #0
	beq _0802C70A
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0x1e
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802C70A:
	ldr r4, _0802C730
	ldr r0, _0802C728
	ldr r0, [r0, #0]
	ldr r2, _0802C72C
	adds r1, r0, r2
	movs r2, #0
_0802C716:
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _0802C71E
	b _0802C884
_0802C71E:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C716
	b _0802C8E2
_0802C728: .4byte gUnk_03005CF4
_0802C72C: .4byte 0x000007A4
_0802C730: .4byte sub_08033C40
_0802C734:
	adds r2, r1, #0
	b _0802C768
_0802C738:
	adds r0, r1, #0
	b _0802C79C
_0802C73C:
	ldr r0, _0802C7B0
	movs r1, #0x88
	lsls r1, r1, #1
	movs r2, #0xf8
	bl sub_080289C0
	adds r6, r0, #0
	ldr r0, _0802C7B4
	ldr r0, [r0, #0]
	ldr r2, _0802C7B8
	adds r1, r0, r2
	movs r2, #0
_0802C754:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802C734
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C754
	bl sub_080003F0
	movs r2, #0
_0802C768:
	cmp r2, #0
	beq _0802C77C
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802C77C:
	ldr r4, _0802C7BC
	ldr r0, _0802C7B4
	ldr r0, [r0, #0]
	ldr r2, _0802C7B8
	adds r1, r0, r2
	movs r2, #0
_0802C788:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802C738
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C788
	bl sub_080003F0
	movs r0, #0
_0802C79C:
	cmp r0, #0
	beq _0802C7A2
	str r4, [r0, #0x44]
_0802C7A2:
	ldr r7, _0802C7C0
	ldr r0, _0802C7B4
	ldr r0, [r0, #0]
	ldr r1, _0802C7C4
	adds r4, r0, r1
	movs r5, #0
	b _0802C7CC
_0802C7B0: .4byte 0x0009000C
_0802C7B4: .4byte gUnk_03005CF4
_0802C7B8: .4byte 0x000007A4
_0802C7BC: .4byte sub_08033C40
_0802C7C0: .4byte sub_08034900
_0802C7C4: .4byte 0x00000E34
_0802C7C8:
	adds r5, #1
	adds r4, #0x28
_0802C7CC:
	cmp r5, #0x1d
	bls _0802C7D2
	b _0802C8EE
_0802C7D2:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802C7C8
	b _0802C7E2
_0802C7DE:
	bl sub_080003F0
_0802C7E2:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802C7DE
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
	b _0802C8EE
_0802C80E:
	adds r2, r1, #0
	b _0802C83E
_0802C812:
	ldr r0, _0802C870
	movs r1, #0x88
	lsls r1, r1, #1
	movs r2, #0xf8
	bl sub_080289C0
	adds r6, r0, #0
	ldr r0, _0802C874
	ldr r0, [r0, #0]
	ldr r2, _0802C878
	adds r1, r0, r2
	movs r2, #0
_0802C82A:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802C80E
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C82A
	bl sub_080003F0
	movs r2, #0
_0802C83E:
	cmp r2, #0
	beq _0802C852
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802C852:
	ldr r4, _0802C87C
	ldr r0, _0802C874
	ldr r0, [r0, #0]
	ldr r2, _0802C878
	adds r1, r0, r2
	movs r2, #0
_0802C85E:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802C884
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C85E
	b _0802C8E2
	.2byte 0x0000
_0802C870: .4byte 0x0009000C
_0802C874: .4byte gUnk_03005CF4
_0802C878: .4byte 0x000007A4
_0802C87C: .4byte sub_08033C40
_0802C880:
	adds r2, r1, #0
	b _0802C8B4
_0802C884:
	adds r0, r1, #0
	b _0802C8E8
_0802C888:
	ldr r0, _0802C900
	movs r1, #0x88
	lsls r1, r1, #1
	movs r2, #0xf8
	bl sub_080289C0
	adds r6, r0, #0
	ldr r0, _0802C904
	ldr r0, [r0, #0]
	ldr r2, _0802C908
	adds r1, r0, r2
	movs r2, #0
_0802C8A0:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802C880
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C8A0
	bl sub_080003F0
	movs r2, #0
_0802C8B4:
	cmp r2, #0
	beq _0802C8C8
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802C8C8:
	ldr r4, _0802C90C
	ldr r0, _0802C904
	ldr r0, [r0, #0]
	ldr r2, _0802C908
	adds r1, r0, r2
	movs r2, #0
_0802C8D4:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802C884
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C8D4
_0802C8E2:
	bl sub_080003F0
	movs r0, #0
_0802C8E8:
	cmp r0, #0
	beq _0802C8EE
	str r4, [r0, #0x44]
_0802C8EE:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802C914
	ldr r0, _0802C904
	ldr r0, [r0, #0]
	ldr r1, _0802C910
	adds r0, r0, r1
	b _0802C91C
_0802C900: .4byte 0x0009000C
_0802C904: .4byte gUnk_03005CF4
_0802C908: .4byte 0x000007A4
_0802C90C: .4byte sub_08033C40
_0802C910: .4byte 0x000001BF
_0802C914:
	ldr r0, _0802C930
	ldr r0, [r0, #0]
	ldr r2, _0802C934
	adds r0, r0, r2
_0802C91C:
	ldrb r0, [r0, #0]
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _0802C93C
	ldr r1, _0802C930
	ldr r0, [r1, #0]
	ldr r2, _0802C938
	b _0802C942
_0802C930: .4byte gUnk_03005CF4
_0802C934: .4byte 0x000001B3
_0802C938: .4byte 0x000001C5
_0802C93C:
	ldr r1, _0802C95C
	ldr r0, [r1, #0]
	ldr r2, _0802C960
_0802C942:
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	asrs r2, r0, #5
	movs r0, #1
	ands r2, r0
	cmp r4, #0
	bne _0802C9D8
	ldr r7, _0802C964
	ldr r0, [r1, #0]
	ldr r1, _0802C968
	adds r4, r0, r1
	movs r5, #0
	b _0802C970
_0802C95C: .4byte gUnk_03005CF4
_0802C960: .4byte 0x000001B9
_0802C964: .4byte sub_08034488
_0802C968: .4byte 0x00000E34
_0802C96C:
	adds r5, #1
	adds r4, #0x28
_0802C970:
	cmp r5, #0x1d
	bhi _0802CA4A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802C96C
	b _0802C984
_0802C980:
	bl sub_080003F0
_0802C984:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802C980
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
	b _0802CA4A
_0802C9B0:
	adds r2, r1, #0
	b _0802CA08
_0802C9B4:
	adds r0, r1, #0
	b _0802CA3C
_0802C9B8:
	adds r2, r1, #0
	b _0802CA76
_0802C9BC:
	adds r0, r1, #0
	b _0802CAAA
_0802C9C0:
	adds r2, r1, #0
	b _0802CB4C
_0802C9C4:
	adds r0, r1, #0
	b _0802CB82
_0802C9C8:
	adds r2, r1, #0
	b _0802CC1E
_0802C9CC:
	adds r0, r1, #0
	b _0802CC54
_0802C9D0:
	adds r2, r1, #0
	b _0802CCEC
_0802C9D4:
	adds r0, r1, #0
	b _0802CD22
_0802C9D8:
	cmp r2, #0
	beq _0802CA4A
	movs r1, #0x9c
	lsls r1, r1, #1
	movs r0, #6
	movs r2, #0xfa
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802CAC0
	ldr r0, [r0, #0]
	ldr r2, _0802CAC4
	adds r1, r0, r2
	movs r2, #0
_0802C9F4:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C9B0
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802C9F4
	bl sub_080003F0
	movs r2, #0
_0802CA08:
	cmp r2, #0
	beq _0802CA1C
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802CA1C:
	ldr r5, _0802CAC8
	ldr r0, _0802CAC0
	ldr r0, [r0, #0]
	ldr r2, _0802CAC4
	adds r1, r0, r2
	movs r2, #0
_0802CA28:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802C9B4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CA28
	bl sub_080003F0
	movs r0, #0
_0802CA3C:
	cmp r0, #0
	beq _0802CA42
	str r5, [r0, #0x44]
_0802CA42:
	adds r0, r4, #0
	movs r1, #0xb
	bl sub_0802939C
_0802CA4A:
	movs r1, #0x94
	lsls r1, r1, #1
	ldr r2, _0802CACC
	movs r0, #0x1e
	bl sub_080289C0
	adds r6, r0, #0
	ldr r0, _0802CAC0
	ldr r0, [r0, #0]
	ldr r2, _0802CAC4
	adds r1, r0, r2
	movs r2, #0
_0802CA62:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802C9B8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CA62
	bl sub_080003F0
	movs r2, #0
_0802CA76:
	cmp r2, #0
	beq _0802CA8A
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802CA8A:
	ldr r4, _0802CAD0
	ldr r0, _0802CAC0
	ldr r0, [r0, #0]
	ldr r2, _0802CAC4
	adds r1, r0, r2
	movs r2, #0
_0802CA96:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _0802C9BC
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CA96
	bl sub_080003F0
	movs r0, #0
_0802CAAA:
	cmp r0, #0
	beq _0802CAB0
	str r4, [r0, #0x44]
_0802CAB0:
	ldr r7, _0802CAD4
	ldr r0, _0802CAC0
	ldr r0, [r0, #0]
	ldr r1, _0802CAD8
	adds r4, r0, r1
	movs r5, #0
	b _0802CAE0
	.2byte 0x0000
_0802CAC0: .4byte gUnk_03005CF4
_0802CAC4: .4byte 0x000007A4
_0802CAC8: .4byte sub_080376CC
_0802CACC: .4byte 0x00000131
_0802CAD0: .4byte sub_0803540C
_0802CAD4: .4byte sub_08035914
_0802CAD8: .4byte 0x00000E34
_0802CADC:
	adds r5, #1
	adds r4, #0x28
_0802CAE0:
	cmp r5, #0x1d
	bhi _0802CB1E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802CADC
	b _0802CAF4
_0802CAF0:
	bl sub_080003F0
_0802CAF4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802CAF0
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
_0802CB1E:
	movs r2, #0x9e
	lsls r2, r2, #1
	movs r0, #0x2d
	movs r1, #0xef
	bl sub_080289C0
	adds r6, r0, #0
	ldr r0, _0802CB98
	ldr r0, [r0, #0]
	ldr r2, _0802CB9C
	adds r1, r0, r2
	movs r2, #0
_0802CB36:
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _0802CB3E
	b _0802C9C0
_0802CB3E:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CB36
	bl sub_080003F0
	movs r2, #0
_0802CB4C:
	cmp r2, #0
	beq _0802CB60
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802CB60:
	ldr r4, _0802CBA0
	ldr r0, _0802CB98
	ldr r0, [r0, #0]
	ldr r2, _0802CB9C
	adds r1, r0, r2
	movs r2, #0
_0802CB6C:
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _0802CB74
	b _0802C9C4
_0802CB74:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CB6C
	bl sub_080003F0
	movs r0, #0
_0802CB82:
	cmp r0, #0
	beq _0802CB88
	str r4, [r0, #0x44]
_0802CB88:
	ldr r7, _0802CBA4
	ldr r0, _0802CB98
	ldr r0, [r0, #0]
	ldr r1, _0802CBA8
	adds r4, r0, r1
	movs r5, #0
	b _0802CBB0
	.2byte 0x0000
_0802CB98: .4byte gUnk_03005CF4
_0802CB9C: .4byte 0x000007A4
_0802CBA0: .4byte sub_0803540C
_0802CBA4: .4byte sub_080359E8
_0802CBA8: .4byte 0x00000E34
_0802CBAC:
	adds r5, #1
	adds r4, #0x28
_0802CBB0:
	cmp r5, #0x1d
	bhi _0802CBEE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802CBAC
	b _0802CBC4
_0802CBC0:
	bl sub_080003F0
_0802CBC4:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802CBC0
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
_0802CBEE:
	movs r1, #0x80
	lsls r1, r1, #1
	movs r2, #0x8c
	lsls r2, r2, #1
	movs r0, #0x1d
	bl sub_080289C0
	adds r6, r0, #0
	ldr r0, _0802CC68
	ldr r0, [r0, #0]
	ldr r2, _0802CC6C
	adds r1, r0, r2
	movs r2, #0
_0802CC08:
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _0802CC10
	b _0802C9C8
_0802CC10:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CC08
	bl sub_080003F0
	movs r2, #0
_0802CC1E:
	cmp r2, #0
	beq _0802CC32
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802CC32:
	ldr r4, _0802CC70
	ldr r0, _0802CC68
	ldr r0, [r0, #0]
	ldr r2, _0802CC6C
	adds r1, r0, r2
	movs r2, #0
_0802CC3E:
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _0802CC46
	b _0802C9CC
_0802CC46:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CC3E
	bl sub_080003F0
	movs r0, #0
_0802CC54:
	cmp r0, #0
	beq _0802CC5A
	str r4, [r0, #0x44]
_0802CC5A:
	ldr r7, _0802CC74
	ldr r0, _0802CC68
	ldr r0, [r0, #0]
	ldr r1, _0802CC78
	adds r4, r0, r1
	movs r5, #0
	b _0802CC80
_0802CC68: .4byte gUnk_03005CF4
_0802CC6C: .4byte 0x000007A4
_0802CC70: .4byte sub_0803540C
_0802CC74: .4byte sub_08035A88
_0802CC78: .4byte 0x00000E34
_0802CC7C:
	adds r5, #1
	adds r4, #0x28
_0802CC80:
	cmp r5, #0x1d
	bhi _0802CCBE
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802CC7C
	b _0802CC94
_0802CC90:
	bl sub_080003F0
_0802CC94:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802CC90
	movs r0, #0x3c
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
_0802CCBE:
	movs r1, #0xc8
	lsls r1, r1, #1
	ldr r2, _0802CD40
	movs r0, #5
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802CD44
	ldr r0, [r0, #0]
	ldr r2, _0802CD48
	adds r1, r0, r2
	movs r2, #0
_0802CCD6:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802CCDE
	b _0802C9D0
_0802CCDE:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CCD6
	bl sub_080003F0
	movs r2, #0
_0802CCEC:
	cmp r2, #0
	beq _0802CD00
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #0xa
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802CD00:
	ldr r5, _0802CD4C
	ldr r0, _0802CD44
	ldr r0, [r0, #0]
	ldr r2, _0802CD48
	adds r1, r0, r2
	movs r2, #0
_0802CD0C:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802CD14
	b _0802C9D4
_0802CD14:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CD0C
	bl sub_080003F0
	movs r0, #0
_0802CD22:
	cmp r0, #0
	beq _0802CD28
	str r5, [r0, #0x44]
_0802CD28:
	adds r0, r4, #0
	movs r1, #1
	bl sub_0802939C
	bl sub_0800CE30
	cmp r0, #0
	beq _0802CD5C
	ldr r1, _0802CD44
	ldr r0, [r1, #0]
	ldr r2, _0802CD50
	b _0802CD62
_0802CD40: .4byte 0x00000159
_0802CD44: .4byte gUnk_03005CF4
_0802CD48: .4byte 0x000007A4
_0802CD4C: .4byte sub_08034A5C
_0802CD50: .4byte 0x000001C5
_0802CD54:
	adds r2, r1, #0
	b _0802CD9E
_0802CD58:
	adds r0, r1, #0
	b _0802CDD2
_0802CD5C:
	ldr r1, _0802CDE4
	ldr r0, [r1, #0]
	ldr r2, _0802CDE8
_0802CD62:
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	asrs r4, r0, #2
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _0802CDF8
	movs r1, #0x94
	lsls r1, r1, #1
	movs r2, #0xc7
	lsls r2, r2, #1
	movs r0, #0xf
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802CDE4
	ldr r0, [r0, #0]
	ldr r2, _0802CDEC
	adds r1, r0, r2
	movs r2, #0
_0802CD8A:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802CD54
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CD8A
	bl sub_080003F0
	movs r2, #0
_0802CD9E:
	cmp r2, #0
	beq _0802CDB2
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802CDB2:
	ldr r5, _0802CDF0
	ldr r0, _0802CDE4
	ldr r0, [r0, #0]
	ldr r2, _0802CDEC
	adds r1, r0, r2
	movs r2, #0
_0802CDBE:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802CD58
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CDBE
	bl sub_080003F0
	movs r0, #0
_0802CDD2:
	cmp r0, #0
	beq _0802CDD8
	str r5, [r0, #0x44]
_0802CDD8:
	adds r0, r4, #0
	movs r1, #0x14
	bl sub_0802939C
	b _0802CE4E
	.2byte 0x0000
_0802CDE4: .4byte gUnk_03005CF4
_0802CDE8: .4byte 0x000001B9
_0802CDEC: .4byte 0x000007A4
_0802CDF0: .4byte sub_08034F64
_0802CDF4:
	adds r2, r1, #0
	b _0802CE78
_0802CDF8:
	ldr r6, _0802CE04
	ldr r0, [r1, #0]
	ldr r1, _0802CE08
	adds r4, r0, r1
	movs r5, #0
	b _0802CE10
_0802CE04: .4byte sub_08044D1C
_0802CE08: .4byte 0x00000E34
_0802CE0C:
	adds r5, #1
	adds r4, #0x28
_0802CE10:
	cmp r5, #0x1d
	bhi _0802CE4E
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802CE0C
	b _0802CE24
_0802CE20:
	bl sub_080003F0
_0802CE24:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802CE20
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
	movs r1, #0
	bl sub_08000274
_0802CE4E:
	ldr r0, _0802CEB4
	movs r1, #0xb5
	movs r2, #0xfa
	bl sub_080289C0
	adds r5, r0, #0
	ldr r0, _0802CEB8
	ldr r0, [r0, #0]
	ldr r2, _0802CEBC
	adds r1, r0, r2
	movs r2, #0
_0802CE64:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _0802CDF4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CE64
	bl sub_080003F0
	movs r2, #0
_0802CE78:
	cmp r2, #0
	beq _0802CE8C
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802CE8C:
	bl sub_0800CE30
	adds r4, r0, #0
	cmp r4, #0
	bne _0802CEC8
	ldr r4, _0802CEC0
	ldr r0, _0802CEB8
	ldr r0, [r0, #0]
	ldr r2, _0802CEBC
	adds r1, r0, r2
	movs r2, #0
_0802CEA2:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _0802CEC4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CEA2
	b _0802CEE2
	.2byte 0x0000
_0802CEB4: .4byte 0x0004002B
_0802CEB8: .4byte gUnk_03005CF4
_0802CEBC: .4byte 0x000007A4
_0802CEC0: .4byte sub_08035B18
_0802CEC4:
	adds r0, r1, #0
	b _0802CEE8
_0802CEC8:
	ldr r4, _0802CEFC
	ldr r0, _0802CF00
	ldr r0, [r0, #0]
	ldr r2, _0802CF04
	adds r1, r0, r2
	movs r2, #0
_0802CED4:
	ldr r0, [r1, #0]
	cmp r0, r5
	beq _0802CEC4
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802CED4
_0802CEE2:
	bl sub_080003F0
	movs r0, #0
_0802CEE8:
	cmp r0, #0
	beq _0802CEEE
	str r4, [r0, #0x44]
_0802CEEE:
	mov r0, r8
	cmp r0, #1
	bne _0802CF38
	movs r0, #0x1e
	bl sub_0801AA34
	b _0802CF0C
_0802CEFC: .4byte sub_080368F4
_0802CF00: .4byte gUnk_03005CF4
_0802CF04: .4byte 0x000007A4
_0802CF08:
	bl sub_080003F0
_0802CF0C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802CF08
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802CF34
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	b _0802CF7A
_0802CF34: .4byte gUnk_03003CE0
_0802CF38:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802CF7A
	bl sub_0801AB24
	cmp r0, #1
	beq _0802CF5E
	cmp r0, #1
	bgt _0802CF52
	cmp r0, #0
	beq _0802CF58
	b _0802CF72
_0802CF52:
	cmp r0, #2
	beq _0802CF66
	b _0802CF72
_0802CF58:
	bl sub_080576A8
	b _0802CF72
_0802CF5E:
	movs r0, #6
	bl sub_0801AB50
	b _0802CF72
_0802CF66:
	movs r0, #6
	bl sub_0801AB90
	b _0802CF72
_0802CF6E:
	bl sub_080003F0
_0802CF72:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802CF6E
_0802CF7A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0802C674
