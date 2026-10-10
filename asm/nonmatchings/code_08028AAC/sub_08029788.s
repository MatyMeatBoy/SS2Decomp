	thumb_func_start sub_08029788
sub_08029788: @ 0x08029788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r6, r0
	bls _080297DC
	ldr r0, _080297D0
	ldr r0, [r0, #0]
	ldr r2, _080297D4
	adds r1, r0, r2
	movs r2, #0
_080297A8:
	ldr r0, [r1, #0]
	cmp r0, r6
	beq _080297D8
	adds r2, #1
	adds r1, #0x70
	cmp r2, #0xe
	bls _080297A8
	bl sub_080003F0
	movs r3, #0
	mov r9, r3
_080297BE:
	mov r0, r9
	cmp r0, #0
	bne _080297C6
	b _0802995A
_080297C6:
	ldrh r1, [r0, #0x26]
	mov r8, r1
	ldrh r0, [r0, #0x24]
	subs r0, r0, r1
	b _08029818
_080297D0: .4byte gUnk_03005CF4
_080297D4: .4byte 0x000007A4
_080297D8:
	mov r9, r1
	b _080297BE
_080297DC:
	cmp r6, #0
	beq _08029800
	subs r6, #1
	cmp r6, #4
	bls _080297E8
	b _0802995A
_080297E8:
	ldr r0, _080297FC
	lsls r1, r6, #1
	adds r1, r1, r6
	lsls r1, r1, #3
	subs r1, r1, r6
	lsls r1, r1, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [sp, #0]
	b _0802981C
_080297FC: .4byte gUnk_030056F4
_08029800:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08029830
	adds r1, r1, r0
	mov sl, r1
	ldrh r2, [r1, #0x1e]
	mov r8, r2
	ldrh r0, [r1, #0x1c]
	subs r0, r0, r2
_08029818:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802981C:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	blt _08029838
	movs r1, #1
	cmp r0, #4
	bgt _08029842
	ldr r1, _08029834
	b _08029842
	.2byte 0x0000
_08029830: .4byte gUnk_03003CE0
_08029834: .4byte 0x0000FFFF
_08029838:
	negs r0, r0
	ldr r1, _08029868
	cmp r0, #4
	bgt _08029842
	movs r1, #1
_08029842:
	movs r0, #0x80
	lsls r0, r0, #0xd
	cmp r6, r0
	bls _080298A8
	mov r3, r9
	ldrh r4, [r3, #0x24]
	movs r2, #0x24
	ldrsh r0, [r3, r2]
	cmp r0, r8
	bne _08029858
	b _0802995A
_08029858:
	lsls r7, r1, #0x10
_0802985A:
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	adds r0, r6, #0
	bl sub_080290E4
	movs r5, #2
	b _08029876
_08029868: .4byte 0x0000FFFF
_0802986C:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08029882
_08029876:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _0802986C
_08029882:
	asrs r0, r4, #0x10
	asrs r1, r7, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _08029896
	movs r4, #0
	b _0802989C
_08029896:
	cmp r0, #0
	bge _0802989C
	movs r4, #7
_0802989C:
	mov r3, r9
	movs r1, #0x24
	ldrsh r0, [r3, r1]
	cmp r0, r8
	bne _0802985A
	b _0802995A
_080298A8:
	cmp r6, #0
	beq _08029904
	ldr r2, [sp, #0]
	ldrh r4, [r2, #8]
	movs r3, #8
	ldrsh r0, [r2, r3]
	cmp r0, r8
	beq _0802995A
	lsls r7, r1, #0x10
_080298BA:
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	adds r0, r6, #0
	bl sub_080290E4
	movs r5, #2
	b _080298D2
_080298C8:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080298DE
_080298D2:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _080298C8
_080298DE:
	asrs r0, r4, #0x10
	asrs r1, r7, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _080298F2
	movs r4, #0
	b _080298F8
_080298F2:
	cmp r0, #0
	bge _080298F8
	movs r4, #7
_080298F8:
	ldr r1, [sp, #0]
	movs r2, #8
	ldrsh r0, [r1, r2]
	cmp r0, r8
	bne _080298BA
	b _0802995A
_08029904:
	mov r3, sl
	ldrh r4, [r3, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r3, r2]
	cmp r0, r8
	beq _0802995A
	lsls r7, r1, #0x10
_08029912:
	lsls r4, r4, #0x10
	asrs r1, r4, #0x10
	adds r0, r6, #0
	bl sub_080290E4
	movs r5, #2
	b _0802992A
_08029920:
	subs r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08029936
_0802992A:
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	beq _08029920
_08029936:
	asrs r0, r4, #0x10
	asrs r1, r7, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	ble _0802994A
	movs r4, #0
	b _08029950
_0802994A:
	cmp r0, #0
	bge _08029950
	movs r4, #7
_08029950:
	mov r3, sl
	movs r1, #0x1c
	ldrsh r0, [r3, r1]
	cmp r0, r8
	bne _08029912
_0802995A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08029788
