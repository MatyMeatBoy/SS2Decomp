	thumb_func_start sub_0805EF2C
sub_0805EF2C: @ 0x0805EF2C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r7, _0805EF7C
	movs r0, #1
	mov r8, r0
_0805EF3A:
	ldrb r0, [r7, #0]
	asrs r0, r5
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0805EF6C
	ldr r6, _0805EF80
	movs r0, #0x34
	adds r4, r5, #0
	muls r4, r0, r4
	ldr r0, [r6, #0]
	adds r0, r0, r4
	bl sub_08000470
	cmp r0, #0
	beq _0805EF62
	ldr r0, [r6, #0]
	adds r0, r0, r4
	bl sub_080003A8
_0805EF62:
	mov r1, r8
	lsls r1, r5
	ldrb r0, [r7, #0]
	bics r0, r1
	strb r0, [r7, #0]
_0805EF6C:
	adds r5, #1
	cmp r5, #3
	bls _0805EF3A
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_0805EF7C: .4byte gUnk_03005D70
_0805EF80: .4byte gUnk_03005D64
	thumb_func_end sub_0805EF2C
