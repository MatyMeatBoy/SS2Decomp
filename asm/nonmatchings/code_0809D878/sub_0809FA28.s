	thumb_func_start sub_0809FA28
sub_0809FA28: @ 0x0809FA28
	push {r4, r5, lr}
	ldr r0, _0809FA60
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0809FA5A
	movs r5, #0
	adds r4, r0, #0
_0809FA36:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _0809FA46
	adds r0, r4, #0
	bl sub_080003A8
_0809FA46:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #3
	bls _0809FA36
	movs r5, #0
	ldr r4, _0809FA60
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
_0809FA5A:
	pop {r4, r5}
	pop {r0}
	bx r0
_0809FA60: .4byte gUnk_03000324
	thumb_func_end sub_0809FA28
