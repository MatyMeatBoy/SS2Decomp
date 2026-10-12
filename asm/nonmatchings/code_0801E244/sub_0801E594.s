	thumb_func_start sub_0801E594
sub_0801E594: @ 0x0801E594
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _0801E5AC
	adds r3, r0, #0
_0801E59C:
	ldrh r0, [r1, #0]
	orrs r0, r3
	strh r0, [r1, #0]
	adds r2, #1
	adds r1, #0x28
	cmp r2, #7
	bls _0801E59C
	bx lr
_0801E5AC: .4byte 0x0000FFFF
	thumb_func_end sub_0801E594
