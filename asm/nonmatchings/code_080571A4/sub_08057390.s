	thumb_func_start sub_08057390
sub_08057390: @ 0x08057390
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08068070
	pop {r1}
	bx r1
	thumb_func_end sub_08057390
