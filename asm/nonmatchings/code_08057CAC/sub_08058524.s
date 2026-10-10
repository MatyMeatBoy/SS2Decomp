	thumb_func_start sub_08058524
sub_08058524: @ 0x08058524
	ldr r1, _08058538
	ldr r2, [r1, #0]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x38]
	ands r0, r1
	cmp r0, #0
	beq _08058536
	movs r0, #1
_08058536:
	bx lr
_08058538: .4byte gUnk_03005CF4
	thumb_func_end sub_08058524
