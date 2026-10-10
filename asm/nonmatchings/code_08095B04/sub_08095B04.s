	thumb_func_start sub_08095B04
sub_08095B04: @ 0x08095B04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov r9, r1
	ldr r0, [r6, #0x14]
	mov r8, r0
	ldr r7, [r6, #0x18]
	ldrh r1, [r6, #8]
	mov sl, r1
	movs r3, #8
	ldrsh r0, [r6, r3]
	cmp r0, #0
	beq _08095B28
	cmp r0, #4
	bne _08095B58
_08095B28:
	ldr r4, _08095B50
	ldr r5, _08095B54
	movs r1, #8
	ldrsh r0, [r6, r1]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0x98
	lsls r1, r1, #1
	bl __divsi3
	b _08095B7E
	.2byte 0x0000
_08095B50: .4byte gUnk_080B9704
_08095B54: .4byte gUnk_085186DC
_08095B58:
	ldr r1, _08095BF8
	ldr r2, _08095BFC
	movs r3, #8
	ldrsh r0, [r6, r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	adds r5, r2, #0
	cmp r0, #0
	bge _08095B7C
	adds r0, #0xff
_08095B7C:
	asrs r0, r0, #8
_08095B7E:
	adds r7, r7, r0
	adds r4, r5, #0
	movs r1, #8
	ldrsh r0, [r6, r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r3, _08095BF8
	adds r0, r0, r3
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _08095BA4
	adds r0, #0xff
_08095BA4:
	asrs r0, r0, #8
	add r8, r0
	ldrb r0, [r6, #8]
	mov r1, r8
	adds r2, r7, #0
	bl sub_08095D1C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	bne _08095BBC
	b _08095CF2
_08095BBC:
	subs r0, #1
	strh r0, [r6, #8]
	ldr r1, [r6, #0x14]
	mov r8, r1
	ldr r7, [r6, #0x18]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08095BD2
	cmp r0, #4
	bne _08095C00
_08095BD2:
	movs r3, #8
	ldrsh r0, [r6, r3]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	ldr r1, _08095BF8
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0x98
	lsls r1, r1, #1
	bl __divsi3
	b _08095C22
	.2byte 0x0000
_08095BF8: .4byte gUnk_080B9704
_08095BFC: .4byte gUnk_085186DC
_08095C00:
	movs r3, #8
	ldrsh r0, [r6, r3]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	ldr r1, _08095C98
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	cmp r0, #0
	bge _08095C20
	adds r0, #0xff
_08095C20:
	asrs r0, r0, #8
_08095C22:
	adds r7, r7, r0
	ldr r5, _08095C98
	ldr r4, _08095C9C
	movs r3, #8
	ldrsh r0, [r6, r3]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _08095C48
	adds r0, #0xff
_08095C48:
	asrs r0, r0, #8
	add r8, r0
	ldrb r0, [r6, #8]
	mov r1, r8
	adds r2, r7, #0
	bl sub_08095D1C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08095CF2
	subs r0, #1
	strh r0, [r6, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08095C6E
	cmp r0, #4
	bne _08095CA0
_08095C6E:
	movs r1, #8
	ldrsh r0, [r6, r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0x98
	lsls r1, r1, #1
	bl __divsi3
	ldr r1, [r6, #0x18]
	adds r1, r1, r0
	str r1, [r6, #0x18]
	b _08095CC6
	.2byte 0x0000
_08095C98: .4byte gUnk_080B9704
_08095C9C: .4byte gUnk_085186DC
_08095CA0:
	movs r3, #8
	ldrsh r0, [r6, r3]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _08095CBE
	adds r0, #0xff
_08095CBE:
	asrs r1, r0, #8
	ldr r0, [r6, #0x18]
	adds r0, r0, r1
	str r0, [r6, #0x18]
_08095CC6:
	ldr r2, _08095D00
	ldr r1, _08095D04
	movs r3, #8
	ldrsh r0, [r6, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	cmp r0, #0
	bge _08095CEA
	adds r0, #0xff
_08095CEA:
	asrs r1, r0, #8
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	str r0, [r6, #0x14]
_08095CF2:
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp sl, r0
	beq _08095D08
	movs r3, #1
	mov sl, r3
	b _08095D0C
_08095D00: .4byte gUnk_080B9704
_08095D04: .4byte gUnk_085186DC
_08095D08:
	movs r0, #0
	mov sl, r0
_08095D0C:
	mov r0, sl
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08095B04
