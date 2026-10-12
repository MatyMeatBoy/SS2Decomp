	thumb_func_start sub_0801A764
sub_0801A764: @ 0x0801A764
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	b _0801A794
_0801A774:
	ldrb r0, [r4, #0]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0]
	ldr r0, _0801A7A8
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl sub_08065230
	adds r0, r5, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r4, #1
_0801A794:
	ldrb r0, [r4, #0]
	cmp r0, #0xfd
	beq _0801A79E
	cmp r0, #0xf1
	bls _0801A774
_0801A79E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801A7A8: .4byte gUnk_03005C60
	thumb_func_end sub_0801A764
