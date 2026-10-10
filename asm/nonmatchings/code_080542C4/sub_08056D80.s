	thumb_func_start sub_08056D80
sub_08056D80: @ 0x08056D80
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	bl sub_08002164
	adds r6, r0, #0
	movs r7, #0
	bl sub_08019FA8
	cmp r0, #0
	bne _08056DAE
	movs r0, #0
	b _08056E14
_08056DAA:
	movs r7, #1
	b _08056E12
_08056DAE:
	movs r4, #0
	cmp r7, r6
	bhs _08056E12
_08056DB4:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _08056E20
	adds r3, r1, r0
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r3, r1
	ldr r2, [r0, #0]
	ldrb r0, [r2, #4]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08056E0C
	ldr r0, [r3, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08056E0C
	ldrh r0, [r2, #0]
	lsrs r0, r0, #7
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r2, r1, #0x17
	movs r3, #0
	ldrsh r1, [r5, r3]
	subs r1, r1, r0
	cmp r1, #0
	bge _08056DF8
	negs r1, r1
_08056DF8:
	cmp r1, r9
	bge _08056E0C
	movs r1, #2
	ldrsh r0, [r5, r1]
	subs r0, r0, r2
	cmp r0, #0
	bge _08056E08
	negs r0, r0
_08056E08:
	cmp r0, r8
	blt _08056DAA
_08056E0C:
	adds r4, #1
	cmp r4, r6
	blo _08056DB4
_08056E12:
	adds r0, r7, #0
_08056E14:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08056E20: .4byte gUnk_03003CE0
	thumb_func_end sub_08056D80
