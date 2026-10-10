	thumb_func_start sub_0803C4C0
sub_0803C4C0: @ 0x0803C4C0
	push {r4, r5, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803C4E8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	movs r0, #0x1e
	bl sub_0801AA8C
	b _0803C4F0
_0803C4E8: .4byte gUnk_03003CE0
_0803C4EC:
	bl sub_080003F0
_0803C4F0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0803C4EC
	bl sub_0805EFBC
_0803C4FC:
	bl sub_080003F0
	bl sub_0805F184
	cmp r0, #0
	bne _0803C4FC
	bl sub_08002164
	cmp r0, #1
	bne _0803C514
	movs r4, #0
	b _0803C542
_0803C514:
	bl sub_080020F4
	cmp r0, #1
	beq _0803C536
	cmp r0, #1
	bgt _0803C526
	cmp r0, #0
	beq _0803C530
	b _0803C542
_0803C526:
	cmp r0, #2
	beq _0803C53A
	cmp r0, #3
	beq _0803C540
	b _0803C542
_0803C530:
	movs r4, #0xc
	negs r4, r4
	b _0803C542
_0803C536:
	movs r4, #0xc
	b _0803C542
_0803C53A:
	movs r4, #0x24
	negs r4, r4
	b _0803C542
_0803C540:
	movs r4, #0x24
_0803C542:
	adds r1, r4, #0
	adds r1, #0xec
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0xa0
	movs r3, #0
	bl sub_08028AAC
	movs r0, #0
	movs r1, #4
	bl sub_080290E4
	movs r0, #0
	movs r1, #0
	bl sub_0802939C
	movs r4, #0x1e
	b _0803C572
_0803C568:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803C57E
_0803C572:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803C568
_0803C57E:
	movs r0, #0x1e
	bl sub_0801AA34
	b _0803C58A
_0803C586:
	bl sub_080003F0
_0803C58A:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0803C586
	ldr r0, _0803C5A4
	ldr r2, [r0, #0]
	movs r1, #2
	negs r1, r1
	ldr r0, [r2, #0x6c]
	ands r0, r1
	str r0, [r2, #0x6c]
	b _0803C5AC
	.2byte 0x0000
_0803C5A4: .4byte gUnk_03005CF4
_0803C5A8:
	bl sub_080003F0
_0803C5AC:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C5A8
	b _0803C5BA
_0803C5B6:
	bl sub_080003F0
_0803C5BA:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803C5B6
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0803C5DC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C5E4
	.2byte 0x0000
_0803C5DC: .4byte 0x00140205
_0803C5E0:
	bl sub_080003F0
_0803C5E4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C5E0
	movs r4, #0xc8
	b _0803C5FC
_0803C5F2:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0803C608
_0803C5FC:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803C5F2
_0803C608:
	bl sub_0805CDF8
	b _0803C612
_0803C60E:
	bl sub_080003F0
_0803C612:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C60E
	b _0803C620
_0803C61C:
	bl sub_080003F0
_0803C620:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803C61C
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C644
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C64C
	.2byte 0x0000
_0803C644: .4byte 0x00140204
_0803C648:
	bl sub_080003F0
_0803C64C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803C662
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803C648
	bl sub_0805EFBC
_0803C662:
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _0803C694
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0, #0x20]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
_0803C694: .4byte gUnk_03003CE0
	thumb_func_end sub_0803C4C0
