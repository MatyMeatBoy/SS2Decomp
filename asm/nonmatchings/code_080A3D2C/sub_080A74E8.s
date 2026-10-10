	thumb_func_start sub_080A74E8
sub_080A74E8: @ 0x080A74E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov r8, r0
	movs r7, #0
	ldr r0, _080A7564
	mov sl, r0
	movs r0, #0x88
	mov r9, r0
	movs r6, #0
_080A7504:
	add r8, sl
	add r7, r9
	ldr r1, _080A7568
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	adds r0, r1, #7
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0xf
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_0800CC98
	cmp r0, #0
	bne _080A755E
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A755E
	adds r3, r5, #0
	str r4, [sp, #0]
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #0x3c
	movs r2, #1
	bl sub_0800903C
	mov r0, r8
	asrs r1, r0, #8
	movs r0, #1
	movs r2, #0
	bl sub_0800BBD8
	asrs r1, r7, #8
	movs r0, #3
	movs r2, #0
	bl sub_0800BBD8
_080A755E:
	bl sub_080003F0
	b _080A7504
_080A7564: .4byte 0x000002AA
_080A7568: .4byte gUnk_080B9704
	thumb_func_end sub_080A74E8
