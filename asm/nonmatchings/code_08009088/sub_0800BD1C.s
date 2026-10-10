	thumb_func_start sub_0800BD1C
sub_0800BD1C: @ 0x0800BD1C
	ldr r3, _0800BD3C
	ldr r1, _0800BD40
	adds r0, r1, #0
	adds r0, #0x8c
	ldrh r2, [r0, #0]
	movs r0, #0x74
	muls r0, r2, r0
	adds r0, r0, r3
	ldrh r0, [r0, #0]
	subs r0, #1
	adds r1, #0x90
	ldrh r1, [r1, #0]
	cmp r0, r1
	beq _0800BD44
	movs r0, #0
	b _0800BD46
_0800BD3C: .4byte gUnk_0847846C
_0800BD40: .4byte gUnk_03003170
_0800BD44:
	movs r0, #1
_0800BD46:
	bx lr
	thumb_func_end sub_0800BD1C
