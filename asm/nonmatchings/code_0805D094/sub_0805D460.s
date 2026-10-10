	thumb_func_start sub_0805D460
sub_0805D460: @ 0x0805D460
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _0805D484
	ldr r2, [r0, #0]
	movs r3, #0
	movs r5, #1
_0805D46E:
	ldrh r1, [r2, #0xa]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0805D488
	ldrh r0, [r2, #0xc]
	cmp r0, r4
	bne _0805D488
	adds r0, r2, #0
	b _0805D492
	.2byte 0x0000
_0805D484: .4byte gUnk_03005D58
_0805D488:
	adds r3, #1
	adds r2, #0x20
	cmp r3, #0xf
	bls _0805D46E
	movs r0, #0
_0805D492:
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0805D460
