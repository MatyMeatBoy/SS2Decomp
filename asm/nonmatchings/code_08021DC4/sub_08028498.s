	thumb_func_start sub_08028498
sub_08028498: @ 0x08028498
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	ldr r1, _080284DC
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	ldr r7, _080284E0
	movs r6, #1
	lsls r6, r1
	ldr r4, [r7, #0]
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _080284EC
	ldr r5, _080284E4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r0, #2
	adds r0, r5, #0
	adds r0, #8
	adds r3, r2, r0
	ldr r0, [r3, #0]
	cmp r0, #1
	bhi _080284E8
	adds r0, r2, r5
	movs r1, #0
	str r1, [r0, #0]
	adds r0, r5, #4
	adds r0, r2, r0
	str r1, [r0, #0]
	str r1, [r3, #0]
	bics r4, r6
	str r4, [r7, #0]
	b _080284EC
	.2byte 0x0000
_080284DC: .4byte 0xFFFC0000
_080284E0: .4byte gUnk_03005CFC
_080284E4: .4byte gUnk_03005D00
_080284E8:
	subs r0, #1
	str r0, [r3, #0]
_080284EC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08028498
