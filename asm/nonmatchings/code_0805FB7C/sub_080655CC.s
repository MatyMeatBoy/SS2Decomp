	thumb_func_start sub_080655CC
sub_080655CC: @ 0x080655CC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r3, #0
	cmp r2, #0
	beq _08065648
	ldrh r0, [r2, #0]
	cmp r0, #5
	bhi _08065648
	lsls r0, r0, #2
	ldr r1, _080655E8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_080655E8: .4byte _080655EC
_080655EC:
	.4byte _08065648
_080655F0: .4byte _08065648
_080655F4: .4byte _08065604
_080655F8: .4byte _08065604
_080655FC: .4byte _08065604
_08065600: .4byte _08065604
_08065604:
	ldrh r0, [r2, #4]
	movs r1, #0x98
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r2, r0, #0
	movs r3, #0
	ldr r0, _08065650
	ldr r1, [r0, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	adds r4, r2, r0
	cmp r5, #0
	bge _08065634
	adds r0, r4, #0
	bl sub_0801A638
	movs r1, #0xd
	muls r0, r1, r0
	lsrs r0, r0, #1
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08065634:
	lsls r1, r3, #0x10
	asrs r1, r1, #0x10
	adds r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r7, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_0801A3D0
_08065648:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08065650: .4byte gUnk_03003470
	thumb_func_end sub_080655CC
