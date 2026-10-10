	thumb_func_start sub_08058E3C
sub_08058E3C: @ 0x08058E3C
	ldr r1, _08058E50
	ldr r2, [r1, #0]
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x6c]
	ands r0, r1
	cmp r0, #0
	beq _08058E4E
	movs r0, #1
_08058E4E:
	bx lr
_08058E50: .4byte gUnk_03005CF4
	thumb_func_end sub_08058E3C
