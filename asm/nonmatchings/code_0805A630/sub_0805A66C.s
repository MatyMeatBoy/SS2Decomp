	thumb_func_start sub_0805A66C
sub_0805A66C: @ 0x0805A66C
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _0805A698
	ldr r4, _0805A69C
_0805A674:
	ldr r0, [r6, #0]
	adds r0, r0, r4
	bl sub_08000470
	cmp r0, #0
	beq _0805A688
	ldr r0, [r6, #0]
	adds r0, r0, r4
	bl sub_080003A8
_0805A688:
	adds r4, #0x28
	adds r5, #1
	cmp r5, #0x1f
	bls _0805A674
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805A698: .4byte gUnk_03005CF4
_0805A69C: .4byte 0x00001834
	thumb_func_end sub_0805A66C
