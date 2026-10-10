	thumb_func_start sub_0801E164
sub_0801E164: @ 0x0801E164
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldr r2, [r3, #0x34]
	movs r1, #0
	movs r6, #1
	negs r6, r6
	movs r5, #2
	negs r5, r5
_0801E176:
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, r6
	beq _0801E190
	cmp r0, r5
	bne _0801E194
	ldrh r0, [r2, #4]
	cmp r0, r4
	bne _0801E194
	ldrh r0, [r3, #0]
	ldrh r7, [r2, #2]
	cmp r0, r7
	bne _0801E194
_0801E190:
	adds r0, r2, #0
	b _0801E19E
_0801E194:
	adds r1, #1
	adds r2, #0x28
	cmp r1, #7
	bls _0801E176
	movs r0, #0
_0801E19E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801E164
