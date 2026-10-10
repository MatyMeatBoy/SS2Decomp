	thumb_func_start sub_0805F184
sub_0805F184: @ 0x0805F184
	movs r1, #0
	ldr r0, _0805F19C
	ldrb r2, [r0, #0]
	movs r3, #1
_0805F18C:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	beq _0805F1A0
	movs r0, #1
	b _0805F1AC
	.2byte 0x0000
_0805F19C: .4byte gUnk_03005D6C
_0805F1A0:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0805F18C
	movs r0, #0
_0805F1AC:
	bx lr
	thumb_func_end sub_0805F184
