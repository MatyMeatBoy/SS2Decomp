	thumb_func_start sub_08066490
sub_08066490: @ 0x08066490
	push {r4, r5, lr}
	sub sp, #8
	str r0, [sp, #0]
	str r1, [sp, #4]
	adds r3, r2, #0
	ldr r5, _080664A8
	ldr r2, [r5, #0]
	cmp r2, #0x31
	bls _080664AC
	movs r0, #0
	b _0806650E
	.2byte 0x0000
_080664A8: .4byte gUnk_03006338
_080664AC:
	cmp r3, #0
	beq _0806650E
	ldr r1, _08066518
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r4, [r1, #0]
	adds r4, r4, r0
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0x95
	strb r0, [r4, #0]
	ldr r0, [sp, #0]
	str r0, [r4, #8]
	ldr r0, [sp, #4]
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x10
	ldr r2, _0806651C
	adds r0, r3, #0
	bl sub_080B8578
	movs r0, #3
	strb r0, [r4, #1]
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	bl sub_08002204
	cmp r0, #0
	beq _080664F2
	bl sub_08002164
	cmp r0, #1
	bne _0806650C
_080664F2:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806650C
	add r1, sp, #4
	mov r0, sp
	bl sub_0805B4CC
	ldr r0, [sp, #0]
	ldr r1, [sp, #4]
	movs r2, #1
	bl sub_0802230C
_0806650C:
	movs r0, #1
_0806650E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
_08066518: .4byte gUnk_03006300
_0806651C: .4byte 0x04000004
	thumb_func_end sub_08066490
