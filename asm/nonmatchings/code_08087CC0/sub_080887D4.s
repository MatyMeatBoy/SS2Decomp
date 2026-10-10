	thumb_func_start sub_080887D4
sub_080887D4: @ 0x080887D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _08088864
	bl sub_080003F4
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _080887F2
	b _08088900
_080887F2:
	add r7, sp, #0x44
	mov r0, sp
	adds r0, #0x46
	str r0, [sp, #0x5c]
	adds r5, #0x40
	mov r9, r5
_080887FE:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #1
	movs r3, #1
	negs r3, r3
	bl sub_08065158
	movs r6, #0
	strh r6, [r7, #0]
	ldr r1, [sp, #0x5c]
	strh r6, [r1, #0]
	ldr r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #3
	bl __udivsi3
	str r0, [sp, #0x54]
	ldr r0, [r4, #0x10]
	movs r2, #1
	ands r2, r0
	str r2, [sp, #0x58]
	movs r1, #2
	mov r8, r1
	mov r2, r8
	ands r2, r0
	mov r8, r2
	cmp r2, #0
	beq _08088868
	mov r1, r9
	ldrh r0, [r1, #0]
	adds r0, #0x14
	ldr r1, [sp, #0x1c]
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r1, r9
	ldrb r0, [r1, #0]
	adds r0, #4
	mov r1, sp
	adds r1, #0x35
	strb r0, [r1, #0]
	movs r2, #0
	str r2, [sp, #0x50]
	ldrh r0, [r4, #0xc]
	strh r0, [r7, #0]
	b _08088888
_08088864: .4byte 0xF1FFF111
_08088868:
	mov r1, r9
	ldrh r0, [r1, #0]
	adds r0, #0x14
	ldr r1, [sp, #0x1c]
	movs r2, #1
	bl sub_08000AF0
	add r1, sp, #0x10
	mov r2, r9
	ldrb r0, [r2, #0]
	adds r0, #4
	strb r0, [r1, #0x1c]
	ldrh r0, [r4, #0xc]
	str r0, [sp, #0x50]
	movs r1, #0
	mov r8, r1
_08088888:
	add r2, sp, #0x2c
	mov sl, r2
	add r5, sp, #0x48
_0808888E:
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #4
	ldrsh r2, [r4, r0]
	adds r0, r5, #0
	adds r3, r6, #0
	bl sub_080659F4
	movs r2, #2
	ldrsh r1, [r4, r2]
	movs r0, #6
	ldrsh r2, [r4, r0]
	adds r0, r5, #4
	adds r3, r6, #0
	bl sub_080659F4
	ldr r1, [sp, #0x54]
	adds r6, r6, r1
	mov r2, r8
	cmp r2, #0
	bne _080888C8
	ldrh r1, [r4, #0xc]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0]
	add r0, sp, #0x10
	adds r2, r7, #0
	ldr r3, [sp, #0x5c]
	bl sub_08065370
_080888C8:
	ldr r0, [sp, #0x48]
	ldr r1, [r5, #4]
	ldrh r3, [r7, #0]
	movs r2, #0
	str r2, [sp, #0]
	mov r2, sl
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x50]
	bl sub_08007870
	bl sub_080003F0
	bl sub_080021A8
	cmp r0, #0
	bne _08088900
	ldr r0, _08088910
	cmp r6, r0
	bls _0808888E
	adds r4, #0x18
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _08088900
	b _080887FE
_08088900:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08088910: .4byte 0x000003FF
	thumb_func_end sub_080887D4
