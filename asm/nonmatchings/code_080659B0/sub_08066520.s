	thumb_func_start sub_08066520
sub_08066520: @ 0x08066520
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp, #0]
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r5, _08066538
	ldr r4, [r5, #0]
	cmp r4, #0x31
	bls _0806653C
	movs r0, #0
	b _080665A0
_08066538: .4byte gUnk_03006338
_0806653C:
	cmp r3, #0
	beq _080665A0
	ldr r1, _080665A8
	lsls r0, r4, #4
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r4, [r1, #0]
	adds r4, r4, r0
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0x96
	strb r0, [r4, #0]
	ldr r0, [sp, #0]
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	str r0, [r4, #0xc]
	str r2, [r4, #0x10]
	adds r1, r4, #0
	adds r1, #0x14
	ldr r2, _080665AC
	adds r0, r3, #0
	bl sub_080B8578
	movs r0, #4
	strb r0, [r4, #1]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	bl sub_08002204
	cmp r0, #0
	beq _08066584
	bl sub_08002164
	cmp r0, #1
	bne _0806659E
_08066584:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806659E
	add r1, sp, #4
	mov r0, sp
	bl sub_0805B4CC
	ldr r0, [sp, #0]
	ldr r1, [sp, #4]
	movs r2, #1
	bl sub_0802230C
_0806659E:
	movs r0, #1
_080665A0:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
_080665A8: .4byte gUnk_03006300
_080665AC: .4byte 0x04000004
	thumb_func_end sub_08066520
