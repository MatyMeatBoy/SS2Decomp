	thumb_func_start sub_08057580
sub_08057580: @ 0x08057580
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r0, _0805759C
	ldr r0, [r0, #0]
	ldr r2, _080575A0
	adds r1, r0, r2
	movs r2, #0
_08057590:
	ldr r0, [r1, #0]
	cmp r0, r3
	bne _080575A4
	adds r0, r1, #0
	b _080575B2
	.2byte 0x0000
_0805759C: .4byte gUnk_03005CF4
_080575A0: .4byte 0x000007A4
_080575A4:
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _08057590
	bl sub_080003F0
	movs r0, #0
_080575B2:
	cmp r0, #0
	beq _080575B8
	str r4, [r0, #0x44]
_080575B8:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08057580
