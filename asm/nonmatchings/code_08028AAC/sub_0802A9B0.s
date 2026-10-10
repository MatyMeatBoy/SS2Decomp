	thumb_func_start sub_0802A9B0
sub_0802A9B0: @ 0x0802A9B0
	push {r4, r5, r6, r7, lr}
	ldr r5, _0802AA04
_0802A9B4:
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r0, r5
	bl sub_08007290
	adds r4, r0, #2
	movs r7, #1
	movs r3, #0
	ldrh r2, [r0, #2]
	cmp r2, #0xff
	beq _0802A9EE
	ldr r0, _0802AA08
	ldr r1, [r0, #0]
	adds r6, r0, #0
	ldrb r1, [r1, #0]
	cmp r2, r1
	bne _0802AA10
_0802A9D6:
	adds r3, #1
	lsls r0, r3, #1
	adds r0, r0, r4
	ldrh r1, [r0, #0]
	cmp r1, #0xff
	beq _0802A9EE
	ldr r0, [r6, #0]
	adds r0, r0, r3
	ldrb r0, [r0, #0]
	cmp r1, r0
	beq _0802A9D6
	movs r7, #0
_0802A9EE:
	cmp r7, #0
	beq _0802AA10
	ldr r0, _0802AA08
	ldr r0, [r0, #0]
	adds r0, r0, r3
	ldrb r0, [r0, #0]
	cmp r0, #0xfd
	bne _0802AA10
	ldr r1, _0802AA0C
	adds r0, r5, r1
	b _0802AA1C
_0802AA04: .4byte 0x00000533
_0802AA08: .4byte gUnk_030034E0
_0802AA0C: .4byte 0xFFFFFACD
_0802AA10:
	adds r5, #1
	ldr r0, _0802AA24
	cmp r5, r0
	bls _0802A9B4
	movs r0, #1
	negs r0, r0
_0802AA1C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0802AA24: .4byte 0x0000053F
	thumb_func_end sub_0802A9B0
