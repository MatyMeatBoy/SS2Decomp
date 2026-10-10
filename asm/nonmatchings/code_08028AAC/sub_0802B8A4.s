	thumb_func_start sub_0802B8A4
sub_0802B8A4: @ 0x0802B8A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	movs r0, #0x14
	movs r1, #0xc8
	movs r2, #0xb2
	bl sub_080289C0
	adds r6, r0, #0
	ldr r0, _0802B924
	ldr r0, [r0, #0]
	ldr r2, _0802B928
	adds r1, r0, r2
	movs r2, #0
_0802B8C2:
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _0802B8CA
	b _0802BB8C
_0802B8CA:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B8C2
	bl sub_080003F0
	movs r2, #0
_0802B8D8:
	cmp r2, #0
	beq _0802B8EC
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802B8EC:
	ldr r4, _0802B92C
	ldr r0, _0802B924
	ldr r0, [r0, #0]
	ldr r5, _0802B928
	adds r1, r0, r5
	movs r2, #0
_0802B8F8:
	ldr r0, [r1, #0]
	cmp r0, r6
	bne _0802B900
	b _0802BB88
_0802B900:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B8F8
	bl sub_080003F0
	movs r0, #0
_0802B90E:
	cmp r0, #0
	beq _0802B914
	str r4, [r0, #0x44]
_0802B914:
	ldr r7, _0802B930
	ldr r0, _0802B924
	ldr r0, [r0, #0]
	ldr r1, _0802B934
	adds r4, r0, r1
	movs r5, #0
	b _0802B93C
	.2byte 0x0000
_0802B924: .4byte gUnk_03005CF4
_0802B928: .4byte 0x000007A4
_0802B92C: .4byte sub_08031FF8
_0802B930: .4byte sub_08032598
_0802B934: .4byte 0x00000E34
_0802B938:
	adds r5, #1
	adds r4, #0x28
_0802B93C:
	cmp r5, #0x1d
	bhi _0802B97A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802B938
	b _0802B950
_0802B94C:
	bl sub_080003F0
_0802B950:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802B94C
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
_0802B97A:
	ldr r2, _0802BB40
	movs r0, #0x15
	movs r1, #0x2e
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802BB44
	ldr r0, [r0, #0]
	ldr r5, _0802BB48
	adds r1, r0, r5
	movs r2, #0
_0802B990:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802B998
	b _0802BB84
_0802B998:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B990
	bl sub_080003F0
	movs r2, #0
_0802B9A6:
	cmp r2, #0
	beq _0802B9BA
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802B9BA:
	ldr r5, _0802BB4C
	ldr r0, _0802BB44
	ldr r0, [r0, #0]
	ldr r7, _0802BB48
	adds r1, r0, r7
	movs r2, #0
_0802B9C6:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802B9CE
	b _0802BB80
_0802B9CE:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B9C6
	bl sub_080003F0
	movs r0, #0
_0802B9DC:
	cmp r0, #0
	beq _0802B9E2
	str r5, [r0, #0x44]
_0802B9E2:
	ldr r0, _0802BB50
	movs r1, #0x94
	lsls r1, r1, #1
	movs r2, #0xa8
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802BB44
	ldr r0, [r0, #0]
	ldr r2, _0802BB48
	adds r1, r0, r2
	movs r2, #0
_0802B9FA:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802BA02
	b _0802BB7C
_0802BA02:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802B9FA
	bl sub_080003F0
	movs r2, #0
_0802BA10:
	cmp r2, #0
	beq _0802BA24
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802BA24:
	ldr r5, _0802BB54
	ldr r0, _0802BB44
	ldr r0, [r0, #0]
	ldr r7, _0802BB48
	adds r1, r0, r7
	movs r2, #0
_0802BA30:
	ldr r0, [r1, #0]
	cmp r0, r4
	bne _0802BA38
	b _0802BB78
_0802BA38:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802BA30
	bl sub_080003F0
	movs r0, #0
_0802BA46:
	cmp r0, #0
	beq _0802BA4C
	str r5, [r0, #0x44]
_0802BA4C:
	bl sub_0800CF48
	cmp r0, #0
	bne _0802BACA
	ldr r5, _0802BB44
	ldr r0, [r5, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0802BACA
	ldr r0, _0802BB58
	movs r1, #0x8a
	lsls r1, r1, #1
	movs r2, #0x8b
	lsls r2, r2, #1
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, [r5, #0]
	ldr r2, _0802BB48
	adds r1, r0, r2
	movs r2, #0
_0802BA7C:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802BB74
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802BA7C
	bl sub_080003F0
	movs r2, #0
_0802BA90:
	cmp r2, #0
	beq _0802BAA4
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802BAA4:
	ldr r5, _0802BB5C
	ldr r0, _0802BB44
	ldr r0, [r0, #0]
	ldr r7, _0802BB48
	adds r1, r0, r7
	movs r2, #0
_0802BAB0:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802BB70
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802BAB0
	bl sub_080003F0
	movs r0, #0
_0802BAC4:
	cmp r0, #0
	beq _0802BACA
	str r5, [r0, #0x44]
_0802BACA:
	movs r0, #0x1c
	movs r1, #0xae
	movs r2, #0xf9
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802BB44
	ldr r0, [r0, #0]
	ldr r2, _0802BB48
	adds r1, r0, r2
	movs r2, #0
_0802BAE0:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802BB6C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802BAE0
	bl sub_080003F0
	movs r2, #0
_0802BAF4:
	cmp r2, #0
	beq _0802BB08
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802BB08:
	ldr r5, _0802BB60
	ldr r0, _0802BB44
	ldr r0, [r0, #0]
	ldr r7, _0802BB48
	adds r1, r0, r7
	movs r2, #0
_0802BB14:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802BB68
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802BB14
	bl sub_080003F0
	movs r0, #0
_0802BB28:
	cmp r0, #0
	beq _0802BB2E
	str r5, [r0, #0x44]
_0802BB2E:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802BB98
	ldr r1, _0802BB44
	ldr r0, [r1, #0]
	ldr r2, _0802BB64
	adds r0, r0, r2
	b _0802BBA0
_0802BB40: .4byte 0x00000187
_0802BB44: .4byte gUnk_03005CF4
_0802BB48: .4byte 0x000007A4
_0802BB4C: .4byte sub_0803294C
_0802BB50: .4byte 0x00020039
_0802BB54: .4byte sub_08033B3C
_0802BB58: .4byte 0x00060017
_0802BB5C: .4byte sub_08059168
_0802BB60: .4byte sub_08032DE4
_0802BB64: .4byte 0x000001C3
_0802BB68:
	adds r0, r1, #0
	b _0802BB28
_0802BB6C:
	adds r2, r1, #0
	b _0802BAF4
_0802BB70:
	adds r0, r1, #0
	b _0802BAC4
_0802BB74:
	adds r2, r1, #0
	b _0802BA90
_0802BB78:
	adds r0, r1, #0
	b _0802BA46
_0802BB7C:
	adds r2, r1, #0
	b _0802BA10
_0802BB80:
	adds r0, r1, #0
	b _0802B9DC
_0802BB84:
	adds r2, r1, #0
	b _0802B9A6
_0802BB88:
	adds r0, r1, #0
	b _0802B90E
_0802BB8C:
	adds r2, r1, #0
	b _0802B8D8
_0802BB90:
	adds r2, r1, #0
	b _0802BBD6
_0802BB94:
	adds r0, r1, #0
	b _0802BC0A
_0802BB98:
	ldr r1, _0802BC14
	ldr r0, [r1, #0]
	ldr r5, _0802BC18
	adds r0, r0, r5
_0802BBA0:
	ldrb r0, [r0, #0]
	asrs r2, r0, #2
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _0802BC24
	movs r0, #0x28
	movs r1, #0xbf
	movs r2, #0xf9
	bl sub_080289C0
	adds r4, r0, #0
	ldr r0, _0802BC14
	ldr r0, [r0, #0]
	ldr r7, _0802BC1C
	adds r1, r0, r7
	movs r2, #0
_0802BBC2:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802BB90
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802BBC2
	bl sub_080003F0
	movs r2, #0
_0802BBD6:
	cmp r2, #0
	beq _0802BBEA
	movs r0, #8
	strh r0, [r2, #0x18]
	movs r0, #4
	strh r0, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_0802BBEA:
	ldr r5, _0802BC20
	ldr r0, _0802BC14
	ldr r0, [r0, #0]
	ldr r2, _0802BC1C
	adds r1, r0, r2
	movs r2, #0
_0802BBF6:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0802BB94
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802BBF6
	bl sub_080003F0
	movs r0, #0
_0802BC0A:
	cmp r0, #0
	beq _0802BC7A
	str r5, [r0, #0x44]
	b _0802BC7A
	.2byte 0x0000
_0802BC14: .4byte gUnk_03005CF4
_0802BC18: .4byte 0x000001B7
_0802BC1C: .4byte 0x000007A4
_0802BC20: .4byte sub_08033198
_0802BC24:
	ldr r6, _0802BC30
	ldr r0, [r1, #0]
	ldr r5, _0802BC34
	adds r4, r0, r5
	movs r5, #0
	b _0802BC3C
_0802BC30: .4byte sub_08045660
_0802BC34: .4byte 0x00000E34
_0802BC38:
	adds r5, #1
	adds r4, #0x28
_0802BC3C:
	cmp r5, #0x1d
	bhi _0802BC7A
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802BC38
	b _0802BC50
_0802BC4C:
	bl sub_080003F0
_0802BC50:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802BC4C
	movs r0, #0x3c
	str r0, [r4, #8]
	str r6, [r4, #0xc]
	movs r7, #0xff
	lsls r7, r7, #2
	adds r0, r1, r7
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000274
_0802BC7A:
	ldr r6, _0802BC88
	ldr r0, _0802BC8C
	ldr r0, [r0, #0]
	ldr r1, _0802BC90
	adds r4, r0, r1
	movs r5, #0
	b _0802BC98
_0802BC88: .4byte sub_08056538
_0802BC8C: .4byte gUnk_03005CF4
_0802BC90: .4byte 0x00000E34
_0802BC94:
	adds r5, #1
	adds r4, #0x28
_0802BC98:
	cmp r5, #0x1d
	bhi _0802BCD6
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802BC94
	b _0802BCAC
_0802BCA8:
	bl sub_080003F0
_0802BCAC:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802BCA8
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
_0802BCD6:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802BCF0
	ldr r0, _0802BCEC
	ldr r0, [r0, #0]
	adds r0, #0x80
	movs r1, #0x10
	ldr r0, [r0, #0]
	b _0802BCF8
	.2byte 0x0000
_0802BCEC: .4byte gUnk_03005CF4
_0802BCF0:
	ldr r0, _0802BD14
	ldr r0, [r0, #0]
	movs r1, #0x10
	ldr r0, [r0, #0x78]
_0802BCF8:
	ands r0, r1
	cmp r0, #0
	bne _0802BD00
	b _0802BE10
_0802BD00:
	movs r4, #1
	bl sub_0800CE30
	cmp r0, #0
	beq _0802BD1C
	ldr r0, _0802BD14
	ldr r0, [r0, #0]
	ldr r5, _0802BD18
	adds r0, r0, r5
	b _0802BD24
_0802BD14: .4byte gUnk_03005CF4
_0802BD18: .4byte 0x000001C3
_0802BD1C:
	ldr r0, _0802BD98
	ldr r0, [r0, #0]
	ldr r7, _0802BD9C
	adds r0, r0, r7
_0802BD24:
	ldrb r0, [r0, #0]
	asrs r6, r0, #1
	ands r6, r4
	bl sub_080020F4
	adds r2, r0, #0
	movs r4, #0
	movs r3, #0
	ldr r0, _0802BDA0
	ldr r0, [r0, #0]
	movs r5, #0xa8
	lsls r5, r5, #1
	adds r1, r0, r5
_0802BD3E:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _0802BD4C
	ldrh r0, [r1, #2]
	cmp r0, #0x29
	bne _0802BD4C
	adds r4, #1
_0802BD4C:
	adds r1, #0x10
	adds r3, #1
	cmp r3, #0x18
	bls _0802BD3E
	adds r5, r4, #0
	movs r4, #0
	movs r3, #0
	ldr r0, _0802BDA0
	ldr r0, [r0, #0]
	movs r7, #0xb8
	lsls r7, r7, #2
	adds r1, r0, r7
_0802BD64:
	ldrh r0, [r1, #0]
	cmp r0, #1
	bne _0802BD72
	ldrh r0, [r1, #2]
	cmp r0, #0x29
	bne _0802BD72
	adds r4, #1
_0802BD72:
	adds r1, #0x10
	adds r3, #1
	cmp r3, #0x4a
	bls _0802BD64
	cmp r6, #0
	bne _0802BE10
	cmp r2, #0
	bne _0802BE10
	cmp r5, #0
	bne _0802BE10
	cmp r4, #0
	bne _0802BE10
	ldr r7, _0802BDA4
	ldr r0, _0802BD98
	ldr r0, [r0, #0]
	ldr r1, _0802BDA8
	adds r4, r0, r1
	movs r5, #0
	b _0802BDB0
_0802BD98: .4byte gUnk_03005CF4
_0802BD9C: .4byte 0x000001B7
_0802BDA0: .4byte gUnk_030034E0
_0802BDA4: .4byte sub_0804534C
_0802BDA8: .4byte 0x00000E34
_0802BDAC:
	adds r5, #1
	adds r4, #0x28
_0802BDB0:
	cmp r5, #0x1d
	bhi _0802BE08
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _0802BDAC
	movs r0, #0x97
	lsls r0, r0, #8
	str r0, [sp, #8]
	ldr r0, _0802BE24
	str r0, [sp, #0xc]
	add r1, sp, #8
	movs r0, #0x10
	strh r0, [r1, #8]
	movs r0, #8
	strh r0, [r1, #0xa]
	str r7, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0802BE28
	str r1, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4, #0x10]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	add r1, sp, #8
	movs r2, #1
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_0802BE08:
	ldr r0, _0802BE2C
	movs r1, #0x14
	bl sub_08068070
_0802BE10:
	bl sub_0800CE30
	cmp r0, #0
	beq _0802BE38
	ldr r0, _0802BE30
	ldr r0, [r0, #0]
	ldr r5, _0802BE34
	adds r0, r0, r5
	b _0802BE40
	.2byte 0x0000
_0802BE24: .4byte 0x00016D00
_0802BE28: .4byte sub_0805A874
_0802BE2C: .4byte sub_0805990C
_0802BE30: .4byte gUnk_03005CF4
_0802BE34: .4byte 0x000001C3
_0802BE38:
	ldr r0, _0802BE8C
	ldr r0, [r0, #0]
	ldr r7, _0802BE90
	adds r0, r0, r7
_0802BE40:
	ldrb r6, [r0, #0]
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	bne _0802BE4C
	b _0802C060
_0802BE4C:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0802BE94
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	movs r2, #0xc8
	lsls r2, r2, #1
	movs r0, #0x31
	movs r1, #0xf0
	bl sub_080289C0
	adds r7, r0, #0
	bl sub_080020F4
	adds r6, r0, #0
	cmp r6, #1
	beq _0802BEAC
	cmp r6, #1
	bgt _0802BE98
	cmp r6, #0
	beq _0802BEA2
	b _0802BED6
	.2byte 0x0000
_0802BE8C: .4byte gUnk_03005CF4
_0802BE90: .4byte 0x000001B7
_0802BE94: .4byte gUnk_03003CE0
_0802BE98:
	cmp r6, #2
	beq _0802BEB8
	cmp r6, #3
	beq _0802BEC8
	b _0802BED6
_0802BEA2:
	movs r2, #0xdc
	lsls r2, r2, #1
	movs r0, #0
	movs r1, #0xf0
	b _0802BEC0
_0802BEAC:
	movs r1, #0x82
	lsls r1, r1, #1
	movs r2, #0xe1
	lsls r2, r2, #1
	movs r0, #0
	b _0802BEC0
_0802BEB8:
	movs r2, #0xe1
	lsls r2, r2, #1
	movs r0, #0
	movs r1, #0xdc
_0802BEC0:
	movs r3, #0
	bl sub_08028AAC
	b _0802BED6
_0802BEC8:
	movs r2, #0xe6
	lsls r2, r2, #1
	movs r0, #0
	movs r1, #0xf0
	movs r3, #0
	bl sub_08028AAC
_0802BED6:
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	movs r4, #0x1e
	b _0802BEEC
_0802BEE2:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802BEF8
_0802BEEC:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802BEE2
_0802BEF8:
	movs r0, #0x1e
	bl sub_0801AA34
	b _0802BF04
_0802BF00:
	bl sub_080003F0
_0802BF04:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802BF00
	b _0802BF12
_0802BF0E:
	bl sub_080003F0
_0802BF12:
	bl sub_0805F184
	cmp r0, #0
	bne _0802BF0E
	b _0802BF20
_0802BF1C:
	bl sub_080003F0
_0802BF20:
	bl sub_0805EF90
	cmp r0, #0
	bne _0802BF1C
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0802BF40
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0802BF48
_0802BF40: .4byte 0x00140482
_0802BF44:
	bl sub_080003F0
_0802BF48:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0802BF44
	movs r4, #0xa
	b _0802BF60
_0802BF56:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0802BF6C
_0802BF60:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802BF56
_0802BF6C:
	ldr r0, _0802BF7C
	mov r8, r0
	ldr r0, _0802BF80
	ldr r0, [r0, #0]
	ldr r1, _0802BF84
	adds r4, r0, r1
	movs r5, #0
	b _0802BF8C
_0802BF7C: .4byte sub_0803F18C
_0802BF80: .4byte gUnk_03005CF4
_0802BF84: .4byte 0x00000E34
_0802BF88:
	adds r5, #1
	adds r4, #0x28
_0802BF8C:
	cmp r5, #0x1d
	bhi _0802BFCC
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _0802BF88
	b _0802BFA0
_0802BF9C:
	bl sub_080003F0
_0802BFA0:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _0802BF9C
	movs r0, #0x3c
	str r0, [r4, #8]
	mov r2, r8
	str r2, [r4, #0xc]
	movs r5, #0xff
	lsls r5, r5, #2
	adds r0, r1, r5
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08000274
_0802BFCC:
	adds r0, r7, #0
	movs r1, #8
	bl sub_0802939C
	ldr r2, _0802C010
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r7, #0
	movs r1, #0
	bl sub_08028D98
	ldr r0, _0802C014
	ldr r0, [r0, #0]
	ldr r2, _0802C018
	adds r1, r0, r2
	movs r2, #0
_0802BFEC:
	ldr r0, [r1, #0]
	cmp r0, r7
	beq _0802C000
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _0802BFEC
	bl sub_080003F0
	movs r1, #0
_0802C000:
	cmp r1, #0
	beq _0802C008
	movs r0, #4
	strh r0, [r1, #0x36]
_0802C008:
	movs r0, #0x1e
	bl sub_0801AA8C
	b _0802C020
_0802C010: .4byte 0xFFFFFED4
_0802C014: .4byte gUnk_03005CF4
_0802C018: .4byte 0x000007A4
_0802C01C:
	bl sub_080003F0
_0802C020:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802C01C
	ldr r0, _0802C058
	ldr r0, [r0, #0]
	ldr r7, _0802C05C
	adds r5, r0, r7
	movs r6, #0
_0802C032:
	adds r4, r5, #0
	adds r4, #0x48
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _0802C046
	adds r0, r4, #0
	bl sub_080003A8
_0802C046:
	adds r6, #1
	adds r5, #0x70
	cmp r6, #0xe
	bls _0802C032
	movs r0, #0
	movs r1, #2
	bl sub_0802A228
	b _0802C0A2
_0802C058: .4byte gUnk_03005CF4
_0802C05C: .4byte 0x000007A4
_0802C060:
	bl sub_0800CC98
	cmp r0, #0
	bne _0802C0A2
	bl sub_0801AB24
	cmp r0, #1
	beq _0802C086
	cmp r0, #1
	bgt _0802C07A
	cmp r0, #0
	beq _0802C080
	b _0802C09A
_0802C07A:
	cmp r0, #2
	beq _0802C08E
	b _0802C09A
_0802C080:
	bl sub_080576A8
	b _0802C09A
_0802C086:
	movs r0, #6
	bl sub_0801AB50
	b _0802C09A
_0802C08E:
	movs r0, #6
	bl sub_0801AB90
	b _0802C09A
_0802C096:
	bl sub_080003F0
_0802C09A:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0802C096
_0802C0A2:
	bl sub_0800CF48
	cmp r0, #0
	bne _0802C0BA
	ldr r0, _0802C0C8
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0802C132
_0802C0BA:
	ldr r7, _0802C0CC
	ldr r0, _0802C0C8
	ldr r0, [r0, #0]
	ldr r1, _0802C0D0
	adds r4, r0, r1
	movs r5, #0
	b _0802C0D8
_0802C0C8: .4byte gUnk_03005CF4
_0802C0CC: .4byte sub_0802C144
_0802C0D0: .4byte 0x00000E34
_0802C0D4:
	adds r5, #1
	adds r4, #0x28
_0802C0D8:
	cmp r5, #0x1d
	bhi _0802C132
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _0802C0D4
	movs r0, #0xf0
	lsls r0, r0, #8
	str r0, [sp, #8]
	movs r0, #0xe0
	lsls r0, r0, #9
	str r0, [sp, #0xc]
	add r1, sp, #8
	movs r0, #0x40
	strh r0, [r1, #8]
	movs r0, #8
	strh r0, [r1, #0xa]
	str r7, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r0, #0x3c
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	ldr r1, _0802C140
	str r1, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r4, #0x10]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	add r1, sp, #8
	movs r2, #1
	bl sub_08000274
	bl sub_080003F0
	bl sub_080003F0
_0802C132:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0802C140: .4byte sub_0805A874
	thumb_func_end sub_0802B8A4
