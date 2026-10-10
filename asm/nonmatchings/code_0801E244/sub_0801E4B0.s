	thumb_func_start sub_0801E4B0
sub_0801E4B0: @ 0x0801E4B0
	ldr r0, _0801E4C4
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x20]
	ldr r1, _0801E4C8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r1, [r2, #0x1c]
	subs r0, r0, r1
	bx lr
_0801E4C4: .4byte gUnk_030034E0
_0801E4C8: .4byte gUnk_0848FF54
	thumb_func_end sub_0801E4B0
