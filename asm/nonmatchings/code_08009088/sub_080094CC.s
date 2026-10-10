	thumb_func_start sub_080094CC
sub_080094CC: @ 0x080094CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	ldr r2, _0800958C
	ldrh r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	mov r8, r0
	ldr r7, [r6, #0xc]
	lsrs r2, r1, #0x10
	cmp r1, #0
	bge _080094F2
	movs r2, #0
_080094F2:
	lsls r0, r4, #0x10
	cmp r0, #0
	bge _080094FA
	movs r4, #0
_080094FA:
	mov r3, sp
	lsls r2, r2, #0x10
	movs r1, #0xff
	lsls r0, r1, #0x10
	ands r0, r2
	asrs r0, r0, #0x13
	strh r0, [r3, #0]
	mov r0, sp
	lsls r4, r4, #0x10
	lsls r1, r1, #0x10
	ands r1, r4
	asrs r1, r1, #0x13
	strh r1, [r0, #2]
	ldrh r3, [r0, #0]
	movs r0, #0x20
	subs r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r0, sp
	lsls r1, r1, #5
	strh r1, [r0, #2]
	asrs r2, r2, #0x13
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	asrs r4, r4, #0x13
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldrh r0, [r6, #0x10]
	adds r1, r4, #0
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r2, r4, r2
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	cmp r5, #0
	beq _08009562
	lsls r0, r4, #1
	adds r0, r7, r0
	mov r1, sp
	movs r2, #0
	ldrsh r1, [r1, r2]
	mov r2, sp
	movs r3, #2
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	lsls r1, r1, #1
	add r1, r8
	adds r2, r5, #0
	bl CpuSet
_08009562:
	adds r0, r5, r4
	lsls r0, r0, #1
	adds r0, r7, r0
	mov r1, sp
	movs r2, #2
	ldrsh r1, [r1, r2]
	lsls r1, r1, #1
	add r1, r8
	movs r2, #0x20
	subs r2, r2, r5
	ldr r3, _08009590
	ands r2, r3
	bl CpuSet
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0800958C: .4byte gUnk_03003460
_08009590: .4byte 0x001FFFFF
	thumb_func_end sub_080094CC
