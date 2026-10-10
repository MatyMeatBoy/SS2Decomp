	thumb_func_start sub_08013C3C
sub_08013C3C: @ 0x08013C3C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r0, _08013CB0
	ldr r4, [r0, #0]
	movs r5, #0
	movs r0, #1
	mov r8, r0
	movs r2, #0x80
	lsls r2, r2, #4
	mov r9, r2
	movs r0, #0x93
	lsls r0, r0, #1
	adds r6, r7, r0
_08013C5C:
	ldr r0, _08013CB4
	ldr r1, [r0, #0]
	mov r2, r8
	ands r1, r2
	adds r0, r5, #0
	ands r0, r2
	cmp r1, r0
	bne _08013CCE
	ldr r0, _08013CB8
	mov r1, r8
	lsls r1, r5
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _08013CCE
	adds r1, r7, #0
	adds r1, #0x8c
	ldr r0, [r4, #0x14]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	adds r2, r7, #0
	adds r2, #0x90
	ldr r1, [r4, #0x18]
	ldr r2, [r2, #0]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r3, r0, #0x10
	lsls r0, r3, #4
	lsrs r0, r0, #0x14
	cmp r0, r9
	bls _08013CBC
	lsls r2, r5, #1
	adds r1, r6, r2
	lsrs r0, r3, #0x1c
	adds r0, #1
	b _08013CC2
	.2byte 0x0000
_08013CB0: .4byte gUnk_030056F4
_08013CB4: .4byte gUnk_03002344
_08013CB8: .4byte gUnk_030056FC
_08013CBC:
	lsls r2, r5, #1
	adds r1, r6, r2
	lsrs r0, r3, #0x1c
_08013CC2:
	strh r0, [r1, #0]
	adds r2, r6, r2
	ldrh r1, [r2, #0]
	movs r0, #0xf
	ands r0, r1
	strh r0, [r2, #0]
_08013CCE:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r4, r4, r0
	cmp r5, #4
	bls _08013C5C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08013C3C
