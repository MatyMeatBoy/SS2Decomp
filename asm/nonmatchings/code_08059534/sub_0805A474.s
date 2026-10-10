	thumb_func_start sub_0805A474
sub_0805A474: @ 0x0805A474
	push {lr}
	ldr r2, _0805A498
	adds r1, r2, #0
	movs r3, #0
	bl sub_08028AAC
	ldr r0, _0805A49C
	ldr r0, [r0, #0]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0805A492
	movs r0, #0x23
	bl sub_08006D08
_0805A492:
	pop {r0}
	bx r0
	.2byte 0x0000
_0805A498: .4byte 0x0000270F
_0805A49C: .4byte gUnk_030027D0
	thumb_func_end sub_0805A474
