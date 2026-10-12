	thumb_func_start sub_0801A050
sub_0801A050: @ 0x0801A050
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0801A09C
	ldr r0, _0801A08C
	ldr r2, [r0, #0]
	movs r3, #0
	ldr r7, _0801A090
	movs r5, #1
	movs r0, #0
	mov ip, r0
	movs r6, #0xb8
	lsls r6, r6, #2
_0801A06C:
	adds r1, r5, #0
	lsls r1, r3
	ldr r0, [r7, #0]
	ands r0, r1
	cmp r0, #0
	beq _0801A094
	ldrh r0, [r2, #2]
	cmp r0, r4
	bne _0801A094
	adds r2, #0x7a
	ldrh r1, [r2, #0]
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r2, #0]
	b _0801A09C
	.2byte 0x0000
_0801A08C: .4byte gUnk_030056F4
_0801A090: .4byte gUnk_030056FC
_0801A094:
	adds r3, #1
	adds r2, r2, r6
	cmp r3, #4
	bls _0801A06C
_0801A09C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0801A050
