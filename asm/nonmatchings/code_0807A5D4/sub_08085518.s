	thumb_func_start sub_08085518
sub_08085518: @ 0x08085518
	push {r4, r5, lr}
	ldr r4, _08085530
	ldr r0, [r4, #0]
	movs r5, #0
	str r5, [r0, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08085530: .4byte gUnk_03006440
	thumb_func_end sub_08085518
