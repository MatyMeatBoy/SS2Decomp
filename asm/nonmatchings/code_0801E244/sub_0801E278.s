	thumb_func_start sub_0801E278
sub_0801E278: @ 0x0801E278
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x64
	mov r8, r0
	movs r7, #1
	negs r7, r7
_0801E28A:
	ldr r1, [r5, #0x34]
	movs r2, #0
_0801E28E:
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, r7
	beq _0801E2A6
	ldrh r0, [r1, #4]
	cmp r0, r6
	bne _0801E2A6
	ldrh r0, [r1, #2]
	cmp r8, r0
	bne _0801E2A6
	adds r4, r1, #0
	b _0801E2B0
_0801E2A6:
	adds r2, #1
	adds r1, #0x28
	cmp r2, #7
	bls _0801E28E
	movs r4, #0
_0801E2B0:
	cmp r4, #0
	beq _0801E2C2
	ldrh r0, [r5, #0]
	adds r1, r4, #0
	movs r2, #0
	bl sub_0801DB94
	cmp r4, #0
	bne _0801E28A
_0801E2C2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801E278
