	thumb_func_start sub_0801E104
sub_0801E104: @ 0x0801E104
	push {r4, lr}
	adds r1, r0, #0
	adds r1, #0x8c
	movs r2, #0
	movs r3, #1
	negs r3, r3
_0801E110:
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, r3
	bne _0801E11C
	adds r0, r1, #0
	b _0801E126
_0801E11C:
	adds r2, #1
	adds r1, #0x28
	cmp r2, #7
	bls _0801E110
	movs r0, #0
_0801E126:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0801E104
