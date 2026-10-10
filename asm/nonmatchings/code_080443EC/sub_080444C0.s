	thumb_func_start sub_080444C0
sub_080444C0: @ 0x080444C0
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _080444E4
	movs r1, #0xf0
	movs r2, #0xe6
	bl sub_080289C0
	adds r4, r0, #0
	bl sub_0800CE30
	cmp r0, #0
	beq _080444F0
	ldr r0, _080444E8
	ldr r0, [r0, #0]
	ldr r1, _080444EC
	adds r0, r0, r1
	b _080444F8
	.2byte 0x0000
_080444E4: .4byte 0x0009000D
_080444E8: .4byte gUnk_03005CF4
_080444EC: .4byte 0x000001BF
_080444F0:
	ldr r0, _08044500
	ldr r0, [r0, #0]
	ldr r2, _08044504
	adds r0, r0, r2
_080444F8:
	ldrb r0, [r0, #0]
	cmp r0, #5
	beq _08044534
	b _0804450C
_08044500: .4byte gUnk_03005CF4
_08044504: .4byte 0x000001B3
_08044508:
	bl sub_080003F0
_0804450C:
	bl sub_0805F184
	cmp r0, #0
	bne _08044508
	b _0804451A
_08044516:
	bl sub_080003F0
_0804451A:
	bl sub_0805EF90
	cmp r0, #0
	bne _08044516
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _0804452C
	b _08044550
	.2byte 0x0000
_0804452C: .4byte 0x001401C4
_08044530:
	bl sub_080003F0
_08044534:
	bl sub_0805F184
	cmp r0, #0
	bne _08044530
	b _08044542
_0804453E:
	bl sub_080003F0
_08044542:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804453E
	movs r0, #0x2d
	str r0, [sp, #0]
	ldr r0, _080445A8
_08044550:
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xf0
	movs r2, #0x88
	movs r3, #0x3c
	bl sub_08028AAC
	ldr r0, _080445AC
	ldr r0, [r0, #0]
	ldr r2, _080445B0
	adds r1, r0, r2
	movs r2, #0
_08044576:
	ldr r0, [r1, #0]
	cmp r0, r4
	beq _0804458A
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08044576
	bl sub_080003F0
	movs r1, #0
_0804458A:
	cmp r1, #0
	beq _08044592
	movs r0, #4
	strh r0, [r1, #0x36]
_08044592:
	movs r4, #5
	bl sub_0800CE30
	cmp r0, #0
	beq _080445B8
	ldr r0, _080445AC
	ldr r0, [r0, #0]
	ldr r1, _080445B4
	adds r0, r0, r1
	b _080445C0
	.2byte 0x0000
_080445A8: .4byte 0x001401C6
_080445AC: .4byte gUnk_03005CF4
_080445B0: .4byte 0x000007A4
_080445B4: .4byte 0x000001BF
_080445B8:
	ldr r0, _080445C8
	ldr r0, [r0, #0]
	ldr r2, _080445CC
	adds r0, r0, r2
_080445C0:
	strb r4, [r0, #0]
	adds r4, r5, #0
	b _080445D4
	.2byte 0x0000
_080445C8: .4byte gUnk_03005CF4
_080445CC: .4byte 0x000001B3
_080445D0:
	bl sub_080003F0
_080445D4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080445D0
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_080444C0
