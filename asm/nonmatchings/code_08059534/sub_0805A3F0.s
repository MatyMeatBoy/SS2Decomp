	thumb_func_start sub_0805A3F0
sub_0805A3F0: @ 0x0805A3F0
	push {lr}
	adds r1, r0, #0
	ldr r0, _0805A400
	bl sub_08068070
	pop {r0}
	bx r0
	.2byte 0x0000
_0805A400: .4byte sub_0805A404
	thumb_func_end sub_0805A3F0
