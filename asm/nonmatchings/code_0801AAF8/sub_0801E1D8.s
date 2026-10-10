	thumb_func_start sub_0801E1D8
sub_0801E1D8: @ 0x0801E1D8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r3, [r0, #0x34]
	movs r1, #0
	movs r5, #1
	negs r5, r5
_0801E1E4:
	movs r6, #0
	ldrsh r0, [r3, r6]
	cmp r0, r5
	beq _0801E1FC
	ldrh r0, [r3, #4]
	cmp r0, r4
	bne _0801E1FC
	ldrh r0, [r3, #2]
	cmp r2, r0
	bne _0801E1FC
	adds r0, r3, #0
	b _0801E206
_0801E1FC:
	adds r1, #1
	adds r3, #0x28
	cmp r1, #7
	bls _0801E1E4
	movs r0, #0
_0801E206:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_0801E1D8
