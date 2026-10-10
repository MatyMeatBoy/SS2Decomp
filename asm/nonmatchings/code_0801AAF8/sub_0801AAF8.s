	thumb_func_start sub_0801AAF8
sub_0801AAF8: @ 0x0801AAF8
	ldr r0, _0801AB14
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0801AB20
	ldr r0, _0801AB18
	ldr r1, _0801AB1C
	ldrh r0, [r0, #0]
	ldrh r1, [r1, #0]
	cmp r0, r1
	bls _0801AB20
	movs r0, #1
	b _0801AB22
	.2byte 0x0000
_0801AB14: .4byte gUnk_03000026
_0801AB18: .4byte gUnk_03000022
_0801AB1C: .4byte gUnk_03000020
_0801AB20:
	movs r0, #0
_0801AB22:
	bx lr
	thumb_func_end sub_0801AAF8
