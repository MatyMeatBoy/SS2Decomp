	thumb_func_start sub_0805782C
sub_0805782C: @ 0x0805782C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	bl sub_0800CE40
	movs r0, #6
	bl sub_0801ABE8
	b _08057844
_08057840:
	bl sub_080003F0
_08057844:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08057840
	bl sub_0800BB54
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_0800CCA8
	ldr r4, _08057898
	adds r5, r4, #0
	adds r5, #0x7c
	movs r1, #0
	ldrsh r0, [r5, r1]
	mov r8, r0
	adds r4, #0x7e
	movs r0, #0
	ldrsh r6, [r4, r0]
	adds r0, r7, #0
	bl sub_08084F9C
	ldr r0, _0805789C
	bl sub_080003F4
	mov r1, r8
	strh r1, [r5, #0]
	strh r6, [r4, #0]
	bl sub_0800CCB8
	ldr r0, _080578A0
	bl sub_08000420
	bl sub_0800CE54
	b _080578A8
_08057898: .4byte gUnk_03003170
_0805789C: .4byte 0x11201100
_080578A0: .4byte 0x000514C8
_080578A4:
	bl sub_080003F0
_080578A8:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080578A4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0805782C
