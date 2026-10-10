	thumb_func_start sub_0801A638
sub_0801A638: @ 0x0801A638
	movs r2, #0
	b _0801A640
_0801A63C:
	adds r2, #1
	adds r0, #1
_0801A640:
	ldrb r1, [r0, #0]
	cmp r1, #0xfd
	beq _0801A64A
	cmp r1, #0xf1
	bls _0801A63C
_0801A64A:
	adds r0, r2, #0
	bx lr
	thumb_func_end sub_0801A638
