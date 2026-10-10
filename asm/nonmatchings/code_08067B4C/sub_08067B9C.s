	thumb_func_start sub_08067B9C
sub_08067B9C: @ 0x08067B9C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r3, r2, #0
	ldr r5, _08067BB0
	ldr r2, [r5, #0]
	cmp r2, #0x31
	bls _08067BB4
	movs r0, #0
	b _08067BE8
_08067BB0: .4byte gUnk_03006338
_08067BB4:
	cmp r3, #0
	beq _08067BE8
	ldr r1, _08067BF0
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r4, [r1, #0]
	adds r4, r4, r0
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0x97
	strb r0, [r4, #0]
	str r6, [r4, #8]
	str r7, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x10
	ldr r2, _08067BF4
	adds r0, r3, #0
	bl sub_080B8578
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	movs r0, #1
_08067BE8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08067BF0: .4byte gUnk_03006300
_08067BF4: .4byte 0x04000004
	thumb_func_end sub_08067B9C
