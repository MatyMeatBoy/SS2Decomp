	thumb_func_start sub_0806171C
sub_0806171C: @ 0x0806171C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0800CCCC
	cmp r0, #0
	bne _08061812
	bl sub_0800CC98
	adds r3, r0, #0
	cmp r3, #0
	bne _08061812
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	mov r4, sp
	adds r4, #0x12
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	add r2, sp, #0x10
	adds r3, r4, #0
	bl sub_0800BC08
	add r0, sp, #0x10
	ldrh r6, [r0, #0]
	ldrh r0, [r4, #0]
	mov sl, r0
	adds r1, r5, #0
	cmp r1, #0
	bge _0806176C
	ldr r1, _08061824
_0806176C:
	str r1, [sp, #0x20]
	ldr r0, _08061828
	adds r0, #0x18
	mov r8, r0
	add r4, sp, #0x14
	movs r5, #0
	mov r9, r4
	add r7, sp, #0x20
	subs r6, #0x12
_0806177E:
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r7, #0
	bl sub_08000498
	strb r0, [r4, #0]
	adds r5, #1
	adds r4, #1
	cmp r5, #4
	blo _0806177E
	movs r7, #0
	mov r8, r7
	mov r4, r9
	movs r5, #0
	ldr r0, _0806182C
	str r0, [sp, #0x24]
	movs r0, #2
	lsls r0, r0, #0x10
	mov r9, r0
_080617AA:
	mov r1, r8
	cmp r1, #0
	bne _080617BA
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne _080617BA
	cmp r5, #3
	bne _080617E0
_080617BA:
	movs r2, #1
	mov r8, r2
	ldrb r3, [r4, #0]
	movs r0, #0
	str r0, [sp, #0]
	ldr r0, [sp, #0x24]
	adds r0, #0x1c
	str r0, [sp, #4]
	ldr r7, [sp, #0x24]
	ldr r0, [r7, #8]
	str r0, [sp, #8]
	ldr r0, [r7, #0]
	str r0, [sp, #0xc]
	adds r0, r6, #0
	mov r1, sl
	mov r7, r9
	lsrs r2, r7, #0x10
	bl sub_08007CF0
_080617E0:
	adds r5, #1
	adds r6, #6
	adds r4, #1
	cmp r5, #4
	blo _080617AA
	add r0, sp, #0x10
	ldrh r0, [r0, #0]
	mov r2, sp
	ldrh r1, [r2, #0x12]
	ldr r3, _0806182C
	subs r0, #6
	subs r1, #8
	movs r2, #0
	str r2, [sp, #0]
	adds r2, r3, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r3, #8]
	str r2, [sp, #8]
	ldr r2, [r3, #0]
	str r2, [sp, #0xc]
	movs r2, #4
	movs r3, #6
	bl sub_08007CF0
_08061812:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08061824: .4byte 0x7FFFFFFF
_08061828: .4byte gUnk_084EBD4C
_0806182C: .4byte gUnk_03005D80
	thumb_func_end sub_0806171C
