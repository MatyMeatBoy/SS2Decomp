	thumb_func_start sub_08073EE8
sub_08073EE8: @ 0x08073EE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r1, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08074014
	adds r7, r1, r0
	ldr r0, _08074018
	mov sl, r0
	movs r1, #1
	negs r1, r1
	mov r8, r1
	bl sub_0800CF80
	cmp r0, #0
	bne _08073F1E
	b _08074020
_08073F1E:
	bl sub_08002164
	mov r9, r0
	movs r6, #0
	cmp r6, r9
	bhs _08073FFA
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r2, r7, r2
	str r2, [sp, #8]
_08073F32:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08074014
	adds r2, r1, r0
	adds r0, r7, #0
	adds r0, #0x68
	adds r1, r2, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	beq _08073FF4
	cmp r1, #0
	beq _08073FF4
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r2, [r0, #0]
	ldrh r1, [r2, #0]
	lsrs r1, r1, #4
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r5, r1, r0
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r1, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r2, _0807401C
	ldr r3, [sp, #8]
	ldr r1, [r3, #0]
	ldrb r1, [r1, #3]
	lsrs r1, r1, #4
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1, #0]
	lsrs r0, r0, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08073FB2
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08073FB2:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #8
	negs r1, r1
	cmp r0, r1
	bge _08073FC4
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08073FC4:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08073FCE
	negs r0, r0
_08073FCE:
	ldr r2, [sp, #0]
	cmp r0, r2
	bgt _08073FF4
	adds r0, r5, #0
	muls r0, r5, r0
	adds r1, r4, #0
	muls r1, r4, r1
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [sp, #4]
	cmp r3, r0
	bls _08073FF4
	cmp sl, r0
	bls _08073FF4
	mov sl, r0
	mov r8, r6
_08073FF4:
	adds r6, #1
	cmp r6, r9
	blo _08073F32
_08073FFA:
	movs r0, #1
	negs r0, r0
	cmp r8, r0
	beq _08074020
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r8
	muls r1, r0, r1
	ldr r0, _08074014
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	b _0807413A
	.2byte 0x0000
_08074014: .4byte gUnk_03003CE0
_08074018: .4byte 0x0000FFFF
_0807401C: .4byte gUnk_0849E730
_08074020:
	ldr r0, _08074128
	mov sl, r0
	movs r1, #1
	negs r1, r1
	mov r8, r1
	movs r6, #0
	mov r9, r6
_0807402E:
	ldr r0, _0807412C
	movs r1, #1
	lsls r1, r6
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _080740FC
	ldr r0, _08074130
	ldr r0, [r0, #0]
	mov r3, r9
	adds r2, r0, r3
	ldrh r0, [r2, #0xc]
	cmp r0, #0xb
	beq _080740FC
	adds r0, r2, #0
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080740FC
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080740FC
	adds r1, r7, #0
	adds r1, #0x8c
	ldr r0, [r2, #0x14]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	asrs r5, r0, #8
	adds r1, r7, #0
	adds r1, #0x90
	ldr r0, [r2, #0x18]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	asrs r4, r0, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r2, _08074134
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r1, r7, r3
	ldr r1, [r1, #0]
	ldrb r1, [r1, #3]
	lsrs r1, r1, #4
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1, #0]
	lsrs r0, r0, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080740B8
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080740B8:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #8
	negs r0, r0
	cmp r1, r0
	bge _080740CC
	adds r0, r1, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080740CC:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _080740D6
	negs r0, r0
_080740D6:
	ldr r1, [sp, #0]
	cmp r0, r1
	bgt _080740FC
	adds r0, r5, #0
	muls r0, r5, r0
	adds r1, r4, #0
	muls r1, r4, r1
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #4]
	cmp r2, r0
	bls _080740FC
	cmp sl, r0
	bls _080740FC
	mov sl, r0
	mov r8, r6
_080740FC:
	movs r3, #0xb8
	lsls r3, r3, #2
	add r9, r3
	adds r6, #1
	cmp r6, #4
	bls _0807402E
	movs r0, #1
	negs r0, r0
	cmp r8, r0
	beq _08074138
	ldr r1, _08074130
	mov r2, r8
	lsls r0, r2, #1
	add r0, r8
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r2, r1, r0
	ldrh r0, [r2, #2]
	b _0807413A
	.2byte 0x0000
_08074128: .4byte 0x0000FFFF
_0807412C: .4byte gUnk_030056FC
_08074130: .4byte gUnk_030056F4
_08074134: .4byte gUnk_0849E730
_08074138:
	movs r0, #0xff
_0807413A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08073EE8
