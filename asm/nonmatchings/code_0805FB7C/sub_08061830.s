	thumb_func_start sub_08061830
sub_08061830: @ 0x08061830
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov r9, r0
	ldr r6, _08061908
	adds r0, #0x8c
	ldr r4, [r0, #0]
	adds r0, #4
	ldr r0, [r0, #0]
	mov r8, r0
	add r5, sp, #0x14
	movs r1, #0
	strh r1, [r5, #0]
	mov r0, sp
	adds r0, #0x16
	strh r1, [r0, #0]
	movs r0, #0x25
	bl sub_0805865C
	movs r0, #0x2f
	mov sl, r0
	mov r5, sp
	adds r5, #0x12
	add r7, sp, #0x10
	asrs r4, r4, #8
	lsls r4, r4, #0x10
	str r4, [sp, #0x18]
_0806186C:
	movs r1, #0x20
	negs r1, r1
	add r8, r1
	mov r2, r8
	lsls r1, r2, #8
	asrs r1, r1, #0x10
	movs r0, #0x30
	str r0, [sp, #0]
	movs r0, #0
	str r0, [sp, #4]
	ldr r3, [sp, #0x18]
	asrs r0, r3, #0x10
	add r2, sp, #0x10
	adds r3, r5, #0
	bl sub_0800BC08
	ldrh r0, [r7, #0]
	subs r0, #8
	strh r0, [r7, #0]
	ldrh r0, [r5, #0]
	subs r0, #8
	strh r0, [r5, #0]
	movs r0, #1
	ldr r3, [r6, #8]
	str r0, [sp, #0]
	movs r0, #0xe
	add r1, sp, #0x14
	mov r2, sp
	adds r2, #0x16
	bl sub_08008CC4
	bl sub_0800CC98
	adds r2, r0, #0
	cmp r2, #0
	bne _080618D6
	movs r4, #0
	ldrsh r0, [r7, r4]
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r4, sp
	ldrh r3, [r4, #0x14]
	str r2, [sp, #0]
	adds r2, r6, #0
	adds r2, #0x1c
	str r2, [sp, #4]
	ldr r2, [r6, #8]
	str r2, [sp, #8]
	ldr r2, [r6, #0]
	str r2, [sp, #0xc]
	movs r2, #0xe
	bl sub_08007CF0
_080618D6:
	bl sub_080003F0
	mov r0, sl
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r0, _0806190C
	cmp sl, r0
	bne _0806186C
	mov r1, r9
	ldr r0, [r1, #0x30]
	movs r1, #8
	orrs r0, r1
	mov r2, r9
	str r0, [r2, #0x30]
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08061908: .4byte gUnk_03005D80
_0806190C: .4byte 0x0000FFFF
	thumb_func_end sub_08061830
