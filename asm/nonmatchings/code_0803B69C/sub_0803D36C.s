	thumb_func_start sub_0803D36C
sub_0803D36C: @ 0x0803D36C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803D398
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	b _0803D3A0
_0803D398: .4byte gUnk_03003CE0
_0803D39C:
	bl sub_080003F0
_0803D3A0:
	bl sub_0805F184
	cmp r0, #0
	bne _0803D39C
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803D3C4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803D3CC
	.2byte 0x0000
_0803D3C4: .4byte 0x001404FA
_0803D3C8:
	bl sub_080003F0
_0803D3CC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803D3C8
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #0
	beq _0803D41A
	ldr r0, _0803D404
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0803D3F2
	movs r0, #0x32
	bl sub_08006D08
_0803D3F2:
	movs r4, #0xa
	bl sub_0800CE30
	cmp r0, #0
	beq _0803D410
	ldr r0, _0803D408
	ldr r0, [r0, #0]
	ldr r1, _0803D40C
	b _0803D416
_0803D404: .4byte gUnk_030027D0
_0803D408: .4byte gUnk_03005CF4
_0803D40C: .4byte 0x000001BF
_0803D410:
	ldr r0, _0803D448
	ldr r0, [r0, #0]
	ldr r1, _0803D44C
_0803D416:
	adds r0, r0, r1
	strb r4, [r0, #0]
_0803D41A:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803D450
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0803D448: .4byte gUnk_03005CF4
_0803D44C: .4byte 0x000001B3
_0803D450: .4byte gUnk_03003CE0
	thumb_func_end sub_0803D36C
