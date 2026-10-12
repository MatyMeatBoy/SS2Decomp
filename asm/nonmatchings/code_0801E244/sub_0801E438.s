	thumb_func_start sub_0801E438
sub_0801E438: @ 0x0801E438
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	bl sub_0801DE60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq _0801E452
	cmp r0, #3
	beq _0801E458
	b _0801E464
_0801E452:
	adds r0, r5, #0
	movs r1, #3
	b _0801E45C
_0801E458:
	adds r0, r5, #0
	movs r1, #2
_0801E45C:
	bl sub_0801E0AC
	lsls r0, r0, #0x13
	lsrs r4, r0, #0x10
_0801E464:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0801E438
