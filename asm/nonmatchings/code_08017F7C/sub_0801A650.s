	thumb_func_start sub_0801A650
sub_0801A650: @ 0x0801A650
	adds r1, r0, #0
	ldr r2, _0801A660
	ldrh r0, [r2, #0]
	cmp r0, r1
	bls _0801A65C
	strh r1, [r2, #0]
_0801A65C:
	bx lr
	.2byte 0x0000
_0801A660: .4byte gUnk_03005730
	thumb_func_end sub_0801A650
