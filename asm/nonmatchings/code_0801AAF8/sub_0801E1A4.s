	thumb_func_start sub_0801E1A4
sub_0801E1A4: @ 0x0801E1A4
	push {r4, r5, lr}
	ldr r2, [r0, #0x34]
	movs r3, #0
	movs r4, #1
	negs r4, r4
_0801E1AE:
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, r4
	beq _0801E1C6
	ldrh r0, [r2, #4]
	cmp r0, r1
	bne _0801E1C6
	ldrh r0, [r2, #2]
	cmp r0, #0x64
	bne _0801E1C6
	adds r0, r2, #0
	b _0801E1D0
_0801E1C6:
	adds r3, #1
	adds r2, #0x28
	cmp r3, #7
	bls _0801E1AE
	movs r0, #0
_0801E1D0:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0801E1A4
