	thumb_func_start sub_0805D434
sub_0805D434: @ 0x0805D434
	push {r4, lr}
	ldr r0, _0805D44C
	ldr r2, [r0, #0]
	movs r3, #0
	movs r4, #3
_0805D43E:
	ldrh r1, [r2, #0xa]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0805D450
	adds r0, r2, #0
	b _0805D45A
_0805D44C: .4byte gUnk_03005D58
_0805D450:
	adds r3, #1
	adds r2, #0x20
	cmp r3, #0xf
	bls _0805D43E
	movs r0, #0
_0805D45A:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_0805D434
