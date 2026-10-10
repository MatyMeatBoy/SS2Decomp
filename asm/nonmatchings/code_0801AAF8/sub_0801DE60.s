	thumb_func_start sub_0801DE60
sub_0801DE60: @ 0x0801DE60
	ldr r0, _0801DE70
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0xa]
	cmp r0, #8
	beq _0801DE74
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0801DE76
_0801DE70: .4byte gUnk_030034E0
_0801DE74:
	movs r0, #6
_0801DE76:
	bx lr
	thumb_func_end sub_0801DE60
