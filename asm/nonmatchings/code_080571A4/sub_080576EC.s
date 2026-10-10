	thumb_func_start sub_080576EC
sub_080576EC: @ 0x080576EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x10
	cmp r1, #0
	beq _08057714
	movs r0, #0x80
	lsls r0, r0, #3
	bl __divsi3
	str r0, [sp, #8]
_08057714:
	ldr r0, _0805777C
	adds r1, r0, #0
	adds r1, #0x80
	movs r3, #0
	ldrsh r2, [r1, r3]
	mov sl, r2
	adds r0, #0x82
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r1
	movs r4, #0
	lsls r7, r5, #0x10
	add r6, sp, #4
	mov r3, r9
	lsls r5, r3, #0x10
_08057732:
	mov r0, sp
	mov r1, sl
	asrs r2, r7, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	adds r0, r6, #0
	mov r1, r8
	asrs r2, r5, #0x10
	adds r3, r4, #0
	bl sub_080659F4
	ldr r0, [sp, #0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0800BB80
	bl sub_080003F0
	ldr r0, [sp, #8]
	adds r4, r4, r0
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r4, r0
	ble _08057732
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805777C: .4byte gUnk_03003170
	thumb_func_end sub_080576EC
