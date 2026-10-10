	thumb_func_start sub_080571A4
sub_080571A4: @ 0x080571A4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	bl sub_08002204
	cmp r0, #0
	beq _080571CE
	ldr r0, _080571D4
	ldr r1, [r0, #0]
	lsls r0, r4, #2
	adds r0, r0, r4
	adds r0, r5, r0
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r1, r1, r0
	strb r6, [r1, #0]
_080571CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_080571D4: .4byte gUnk_03005CF4
	thumb_func_end sub_080571A4
