	thumb_func_start sub_080B76B4
sub_080B76B4: @ 0x080B76B4
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _080B7740
	ldr r5, [r0, #0]
	ldr r1, [r5, #0]
	ldr r0, _080B7744
	cmp r1, r0
	bne _080B773A
	adds r0, r1, #1
	str r0, [r5, #0]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _080B76D6
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_080B76D6:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _080B76F6
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_080B76EC:
	strb r1, [r0, #0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _080B76EC
_080B76F6:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _080B7704
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_080B7704:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _080B7722
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _080B7748
	ldrb r1, [r2, #0]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2, #0]
_080B7722:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _080B7736
	bl sub_080B77A0
	adds r0, r4, #0
	bl sub_080B7610
_080B7736:
	ldr r0, _080B7744
	str r0, [r5, #0]
_080B773A:
	pop {r4, r5}
	pop {r0}
	bx r0
_080B7740: .4byte gUnk_03007FF0
_080B7744: .4byte 0x68736D53
_080B7748: .4byte 0x04000089
	thumb_func_end sub_080B76B4
