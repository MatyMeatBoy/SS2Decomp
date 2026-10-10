	thumb_func_start sub_08044D1C
sub_08044D1C: @ 0x08044D1C
	push {r4, r5, r6, r7, lr}
	ldr r7, _08044D34
	movs r6, #1
_08044D22:
	bl sub_0800CE30
	cmp r0, #0
	beq _08044D3C
	ldr r0, [r7, #0]
	ldr r1, _08044D38
	adds r0, r0, r1
	b _08044D42
	.2byte 0x0000
_08044D34: .4byte gUnk_03005CF4
_08044D38: .4byte 0x000001C5
_08044D3C:
	ldr r0, [r7, #0]
	ldr r2, _08044D4C
	adds r0, r0, r2
_08044D42:
	ldrb r0, [r0, #0]
	asrs r5, r0, #2
	ands r5, r6
	movs r4, #1
	b _08044D5A
_08044D4C: .4byte 0x000001B9
_08044D50:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08044D66
_08044D5A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08044D50
_08044D66:
	bl sub_0800CE30
	cmp r0, #0
	beq _08044D84
	ldr r0, [r7, #0]
	ldr r1, _08044D78
	adds r0, r0, r1
	b _08044D8A
	.2byte 0x0000
_08044D78: .4byte 0x000001C5
_08044D7C:
	adds r2, r1, #0
	b _08044DE4
_08044D80:
	adds r0, r1, #0
	b _08044E12
_08044D84:
	ldr r0, [r7, #0]
	ldr r2, _08044D9C
	adds r0, r0, r2
_08044D8A:
	ldrb r0, [r0, #0]
	asrs r0, r0, #2
	ands r0, r6
	cmp r5, r0
	beq _08044D22
	movs r4, #0xfa
	lsls r4, r4, #1
	b _08044DAA
	.2byte 0x0000
_08044D9C: .4byte 0x000001B9
_08044DA0:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08044DB6
_08044DAA:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08044DA0
_08044DB6:
	movs r0, #0xf
	movs r1, #0x94
	lsls r1, r1, #1
	ldr r2, _08044E28
	bl sub_080289C0
	adds r4, r0, #0
	movs r5, #8
	movs r6, #4
	ldr r0, [r7, #0]
	ldr r2, _08044E2C
	adds r1, r0, r2
	movs r2, #0
_08044DD0:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08044D7C
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08044DD0
	bl sub_080003F0
	movs r2, #0
_08044DE4:
	cmp r2, #0
	beq _08044DF4
	strh r5, [r2, #0x18]
	strh r6, [r2, #0x1a]
	ldr r0, [r2, #0x3c]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x3c]
_08044DF4:
	ldr r5, _08044E30
	ldr r0, [r7, #0]
	ldr r2, _08044E2C
	adds r1, r0, r2
	movs r2, #0
_08044DFE:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _08044D80
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08044DFE
	bl sub_080003F0
	movs r0, #0
_08044E12:
	cmp r0, #0
	beq _08044E18
	str r5, [r0, #0x44]
_08044E18:
	adds r0, r4, #0
	movs r1, #0x11
	bl sub_0802939C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08044E28: .4byte 0x00000197
_08044E2C: .4byte 0x000007A4
_08044E30: .4byte sub_08034F64
	thumb_func_end sub_08044D1C
