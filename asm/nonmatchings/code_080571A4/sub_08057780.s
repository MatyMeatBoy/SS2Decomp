	thumb_func_start sub_08057780
sub_08057780: @ 0x08057780
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	cmp r1, #0
	beq _080577A8
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_080577A8:
	ldr r0, _08057828
	adds r1, r0, #0
	adds r1, #0x80
	movs r6, #0
	ldrsh r2, [r1, r6]
	mov sl, r2
	adds r0, #0x82
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r9, r1
	movs r0, #0
	lsls r4, r4, #0x10
	mov r8, r4
	add r7, sp, #4
	lsls r6, r5, #0x10
	lsls r5, r3, #0x10
_080577C8:
	lsls r4, r0, #0x10
	asrs r4, r4, #0x10
	mov r0, sp
	mov r1, sl
	mov r3, r8
	asrs r2, r3, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r7, #0
	mov r1, r9
	asrs r2, r6, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB94
	ldr r0, [sp, #0]
	negs r0, r0
	ldr r1, [sp, #4]
	negs r1, r1
	bl sub_08097D18
	bl sub_080003F0
	asrs r0, r5, #0x10
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r4, r1
	ble _080577C8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08057828: .4byte gUnk_03003170
	thumb_func_end sub_08057780
