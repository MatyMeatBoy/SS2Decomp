	thumb_func_start sub_08068600
sub_08068600: @ 0x08068600
	push {r4, r5, r6, lr}
	ldr r4, _08068660
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08068614
	adds r0, r4, #0
	bl sub_080003A8
_08068614:
	ldr r4, _08068664
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _08068626
	adds r0, r4, #0
	bl sub_080003A8
_08068626:
	ldr r4, _08068668
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	beq _08068638
	ldr r0, [r4, #0]
	bl sub_080003A8
_08068638:
	movs r5, #0
	ldr r6, _0806866C
	movs r4, #0
_0806863E:
	ldr r0, [r6, #0]
	adds r0, r0, r4
	bl sub_08000470
	cmp r0, #0
	beq _08068652
	ldr r0, [r6, #0]
	adds r0, r0, r4
	bl sub_080003A8
_08068652:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #3
	bls _0806863E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08068660: .4byte gUnk_03006310
_08068664: .4byte gUnk_03006230
_08068668: .4byte gUnk_03006368
_0806866C: .4byte gUnk_03006258
	thumb_func_end sub_08068600
