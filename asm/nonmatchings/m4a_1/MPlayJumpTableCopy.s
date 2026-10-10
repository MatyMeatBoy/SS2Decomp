	thumb_func_start MPlayJumpTableCopy
MPlayJumpTableCopy: @ 0x080B6978
	mov ip, lr
	movs r1, #0x24
	ldr r2, _080B69A8
_080B697E:
	ldr r3, [r2, #0]
	bl sub_080B6992
	stm r0!, {r3}
	adds r2, #4
	subs r1, #1
	bgt _080B697E
	bx ip
	thumb_func_end MPlayJumpTableCopy
