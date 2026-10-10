	thumb_func_start sub_08058318
sub_08058318: @ 0x08058318
	push {r4, lr}
	adds r4, r0, #0
	b _08058322
_0805831E:
	bl sub_080003F0
_08058322:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0805831E
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08058318
