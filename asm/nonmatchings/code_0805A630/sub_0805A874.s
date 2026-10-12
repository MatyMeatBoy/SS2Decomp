	thumb_func_start sub_0805A874
sub_0805A874: @ 0x0805A874
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _0805A8B4
	adds r7, r1, r0
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	str r0, [sp, #0]
	str r1, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r9, r0
	ldr r4, [r4, #0x10]
	mov r8, r4
	add r6, sp, #8
	add r4, sp, #0xc
	cmp r5, #0
	beq _0805A8D2
	b _0805A8BC
	.2byte 0x0000
_0805A8B4: .4byte gUnk_03003D6C
_0805A8B8:
	bl sub_080003F0
_0805A8BC:
	adds r0, r7, #0
	mov r1, sp
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08021FE0
	cmp r0, #0
	bne _0805A8B8
	b _0805A8D2
_0805A8CE:
	bl sub_080003F0
_0805A8D2:
	adds r0, r7, #0
	mov r1, sp
	adds r2, r6, #0
	adds r3, r4, #0
	bl sub_08021FE0
	cmp r0, #0
	beq _0805A8CE
	mov r0, r8
	mov r1, r9
	bl sub_08057328
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0805A874
