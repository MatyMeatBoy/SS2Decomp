	thumb_func_start sub_0803F210
sub_0803F210: @ 0x0803F210
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x14
	b _0803F222
_0803F218:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F22E
_0803F222:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F218
_0803F22E:
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_08029174
	ldr r0, _0803F24C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803F248
	movs r0, #0x55
	bl sub_08006D08
_0803F248:
	movs r4, #0xa
	b _0803F25A
_0803F24C: .4byte gUnk_030027D0
_0803F250:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F266
_0803F25A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F250
_0803F266:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_08029174
	movs r4, #0x3a
	b _0803F27C
_0803F272:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F288
_0803F27C:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F272
_0803F288:
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_08029174
	ldr r0, _0803F2A8
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803F2A2
	movs r0, #0x55
	bl sub_08006D08
_0803F2A2:
	movs r4, #0xa
	b _0803F2B6
	.2byte 0x0000
_0803F2A8: .4byte gUnk_030027D0
_0803F2AC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F2C2
_0803F2B6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F2AC
_0803F2C2:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_08029174
	movs r4, #0x3a
	b _0803F2D8
_0803F2CE:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F2E4
_0803F2D8:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F2CE
_0803F2E4:
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_08029174
	ldr r0, _0803F304
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803F2FE
	movs r0, #0x55
	bl sub_08006D08
_0803F2FE:
	movs r4, #0xa
	b _0803F312
	.2byte 0x0000
_0803F304: .4byte gUnk_030027D0
_0803F308:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F31E
_0803F312:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F308
_0803F31E:
	adds r0, r5, #0
	movs r1, #0xa
	bl sub_08029174
	movs r4, #0x28
	b _0803F334
_0803F32A:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803F340
_0803F334:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F32A
_0803F340:
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0803F210
