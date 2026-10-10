	thumb_func_start sub_08085534
sub_08085534: @ 0x08085534
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r4, r1, #0
	bl sub_080653CC
	adds r5, r0, #0
	movs r0, #0x25
	bl sub_0805865C
	movs r0, #0
	add r1, sp, #4
	strh r0, [r1, #0]
	adds r1, #2
	strh r0, [r1, #0]
	movs r6, #0x1d
	mov sl, r1
	ldr r7, _080855C4
	ldr r0, _080855C8
	mov r9, r0
_08085564:
	ldrh r0, [r7, #0]
	ldr r2, _080855CC
	adds r1, r2, #0
	ands r0, r1
	strh r0, [r7, #0]
	ldr r0, _080855D0
	ldr r0, [r0, #0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0808557C
	subs r4, #1
_0808557C:
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r1, #0xe
	add r2, sp, #4
	mov r3, sl
	bl sub_08065370
	add r0, sp, #4
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	adds r0, r5, #0
	mov r1, r8
	adds r2, r4, #0
	movs r3, #0xe
	bl sub_08065230
	bl sub_080003F0
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, r9
	bne _08085564
	bl sub_0800048C
	movs r1, #0
	str r1, [r0, #8]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080855C4: .4byte gUnk_03001308
_080855C8: .4byte 0x0000FFFF
_080855CC: .4byte 0x0000FFCF
_080855D0: .4byte gUnk_03002344
	thumb_func_end sub_08085534
