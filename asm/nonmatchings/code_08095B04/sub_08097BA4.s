	thumb_func_start sub_08097BA4
sub_08097BA4: @ 0x08097BA4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	cmp r3, #0
	beq _08097BBA
	cmp r3, #4
	bne _08097BF0
_08097BBA:
	ldr r4, _08097BE8
	ldr r5, _08097BEC
	lsls r6, r3, #1
	adds r0, r6, r5
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0x98
	lsls r1, r1, #1
	bl sub_080B9394
	ldr r1, [r7, #4]
	adds r1, r1, r0
	str r1, [r7, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	b _08097C18
	.2byte 0x0000
_08097BE8: .4byte gUnk_080B9704
_08097BEC: .4byte gUnk_085186DC
_08097BF0:
	ldr r1, _08097C44
	ldr r2, _08097C48
	lsls r3, r3, #1
	adds r0, r3, r2
	ldrh r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	adds r4, r1, #0
	cmp r0, #0
	bge _08097C10
	adds r0, #0xff
_08097C10:
	asrs r1, r0, #8
	ldr r0, [r7, #4]
	adds r0, r0, r1
	str r0, [r7, #4]
_08097C18:
	adds r0, r3, r2
	ldrh r0, [r0, #0]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r4, r8
	muls r4, r0, r4
	adds r0, r4, #0
	cmp r0, #0
	bge _08097C32
	adds r0, #0xff
_08097C32:
	asrs r1, r0, #8
	ldr r0, [r7, #0]
	adds r0, r0, r1
	str r0, [r7, #0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097C44: .4byte gUnk_080B9704
_08097C48: .4byte gUnk_085186DC
	thumb_func_end sub_08097BA4
