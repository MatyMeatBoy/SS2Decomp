	thumb_func_start sub_08057CEC
sub_08057CEC: @ 0x08057CEC
	push {lr}
	bl sub_0800CE30
	cmp r0, #0
	bne _08057D04
	ldr r0, _08057D00
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x78]
	b _08057D0C
	.2byte 0x0000
_08057D00: .4byte gUnk_03005CF4
_08057D04:
	ldr r0, _08057D10
	ldr r0, [r0, #0]
	adds r0, #0x80
	ldr r0, [r0, #0]
_08057D0C:
	pop {r1}
	bx r1
_08057D10: .4byte gUnk_03005CF4
	thumb_func_end sub_08057CEC
