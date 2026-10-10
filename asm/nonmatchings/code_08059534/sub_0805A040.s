	thumb_func_start sub_0805A040
sub_0805A040: @ 0x0805A040
	push {lr}
	movs r0, #8
	movs r1, #0x38
	movs r2, #0x30
	movs r3, #0
	bl sub_08028AAC
	pop {r0}
	bx r0
	thumb_func_end sub_0805A040
