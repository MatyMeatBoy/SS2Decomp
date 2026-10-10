	thumb_func_start sub_0805CFCC
sub_0805CFCC: @ 0x0805CFCC
	movs r2, #0
	ldr r0, _0805CFE4
	ldr r0, [r0, #0]
	movs r3, #0xb8
	lsls r3, r3, #2
	adds r1, r0, r3
_0805CFD8:
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0805CFE8
	adds r0, r2, #0
	b _0805CFF4
	.2byte 0x0000
_0805CFE4: .4byte gUnk_030034E0
_0805CFE8:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _0805CFD8
	movs r0, #1
	negs r0, r0
_0805CFF4:
	bx lr
	thumb_func_end sub_0805CFCC
