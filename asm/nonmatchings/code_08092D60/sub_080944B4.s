	thumb_func_start sub_080944B4
sub_080944B4: @ 0x080944B4
	push {r4, lr}
	ldr r0, _080944E4
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, _080944E8
	strb r1, [r0, #0]
	ldr r4, _080944EC
_080944C2:
	movs r0, #0x28
	bl sub_08001494
	str r0, [r4, #0]
	bl sub_080003F0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _080944C2
	ldr r0, _080944EC
	ldr r1, [r0, #0]
	movs r0, #0
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080944E4: .4byte gUnk_03000274
_080944E8: .4byte gUnk_03000275
_080944EC: .4byte gUnk_03000270
	thumb_func_end sub_080944B4
