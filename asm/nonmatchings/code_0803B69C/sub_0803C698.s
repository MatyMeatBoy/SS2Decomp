	thumb_func_start sub_0803C698
sub_0803C698: @ 0x0803C698
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803C6C4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r7, #0
	movs r1, #2
	bl sub_0802939C
	b _0803C6CC
_0803C6C4: .4byte gUnk_03003CE0
_0803C6C8:
	bl sub_080003F0
_0803C6CC:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C6C8
	b _0803C6DA
_0803C6D6:
	bl sub_080003F0
_0803C6DA:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803C6D6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C6FC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	b _0803C704
_0803C6FC: .4byte 0x00140292
_0803C700:
	bl sub_080003F0
_0803C704:
	adds r0, r5, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803C71A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803C700
	bl sub_0805EFBC
_0803C71A:
	bl sub_0800CE30
	cmp r0, #0
	beq _0803C730
	ldr r0, _0803C72C
	ldr r0, [r0, #0]
	movs r1, #0xe1
	lsls r1, r1, #1
	b _0803C738
_0803C72C: .4byte gUnk_03005CF4
_0803C730:
	ldr r0, _0803C750
	ldr r0, [r0, #0]
	movs r1, #0xdb
	lsls r1, r1, #1
_0803C738:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	adds r6, r0, #0
	cmp r6, #9
	bls _0803C744
	b _0803C9DE
_0803C744:
	lsls r0, r6, #2
	ldr r1, _0803C754
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_0803C750: .4byte gUnk_03005CF4
_0803C754: .4byte _0803C758
_0803C758:
	.4byte _0803C784
_0803C75C: .4byte _0803C7C0
_0803C760: .4byte _0803C7FC
_0803C764: .4byte _0803C838
_0803C768: .4byte _0803C874
_0803C76C: .4byte _0803C8B0
_0803C770: .4byte _0803C8EC
_0803C774: .4byte _0803C928
_0803C778: .4byte _0803C964
_0803C77C: .4byte _0803C9A0
_0803C780:
	bl sub_080003F0
_0803C784:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C780
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C7A8
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C7B0
	.2byte 0x0000
_0803C7A8: .4byte 0x00140296
_0803C7AC:
	bl sub_080003F0
_0803C7B0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C7AC
	b _0803C9D6
_0803C7BC:
	bl sub_080003F0
_0803C7C0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C7BC
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C7E4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C7EC
	.2byte 0x0000
_0803C7E4: .4byte 0x00140297
_0803C7E8:
	bl sub_080003F0
_0803C7EC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C7E8
	b _0803C9D6
_0803C7F8:
	bl sub_080003F0
_0803C7FC:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C7F8
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C820
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C828
	.2byte 0x0000
_0803C820: .4byte 0x00140298
_0803C824:
	bl sub_080003F0
_0803C828:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C824
	b _0803C9D6
_0803C834:
	bl sub_080003F0
_0803C838:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C834
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C85C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C864
	.2byte 0x0000
_0803C85C: .4byte 0x00140299
_0803C860:
	bl sub_080003F0
_0803C864:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C860
	b _0803C9D6
_0803C870:
	bl sub_080003F0
_0803C874:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C870
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C898
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C8A0
	.2byte 0x0000
_0803C898: .4byte 0x0014029A
_0803C89C:
	bl sub_080003F0
_0803C8A0:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C89C
	b _0803C9D6
_0803C8AC:
	bl sub_080003F0
_0803C8B0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C8AC
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C8D4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C8DC
	.2byte 0x0000
_0803C8D4: .4byte 0x0014029B
_0803C8D8:
	bl sub_080003F0
_0803C8DC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C8D8
	b _0803C9D6
_0803C8E8:
	bl sub_080003F0
_0803C8EC:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C8E8
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C910
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C918
	.2byte 0x0000
_0803C910: .4byte 0x0014029C
_0803C914:
	bl sub_080003F0
_0803C918:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C914
	b _0803C9D6
_0803C924:
	bl sub_080003F0
_0803C928:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C924
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C94C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C954
	.2byte 0x0000
_0803C94C: .4byte 0x0014029D
_0803C950:
	bl sub_080003F0
_0803C954:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C950
	b _0803C9D6
_0803C960:
	bl sub_080003F0
_0803C964:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C960
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C988
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C990
	.2byte 0x0000
_0803C988: .4byte 0x0014029E
_0803C98C:
	bl sub_080003F0
_0803C990:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C98C
	b _0803C9D6
_0803C99C:
	bl sub_080003F0
_0803C9A0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C99C
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C9C4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C9CC
	.2byte 0x0000
_0803C9C4: .4byte 0x0014029F
_0803C9C8:
	bl sub_080003F0
_0803C9CC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C9C8
_0803C9D6:
	adds r0, r4, #0
	bl sub_0805EF14
	adds r4, r0, #0
_0803C9DE:
	cmp r4, #0
	bne _0803C9E4
	b _0803CBD0
_0803C9E4:
	movs r3, #0
	ldr r1, _0803CAAC
	ldr r0, [r1, #0]
	movs r4, #0xa8
	lsls r4, r4, #1
	adds r2, r0, r4
	adds r4, r1, #0
	adds r5, r6, #1
	movs r1, #0x18
_0803C9F6:
	ldrh r0, [r2, #0]
	cmp r0, #0xa
	bne _0803CA00
	ldr r0, [r2, #4]
	adds r3, r3, r0
_0803CA00:
	subs r1, #1
	adds r2, #0x10
	cmp r1, #0
	bge _0803C9F6
	ldr r0, [r4, #0]
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r2, r0, r1
	adds r0, #0x6a
	ldrh r1, [r0, #0]
	lsls r0, r1, #4
	subs r0, r0, r1
	cmp r0, #0
	ble _0803CA30
	adds r1, r0, #0
_0803CA1E:
	ldrh r0, [r2, #0]
	cmp r0, #0xa
	bne _0803CA28
	ldr r0, [r2, #4]
	adds r3, r3, r0
_0803CA28:
	subs r1, #1
	adds r2, #0x10
	cmp r1, #0
	bne _0803CA1E
_0803CA30:
	movs r4, #0x64
	adds r0, r5, #0
	muls r0, r4, r0
	cmp r3, r0
	bge _0803CA3C
	b _0803CB7C
_0803CA3C:
	bl sub_0805CFA0
	movs r1, #1
	cmp r0, #0
	bge _0803CA48
	movs r1, #0
_0803CA48:
	cmp r1, #0
	beq _0803CB26
	ldr r0, _0803CAB0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803CA5E
	movs r0, #0x33
	bl sub_08006D08
_0803CA5E:
	adds r0, r6, #0
	muls r0, r4, r0
	adds r0, #0x64
	bl sub_0807C014
	movs r1, #1
	movs r2, #0x24
	add r0, sp, #8
	strh r1, [r0, #0]
	strh r2, [r0, #2]
	movs r4, #0
	add r1, sp, #0xc
	movs r2, #0
_0803CA78:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _0803CA78
	movs r4, #0
_0803CA84:
	add r0, sp, #8
	bl sub_0805AB20
	adds r4, #1
	cmp r4, #1
	blo _0803CA84
	cmp r6, #9
	beq _0803CAD0
	lsls r0, r5, #0x18
	lsrs r4, r0, #0x18
	bl sub_0800CE30
	cmp r0, #0
	beq _0803CAB8
	ldr r0, _0803CAB4
	ldr r0, [r0, #0]
	movs r1, #0xe1
	lsls r1, r1, #1
	b _0803CAC0
	.2byte 0x0000
_0803CAAC: .4byte gUnk_030034E0
_0803CAB0: .4byte gUnk_030027D0
_0803CAB4: .4byte gUnk_03005CF4
_0803CAB8:
	ldr r0, _0803CAC8
	ldr r0, [r0, #0]
	movs r1, #0xdb
	lsls r1, r1, #1
_0803CAC0:
	adds r0, r0, r1
	strb r4, [r0, #0]
	b _0803CAD0
	.2byte 0x0000
_0803CAC8: .4byte gUnk_03005CF4
_0803CACC:
	bl sub_080003F0
_0803CAD0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803CACC
	b _0803CADE
_0803CADA:
	bl sub_080003F0
_0803CADE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803CADA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803CB00
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803CB08
_0803CB00: .4byte 0x00140295
_0803CB04:
	bl sub_080003F0
_0803CB08:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803CB14
	b _0803CC1E
_0803CB14:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803CB04
	bl sub_0805EFBC
	b _0803CC1E
_0803CB22:
	bl sub_080003F0
_0803CB26:
	bl sub_0805F184
	cmp r0, #0
	bne _0803CB22
	b _0803CB34
_0803CB30:
	bl sub_080003F0
_0803CB34:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803CB30
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803CB58
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803CB60
	.2byte 0x0000
_0803CB58: .4byte 0x001402A0
_0803CB5C:
	bl sub_080003F0
_0803CB60:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803CC1E
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803CB5C
	bl sub_0805EFBC
	b _0803CC1E
_0803CB78:
	bl sub_080003F0
_0803CB7C:
	bl sub_0805F184
	cmp r0, #0
	bne _0803CB78
	b _0803CB8A
_0803CB86:
	bl sub_080003F0
_0803CB8A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803CB86
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803CBAC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803CBB4
_0803CBAC: .4byte 0x00140294
_0803CBB0:
	bl sub_080003F0
_0803CBB4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803CC1E
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803CBB0
	bl sub_0805EFBC
	b _0803CC1E
_0803CBCC:
	bl sub_080003F0
_0803CBD0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803CBCC
	b _0803CBDE
_0803CBDA:
	bl sub_080003F0
_0803CBDE:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803CBDA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803CC00
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803CC08
_0803CC00: .4byte 0x00140293
_0803CC04:
	bl sub_080003F0
_0803CC08:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803CC1E
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803CC04
	bl sub_0805EFBC
_0803CC1E:
	adds r0, r7, #0
	movs r1, #0
	bl sub_0802939C
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803CC4C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0803CC4C: .4byte gUnk_03003CE0
	thumb_func_end sub_0803C698
