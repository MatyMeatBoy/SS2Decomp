	thumb_func_start sub_080582C0
sub_080582C0: @ 0x080582C0
	push {lr}
	bl sub_0805CFA0
	cmp r0, #0
	blt _080582CE
	movs r0, #1
	b _080582D0
_080582CE:
	movs r0, #0
_080582D0:
	pop {r1}
	bx r1
	thumb_func_end sub_080582C0
