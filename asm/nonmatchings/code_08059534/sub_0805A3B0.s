	thumb_func_start sub_0805A3B0
sub_0805A3B0: @ 0x0805A3B0
	push {lr}
	ldr r0, _0805A3E4
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805A3C4
	ldr r0, _0805A3E8
	bl sub_08006D08
_0805A3C4:
	ldr r2, _0805A3EC
	movs r0, #7
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	movs r2, #0xc
	negs r2, r2
	movs r0, #6
	movs r1, #0
	movs r3, #0x3c
	bl sub_08028D98
	pop {r0}
	bx r0
	.2byte 0x0000
_0805A3E4: .4byte gUnk_030027D0
_0805A3E8: .4byte 0x0000017B
_0805A3EC: .4byte 0x0000270F
	thumb_func_end sub_0805A3B0
