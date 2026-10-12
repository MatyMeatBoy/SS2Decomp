	thumb_func_start sub_080574C4
sub_080574C4: @ 0x080574C4
	push {lr}
	adds r3, r0, #0
	ldr r0, _080574F4
	ldr r0, [r0, #0]
	ldr r2, _080574F8
	adds r1, r0, r2
	movs r2, #0
_080574D2:
	ldr r0, [r1, #0]
	cmp r0, r3
	beq _080574E6
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080574D2
	bl sub_080003F0
	movs r1, #0
_080574E6:
	cmp r1, #0
	beq _080574EE
	movs r0, #4
	strh r0, [r1, #0x36]
_080574EE:
	pop {r0}
	bx r0
	.2byte 0x0000
_080574F4: .4byte gUnk_03005CF4
_080574F8: .4byte 0x000007A4
	thumb_func_end sub_080574C4
