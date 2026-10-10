	thumb_func_start sub_0805DE98
sub_0805DE98: @ 0x0805DE98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r7, _0805DF28
	movs r0, #1
	mov r8, r0
_0805DEA6:
	ldrb r0, [r7, #0]
	asrs r0, r5
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0805DED8
	ldr r6, _0805DF2C
	movs r0, #0x34
	adds r4, r5, #0
	muls r4, r0, r4
	ldr r0, [r6, #0]
	adds r0, r0, r4
	bl sub_08000470
	cmp r0, #0
	beq _0805DECE
	ldr r0, [r6, #0]
	adds r0, r0, r4
	bl sub_080003A8
_0805DECE:
	mov r1, r8
	lsls r1, r5
	ldrb r0, [r7, #0]
	bics r0, r1
	strb r0, [r7, #0]
_0805DED8:
	adds r5, #1
	cmp r5, #3
	bls _0805DEA6
	movs r5, #0
	ldr r7, _0805DF30
	movs r0, #1
	mov r8, r0
	movs r6, #0
_0805DEE8:
	ldrb r0, [r7, #0]
	asrs r0, r5
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0805DF14
	ldr r4, _0805DF34
	ldr r0, [r4, #0]
	adds r0, r0, r6
	bl sub_08000470
	cmp r0, #0
	beq _0805DF0A
	ldr r0, [r4, #0]
	adds r0, r0, r6
	bl sub_080003A8
_0805DF0A:
	mov r1, r8
	lsls r1, r5
	ldrb r0, [r7, #0]
	bics r0, r1
	strb r0, [r7, #0]
_0805DF14:
	adds r6, #0x88
	adds r5, #1
	cmp r5, #3
	bls _0805DEE8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805DF28: .4byte gUnk_03005D70
_0805DF2C: .4byte gUnk_03005D64
_0805DF30: .4byte gUnk_03005D6C
_0805DF34: .4byte gUnk_03005D68
	thumb_func_end sub_0805DE98
