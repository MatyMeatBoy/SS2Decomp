	thumb_func_start sub_0801E2CC
sub_0801E2CC: @ 0x0801E2CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x64
	mov r8, r0
	movs r7, #1
	negs r7, r7
_0801E2DE:
	adds r1, r5, #0
	adds r1, #0x8c
	movs r2, #0
_0801E2E4:
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, r7
	beq _0801E2FC
	ldrh r0, [r1, #4]
	cmp r0, r6
	bne _0801E2FC
	ldrh r0, [r1, #2]
	cmp r8, r0
	bne _0801E2FC
	adds r4, r1, #0
	b _0801E306
_0801E2FC:
	adds r2, #1
	adds r1, #0x28
	cmp r2, #7
	bls _0801E2E4
	movs r4, #0
_0801E306:
	cmp r4, #0
	beq _0801E31A
	ldrh r0, [r5, #0]
	adds r0, #4
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801DB94
	cmp r4, #0
	bne _0801E2DE
_0801E31A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801E2CC
