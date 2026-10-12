	thumb_func_start sub_0805CFA0
sub_0805CFA0: @ 0x0805CFA0
	movs r2, #0
	ldr r0, _0805CFB8
	ldr r0, [r0, #0]
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r1, r0, r3
_0805CFAC:
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _0805CFBC
	adds r0, r2, #0
	b _0805CFC8
	.2byte 0x0000
_0805CFB8: .4byte gUnk_030034E0
_0805CFBC:
	adds r1, #0x10
	adds r2, #1
	cmp r2, #0x18
	bls _0805CFAC
	movs r0, #1
	negs r0, r0
_0805CFC8:
	bx lr
	thumb_func_end sub_0805CFA0
