	thumb_func_start sub_0805D720
sub_0805D720: @ 0x0805D720
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	movs r1, #0
	ldr r0, _0805D760
	ldrb r2, [r0, #0]
	movs r3, #1
_0805D73C:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _0805D764
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0805D73C
	movs r0, #0xff
_0805D752:
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xff
	bne _0805D768
	movs r0, #0
	b _0805D84A
	.2byte 0x0000
_0805D760: .4byte gUnk_03005D70
_0805D764:
	adds r0, r1, #0
	b _0805D752
_0805D768:
	ldr r2, _0805D798
	movs r0, #0x34
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2, #0]
	adds r4, r0, r1
	adds r0, r4, #0
	adds r0, #0x31
	strb r3, [r0, #0]
	lsrs r0, r5, #1
	adds r0, #1
	adds r0, r7, r0
	strh r0, [r4, #0x28]
	lsrs r0, r6, #1
	adds r0, #1
	add r0, ip
	strh r0, [r4, #0x2a]
	cmp r5, #0
	beq _0805D79C
	movs r0, #0x1c
	cmp r5, #0x1c
	bhi _0805D79E
	adds r0, r5, #0
	b _0805D79E
_0805D798: .4byte gUnk_03005D64
_0805D79C:
	movs r0, #1
_0805D79E:
	strh r0, [r4, #0x2c]
	cmp r6, #0
	beq _0805D7AE
	movs r0, #0x12
	cmp r6, #0x12
	bhi _0805D7B0
	adds r0, r6, #0
	b _0805D7B0
_0805D7AE:
	movs r0, #1
_0805D7B0:
	strh r0, [r4, #0x2e]
	ldrh r2, [r4, #0x28]
	ldrh r0, [r4, #0x2c]
	lsrs r1, r0, #1
	adds r3, r1, #0
	adds r0, r2, r3
	cmp r0, #0x1e
	ble _0805D7C6
	movs r0, #0x1e
	subs r0, r0, r1
	strh r0, [r4, #0x28]
_0805D7C6:
	ldrh r2, [r4, #0x28]
	subs r0, r2, r3
	movs r5, #0x80
	ands r0, r5
	cmp r0, #0
	beq _0805D7D4
	strh r1, [r4, #0x28]
_0805D7D4:
	ldrh r2, [r4, #0x2a]
	ldrh r0, [r4, #0x2e]
	lsrs r1, r0, #1
	adds r3, r1, #0
	adds r0, r2, r3
	cmp r0, #0x14
	ble _0805D7E8
	movs r0, #0x1e
	subs r0, r0, r1
	strh r0, [r4, #0x2a]
_0805D7E8:
	ldrh r2, [r4, #0x2a]
	subs r0, r2, r3
	ands r0, r5
	cmp r0, #0
	beq _0805D7F4
	strh r1, [r4, #0x2a]
_0805D7F4:
	adds r0, r4, #0
	adds r0, #0x30
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, _0805D808
	str r0, [r4, #0xc]
	adds r5, r4, #0
	adds r5, #0x31
	b _0805D810
	.2byte 0x0000
_0805D808: .4byte sub_0805D854
_0805D80C:
	bl sub_080003F0
_0805D810:
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	str r0, [r4, #0x20]
	cmp r0, #0
	beq _0805D80C
	movs r1, #0xff
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r4, #0x10]
	movs r0, #0x14
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0]
	str r0, [r4, #0x18]
	str r0, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r4, #0
	bl sub_08000274
	ldr r2, _0805D850
	movs r0, #1
	ldrb r5, [r5, #0]
	lsls r0, r5
	ldrb r1, [r2, #0]
	orrs r0, r1
	strb r0, [r2, #0]
	adds r0, r4, #0
_0805D84A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_0805D850: .4byte gUnk_03005D70
	thumb_func_end sub_0805D720
