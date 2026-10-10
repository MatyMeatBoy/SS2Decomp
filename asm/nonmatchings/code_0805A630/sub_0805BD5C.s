	thumb_func_start sub_0805BD5C
sub_0805BD5C: @ 0x0805BD5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0805BE20
	adds r6, r1, r0
	cmp r4, #0
	bne _0805BD7E
	b _0805C12A
_0805BD7E:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0805BD88
	b _0805C12A
_0805BD88:
	ldrh r0, [r6, #0x20]
	cmp r0, #0xb
	bne _0805BD90
	b _0805C12A
_0805BD90:
	ldr r0, [r6, #0x30]
	mov sl, r0
	movs r0, #0x80
	lsls r0, r0, #6
	mov r1, sl
	ands r1, r0
	mov sl, r1
	cmp r1, #0
	beq _0805BDA4
	b _0805C12A
_0805BDA4:
	ldrh r0, [r4, #0]
	cmp r0, #1
	beq _0805BDAC
	b _0805C12A
_0805BDAC:
	ldrh r0, [r4, #2]
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	adds r0, #0xa0
	ldrh r0, [r0, #0]
	mov r8, r0
	cmp r0, #1
	beq _0805BDC8
	cmp r0, #0x13
	bne _0805BE24
_0805BDC8:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r5, r0, #0
	adds r5, #0x64
	adds r4, #0xa2
	ldrh r0, [r4, #0]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r5, r0, #0
	adds r0, r6, #0
	adds r0, #0xc4
	adds r1, r6, #0
	adds r1, #0x62
	ldrh r2, [r0, #0]
	mov r9, r2
	movs r7, #0
	ldrsh r3, [r0, r7]
	movs r7, #0
	ldrsh r2, [r1, r7]
	mov ip, r4
	adds r4, r0, #0
	adds r7, r1, #0
	cmp r3, r2
	blt _0805BE00
	b _0805C1E4
_0805BE00:
	mov r1, r9
	adds r0, r1, r5
	strh r0, [r4, #0]
	ldrh r2, [r7, #0]
	movs r3, #0
	ldrsh r1, [r7, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0805BE16
	b _0805C19C
_0805BE16:
	cmp r0, #0
	blt _0805BE1C
	b _0805C1A8
_0805BE1C:
	mov r0, sl
	b _0805C1A6
_0805BE20: .4byte gUnk_03003CE0
_0805BE24:
	mov r7, r8
	cmp r7, #2
	bne _0805BE84
	adds r7, r6, #0
	adds r7, #0xc2
	adds r6, #0x60
	ldrh r0, [r7, #0]
	mov r9, r0
	movs r2, #0
	ldrsh r1, [r7, r2]
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r1, r0
	blt _0805BE42
	b _0805C1E4
_0805BE42:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r5, r0, #0
	adds r5, #0x64
	adds r0, r4, #0
	adds r0, #0xa2
	ldrh r0, [r0, #0]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r5, r0, #0
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #1
	add r0, r9
	strh r0, [r7, #0]
	ldrh r2, [r6, #0]
	movs r3, #0
	ldrsh r1, [r6, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0805BE78
	strh r2, [r7, #0]
	b _0805C1D8
_0805BE78:
	cmp r0, #0
	blt _0805BE7E
	b _0805C1D8
_0805BE7E:
	mov r0, sl
	strh r0, [r7, #0]
	b _0805C1D8
_0805BE84:
	mov r1, r8
	cmp r1, #6
	bne _0805BEAC
	ldr r0, _0805BEA4
	ldr r2, [r0, #0]
	ldrh r3, [r2, #0x10]
	movs r7, #0x10
	ldrsh r1, [r2, r7]
	ldr r0, _0805BEA8
	cmp r1, r0
	ble _0805BE9C
	b _0805C1E4
_0805BE9C:
	adds r0, r3, #1
	strh r0, [r2, #0x10]
	b _0805C1EC
	.2byte 0x0000
_0805BEA4: .4byte gUnk_030034E0
_0805BEA8: .4byte 0x000001F3
_0805BEAC:
	mov r0, r8
	cmp r0, #7
	bne _0805BED4
	ldr r0, _0805BECC
	ldr r2, [r0, #0]
	ldrh r3, [r2, #0x12]
	movs r7, #0x12
	ldrsh r1, [r2, r7]
	ldr r0, _0805BED0
	cmp r1, r0
	ble _0805BEC4
	b _0805C1E4
_0805BEC4:
	adds r0, r3, #1
	strh r0, [r2, #0x12]
	b _0805C1EC
	.2byte 0x0000
_0805BECC: .4byte gUnk_030034E0
_0805BED0: .4byte 0x000001F3
_0805BED4:
	mov r0, r8
	cmp r0, #9
	bne _0805BEF8
	ldr r0, _0805BEF4
	ldr r2, [r0, #0]
	ldrh r3, [r2, #0x16]
	movs r7, #0x16
	ldrsh r1, [r2, r7]
	movs r0, #0xa6
	lsls r0, r0, #1
	cmp r1, r0
	ble _0805BEEE
	b _0805C1E4
_0805BEEE:
	adds r0, r3, #1
	strh r0, [r2, #0x16]
	b _0805C1EC
_0805BEF4: .4byte gUnk_030034E0
_0805BEF8:
	mov r0, r8
	cmp r0, #8
	bne _0805BF20
	ldr r0, _0805BF18
	ldr r2, [r0, #0]
	ldrh r3, [r2, #0x14]
	movs r7, #0x14
	ldrsh r1, [r2, r7]
	ldr r0, _0805BF1C
	cmp r1, r0
	ble _0805BF10
	b _0805C1E4
_0805BF10:
	adds r0, r3, #1
	strh r0, [r2, #0x14]
	b _0805C1EC
	.2byte 0x0000
_0805BF18: .4byte gUnk_030034E0
_0805BF1C: .4byte 0x000001F3
_0805BF20:
	mov r0, r8
	cmp r0, #3
	bne _0805BF88
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0x64
	bl sub_0801E1D8
	adds r4, r0, #0
	cmp r4, #0
	beq _0805BF64
	ldrh r0, [r6, #0]
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801DB94
	movs r0, #0x73
	bl sub_0805867C
	adds r0, r6, #0
	movs r1, #7
	movs r2, #0x64
	bl sub_0801E1D8
	adds r4, r0, #0
	cmp r4, #0
	bne _0805BF58
	b _0805C1EC
_0805BF58:
	ldrh r0, [r6, #0]
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801DB94
	b _0805C1EC
_0805BF64:
	adds r0, r6, #0
	movs r1, #7
	movs r2, #0x64
	bl sub_0801E1D8
	adds r4, r0, #0
	cmp r4, #0
	bne _0805BF76
	b _0805C1E4
_0805BF76:
	ldrh r0, [r6, #0]
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801DB94
	movs r0, #0x73
	bl sub_0805867C
	b _0805C1EC
_0805BF88:
	mov r1, r8
	cmp r1, #5
	bne _0805BF90
	b _0805C1E4
_0805BF90:
	mov r2, r8
	cmp r2, #0xc
	bne _0805BF98
	b _0805C1E4
_0805BF98:
	mov r3, r8
	cmp r3, #4
	bne _0805C068
	adds r0, r6, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0805BFAA
	b _0805C1E4
_0805BFAA:
	bl sub_08058DB0
	cmp r0, #0
	beq _0805BFB4
	b _0805C1E4
_0805BFB4:
	bl sub_0800D11C
	cmp r0, #0
	beq _0805BFBE
	b _0805C1E4
_0805BFBE:
	bl sub_0800CCCC
	cmp r0, #0
	beq _0805BFC8
	b _0805C1E4
_0805BFC8:
	ldrh r0, [r6, #0x20]
	cmp r0, #5
	bne _0805BFD0
	b _0805C1E4
_0805BFD0:
	bl sub_0800CDC0
	cmp r0, #0
	beq _0805BFDA
	b _0805C1E4
_0805BFDA:
	adds r0, r6, #0
	adds r0, #0x64
	ldrh r0, [r0, #0]
	cmp r0, #9
	bls _0805BFE6
	b _0805C1E4
_0805BFE6:
	ldr r2, _0805C064
	adds r0, r2, #0
	adds r0, #0x8c
	ldrh r1, [r0, #0]
	cmp r1, #0xb
	bne _0805BFF4
	b _0805C1E4
_0805BFF4:
	cmp r1, #0xe
	bne _0805BFFA
	b _0805C1E4
_0805BFFA:
	cmp r1, #2
	bne _0805C008
	adds r0, #4
	ldrh r0, [r0, #0]
	cmp r0, #7
	bne _0805C008
	b _0805C1E4
_0805C008:
	cmp r1, #5
	bne _0805C018
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0xa
	bne _0805C018
	b _0805C1E4
_0805C018:
	cmp r1, #8
	bne _0805C028
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #0x11
	bne _0805C028
	b _0805C1E4
_0805C028:
	cmp r1, #0x13
	bne _0805C038
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0805C038
	b _0805C1E4
_0805C038:
	cmp r1, #0x15
	bne _0805C04E
	adds r0, r2, #0
	adds r0, #0x90
	ldrh r0, [r0, #0]
	cmp r0, #2
	bne _0805C048
	b _0805C1E4
_0805C048:
	cmp r0, #4
	bne _0805C04E
	b _0805C1E4
_0805C04E:
	movs r0, #0x75
	bl sub_0805865C
	movs r0, #0xc
	strh r0, [r6, #0x20]
	movs r0, #1
	strh r0, [r6, #0x22]
	bl sub_08015C14
	b _0805C1EC
	.2byte 0x0000
_0805C064: .4byte gUnk_03003170
_0805C068:
	mov r7, r8
	cmp r7, #0xa
	bne _0805C0BC
	bl sub_0800D1B0
	cmp r0, #0
	beq _0805C078
	b _0805C1E4
_0805C078:
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0x64
	bl sub_0801E1D8
	adds r4, r0, #0
	cmp r4, #0
	beq _0805C09C
_0805C088:
	ldrh r0, [r6, #0]
	adds r1, r4, #0
	movs r2, #6
	bl sub_0801DB94
	str r5, [r4, #0x18]
	movs r0, #0x73
	bl sub_0805865C
	b _0805C1F8
_0805C09C:
	adds r0, r6, #0
	movs r1, #7
	movs r2, #0x64
	bl sub_0801E1D8
	adds r4, r0, #0
	cmp r4, #0
	bne _0805C088
	adds r0, r6, #0
	movs r1, #0
	bl sub_0801E164
	adds r4, r0, #0
	cmp r4, #0
	bne _0805C088
	b _0805C1E4
_0805C0BC:
	mov r0, r8
	cmp r0, #0xb
	bne _0805C10E
	bl sub_0800D1B0
	cmp r0, #0
	beq _0805C0CC
	b _0805C1E4
_0805C0CC:
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0x64
	bl sub_0801E1D8
	adds r4, r0, #0
	cmp r4, #0
	bne _0805C0FA
	adds r0, r6, #0
	movs r1, #7
	movs r2, #0x64
	bl sub_0801E1D8
	adds r4, r0, #0
	cmp r4, #0
	bne _0805C0FA
	adds r0, r6, #0
	movs r1, #0
	bl sub_0801E164
	adds r4, r0, #0
	cmp r4, #0
	beq _0805C1E4
_0805C0FA:
	ldrh r0, [r6, #0]
	adds r1, r4, #0
	movs r2, #7
	bl sub_0801DB94
	str r5, [r4, #0x18]
	movs r0, #0x73
	bl sub_0805865C
	b _0805C1EC
_0805C10E:
	mov r1, r8
	cmp r1, #0xd
	beq _0805C1E4
	mov r2, r8
	cmp r2, #0xe
	beq _0805C1E4
	mov r3, r8
	cmp r3, #0x10
	bne _0805C12E
	adds r0, r4, #0
	adds r0, #0xa2
	ldrh r0, [r0, #0]
	bl sub_080665B0
_0805C12A:
	movs r0, #0
	b _0805C1FA
_0805C12E:
	mov r7, r8
	cmp r7, #0x11
	bne _0805C14C
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0, #0]
	adds r1, r6, #0
	adds r1, #0xc2
	strh r0, [r1, #0]
	adds r0, r6, #0
	adds r0, #0x62
	ldrh r1, [r0, #0]
	adds r0, #0x62
	strh r1, [r0, #0]
	b _0805C1EC
_0805C14C:
	mov r0, r8
	cmp r0, #0x12
	bne _0805C1E4
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r5, r0, #0
	adds r5, #0x64
	adds r4, #0xa2
	ldrh r0, [r4, #0]
	muls r0, r5, r0
	movs r1, #0x64
	bl __divsi3
	adds r5, r0, #0
	adds r0, r6, #0
	adds r0, #0xc4
	adds r1, r6, #0
	adds r1, #0x62
	ldrh r2, [r0, #0]
	mov r9, r2
	movs r7, #0
	ldrsh r3, [r0, r7]
	movs r7, #0
	ldrsh r2, [r1, r7]
	mov ip, r4
	adds r4, r0, #0
	adds r7, r1, #0
	cmp r3, r2
	bge _0805C1E4
	mov r1, r9
	adds r0, r1, r5
	strh r0, [r4, #0]
	ldrh r2, [r7, #0]
	movs r3, #0
	ldrsh r1, [r7, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge _0805C1A0
_0805C19C:
	strh r2, [r4, #0]
	b _0805C1A8
_0805C1A0:
	cmp r0, #0
	bge _0805C1A8
	movs r0, #0
_0805C1A6:
	strh r0, [r4, #0]
_0805C1A8:
	mov r1, ip
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _0805C1B8
	ldrh r0, [r6, #0]
	movs r1, #8
	bl sub_08074DE8
_0805C1B8:
	ldr r2, [r6, #0x30]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _0805C1D8
	ldrh r0, [r7, #0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r4, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	blt _0805C1D8
	ldr r0, _0805C1E0
	ands r2, r0
	str r2, [r6, #0x30]
_0805C1D8:
	movs r0, #0x91
	bl sub_0805865C
	b _0805C1EC
_0805C1E0: .4byte 0xFFFDFFFF
_0805C1E4:
	movs r0, #0x61
	bl sub_0805865C
	b _0805C12A
_0805C1EC:
	mov r7, r8
	cmp r7, #1
	beq _0805C1F8
	movs r0, #0x20
	bl sub_0805865C
_0805C1F8:
	movs r0, #1
_0805C1FA:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0805BD5C
