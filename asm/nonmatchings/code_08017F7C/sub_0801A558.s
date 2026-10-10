	thumb_func_start sub_0801A558
sub_0801A558: @ 0x0801A558
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r5, _0801A594
	movs r4, #0
	movs r6, #0
_0801A562:
	ldrb r0, [r5, #0]
	cmp r0, #0
	beq _0801A57A
	str r6, [sp, #0]
	lsls r1, r4, #6
	ldr r0, _0801A598
	adds r1, r1, r0
	mov r0, sp
	ldr r2, _0801A59C
	bl sub_080B8574
	strb r6, [r5, #0]
_0801A57A:
	adds r4, #1
	adds r5, #1
	cmp r4, #0x13
	bls _0801A562
	ldr r0, _0801A5A0
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, _0801A5A4
	strh r1, [r0, #0]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_0801A594: .4byte gUnk_03005C40
_0801A598: .4byte gUnk_03005740
_0801A59C: .4byte 0x01000010
_0801A5A0: .4byte gUnk_03005C54
_0801A5A4: .4byte gUnk_03005C98
	thumb_func_end sub_0801A558
