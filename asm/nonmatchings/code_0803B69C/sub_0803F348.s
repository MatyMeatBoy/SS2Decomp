	thumb_func_start sub_0803F348
sub_0803F348: @ 0x0803F348
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #0x14
	negs r1, r1
	movs r2, #0
	movs r3, #0xa
	bl sub_08028D98
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08029174
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0
	movs r3, #0xa
	bl sub_08028D98
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08029174
	movs r5, #0x3c
	b _0803F382
_0803F378:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803F38E
_0803F382:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F378
_0803F38E:
	movs r1, #0x14
	negs r1, r1
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0xa
	bl sub_08028D98
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08029174
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0
	movs r3, #0xa
	bl sub_08028D98
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08029174
	movs r5, #0x3c
	b _0803F3C6
_0803F3BC:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803F3D2
_0803F3C6:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F3BC
_0803F3D2:
	movs r1, #0x1c
	negs r1, r1
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0xa
	bl sub_08028D98
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08029174
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08029174
	movs r5, #0xa
	b _0803F3FE
_0803F3F4:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0803F40A
_0803F3FE:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0803F3F4
_0803F40A:
	movs r5, #1
_0803F40C:
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	movs r3, #8
	bl sub_08028D98
	adds r0, r4, #0
	movs r1, #4
	negs r1, r1
	movs r2, #0
	movs r3, #8
	bl sub_08028D98
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #9
	bls _0803F40C
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08029174
	movs r1, #0xa
	negs r1, r1
	adds r0, r4, #0
	movs r2, #0
	movs r3, #2
	bl sub_08028D98
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08029174
	pop {r4, r5}
	pop {r0}
	bx r0
	thumb_func_end sub_0803F348
