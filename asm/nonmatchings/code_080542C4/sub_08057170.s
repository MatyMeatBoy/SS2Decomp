	thumb_func_start sub_08057170
sub_08057170: @ 0x08057170
	push {r4, r5, r6, r7, lr}
	movs r1, #0
	ldr r7, _080571A0
	movs r6, #0xe4
	lsls r6, r6, #1
	movs r5, #0
_0805717C:
	movs r2, #0
	lsls r0, r1, #2
	adds r4, r1, #1
	adds r3, r0, r1
_08057184:
	ldr r0, [r7, #0]
	adds r1, r2, r3
	adds r0, r0, r6
	adds r0, r0, r1
	strb r5, [r0, #0]
	adds r2, #1
	cmp r2, #4
	bls _08057184
	adds r1, r4, #0
	cmp r1, #0x13
	bls _0805717C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080571A0: .4byte gUnk_03005CF4
	thumb_func_end sub_08057170
