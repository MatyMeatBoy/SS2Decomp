	thumb_func_start sub_0805F158
sub_0805F158: @ 0x0805F158
	movs r1, #0
	ldr r0, _0805F170
	ldrb r2, [r0, #0]
	movs r3, #1
_0805F160:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r3
	cmp r0, #0
	bne _0805F174
	adds r0, r1, #0
	b _0805F180
	.2byte 0x0000
_0805F170: .4byte gUnk_03005D6C
_0805F174:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0805F160
	movs r0, #0xff
_0805F180:
	bx lr
	thumb_func_end sub_0805F158
