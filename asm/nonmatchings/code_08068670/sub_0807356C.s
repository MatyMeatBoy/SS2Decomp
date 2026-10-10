	thumb_func_start sub_0807356C
sub_0807356C: @ 0x0807356C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	mov r8, r0
	bl sub_080020F4
	mov r9, r0
	mov r0, r8
	ldr r0, [r0, #0]
	mov sl, r0
	mov r1, r8
	ldr r1, [r1, #4]
	str r1, [sp, #0x1c]
	mov r2, r8
	ldrh r2, [r2, #0x14]
	str r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r0, #3
	bhi _080735A4
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, sl
	muls r1, r0, r1
	ldr r0, _080735FC
	adds r7, r1, r0
_080735A4:
	cmp r9, sl
	bne _080735DA
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _080735FC
	adds r4, r4, r0
	mov r3, r8
	ldr r0, [r3, #0xc]
	ldr r1, [r3, #0x14]
	bl sub_0806898C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc2
	ldrh r1, [r4, #0]
	subs r1, r1, r0
	strh r1, [r4, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _080735DA
	movs r0, #0
	strh r0, [r4, #0]
_080735DA:
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #0x14]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r4, r0, #0x14
	movs r2, #0
	str r2, [sp, #0x18]
	movs r5, #0
	mov r3, sl
	lsls r3, r3, #2
	str r3, [sp, #0x20]
	b _0807369E
_080735FC: .4byte gUnk_03003CE0
_08073600:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _0807371C
	adds r3, r1, r0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r2, [r0, #0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt _08073698
	mov r0, sl
	cmp r0, #3
	bhi _08073632
	adds r0, r3, #0
	adds r0, #0x68
	adds r1, r7, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _08073698
_08073632:
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldr r1, [sp, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	subs r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _08073698
	lsls r0, r1, #0x10
	asrs r2, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0807365C
	negs r0, r0
_0807365C:
	cmp r0, #0xc
	bgt _08073698
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	asrs r0, r0, #0x13
	cmp r0, #0
	bge _0807366C
	negs r0, r0
_0807366C:
	cmp r0, #0xc
	bgt _08073698
	adds r0, r2, #0
	muls r0, r2, r0
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl Sqrt
	add r2, sp, #4
	ldr r3, [sp, #0x18]
	lsls r1, r3, #1
	adds r2, r2, r1
	strh r0, [r2, #0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r1, sp
	adds r0, r1, r3
	strb r5, [r0, #0]
_08073698:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0807369E:
	bl sub_08002164
	cmp r5, r0
	blo _08073600
	cmp r9, sl
	beq _080736B0
	mov r2, sl
	cmp r2, #3
	bls _080736C8
_080736B0:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080736C8
	bl sub_0800CD34
	cmp r0, #0
	bne _080736C8
	movs r0, #0xb6
	lsls r0, r0, #1
	bl sub_0805865C
_080736C8:
	cmp r9, sl
	bne _0807378E
	mov r3, r8
	ldr r1, [r3, #0xc]
	mov r0, r9
	bl sub_08074DE8
	ldr r2, [r7, #0x34]
	movs r5, #0
	ldr r4, _0807371C
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, #0x28
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r3, r1, #2
_080736EA:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _08073720
	ldrh r0, [r2, #2]
	cmp r0, #3
	bhi _08073720
	adds r1, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r4
	adds r0, #0x64
	ldrh r0, [r0, #0]
	cmp r0, #7
	bne _08073720
	ldrh r0, [r2, #4]
	cmp r0, #5
	bne _08073720
	ldrh r0, [r2, #6]
	cmp r0, r6
	bhs _0807374E
	strh r3, [r2, #0]
	strh r6, [r2, #6]
	b _0807374E
_0807371C: .4byte gUnk_03003CE0
_08073720:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #0x28
	cmp r5, #7
	bls _080736EA
	movs r2, #0
	cmp r2, #0
	bne _0807374E
	ldr r2, [r7, #0x34]
	movs r5, #0
	movs r1, #1
	negs r1, r1
_0807373A:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, r1
	beq _08073756
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #0x28
	cmp r5, #7
	bls _0807373A
_0807374E:
	movs r0, #0
	strh r0, [r7, #0x24]
	strh r0, [r7, #0x26]
	b _08073846
_08073756:
	mov r0, sl
	strh r0, [r2, #2]
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, #0x28
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r2, #0]
	movs r0, #5
	strh r0, [r2, #4]
	strh r6, [r2, #6]
	b _0807374E
_08073772:
	mov r1, sl
	strh r1, [r2, #2]
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, #0x28
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	strh r1, [r2, #0]
	movs r0, #5
	strh r0, [r2, #4]
	strh r6, [r2, #6]
	b _08073846
_0807378E:
	movs r5, #0
	ldr r2, [sp, #0x18]
	cmp r5, r2
	bhs _08073846
	ldr r3, [sp, #0x10]
	cmp r3, #0
	beq _08073846
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r7, r9
	muls r7, r0, r7
_080737A4:
	mov r1, sp
	adds r4, r1, r5
	ldrb r0, [r4, #0]
	mov r2, r8
	ldr r1, [r2, #0xc]
	bl sub_08074DE8
	ldrb r0, [r4, #0]
	cmp r0, r9
	bne _08073834
	ldr r0, _08073800
	adds r3, r7, r0
	ldr r2, [r3, #0x34]
	movs r5, #0
	adds r4, r0, #0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, #0x28
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
_080737D0:
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r0, #0
	ble _08073804
	ldrh r0, [r2, #2]
	cmp r0, #3
	bhi _08073804
	movs r7, #0xa6
	lsls r7, r7, #1
	muls r0, r7, r0
	adds r0, r0, r4
	adds r0, #0x64
	ldrh r0, [r0, #0]
	cmp r0, #7
	bne _08073804
	ldrh r0, [r2, #4]
	cmp r0, #5
	bne _08073804
	ldrh r0, [r2, #6]
	cmp r0, r6
	bhs _08073846
	strh r1, [r2, #0]
	strh r6, [r2, #6]
	b _08073846
_08073800: .4byte gUnk_03003CE0
_08073804:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #0x28
	cmp r5, #7
	bls _080737D0
	movs r0, #0
	cmp r0, #0
	bne _08073846
	ldr r2, [r3, #0x34]
	movs r5, #0
	movs r1, #1
	negs r1, r1
_0807381E:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, r1
	beq _08073772
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, #0x28
	cmp r5, #7
	bls _0807381E
	b _08073846
_08073834:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp, #0x18]
	cmp r5, r0
	bhs _08073846
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bne _080737A4
_08073846:
	ldr r2, _08073868
	ldr r3, [sp, #0x20]
	adds r2, r3, r2
	movs r1, #1
	ldr r7, [sp, #0x1c]
	lsls r1, r7
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08073868: .4byte gUnk_030063E0
	thumb_func_end sub_0807356C
