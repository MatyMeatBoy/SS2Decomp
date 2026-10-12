	thumb_func_start sub_080B2330
sub_080B2330: @ 0x080B2330
	push {r4, lr}
	movs r1, #0
	ldr r4, _080B2364
	ldr r3, _080B2368
	movs r2, #0
_080B233A:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r2, [r0, #0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #1
	bls _080B233A
	movs r0, #0x28
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0]
	cmp r1, #0
	beq _080B235C
	movs r0, #0
	str r0, [r1, #8]
_080B235C:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B2364: .4byte gUnk_030007A8
_080B2368: .4byte gUnk_03000798
	thumb_func_end sub_080B2330
