	thumb_func_start sub_0805A2B8
sub_0805A2B8: @ 0x0805A2B8
	push {lr}
	ldr r2, _0805A2DC
	movs r0, #8
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _0805A2E0
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805A2D8
	movs r0, #0x23
	bl sub_08006D08
_0805A2D8:
	pop {r0}
	bx r0
_0805A2DC: .4byte 0x0000270F
_0805A2E0: .4byte gUnk_030027D0
	thumb_func_end sub_0805A2B8
