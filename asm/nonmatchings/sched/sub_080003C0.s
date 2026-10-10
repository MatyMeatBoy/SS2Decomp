	thumb_func_start sub_080003C0
sub_080003C0: @ 0x080003C0
	ldr r0, [r4, #0x20]
	bl sub_08001538
	ldr r0, _080003EC
	ldr r1, [r0, #0]
	subs r1, #1
	str r1, [r0, #0]
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0]
	str r1, [r0, #0]
	cmp r1, #0
	beq _080003E2
	str r0, [r1, #0x18]
	str r1, [r4, #0]
	pop {r0, r1, r2, r3, r4, r5, r6, r7, pc}
_080003E2:
	str r0, [r4, #0]
	pop {r0, r1, r2, r3, r4, r5, r6, r7, pc}
	.2byte 0x0000
	.4byte 0x0300123C
_080003EC: .4byte gUnk_03001244
	thumb_func_end sub_080003C0
