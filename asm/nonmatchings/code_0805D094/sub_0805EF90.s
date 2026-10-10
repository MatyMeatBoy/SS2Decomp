	thumb_func_start sub_0805EF90
sub_0805EF90: @ 0x0805EF90
	movs r1, #0
	ldr r0, _0805EFA8
	ldrb r2, [r0, #0]
	movs r3, #1
_0805EF98:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _0805EFAC
	movs r0, #1
	b _0805EFB8
	.2byte 0x0000
_0805EFA8: .4byte gUnk_03005D70
_0805EFAC:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0805EF98
	movs r0, #0
_0805EFB8:
	bx lr
	thumb_func_end sub_0805EF90
