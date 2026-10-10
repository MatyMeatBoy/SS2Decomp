	thumb_func_start sub_0805D37C
sub_0805D37C: @ 0x0805D37C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r0, _0805D3C0
	ldr r3, [r0, #0]
	movs r2, #0
_0805D38A:
	ldrh r1, [r3, #0xa]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0805D3C4
	ldr r0, [r3, #0]
	subs r0, r6, r0
	asrs r1, r0, #8
	cmp r1, #0
	bge _0805D3A0
	negs r1, r1
_0805D3A0:
	ldr r0, [r3, #4]
	subs r0, r5, r0
	asrs r0, r0, #8
	cmp r0, #0
	bge _0805D3AC
	negs r0, r0
_0805D3AC:
	cmp r1, #7
	bgt _0805D3C4
	cmp r0, #7
	bgt _0805D3C4
	ldrh r0, [r3, #8]
	cmp r4, r0
	bne _0805D3C4
	adds r0, r3, #0
	b _0805D3CE
	.2byte 0x0000
_0805D3C0: .4byte gUnk_03005D58
_0805D3C4:
	adds r2, #1
	adds r3, #0x20
	cmp r2, #0xf
	bls _0805D38A
	movs r0, #0
_0805D3CE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_0805D37C
