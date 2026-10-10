	thumb_func_start sub_0807414C
sub_0807414C: @ 0x0807414C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	str r2, [sp, #4]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0]
	ldr r0, _08074260
	str r0, [sp, #8]
	movs r1, #1
	negs r1, r1
	mov r9, r1
	bl sub_0800CF80
	cmp r0, #0
	beq _0807426C
	bl sub_08002164
	mov sl, r0
	movs r6, #0
	cmp r6, sl
	bhs _08074246
	movs r7, #0xa4
	lsls r7, r7, #1
	add r7, r8
_08074186:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, _08074264
	adds r2, r1, r0
	mov r0, r8
	adds r0, #0x68
	adds r1, r2, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	beq _08074240
	cmp r1, #0
	beq _08074240
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r2, r1
	ldr r2, [r0, #0]
	ldrh r1, [r2, #0]
	lsrs r1, r1, #4
	ldr r3, [r7, #0]
	ldrh r0, [r3, #0]
	lsrs r0, r0, #4
	subs r5, r1, r0
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	subs r4, r1, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r2, _08074268
	ldr r1, [r7, #0]
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
	ble _080741FC
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080741FC:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r1, #8
	negs r1, r1
	cmp r0, r1
	bge _0807420E
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0807420E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08074218
	negs r0, r0
_08074218:
	ldr r2, [sp, #0]
	cmp r0, r2
	bgt _08074240
	adds r0, r5, #0
	muls r0, r5, r0
	adds r1, r4, #0
	muls r1, r4, r1
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #4]
	cmp r1, r0
	bls _08074240
	ldr r2, [sp, #8]
	cmp r2, r0
	bls _08074240
	str r0, [sp, #8]
	mov r9, r6
_08074240:
	adds r6, #1
	cmp r6, sl
	blo _08074186
_08074246:
	movs r0, #1
	negs r0, r0
	cmp r9, r0
	beq _0807426C
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _08074264
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	b _08074386
	.2byte 0x0000
_08074260: .4byte 0x0000FFFF
_08074264: .4byte gUnk_03003CE0
_08074268: .4byte gUnk_0849E730
_0807426C:
	ldr r0, _08074374
	str r0, [sp, #8]
	movs r1, #1
	negs r1, r1
	mov r9, r1
	movs r6, #0
	movs r7, #0xa4
	lsls r7, r7, #1
	add r7, r8
	mov r8, r6
_08074280:
	ldr r0, _08074378
	movs r1, #1
	lsls r1, r6
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _0807434A
	ldr r0, _0807437C
	ldr r0, [r0, #0]
	mov r2, r8
	adds r3, r0, r2
	ldrh r0, [r3, #0xc]
	cmp r0, #0xb
	beq _0807434A
	adds r0, r3, #0
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _0807434A
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r3, r2
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0807434A
	ldr r1, [r3, #0x14]
	asrs r1, r1, #8
	ldr r2, [r7, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	subs r5, r1, r0
	ldr r1, [r3, #0x18]
	asrs r1, r1, #8
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
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
	ldr r2, _08074380
	ldr r1, [r7, #0]
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
	ble _08074304
	subs r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08074304:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #8
	negs r0, r0
	cmp r1, r0
	bge _08074318
	adds r0, r1, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08074318:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08074322
	negs r0, r0
_08074322:
	ldr r2, [sp, #0]
	cmp r0, r2
	bgt _0807434A
	adds r0, r5, #0
	muls r0, r5, r0
	adds r1, r4, #0
	muls r1, r4, r1
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #4]
	cmp r1, r0
	bls _0807434A
	ldr r2, [sp, #8]
	cmp r2, r0
	bls _0807434A
	str r0, [sp, #8]
	mov r9, r6
_0807434A:
	movs r0, #0xb8
	lsls r0, r0, #2
	add r8, r0
	adds r6, #1
	cmp r6, #4
	bls _08074280
	movs r0, #1
	negs r0, r0
	cmp r9, r0
	beq _08074384
	ldr r1, _0807437C
	mov r2, r9
	lsls r0, r2, #1
	add r0, r9
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r3, r1, r0
	ldrh r0, [r3, #2]
	b _08074386
_08074374: .4byte 0x0000FFFF
_08074378: .4byte gUnk_030056FC
_0807437C: .4byte gUnk_030056F4
_08074380: .4byte gUnk_0849E730
_08074384:
	movs r0, #0xff
_08074386:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0807414C
