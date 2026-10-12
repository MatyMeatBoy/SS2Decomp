	thumb_func_start sub_0805853C
sub_0805853C: @ 0x0805853C
	adds r2, r0, #0
	lsrs r3, r2, #3
	movs r0, #7
	ands r2, r0
	cmp r1, #0
	bne _08058558
	ldr r0, _08058550
	ldr r0, [r0, #0]
	ldr r1, _08058554
	b _0805855E
_08058550: .4byte gUnk_03005CF4
_08058554: .4byte 0x000001B7
_08058558:
	ldr r0, _0805856C
	ldr r0, [r0, #0]
	ldr r1, _08058570
_0805855E:
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0, #0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	bx lr
_0805856C: .4byte gUnk_03005CF4
_08058570: .4byte 0x000001C3
	thumb_func_end sub_0805853C
