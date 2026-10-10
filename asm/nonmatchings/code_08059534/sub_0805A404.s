	thumb_func_start sub_0805A404
sub_0805A404: @ 0x0805A404
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800CCCC
	cmp r0, #0
	bne _0805A422
	ldr r0, _0805A434
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805A422
	movs r0, #0x23
	bl sub_08006D08
_0805A422:
	ldr r2, _0805A438
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	pop {r4}
	pop {r0}
	bx r0
_0805A434: .4byte gUnk_030027D0
_0805A438: .4byte 0x0000270F
	thumb_func_end sub_0805A404
