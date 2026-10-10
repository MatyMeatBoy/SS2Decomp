	thumb_func_start sub_0801E550
sub_0801E550: @ 0x0801E550
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	ldr r2, _0801E590
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r2, #0x34
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r2, #0
	movs r6, #1
	negs r6, r6
_0801E56A:
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, r6
	beq _0801E580
	ldrh r0, [r1, #4]
	cmp r0, r4
	bne _0801E580
	ldrh r0, [r1, #2]
	cmp r0, r5
	bne _0801E580
	strh r3, [r1, #6]
_0801E580:
	adds r2, #1
	adds r1, #0x28
	cmp r2, #7
	bls _0801E56A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801E590: .4byte gUnk_03003CE0
	thumb_func_end sub_0801E550
