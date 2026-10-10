	thumb_func_start sub_0808A008
sub_0808A008: @ 0x0808A008
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r5, _0808A01C
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0x10]
	cmp r0, #0
	bne _0808A0FC
	b _0808A024
_0808A01C: .4byte gUnk_03005CF4
_0808A020:
	bl sub_080003F0
_0808A024:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808A020
	bl sub_080020F4
	adds r4, r0, #0
	ldr r0, _0808A088
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	mov r1, r8
	adds r5, r1, r0
	bl sub_0800CCDC
	bl sub_080020F4
	ldr r3, _0808A08C
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	adds r1, r3, #0
	adds r1, #0x8c
	adds r1, r2, r1
	ldrh r0, [r5, #0]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r1, r3, #0
	adds r1, #0x90
	adds r1, r2, r1
	ldrh r0, [r5, #2]
	lsls r0, r0, #8
	str r0, [r1, #0]
	adds r2, r2, r3
	adds r3, r2, #0
	adds r3, #0x94
	adds r2, #0x8c
	ldr r0, [r2, #0]
	ldr r1, [r2, #4]
	str r0, [r3, #0]
	str r1, [r3, #4]
	movs r0, #0
	movs r1, #8
	bl sub_08009930
	b _0808A094
_0808A088: .4byte gUnk_03005CF4
_0808A08C: .4byte gUnk_03003CE0
_0808A090:
	bl sub_080003F0
_0808A094:
	bl sub_0800BA6C
	cmp r0, #0
	beq _0808A090
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r4, r0, r4
	ldr r0, _0808A0F0
	adds r4, r4, r0
	adds r5, r4, #4
	bl sub_0800CCCC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800AD04
	ldr r0, _0808A0F4
	ldr r1, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x1c]
	bl sub_08015C38
	bl sub_0800CB9C
	cmp r0, #0
	bne _0808A0DC
	movs r0, #0x1a
	bl sub_08057AE8
	cmp r0, #0
	bne _0808A0DC
	movs r0, #0xdb
	bl sub_08058688
_0808A0DC:
	ldr r1, _0808A0F8
	movs r0, #0
	bl sub_08057328
	bl sub_08015EF8
	bl sub_08015C38
	b _0808A1BE
	.2byte 0x0000
_0808A0F0: .4byte gUnk_03003D6C
_0808A0F4: .4byte gUnk_03005CF4
_0808A0F8: .4byte sub_0802D73C
_0808A0FC:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0808A158
	adds r2, r1, r0
	movs r4, #1
	adds r6, r5, #0
	movs r7, #0
_0808A110:
	ldr r0, [r6, #0]
	ldrh r1, [r0, #0x36]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	add r0, r8
	lsls r1, r4, #3
	adds r5, r0, r1
	adds r0, r2, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #0]
	subs r0, r0, r1
	cmp r0, #0
	bge _0808A134
	negs r0, r0
_0808A134:
	cmp r0, #1
	bgt _0808A1B8
	adds r0, r2, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	ldrh r1, [r5, #2]
	cmp r0, r1
	bne _0808A1B8
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808A160
	.2byte 0x0000
_0808A158: .4byte gUnk_03003CE0
_0808A15C:
	bl sub_080003F0
_0808A160:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808A15C
	bl sub_0800BB40
	ldrh r0, [r5, #4]
	cmp r0, #7
	bne _0808A188
	cmp r4, #2
	beq _0808A188
	ldr r2, _0808A184
	cmp r4, #3
	bne _0808A18E
	ldr r1, [r6, #0]
	movs r0, #1
	strh r0, [r1, #0x36]
	b _0808A18E
_0808A184: .4byte gUnk_03005CF4
_0808A188:
	ldr r0, [r6, #0]
	strh r7, [r0, #0x36]
	ldr r2, _0808A1AC
_0808A18E:
	ldr r1, [r2, #0]
	ldrh r0, [r5, #4]
	strh r0, [r1, #2]
	ldr r0, _0808A1B0
	adds r3, r1, r0
	ldr r2, _0808A1B4
	ldrh r0, [r5, #4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	strh r7, [r1, #0x10]
	strh r7, [r1, #0x1c]
	movs r0, #1
	b _0808A28A
_0808A1AC: .4byte gUnk_03005CF4
_0808A1B0: .4byte 0x0000071C
_0808A1B4: .4byte gUnk_084F0AC0
_0808A1B8:
	adds r4, #1
	cmp r4, #3
	bls _0808A110
_0808A1BE:
	bl sub_080020F4
	ldr r5, _0808A1E8
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0x1b
	ble _0808A228
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808A1F0
_0808A1E8: .4byte gUnk_03003CE0
_0808A1EC:
	bl sub_080003F0
_0808A1F0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808A1EC
	bl sub_0800BB40
	ldr r0, _0808A21C
	ldr r1, [r0, #0]
	movs r3, #0
	movs r0, #3
	strh r0, [r1, #0x36]
	movs r0, #1
	strh r0, [r1, #2]
	ldr r0, _0808A220
	adds r2, r1, r0
	ldr r0, _0808A224
	ldr r0, [r0, #4]
	str r0, [r2, #0]
	strh r3, [r1, #0x10]
	strh r3, [r1, #0x1c]
	movs r0, #1
	b _0808A28A
_0808A21C: .4byte gUnk_03005CF4
_0808A220: .4byte 0x0000071C
_0808A224: .4byte gUnk_084F0AC0
_0808A228:
	bl sub_080020F4
	muls r0, r4, r0
	adds r1, r5, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #0xb
	cmp r0, #0x24
	ble _0808A288
	bl sub_08015ED4
	movs r0, #3
	bl sub_0801ABE8
	bl sub_0800BB40
	b _0808A250
_0808A24C:
	bl sub_080003F0
_0808A250:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0808A24C
	bl sub_0800BB40
	ldr r0, _0808A27C
	ldr r1, [r0, #0]
	movs r2, #0
	movs r0, #4
	strh r0, [r1, #0x36]
	strh r2, [r1, #2]
	ldr r0, _0808A280
	adds r3, r1, r0
	ldr r0, _0808A284
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	strh r2, [r1, #0x10]
	strh r2, [r1, #0x1c]
	movs r0, #1
	b _0808A28A
	.2byte 0x0000
_0808A27C: .4byte gUnk_03005CF4
_0808A280: .4byte 0x0000071C
_0808A284: .4byte gUnk_084F0AC0
_0808A288:
	movs r0, #0
_0808A28A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0808A008
