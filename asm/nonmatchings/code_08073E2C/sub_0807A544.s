	thumb_func_start sub_0807A544
sub_0807A544: @ 0x0807A544
	push {r4, lr}
	movs r4, #0
	adds r2, r0, #0
	movs r3, #0
	cmp r4, r1
	bhs _0807A560
_0807A550:
	ldrb r0, [r2, #0]
	adds r0, r4, r0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r3, #1
	adds r2, #1
	cmp r3, r1
	blo _0807A550
_0807A560:
	mvns r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0807A544
