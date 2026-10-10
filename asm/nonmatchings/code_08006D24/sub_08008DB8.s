	thumb_func_start sub_08008DB8
sub_08008DB8: @ 0x08008DB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r3
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldrh r0, [r2, #2]
	cmp r0, r3
	blo _08008E62
	ldr r0, [r2, #4]
	adds r6, r2, r0
	ldr r1, [r2, #8]
	adds r1, r2, r1
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r4, #2
	adds r1, r1, r0
	ldrh r1, [r1, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r6, r6, r0
	ldr r0, [r6, #8]
	adds r4, r6, r0
	ldr r7, [sp, #0x24]
	movs r5, #0
	movs r3, #0
	ldrh r0, [r6, #2]
	cmp r3, r0
	bhs _08008E62
	ldr r2, _08008E38
	mov sl, r2
	ldr r0, _08008E3C
	mov r9, r0
_08008E0E:
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r4, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	mov r2, r8
	adds r1, r2, r0
	adds r7, r7, r5
	ldrb r0, [r4, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _08008E40
	ldrb r0, [r4, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	add r0, sl
	b _08008E48
_08008E38: .4byte gUnk_0847844C
_08008E3C: .4byte gUnk_0847845C
_08008E40:
	ldrb r0, [r4, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	add r0, r9
_08008E48:
	ldr r5, [r0, #0]
	adds r0, r1, #0
	adds r1, r7, #0
	adds r2, r5, #0
	str r3, [sp, #0]
	bl sub_08001348
	ldr r3, [sp, #0]
	adds r3, #1
	adds r4, #8
	ldrh r0, [r6, #2]
	cmp r3, r0
	blo _08008E0E
_08008E62:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08008DB8
