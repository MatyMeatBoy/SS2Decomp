	thumb_func_start sub_08065E38
sub_08065E38: @ 0x08065E38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #0]
	bl sub_08002164
	str r0, [sp, #4]
	movs r0, #0
	mov r9, r0
	ldr r1, [sp, #4]
	cmp r9, r1
	bhs _08065EF8
_08065E56:
	movs r1, #0
	mov r2, r9
	lsls r5, r2, #2
	ldr r6, _08065ED8
	adds r0, r5, r6
	ldr r0, [r0, #0]
	adds r2, #1
	str r2, [sp, #8]
	cmp r1, r0
	bhi _08065EEE
	adds r7, r6, #0
	adds r0, r5, r7
	mov r8, r0
	str r5, [sp, #0xc]
	mov r2, r9
	adds r0, r5, r2
	lsls r0, r0, #3
	mov sl, r0
	mov r3, r8
	mov ip, r1
	ldr r2, _08065EDC
	add r2, sl
_08065E82:
	ldr r4, [sp, #0xc]
	ldr r0, [r2, #0]
	ldr r6, [sp, #0]
	cmp r0, r6
	bne _08065EE0
	adds r3, r1, #0
	adds r6, r7, #0
	adds r0, r5, r6
	ldr r0, [r0, #0]
	cmp r3, r0
	bhs _08065EC0
	mov r5, ip
	adds r5, #4
_08065E9C:
	lsls r1, r3, #2
	adds r2, r4, #0
	mov r7, r9
	adds r0, r4, r7
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r7, _08065EDC
	adds r1, r1, r7
	adds r0, r5, r0
	adds r0, r0, r7
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	adds r5, #4
	adds r3, #1
	adds r2, r2, r6
	ldr r0, [r2, #0]
	cmp r3, r0
	blo _08065E9C
_08065EC0:
	lsls r0, r3, #2
	add r0, sl
	ldr r1, _08065EDC
	adds r0, r0, r1
	movs r1, #1
	negs r1, r1
	str r1, [r0, #0]
	mov r2, r8
	ldr r0, [r2, #0]
	subs r0, #1
	str r0, [r2, #0]
	b _08065EEE
_08065ED8: .4byte gUnk_03006210
_08065EDC: .4byte gUnk_03006260
_08065EE0:
	movs r6, #4
	add ip, r6
	adds r2, #4
	adds r1, #1
	ldr r0, [r3, #0]
	cmp r1, r0
	bls _08065E82
_08065EEE:
	ldr r7, [sp, #8]
	mov r9, r7
	ldr r0, [sp, #4]
	cmp r9, r0
	blo _08065E56
_08065EF8:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08065E38
