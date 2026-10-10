	thumb_func_start sub_0805A6B8
sub_0805A6B8: @ 0x0805A6B8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	b _0805A6C6
_0805A6C0:
	bl sub_080003F0
	adds r4, #1
_0805A6C6:
	ldr r0, [r5, #0xc]
	cmp r4, r0
	blo _0805A6C0
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0]
	bl sub_080B8F2C
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0805A6B8
