	thumb_func_start sub_08058790
sub_08058790: @ 0x08058790
	push {r4, lr}
	bl sub_0800CF90
	movs r4, #1
	b _080587A4
_0805879A:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080587B0
_080587A4:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0805879A
_080587B0:
	movs r0, #0
	movs r1, #2
	bl sub_0801A664
	movs r4, #1
	b _080587C6
_080587BC:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080587D2
_080587C6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080587BC
_080587D2:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08058790
