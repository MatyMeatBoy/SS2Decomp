	thumb_func_start sub_0801F2CC
sub_0801F2CC: @ 0x0801F2CC
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	ldrb r2, [r4, #2]
	cmp r2, #0
	beq _0801F30C
	adds r0, r2, #0
	lsrs r0, r0, #2
	adds r1, r3, #0
	adds r1, #0x7c
	strh r0, [r1, #0]
	ldrb r2, [r4, #2]
	cmp r0, #0
	bne _0801F2F2
	movs r0, #1
	strh r0, [r1, #0]
	adds r1, #4
	adds r0, #0xff
	b _0801F2FA
_0801F2F2:
	adds r1, r3, #0
	adds r1, #0x80
	movs r0, #0x80
	lsls r0, r0, #3
_0801F2FA:
	strh r0, [r1, #0]
	adds r0, r3, #0
	adds r0, #0x82
	strh r2, [r0, #0]
	movs r1, #3
	ldrsb r1, [r4, r1]
	subs r0, #4
	strh r1, [r0, #0]
	b _0801F31A
_0801F30C:
	adds r0, r3, #0
	adds r0, #0x7c
	strh r2, [r0, #0]
	adds r0, #4
	strh r2, [r0, #0]
	subs r0, #2
	strh r2, [r0, #0]
_0801F31A:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_0801F2CC
