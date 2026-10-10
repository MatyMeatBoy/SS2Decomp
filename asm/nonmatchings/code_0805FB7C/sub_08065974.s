	thumb_func_start sub_08065974
sub_08065974: @ 0x08065974
	push {r4, lr}
	bl sub_08002164
	adds r3, r0, #0
	movs r1, #0
	cmp r1, r3
	bhs _080659A8
	ldr r0, _0806599C
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r2, r0, r4
	adds r4, #4
_0806598C:
	ldr r0, [r2, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _080659A0
	movs r0, #1
	b _080659AA
_0806599C: .4byte gUnk_03003CE0
_080659A0:
	adds r2, r2, r4
	adds r1, #1
	cmp r1, r3
	blo _0806598C
_080659A8:
	movs r0, #0
_080659AA:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08065974
