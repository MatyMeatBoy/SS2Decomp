	thumb_func_start sub_08044018
sub_08044018: @ 0x08044018
	push {r4, lr}
	sub sp, #8
	bl sub_0800CE30
	cmp r0, #0
	beq _08044034
	ldr r0, _08044030
	ldr r0, [r0, #0]
	movs r1, #0xe3
	lsls r1, r1, #1
	b _0804403C
	.2byte 0x0000
_08044030: .4byte gUnk_03005CF4
_08044034:
	ldr r0, _08044068
	ldr r0, [r0, #0]
	movs r1, #0xdd
	lsls r1, r1, #1
_0804403C:
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	asrs r1, r0, #4
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _080440E0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0804406C
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _08044074
_08044068: .4byte gUnk_03005CF4
_0804406C: .4byte gUnk_03003CE0
_08044070:
	bl sub_080003F0
_08044074:
	bl sub_0805F184
	cmp r0, #0
	bne _08044070
	b _08044082
_0804407E:
	bl sub_080003F0
_08044082:
	bl sub_0805EF90
	cmp r0, #0
	bne _0804407E
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080440A4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080440AC
_080440A4: .4byte 0x00140214
_080440A8:
	bl sub_080003F0
_080440AC:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080440C2
	bl sub_0800CDF8
	cmp r0, #0
	beq _080440A8
	bl sub_0805EFBC
_080440C2:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080440E8
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_080440E0:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_080440E8: .4byte gUnk_03003CE0
	thumb_func_end sub_08044018
