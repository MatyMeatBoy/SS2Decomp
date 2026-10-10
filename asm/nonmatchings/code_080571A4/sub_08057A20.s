	thumb_func_start sub_08057A20
sub_08057A20: @ 0x08057A20
	adds r2, r0, #0
	lsrs r3, r2, #3
	movs r0, #7
	ands r2, r0
	cmp r1, #0
	beq _08057A3C
	ldr r0, _08057A34
	ldr r1, [r0, #0]
	ldr r0, _08057A38
	b _08057A42
_08057A34: .4byte gUnk_03005CF4
_08057A38: .4byte 0x000001C3
_08057A3C:
	ldr r0, _08057A54
	ldr r1, [r0, #0]
	ldr r0, _08057A58
_08057A42:
	adds r1, r1, r0
	adds r1, r1, r3
	movs r0, #1
	lsls r0, r2
	ldrb r2, [r1, #0]
	orrs r0, r2
	strb r0, [r1, #0]
	bx lr
	.2byte 0x0000
_08057A54: .4byte gUnk_03005CF4
_08057A58: .4byte 0x000001B7
	thumb_func_end sub_08057A20
