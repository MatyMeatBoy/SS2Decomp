	thumb_func_start sub_0809F9F8
sub_0809F9F8: @ 0x0809F9F8
	push {r4, lr}
	ldr r4, _0809FA24
	movs r0, #0xa0
	bl sub_08001494
	str r0, [r4, #0]
	cmp r0, #0
	beq _0809FA1C
	movs r3, #0
	movs r2, #0
	movs r1, #3
_0809FA0E:
	ldr r0, [r4, #0]
	adds r0, r2, r0
	str r3, [r0, #8]
	adds r2, #0x28
	subs r1, #1
	cmp r1, #0
	bge _0809FA0E
_0809FA1C:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809FA24: .4byte gUnk_03000324
	thumb_func_end sub_0809F9F8
