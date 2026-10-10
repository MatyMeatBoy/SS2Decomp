	thumb_func_start sub_0805A194
sub_0805A194: @ 0x0805A194
	push {r4, lr}
	adds r4, r0, #0
_0805A198:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	negs r2, r2
	movs r3, #3
	bl sub_08028D98
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #3
	bl sub_08028D98
	b _0805A198
	thumb_func_end sub_0805A194
