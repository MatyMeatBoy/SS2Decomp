	thumb_func_start sub_08057068
sub_08057068: @ 0x08057068
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _0805707C
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _08057084
	b _080570C4
	.2byte 0x0000
_0805707C: .4byte gUnk_03005CF4
_08057080:
	movs r0, #1
	b _080570C6
_08057084:
	ldr r0, _080570D0
	adds r4, r1, r0
	ldr r0, _080570D4
	str r0, [sp, #0]
	movs r5, #0
_0805708E:
	ldr r0, _080570D8
	ldr r0, [r0, #0]
	movs r1, #1
	lsls r1, r5
	ldr r0, [r0, #0x54]
	ands r0, r1
	cmp r0, #0
	beq _080570BC
	ldr r0, [r4, #0x3c]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080570BC
	adds r1, r4, #0
	adds r1, #8
	adds r3, r4, #0
	adds r3, #0x18
	adds r0, r6, #0
	mov r2, sp
	bl sub_08021FE0
	cmp r0, #0
	bne _08057080
_080570BC:
	adds r5, #1
	adds r4, #0x70
	cmp r5, #0xe
	bls _0805708E
_080570C4:
	movs r0, #0
_080570C6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
_080570D0: .4byte 0x000007A4
_080570D4: .4byte 0x00080010
_080570D8: .4byte gUnk_03005CF4
	thumb_func_end sub_08057068
