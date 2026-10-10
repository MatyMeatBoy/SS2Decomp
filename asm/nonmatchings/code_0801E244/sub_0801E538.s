	thumb_func_start sub_0801E538
sub_0801E538: @ 0x0801E538
	push {lr}
	bl sub_0801CCC8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801E548
	movs r0, #0
	b _0801E54A
_0801E548:
	movs r0, #1
_0801E54A:
	pop {r1}
	bx r1
	thumb_func_end sub_0801E538
