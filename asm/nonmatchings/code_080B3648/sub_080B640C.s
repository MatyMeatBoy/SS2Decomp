	thumb_func_start sub_080B640C
sub_080B640C: @ 0x080B640C
	push {r4, lr}
	movs r1, #0
	ldr r4, _080B6440
	ldr r3, _080B6444
	movs r2, #0
_080B6416:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r2, [r0, #0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bls _080B6416
	movs r0, #0x28
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0]
	cmp r1, #0
	beq _080B6438
	movs r0, #0
	str r0, [r1, #8]
_080B6438:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B6440: .4byte gUnk_030007EC
_080B6444: .4byte gUnk_030007D4
	thumb_func_end sub_080B640C
