	thumb_func_start sub_08057C0C
sub_08057C0C: @ 0x08057C0C
	push {lr}
	bl sub_0800CE30
	cmp r0, #0
	bne _08057C24
	ldr r0, _08057C20
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x74]
	b _08057C2A
	.2byte 0x0000
_08057C20: .4byte gUnk_03005CF4
_08057C24:
	ldr r0, _08057C30
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x7c]
_08057C2A:
	pop {r1}
	bx r1
	.2byte 0x0000
_08057C30: .4byte gUnk_03005CF4
	thumb_func_end sub_08057C0C
