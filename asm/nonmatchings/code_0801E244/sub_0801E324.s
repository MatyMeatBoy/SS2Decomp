	thumb_func_start sub_0801E324
sub_0801E324: @ 0x0801E324
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	ldr r2, _0801E370
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r2, #0x34
	adds r0, r0, r2
	ldr r1, [r0, #0]
	movs r3, #0
	movs r0, #1
	negs r0, r0
	mov ip, r0
	ldr r7, _0801E374
	adds r6, r7, #0
_0801E344:
	ldrh r2, [r1, #0]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, ip
	beq _0801E360
	ldrh r0, [r1, #4]
	cmp r0, r4
	bne _0801E360
	ldrh r0, [r1, #2]
	cmp r0, r5
	bne _0801E360
	adds r0, r2, #0
	orrs r0, r6
	strh r0, [r1, #0]
_0801E360:
	adds r3, #1
	adds r1, #0x28
	cmp r3, #7
	bls _0801E344
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801E370: .4byte gUnk_03003CE0
_0801E374: .4byte 0x0000FFFF
	thumb_func_end sub_0801E324
