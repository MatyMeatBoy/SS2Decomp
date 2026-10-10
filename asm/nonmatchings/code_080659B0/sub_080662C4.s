	thumb_func_start sub_080662C4
sub_080662C4: @ 0x080662C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _080662E0
	ldr r2, [r0, #0]
	mov sl, r0
	cmp r2, #0x31
	bls _080662F8
	movs r0, #0
	b _08066388
_080662E0: .4byte gUnk_03006338
_080662E4:
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r3, r2
	ldr r2, _080662F4
	bl sub_080B8578
	b _08066386
	.2byte 0x0000
_080662F4: .4byte 0x04000002
_080662F8:
	ldr r0, _08066398
	ldr r5, [r0, #0]
	movs r4, #0
	lsls r3, r6, #1
	mov r8, r3
	cmp r4, r2
	bhs _08066344
	adds r0, r3, r6
	lsls r0, r0, #3
	subs r0, r0, r6
	lsls r0, r0, #5
	mov ip, r0
	str r2, [sp, #0]
	adds r2, r5, #0
	ldr r7, _0806639C
	mov r9, r7
_08066318:
	ldr r0, [r2, #4]
	cmp r0, #1
	bne _08066338
	ldrb r0, [r2, #0]
	cmp r0, #0x91
	bne _08066338
	adds r1, r5, #0
	adds r1, #8
	mov r3, r9
	ldr r0, [r3, #0]
	mov r7, ip
	adds r3, r7, r0
	ldrh r0, [r2, #0xe]
	ldrh r7, [r3, #2]
	cmp r0, r7
	beq _080662E4
_08066338:
	adds r4, #1
	adds r2, #0x88
	adds r5, #0x88
	ldr r0, [sp, #0]
	cmp r4, r0
	blo _08066318
_08066344:
	mov r2, sl
	ldr r1, [r2, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r3, _08066398
	ldr r1, [r3, #0]
	adds r5, r1, r0
	movs r4, #1
	str r4, [r5, #4]
	movs r0, #0x91
	strb r0, [r5, #0]
	mov r7, r8
	adds r1, r7, r6
	lsls r1, r1, #3
	subs r1, r1, r6
	lsls r1, r1, #5
	ldr r2, _0806639C
	ldr r0, [r2, #0]
	adds r0, r0, r1
	movs r3, #0xfe
	lsls r3, r3, #1
	adds r0, r0, r3
	adds r1, r5, #0
	adds r1, #8
	ldr r2, _080663A0
	bl sub_080B8578
	strb r4, [r5, #1]
	mov r7, sl
	ldr r0, [r7, #0]
	adds r0, #1
	str r0, [r7, #0]
_08066386:
	movs r0, #1
_08066388:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08066398: .4byte gUnk_03006300
_0806639C: .4byte gUnk_030056F4
_080663A0: .4byte 0x04000002
	thumb_func_end sub_080662C4
