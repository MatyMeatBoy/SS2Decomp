	thumb_func_start sub_0801E3D8
sub_0801E3D8: @ 0x0801E3D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0801E3F2
	cmp r0, #3
	beq _0801E402
	b _0801E430
_0801E3F2:
	adds r0, r5, #0
	movs r1, #3
	bl sub_0801E0AC
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #3
	b _0801E410
_0801E402:
	adds r0, r5, #0
	movs r1, #2
	bl sub_0801E0AC
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #2
_0801E410:
	bl sub_0801E0AC
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0xf
	adds r1, r1, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, #0xa
	muls r0, r1, r0
	movs r1, #0xa
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0801E430:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_0801E3D8
