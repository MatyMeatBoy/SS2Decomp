	thumb_func_start sub_080582D4
sub_080582D4: @ 0x080582D4
	push {r4, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080582E2
_080582DE:
	bl sub_080003F0
_080582E2:
	bl sub_0805F184
	cmp r0, #0
	bne _080582DE
	b _080582F0
_080582EC:
	bl sub_080003F0
_080582F0:
	bl sub_0805EF90
	cmp r0, #0
	bne _080582EC
	movs r0, #0x2d
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_080582D4
