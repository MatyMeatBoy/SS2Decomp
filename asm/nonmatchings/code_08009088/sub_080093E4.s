	thumb_func_start sub_080093E4
sub_080093E4: @ 0x080093E4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldr r2, _080094C8
	ldrh r0, [r6, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	mov ip, r0
	ldr r7, [r6, #0xc]
	lsrs r4, r1, #0x10
	cmp r1, #0
	bge _08009406
	movs r4, #0
_08009406:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge _0800940E
	movs r3, #0
_0800940E:
	mov r2, sp
	lsls r4, r4, #0x10
	movs r1, #0xff
	lsls r0, r1, #0x10
	ands r0, r4
	asrs r0, r0, #0x13
	strh r0, [r2, #0]
	mov r0, sp
	lsls r2, r3, #0x10
	lsls r1, r1, #0x10
	ands r1, r2
	asrs r1, r1, #0x13
	strh r1, [r0, #2]
	movs r0, #0x20
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x15
	bls _08009436
	movs r5, #0x15
_08009436:
	asrs r1, r4, #0x13
	lsls r1, r1, #0x10
	asrs r0, r2, #0x13
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r0, sp
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #1
	add ip, r0
	lsrs r1, r1, #0xf
	adds r7, r7, r1
	movs r4, #0
	ldrh r0, [r6, #0x10]
	adds r1, r2, #0
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, r5
	bhs _0800948A
	mov r3, sp
_08009462:
	movs r0, #2
	ldrsh r1, [r3, r0]
	lsls r1, r1, #6
	add r1, ip
	lsls r0, r2, #1
	adds r0, r0, r7
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	ldrh r0, [r6, #0x10]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, r5
	blo _08009462
_0800948A:
	mov r1, sp
	movs r0, #0
	strh r0, [r1, #2]
	cmp r4, #0x14
	bhi _080094BE
	mov r3, sp
_08009496:
	movs r0, #2
	ldrsh r1, [r3, r0]
	lsls r1, r1, #6
	add r1, ip
	lsls r0, r2, #1
	adds r0, r0, r7
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r3, #2]
	adds r0, #1
	strh r0, [r3, #2]
	ldrh r0, [r6, #0x10]
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r4, #0x14
	bls _08009496
_080094BE:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080094C8: .4byte gUnk_03003460
	thumb_func_end sub_080093E4
