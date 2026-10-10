	thumb_func_start sub_08065F08
sub_08065F08: @ 0x08065F08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0]
	bl sub_08002164
	str r0, [sp, #4]
	movs r0, #0
	mov ip, r0
	ldr r1, [sp, #4]
	cmp ip, r1
	bhs _08065FD0
_08065F26:
	movs r1, #0
	mov r3, ip
	lsls r2, r3, #2
	ldr r7, _08065FE0
	adds r0, r2, r7
	ldr r0, [r0, #0]
	str r2, [sp, #0xc]
	adds r3, #1
	str r3, [sp, #0x10]
	cmp r1, r0
	bhi _08065FC6
	adds r0, r7, #0
	mov r9, r0
	adds r3, r2, #0
	add r3, r9
	mov r8, r3
	mov r7, ip
	adds r0, r2, r7
	lsls r0, r0, #3
	str r0, [sp, #8]
_08065F4E:
	lsls r4, r1, #2
	adds r5, r2, #0
	mov r3, ip
	adds r0, r2, r3
	lsls r0, r0, #3
	adds r0, r4, r0
	ldr r7, _08065FE4
	adds r0, r0, r7
	ldr r0, [r0, #0]
	adds r3, r1, #1
	mov sl, r3
	ldr r7, [sp, #0]
	cmp r0, r7
	bne _08065FB8
	adds r3, r1, #0
	mov r0, r9
	str r0, [sp, #0x14]
	adds r0, r2, r0
	ldr r0, [r0, #0]
	cmp r3, r0
	bhs _08065FA0
	ldr r6, _08065FE4
	adds r4, #4
_08065F7C:
	lsls r1, r3, #2
	adds r2, r5, #0
	mov r7, ip
	adds r0, r5, r7
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r6
	adds r0, r4, r0
	adds r0, r0, r6
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	adds r4, #4
	adds r3, #1
	ldr r0, [sp, #0x14]
	adds r2, r2, r0
	ldr r0, [r2, #0]
	cmp r3, r0
	blo _08065F7C
_08065FA0:
	lsls r0, r3, #2
	ldr r1, [sp, #8]
	adds r0, r0, r1
	ldr r3, _08065FE4
	adds r0, r0, r3
	movs r1, #1
	negs r1, r1
	str r1, [r0, #0]
	mov r7, r8
	ldr r0, [r7, #0]
	subs r0, #1
	str r0, [r7, #0]
_08065FB8:
	mov r1, sl
	ldr r2, [sp, #0xc]
	mov r3, r9
	adds r0, r2, r3
	ldr r0, [r0, #0]
	cmp r1, r0
	bls _08065F4E
_08065FC6:
	ldr r7, [sp, #0x10]
	mov ip, r7
	ldr r0, [sp, #4]
	cmp ip, r0
	blo _08065F26
_08065FD0:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08065FE0: .4byte gUnk_03006210
_08065FE4: .4byte gUnk_03006260
	thumb_func_end sub_08065F08
