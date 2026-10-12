	thumb_func_start sub_0805D4F4
sub_0805D4F4: @ 0x0805D4F4
	ldr r0, _0805D510
	ldr r2, [r0, #0]
	ldr r1, _0805D514
	movs r0, #1
	strh r0, [r1, #0]
	movs r0, #0
	movs r1, #0
_0805D502:
	strh r1, [r2, #0xa]
	strh r1, [r2, #0xc]
	adds r0, #1
	adds r2, #0x20
	cmp r0, #0xf
	bls _0805D502
	bx lr
_0805D510: .4byte gUnk_03005D58
_0805D514: .4byte gUnk_03005D5C
	thumb_func_end sub_0805D4F4
