	thumb_func_start sub_0805817C
sub_0805817C: @ 0x0805817C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	adds r3, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r3, #0xa
	beq _080581B8
	mov r0, sp
	strh r3, [r0, #0]
	strh r6, [r0, #2]
	movs r4, #0
	add r1, sp, #4
	movs r2, #0
_0805819A:
	adds r0, r1, r4
	strb r2, [r0, #0]
	adds r4, #1
	cmp r4, #0xb
	bls _0805819A
	movs r4, #0
	cmp r4, r7
	bhs _080581D6
_080581AA:
	mov r0, sp
	bl sub_0805AB20
	adds r4, #1
	cmp r4, r7
	blo _080581AA
	b _080581D6
_080581B8:
	movs r4, #0
	cmp r4, r7
	bhs _080581D6
	add r5, sp, #0x10
	movs r0, #0xa
	mov r8, r0
_080581C4:
	mov r0, r8
	strh r0, [r5, #0]
	str r6, [sp, #0x14]
	adds r0, r5, #0
	bl sub_0805AB20
	adds r4, #1
	cmp r4, r7
	blo _080581C4
_080581D6:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0805817C
