	thumb_func_start sub_0805C620
sub_0805C620: @ 0x0805C620
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r7, r1, #0
	movs r0, #0x81
	lsls r0, r0, #2
	add r0, r8
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #0]
	ldr r2, _0805C68C
	mov r0, sp
	bl sub_080B8578
	movs r6, #0
	bl sub_080008C8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	mov ip, r6
	movs r1, #0x85
	lsls r1, r1, #2
	add r1, r8
	mov sl, r1
	movs r2, #0x8c
	lsls r2, r2, #2
	add r2, r8
	movs r5, #0
_0805C662:
	ldrh r3, [r2, #0]
	adds r4, r3, #0
	cmp r4, #0
	beq _0805C69A
	ldr r1, [sp, #4]
	adds r1, #0x30
	cmp r6, r9
	bhi _0805C690
	adds r0, r1, r5
	ldr r0, [r0, #0]
	cmp r0, r9
	blo _0805C690
	strh r3, [r7, #0]
	ldrh r0, [r2, #2]
	strh r0, [r7, #2]
	cmp r4, #9
	bne _0805C6A8
	mov r1, sl
	ldr r0, [r1, #0]
	strh r0, [r7, #4]
	b _0805C6A8
_0805C68C: .4byte 0x05000004
_0805C690:
	adds r0, r1, r5
	ldr r0, [r0, #0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0805C69A:
	adds r2, #8
	adds r5, #8
	movs r0, #1
	add ip, r0
	mov r1, ip
	cmp r1, #2
	bls _0805C662
_0805C6A8:
	ldrh r0, [r7, #0]
	cmp r0, #0
	beq _0805C6C8
	cmp r0, #0xa
	bne _0805C6C0
	ldr r0, _0805C6C4
	add r0, r8
	ldrb r0, [r0, #0]
	movs r2, #1
	ands r2, r0
	cmp r2, #0
	beq _0805C78A
_0805C6C0:
	movs r0, #1
	b _0805C7A8
_0805C6C4: .4byte 0x00000227
_0805C6C8:
	bl sub_080008C8
	lsls r0, r0, #0x10
	movs r1, #0xff
	lsls r1, r1, #0x10
	ands r1, r0
	lsrs r1, r1, #0x10
	mov r9, r1
	movs r4, #0
	mov r1, r8
	adds r1, #0x58
	ldrh r0, [r1, #0]
	cmp r0, #3
	bls _0805C6E6
	strh r4, [r1, #0]
_0805C6E6:
	ldr r2, _0805C708
	ldrh r1, [r1, #0]
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x74
	ldrb r6, [r0, #0]
	bl sub_08002164
	cmp r0, #2
	beq _0805C71C
	cmp r0, #2
	bhi _0805C70C
	cmp r0, #1
	beq _0805C716
	b _0805C730
_0805C708: .4byte gUnk_03003CE0
_0805C70C:
	cmp r0, #3
	beq _0805C722
	cmp r0, #4
	beq _0805C728
	b _0805C730
_0805C716:
	adds r0, r6, #0
	adds r0, #0x10
	b _0805C72C
_0805C71C:
	adds r0, r6, #0
	adds r0, #0x15
	b _0805C72C
_0805C722:
	adds r0, r6, #0
	adds r0, #0x1a
	b _0805C72C
_0805C728:
	adds r0, r6, #0
	adds r0, #0x20
_0805C72C:
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0805C730:
	cmp r6, r9
	bls _0805C736
	movs r4, #1
_0805C736:
	cmp r4, #0
	beq _0805C7A6
	bl sub_0800CE30
	adds r1, r0, #0
	cmp r1, #0
	beq _0805C756
	mov r2, r8
	adds r2, #0x78
	ldrh r1, [r2, #0]
	cmp r1, #0
	beq _0805C752
	adds r1, #0x32
	b _0805C75C
_0805C752:
	movs r4, #0
	b _0805C766
_0805C756:
	mov r0, r8
	adds r0, #0x78
	ldrh r1, [r0, #0]
_0805C75C:
	adds r0, r7, #0
	movs r2, #0
	bl sub_0805C4FC
	adds r4, r0, #0
_0805C766:
	ldrh r1, [r7, #0]
	cmp r1, #9
	bne _0805C778
	movs r1, #0x85
	lsls r1, r1, #2
	add r1, r8
	ldr r1, [r1, #0]
	strh r1, [r7, #4]
	b _0805C7A8
_0805C778:
	cmp r1, #0xa
	bne _0805C798
	ldr r1, _0805C794
	add r1, r8
	ldrb r1, [r1, #0]
	movs r2, #1
	ands r2, r1
	cmp r2, #0
	bne _0805C7A8
_0805C78A:
	strh r2, [r7, #0]
	strh r2, [r7, #2]
	movs r0, #0
	b _0805C7A8
	.2byte 0x0000
_0805C794: .4byte 0x00000227
_0805C798:
	cmp r1, #0xa
	bls _0805C7A2
	movs r0, #0
	strh r0, [r7, #0]
	b _0805C7A8
_0805C7A2:
	adds r0, r4, #0
	b _0805C7A8
_0805C7A6:
	movs r0, #0
_0805C7A8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0805C620
