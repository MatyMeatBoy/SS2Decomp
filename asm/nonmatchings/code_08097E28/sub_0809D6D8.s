	thumb_func_start sub_0809D6D8
sub_0809D6D8: @ 0x0809D6D8
	push {r4, r5, lr}
	ldr r0, _0809D70C
	movs r5, #0
	ldr r4, [r0, #0]
_0809D6E0:
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	beq _0809D6F0
	adds r0, r4, #0
	bl sub_080003A8
_0809D6F0:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #2
	bls _0809D6E0
	movs r5, #0
	ldr r4, _0809D70C
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809D70C: .4byte gUnk_030002F8
	thumb_func_end sub_0809D6D8
