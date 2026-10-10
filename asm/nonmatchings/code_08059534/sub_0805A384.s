	thumb_func_start sub_0805A384
sub_0805A384: @ 0x0805A384
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _0805A39A
	bl sub_08000470
	cmp r0, #0
	beq _0805A39A
	adds r0, r4, #0
	bl sub_080003A8
_0805A39A:
	ldr r0, _0805A3AC
	movs r1, #0
	movs r2, #0
	bl sub_08068820
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0805A3AC: .4byte sub_0805A3B0
	thumb_func_end sub_0805A384
