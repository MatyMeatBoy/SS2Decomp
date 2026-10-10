	thumb_func_start sub_08058404
sub_08058404: @ 0x08058404
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _0805841A
	bl sub_08000470
	cmp r0, #0
	beq _0805841A
	adds r0, r4, #0
	bl sub_080003A8
_0805841A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08058404
