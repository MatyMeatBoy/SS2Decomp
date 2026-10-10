	thumb_func_start sub_08021DAC
sub_08021DAC: @ 0x08021DAC
	push {r4, lr}
	ldr r4, _08021DC0
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0
_08021DC0: .4byte gUnk_03005CE0
	thumb_func_end sub_08021DAC
