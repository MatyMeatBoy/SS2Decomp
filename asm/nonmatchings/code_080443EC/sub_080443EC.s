	thumb_func_start sub_080443EC
sub_080443EC: @ 0x080443EC
	push {r4, lr}
	sub sp, #8
	bl sub_0800CE30
	cmp r0, #0
	beq _08044408
	ldr r0, _08044404
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _08044410
	.2byte 0x0000
_08044404: .4byte gUnk_03005CF4
_08044408:
	ldr r0, _0804443C
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_08044410:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #4
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080444B4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08044440
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _08044448
_0804443C: .4byte gUnk_03005CF4
_08044440: .4byte gUnk_03003CE0
_08044444:
	bl sub_080003F0
_08044448:
	bl sub_0805F184
	cmp r0, #0
	bne _08044444
	b _08044456
_08044452:
	bl sub_080003F0
_08044456:
	bl sub_0805EF90
	cmp r0, #0
	bne _08044452
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08044478
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08044480
_08044478: .4byte 0x001400DD
_0804447C:
	bl sub_080003F0
_08044480:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08044496
	bl sub_0800CDF8
	cmp r0, #0
	beq _0804447C
	bl sub_0805EFBC
_08044496:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080444BC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_080444B4:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_080444BC: .4byte gUnk_03003CE0
	thumb_func_end sub_080443EC
