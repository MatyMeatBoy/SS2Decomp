	thumb_func_start sub_0801E12C
sub_0801E12C: @ 0x0801E12C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r3, r0, #0
	adds r3, #0x8c
	movs r1, #0
	movs r5, #1
	negs r5, r5
_0801E13A:
	movs r6, #0
	ldrsh r0, [r3, r6]
	cmp r0, r5
	beq _0801E14E
	ldrh r0, [r3, #4]
	cmp r0, r4
	bne _0801E152
	ldrh r0, [r3, #2]
	cmp r0, r2
	bne _0801E152
_0801E14E:
	adds r0, r3, #0
	b _0801E15C
_0801E152:
	adds r1, #1
	adds r3, #0x28
	cmp r1, #7
	bls _0801E13A
	movs r0, #0
_0801E15C:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_0801E12C
