	thumb_func_start sub_08092080
sub_08092080: @ 0x08092080
	ldr r0, _0809208C
	ldrb r0, [r0, #0]
	cmp r0, #0xd
	beq _08092090
	movs r0, #0
	b _08092092
_0809208C: .4byte gUnk_03000168
_08092090:
	movs r0, #1
_08092092:
	bx lr
	thumb_func_end sub_08092080
