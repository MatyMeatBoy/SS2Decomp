	thumb_func_start sub_08057624
sub_08057624: @ 0x08057624
	push {r4, lr}
	b _0805762A
_08057628:
	subs r0, r4, #1
_0805762A:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0805763E
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08057628
_0805763E:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08057624
