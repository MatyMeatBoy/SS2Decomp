	thumb_func_start sub_080092C8
sub_080092C8: @ 0x080092C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	adds r6, r1, #0
	adds r6, #0x10
	ldrh r5, [r1, #2]
	movs r7, #0
	ldrsh r4, [r1, r7]
	muls r5, r4, r5
	movs r4, #3
	subs r4, r4, r0
	lsls r4, r4, #1
	muls r4, r5, r4
	adds r6, r6, r4
	ldr r4, _080093D8
	mov r9, r4
	lsls r5, r0, #1
	mov sl, r5
	adds r4, r5, r0
	lsls r4, r4, #3
	mov r8, r4
	mov r7, r8
	add r7, r9
	movs r5, #0
	strh r0, [r7, #0x14]
	mov r4, r9
	adds r4, #0xc
	add r4, r8
	str r6, [r4, #0]
	ldrh r4, [r1, #0]
	strh r4, [r7, #0x10]
	ldrh r1, [r1, #2]
	strh r1, [r7, #0x12]
	strh r5, [r7, #0]
	strh r5, [r7, #2]
	strh r5, [r7, #4]
	strh r5, [r7, #6]
	strh r5, [r7, #8]
	strh r5, [r7, #0xa]
	movs r1, #1
	strh r1, [r7, #0x16]
	ldr r1, _080093DC
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	lsrs r2, r2, #5
	str r2, [sp, #0]
	lsrs r3, r3, #5
	str r3, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	movs r2, #0
	bl sub_0800AD04
	mov r0, r9
	adds r0, #0x7c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08009352
	adds r0, #7
_08009352:
	asrs r0, r0, #3
	strh r0, [r7, #0]
	mov r1, r9
	adds r1, #0x7e
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08009364
	adds r0, #7
_08009364:
	asrs r0, r0, #3
	strh r0, [r7, #2]
	ldrh r5, [r1, #0]
	movs r4, #0
	ldrsh r0, [r1, r4]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r0, r7
	cmp r5, r0
	bge _080093A6
	mov r6, r8
	mov r4, r9
	adds r7, r1, #0
_0800937E:
	adds r0, r4, #0
	adds r0, #0x7c
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r2, r5, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, r4
	bl sub_080094CC
	adds r0, r5, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	cmp r5, r0
	blt _0800937E
_080093A6:
	ldr r0, _080093E0
	add r0, sl
	ldrh r0, [r0, #0]
	lsrs r0, r0, #8
	movs r1, #0x1f
	ands r0, r1
	lsls r0, r0, #0xb
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r1, r0, r1
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r0, [sp, #8]
	bl sub_08001348
	bl sub_080003F0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080093D8: .4byte gUnk_03003170
_080093DC: .4byte gUnk_03003460
_080093E0: .4byte 0x04000008
	thumb_func_end sub_080092C8
