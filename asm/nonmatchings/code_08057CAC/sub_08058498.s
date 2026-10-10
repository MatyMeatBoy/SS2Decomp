	thumb_func_start sub_08058498
sub_08058498: @ 0x08058498
	push {r4, r5, r6, lr}
	sub sp, #0x10
	lsls r2, r2, #0x10
	movs r4, #0
	str r4, [sp, #8]
	lsls r0, r0, #8
	str r0, [sp, #0]
	lsls r1, r1, #8
	str r1, [sp, #4]
	lsls r3, r3, #0x10
	lsrs r2, r2, #0x10
	orrs r2, r3
	str r2, [sp, #0xc]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080584C8
	adds r4, r1, r0
	add r6, sp, #8
	add r5, sp, #0xc
	b _080584D8
	.2byte 0x0000
_080584C8: .4byte gUnk_03003CE0
_080584CC:
	bl sub_08058608
	cmp r0, #0
	bne _080584F4
	bl sub_080003F0
_080584D8:
	adds r0, r4, #0
	adds r0, #0x8c
	mov r1, sp
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_08021FE0
	cmp r0, #0
	beq _080584CC
	ldrh r1, [r4, #0x14]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080584CC
_080584F4:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08058498
