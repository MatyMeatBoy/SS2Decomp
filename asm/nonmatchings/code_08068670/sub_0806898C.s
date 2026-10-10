	thumb_func_start sub_0806898C
sub_0806898C: @ 0x0806898C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080689F0
	adds r3, r1, r0
	cmp r4, #0
	beq _080689F8
	subs r4, #1
	ldr r1, _080689F4
	lsls r2, r4, #1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r1, #6
	adds r2, r2, r1
	adds r0, r3, #0
	adds r0, #0x6c
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #2
	adds r0, r0, r1
	movs r4, #0
	ldrsh r1, [r2, r4]
	lsls r0, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	cmp r1, #0
	bge _080689D4
	movs r2, #0
_080689D4:
	adds r0, r3, #0
	adds r0, #0xc2
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	cmp r0, #0
	blt _080689F8
	adds r0, r1, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _080689FA
	.2byte 0x0000
_080689F0: .4byte gUnk_03003CE0
_080689F4: .4byte gUnk_084EBF1C
_080689F8:
	movs r0, #0
_080689FA:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0806898C
