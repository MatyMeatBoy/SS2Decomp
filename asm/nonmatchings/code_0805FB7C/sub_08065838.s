	thumb_func_start sub_08065838
sub_08065838: @ 0x08065838
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	ldr r0, _0806584C
	ldr r4, [r0, #0]
	movs r5, #0
	b _08065854
	.2byte 0x0000
_0806584C: .4byte gUnk_03006208
_08065850:
	adds r5, #1
	adds r4, #0x28
_08065854:
	cmp r5, #3
	bhi _08065890
	adds r0, r4, #0
	bl sub_08000470
	adds r6, r0, #0
	cmp r6, #0
	bne _08065850
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _08065890
	movs r0, #0x3c
	str r0, [r4, #8]
	ldr r0, _0806589C
	str r0, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	str r6, [r4, #0x24]
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl sub_08000274
_08065890:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0806589C: .4byte sub_08065BD0
	thumb_func_end sub_08065838
