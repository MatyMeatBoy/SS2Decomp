	thumb_func_start sub_08065504
sub_08065504: @ 0x08065504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	mov r9, r1
	ldr r0, [sp, #0x30]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r2, #0
	bge _08065526
	ldr r2, _080655BC
_08065526:
	str r2, [sp, #0xc]
	movs r0, #0xa
	subs r0, r0, r6
	lsls r0, r0, #2
	ldr r1, _080655C0
	adds r0, r0, r1
	mov r8, r0
	mov r4, sp
	movs r5, #0
	adds r7, #1
	cmp r5, r6
	bhs _08065558
_0806553E:
	mov r0, r8
	adds r0, #4
	mov r8, r0
	subs r0, #4
	ldm r0!, {r1}
	add r0, sp, #0xc
	bl sub_08000498
	strb r0, [r4, #0]
	adds r5, #1
	adds r4, #1
	cmp r5, r6
	blo _0806553E
_08065558:
	movs r2, #0
	subs r7, r7, r6
	mov r4, sp
	movs r5, #0
	cmp r5, r6
	bhs _080655A4
	ldr r3, _080655C4
	mov ip, r3
	ldr r1, _080655C8
	mov r3, sl
	lsls r0, r3, #1
	adds r0, r0, r1
	mov r8, r0
	subs r0, r6, #1
	mov sl, r0
_08065576:
	cmp r2, #0
	bne _08065584
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne _08065584
	cmp r5, sl
	bne _0806559A
_08065584:
	movs r2, #1
	lsls r1, r7, #1
	mov r3, r9
	lsls r0, r3, #6
	adds r1, r1, r0
	add r1, ip
	mov r3, r8
	ldrh r0, [r3, #0]
	ldrb r3, [r4, #0]
	adds r0, r0, r3
	strh r0, [r1, #0]
_0806559A:
	adds r5, #1
	adds r7, #1
	adds r4, #1
	cmp r5, r6
	blo _08065576
_080655A4:
	mov r0, r9
	movs r1, #1
	bl sub_0801A664
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080655BC: .4byte 0x7FFFFFFF
_080655C0: .4byte gUnk_084EBD4C
_080655C4: .4byte gUnk_03005740
_080655C8: .4byte gUnk_084EBD74
	thumb_func_end sub_08065504
